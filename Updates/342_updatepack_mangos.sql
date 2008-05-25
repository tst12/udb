-- 0-65 in 332 -.-
UPDATE `item_template` set spellppmrate_1=0.65 where `entry`= 28573;
update `creature_template` set `mechanic_immune_mask`=`mechanic_immune_mask`|80428891 where `rank` = 3;
-- forum
DELETE FROM `gameobject_template` WHERE `entry` IN (33067, 33068);

update `gameobject_template` set `data0` = 4, `data2` = 2061 where `entry` in (126337, 126338, 126339, 126340, 126341, 126342, 126345, 151951);

update `gameobject_template` set `data0` = 4, `data1` = 0 where `entry` = 184442;

update spell_teleport set target_position_x=7991.884766, target_position_y=-2679.841553, target_position_z=512.0997, target_orientation=0.034183 where id=18960;

DELETE FROM `creature_loot_template` WHERE (`entry` IN (7445, 7446, 7454, 7456) and `item`=12334);

UPDATE `creature_loot_template` SET `QuestChanceOrGroup`=100 WHERE (`entry` IN (7428, 7429, 10198) and `item`=12334);

-- Trainers with loot
DELETE FROM `creature_loot_template` WHERE `entry` IN (331, 376, 459, 460, 461, 906, 988, 1103, 1317, 1383, 1430, 1651, 1683, 1700, 2126, 2127, 2367, 2834, 2855, 2857, 2880, 2942, 3156, 3172, 3324, 3325, 3326, 3344, 3353, 3354, 3408, 3478, 3607, 3690, 3698, 3703, 3704, 3706, 3707, 4563, 4564, 4565, 4898, 5171, 5172, 5173, 5495, 5496, 5612, 5690, 5938, 5941, 7231, 7232, 7866, 7867, 7871, 7946, 8665, 11025, 11178, 11557, 11869, 12032, 12961, 14740);

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (331, 376, 459, 460, 461, 906, 988, 1103, 1317, 1383, 1430, 1651, 1683, 1700, 2126, 2127, 2367, 2834, 2855, 2857, 2880, 2942, 3156, 3172, 3324, 3325, 3326, 3344, 3353, 3354, 3408, 3478, 3607, 3690, 3698, 3703, 3704, 3706, 3707, 4563, 4564, 4565, 4898, 5171, 5172, 5173, 5495, 5496, 5612, 5690, 5938, 5941, 7231, 7232, 7866, 7867, 7871, 7946, 8665, 11025, 11178, 11557, 11869, 12032, 12961, 14740);

-- Mount Vendors with loot
DELETE FROM `creature_loot_template` WHERE `entry` IN (384, 1261, 1460, 2357, 3362, 3685, 4730, 4731, 4885, 7952, 7955);

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (384, 1261, 1460, 2357, 3362, 3685, 4730, 4731, 4885, 7952, 7955);

update quest_template set `OfferRewardText` = 'Ah, very good. I trust the satyrs of Xavian gave you little trouble?$B$BThank you, $N. I will study this sample of Xavian water immediately.', `RequestItemsText` = 'I am pleased you have returned with your skin intact, $N. Do you have the water sample? I am eager to study its properties.' where entry = 1944;

update quest_template set `OfferRewardText` = 'Ah, this hair will weave into a fine robe, $N. It is a pity the laughing sisters had to die to part with it, though I do doubt they would ever give it willingly.$B$BA pity, but only a small one.', `RequestItemsText` = 'Greetings, $N. Deino said you would come, and would bring the laughing sisters\' hair. Do you have it?' where entry = 1945;

-- Guards with loot tables
DELETE FROM `creature_loot_template` WHERE `entry`=1745;

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry`=1745;

-- Battlemasters with loot tables
DELETE FROM `creature_loot_template` WHERE `entry` IN (14942, 15006);

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (14942, 15006);

INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(18255, 34581, 0, 0),
(18255, 34582, 0, 0);

DELETE FROM `creature` WHERE `guid`=29883;

-- And a litle fix for movement and spawn time.
UPDATE `creature` SET `MovementType`=3, `SpawnDist`=5, `SpawnTimeSecs`=300 WHERE `id` = 9318;

-- Flight Masters with loot tables
DELETE FROM `creature_loot_template` WHERE `entry` IN (2858, 2941, 3305, 3615, 10583, 11901, 12636, 16227);

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (2858, 2941, 3305, 3615, 10583, 11901, 12636, 16227);

-- This creature is incorrectly set as a flightmaster(he is a mob in the last boss encounter in Arcatraz)
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 20905;

DELETE FROM `creature_loot_template` WHERE `entry` IN (1247, 1464, 2352, 2388, 3934, 5111, 5688, 5814, 6272, 6727, 6734, 6735, 6736, 6737, 6738, 6739, 6740, 6741, 6746, 6747, 6790, 6791, 6807, 6928, 6929, 6930, 7714, 7731, 7733, 7736, 7737, 7744, 8931, 8999, 9356, 9501, 11103, 11106, 11116, 11118, 12196, 14731);

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (1247, 1464, 2352, 2388, 3934, 5111, 5688, 5814, 6272, 6727, 6734, 6735, 6736, 6737, 6738, 6739, 6740, 6741, 6746, 6747, 6790, 6791, 6807, 6928, 6929, 6930, 7714, 7731, 7733, 7736, 7737, 7744, 8931, 8999, 9356, 9501, 11103, 11106, 11116, 11118, 12196, 14731, 16458); -- 16458 was referencing a deleted table above

UPDATE `creature_loot_template` SET `ChanceOrRef` = 100 WHERE `entry` = 9018 AND `item` = 11140;

UPDATE `creature_loot_template` SET `ChanceOrRef` = 0, `QuestChanceOrGroup` = 100 WHERE `entry` = 8444 AND `item` = 10467;

UPDATE `quest_template` SET `PrevQuestId` = '1485' WHERE `entry` = '1499';

-- quest nolkai's words
update quest_template set RewItemId1=23846, RewItemCount1=1 where entry=9561;
-- Filling loot for item Nolkai's Box
delete from item_loot_template where entry=23846;
INSERT IGNORE INTO item_loot_template (entry, item, ChanceOrRef, QuestChanceOrGroup, mincount, maxcount, freeforall, lootcondition, condition_value1, condition_value2) values (23846, 23844, 100, 0, 1, 1, 0, 0, 0, 0), (23846, 23847, 100, 0, 1, 1, 0, 0, 0, 0), (23846, 23852, 100, 0, 1, 1, 0, 0, 0, 0);

update quest_template set PrevQuestId=9557 where entry=9561;

INSERT IGNORE `creature_questrelation` (`id`, `quest`) VALUES ('19935','10473');

-- quest Marla's Last Wish, there is a name instead of a $N code.
update quest_template set OfferRewardText="You have done a good deed today, $N. Although our struggle against the Scourge continues, let us hope that Marla and Samuel will find peace together in their final resting place." where entry=6395;

-- Grim Message
UPDATE `quest_template` SET `ReqSourceId1` = '9320', `ReqSourceCount1` = '20', `ReqSourceRef1` = '1', `ReqSpellCast1` = '11547', `RewRepFaction1` = '530', `RewRepValue1` = '250' WHERE `entry` = '2932';

DELETE FROM `creature_loot_template` WHERE `item` = 18799;

-- Zeth'Gor Must Burn! (H)
update `quest_template` set 
`ReqSourceId1` = 31347, `ReqSourceId2` = 31347, `ReqSourceId3` = 31347, `ReqSourceId4` = 31347, 
`ReqSourceCount1` = 1, `ReqSourceCount2` = 1, `ReqSourceCount3` = 1, `ReqSourceCount4` = 1, 
`ReqSourceRef1` = 1, `ReqSourceRef2` = 2, `ReqSourceRef3` = 3, `ReqSourceRef4` = 4, 
`ReqSpellCast1` = 35724, `ReqSpellCast2` = 35724, `ReqSpellCast3` = 35724, `ReqSpellCast4` = 35724 
where `entry` = 10792;

-- Burning Bleeding Hollow Torch
update `item_template` set `Duration` = 300 where `entry` = 31346;

-- Throw Torch
INSERT IGNORE INTO `spell_script_target` VALUES (35724, 1, 20813);
INSERT IGNORE INTO `spell_script_target` VALUES (35724, 1, 20814);
INSERT IGNORE INTO `spell_script_target` VALUES (35724, 1, 20815);
INSERT IGNORE INTO `spell_script_target` VALUES (35724, 1, 20816);

-- get rid of fake go, make new 'proper' fake with reserved guid
DELETE FROM `gameobject_template` where `entry`= 1283;
INSERT IGNORE INTO `gameobject_template` VALUES (300144, 8, 299, 'TEMP The Great Ossuary', 0, 0, 2.49, 1283, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT IGNORE INTO `gameobject` VALUES (49866, 300144, 289, 139.496, 174.816, 95.5388, 3.60657, 0, 0, 0.973096, -0.2304, 300, 0, 1);

UPDATE `gameobject_template` SET `size`='0.05' WHERE (`entry`='181891');

-- Design Stormy Star of Elune better chance
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0.3' WHERE (`item` = '24202') AND (`ChanceOrRef` > '0.5');

-- All other Venom Bottles in game are type 2, so just a hunch here smile.gif I do know they certainly are NOT doors.
UPDATE `gameobject_template` SET `type` = 2 WHERE `entry` IN (142706, 142707, 142713);
-- These two templates could be deleted since they are no longer used in game.
UPDATE `gameobject_template` SET `type` = 10 WHERE `entry` IN (178427, 180717);
-- Old transport templates. We said we wouldn't delete old template data, but it looks like we have no choice now smile.gif
-- Goodbye JoshTest, you were a good boat... original Exodar *sniff*, Exodar ver 2.0, and these last two had to be somebody just playing around...
DELETE FROM `gameobject_template` WHERE `entry` IN (176357, 181688, 181689, 199998, 199999);

-- The Exorcism, Cleansing of the Orb of Orahil (summon Demon of the Orb)
DELETE FROM `quest_start_scripts` WHERE `id` = '4961';
INSERT IGNORE INTO `quest_start_scripts` VALUES ('4961', '1', '10', '6549', '360000', '', '-4034.53', '-3387.46', '38.99', '2.13');
UPDATE `quest_template` SET `StartScript` = '4961' WHERE `entry` IN ('4961', '1955');

-- Dense Blasting Powder
DELETE FROM `npc_trainer` WHERE (`entry` = '8738') AND (`spell` = '19844');
INSERT IGNORE INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`) VALUES
('17222','19844','4000','202','250'),
('1702','19844','4000','202','250'),
('16667','19844','4000','202','250'),
('3290','19844','4000','202','250'),
('1676','19844','4000','202','250'),
('11031','19844','4000','202','250'),
('11037','19844','4000','202','250'),
('5518','19844','4000','202','250'),
('11025','19844','4000','202','250'),
('16726','19844','4000','202','250'),
('11017','19844','4000','202','250'),
('5174','19844','4000','202','250'),
('3494','19844','4000','202','250');
UPDATE `npc_trainer` SET `spellcost` = '4000' WHERE `spell` = '19844';

UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|'1' WHERE `quest_template`.`entry` =8243;

-- quest Journey to the Marsh, missing offerRewardText
update quest_template SET OfferRewardText="Quiet! I'm in a delicate juncture and mustn't be disturbed!$B$BOne moment..." where entry=1947;

-- quest The Shattered Necklace, incorrect use of $R code
update quest_template set RequestItemsText="You've got the wrong gnome, pal! I was never there! You can't prove anything!$B$BWait a second... who are you? What the... where did you find this necklace at?" where entry=2198;

-- quest This Is Going to Be Hard, fix for Incomplete RequestItemsText
update quest_template set RequestItemsText="<Without looking up from the shackles, Lotwil holds out a hand and waggles his fingers impatiently.>$B$BThe cog, $N, the cog!" where entry=777;

-- quest Master of the Wild Leather, Wrong use of rane name instead of $R in RequestItemsText field.
update quest_template set RequestItemsText="Greetings, $r... from your countenance I can tell you are a leatherworker as am I. Have you come to draw from my skills, or perhaps you have other business with me?" where entry=2860;

-- Felvine Shard item is not quest dependent loot
UPDATE `gameobject_loot_template` SET `ChanceOrRef` = '100', `QuestChanceOrGroup` = '0' WHERE `item` = '18501';
-- Felvine Shard GO does not contain quest loot
UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry` = '179559';

update creature_loot_template set QuestChanceOrGroup=100 where item=20799;

-- Soulwell Portal
UPDATE `gameobject_template` SET `data1` = '29886' WHERE `entry` = '181622';
-- Doom Portal
UPDATE `gameobject_template` SET `faction` = '0' WHERE `entry` = '177193';

delete from `quest_start_scripts` where `id` = 2608;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(2608, 1, 1, 353, 0, '', 0, 0, 0, 0),
(2608, 3, 0, 0, 0, 'That\'s interesting...', 0, 0, 0, 0),
(2608, 6, 0, 0, 0, 'I need to consult Noram and Horatio.', 0, 0, 0, 0),
(2608, 10, 3, 0, 0, '', -8805.29, 338.5, 95.09, 1.7),
(2608, 17, 3, 0, 0, '', -8804.15, 325.58, 95.09, 4.9),
(2608, 25, 3, 0, 0, '', -8805.56, 331.96, 95.09, 3.15),
(2608, 28, 7, 2608, 0, '', 0, 0, 0, 0);

-- Stats and spell from Bestiary book
UPDATE `creature_template` SET `lootid` = '18982', `skinloot` = '18982', `civilian` = '0', `maxlevel` = '68', `minhealth` = '9489', `maxhealth` = '9813', `armor` = '5042', `mindmg` = '330', `maxdmg` = '487', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `spell1` = '12166', `ScriptName` = 'generic_creature' WHERE `entry` = 20075;

DELETE FROM `creature_loot_template` WHERE (`entry`=11583);
-- 2 Tier 2 Chest, using 1 ref table (90009)
REPLACE INTO `creature_loot_template` VALUES
(90009, 16897, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16905, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16916, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16923, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16931, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16942, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16950, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16958, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90009, 16966, 100/9, -1, 1, 1, 0, 0, 0, 0);

-- 2 Non-set Epic drops, using 1 ref table (90010)
REPLACE INTO `creature_loot_template` VALUES
(90010, 19356, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19360, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19363, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19364, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19375, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19376, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19377, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19378, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19379, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19380, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19381, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90010, 19382, 100/12, -1, 1, 1, 0, 0, 0, 0);

-- 2 Blues (From Ref table 90002), 2 Greens + Gem Sack (From Ref table 90003)
REPLACE INTO `creature_loot_template` VALUES
(11583, 0, -90009, -1, 0, 0, 0, 0, 0, 0),
(11583, 1, -90009, -1, 0, 0, 0, 0, 0, 0),
(11583, 2, -90010, -1, 0, 0, 0, 0, 0, 0),
(11583, 3, -90010, -1, 0, 0, 0, 0, 0, 0),
(11583, 4, -90002, -1, 0, 0, 0, 0, 0, 0),
(11583, 5, -90002, -1, 0, 0, 0, 0, 0, 0),
(11583, 6, -90003, 0, 0, 0, 0, 0, 0, 0), -- Both groups in the green table (1 green plus gem sack)
(11583, 7, -90003, -1, 0, 0, 0, 0, 0, 0), -- Just the group of greens
(11583, 19002, 100, 0, 1, 1, 0, 6, 67, 0), -- Head of Nefarian(Horde)
(11583, 19003, 100, 0, 1, 1, 0, 6, 469, 0), -- Head of Nefarian(Alliance)
(11583, 21138, 0, 100, 1, 1, 0, 0, 0, 0); -- Red Scepter Shard(quest id 8730)

-- Nefarian also currently drops no gold, this updates his gold drop based off of Wowhead average
UPDATE `creature_template` SET `mingold` = 2314285, `maxgold` = 2828570 WHERE `entry` = 11583;

-- 2 Epic Drops, 2 Blues (From Ref table 90002), 2 Greens + Gem Sack (From Ref table 90003)
DELETE FROM `creature_loot_template` WHERE `entry`=14887;
REPLACE INTO `creature_loot_template` VALUES
(90008, 20579, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20580, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20581, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20582, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20615, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20616, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20617, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20618, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20619, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20578, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20635, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20636, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20637, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20638, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90008, 20639, 100/15, -1, 1, 1, 0, 0, 0, 0),
(14887, 0, -90008, -1, 0, 0, 0, 0, 0, 0), -- Using group definitions from reference tables
(14887, 1, -90008, -1, 0, 0, 0, 0, 0, 0),
(14887, 2, -90002, -1, 0, 0, 0, 0, 0, 0),
(14887, 3, -90002, -1, 0, 0, 0, 0, 0, 0),
(14887, 4, -90003, 0, 0, 0, 0, 0, 0, 0), -- Take from both groups(1 gem sack and 1 green)
(14887, 5, -90003, -1, 0, 0, 0, 0, 0, 0), -- Take only from the greens
(14887, 20644, 100, 0, 1, 1, 0, 0, 0, 0); -- Nightmare Engulfed Object 100%

-- 2 Epic Drops, 2 Blues (From Ref table 90002), 2 Greens + Gem Sack (From Ref table 90003)
DELETE FROM `creature_loot_template` WHERE `entry`=14890;
REPLACE INTO `creature_loot_template` VALUES
(90007, 20579, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20580, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20581, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20582, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20615, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20616, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20617, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20618, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20619, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20577, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20631, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20632, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20633, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90007, 20634, 100/14, -1, 1, 1, 0, 0, 0, 0),
(14890, 0, -90007, -1, 0, 0, 0, 0, 0, 0), -- Using group definitions from reference tables
(14890, 1, -90007, -1, 0, 0, 0, 0, 0, 0),
(14890, 2, -90002, -1, 0, 0, 0, 0, 0, 0),
(14890, 3, -90002, -1, 0, 0, 0, 0, 0, 0),
(14890, 4, -90003, 0, 0, 0, 0, 0, 0, 0), -- Take from both groups(1 gem sack and 1 green)
(14890, 5, -90003, -1, 0, 0, 0, 0, 0, 0), -- Take only from the greens
(14890, 20644, 100, 0, 1, 1, 0, 0, 0, 0); -- Nightmare Engulfed Object 100%

-- 2 Epic Drops, 2 Blues (From Ref table 90002), 2 Greens + Gem Sack (From Ref table 90003)
DELETE FROM `creature_loot_template` WHERE `entry`=14889;
REPLACE INTO `creature_loot_template` VALUES
(90006, 20579, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20580, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20581, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20582, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20615, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20616, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20617, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20618, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20619, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20599, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20621, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20622, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20623, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90006, 20624, 100/14, -1, 1, 1, 0, 0, 0, 0),
(14889, 0, -90006, -1, 0, 0, 0, 0, 0, 0), -- Using group definitions from reference tables
(14889, 1, -90006, -1, 0, 0, 0, 0, 0, 0),
(14889, 2, -90002, -1, 0, 0, 0, 0, 0, 0),
(14889, 3, -90002, -1, 0, 0, 0, 0, 0, 0),
(14889, 4, -90003, 0, 0, 0, 0, 0, 0, 0), -- Take from both groups(1 gem sack and 1 green)
(14889, 5, -90003, -1, 0, 0, 0, 0, 0, 0), -- Take only from the greens
(14889, 20644, 100, 0, 1, 1, 0, 0, 0, 0); -- Nightmare Engulfed Object 100%

-- 2 Epic Drops, 2 Blues (From Ref table 90002), 2 Greens + Gem Sack (From Ref table 90003)
DELETE FROM `creature_loot_template` WHERE `entry`=14888;
REPLACE INTO `creature_loot_template` VALUES
(90005, 20579, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20580, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20581, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20582, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20615, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20616, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20617, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20618, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20619, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20625, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20626, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20627, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20628, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20629, 100/15, -1, 1, 1, 0, 0, 0, 0),
(90005, 20630, 100/15, -1, 1, 1, 0, 0, 0, 0),
(14888, 0, -90005, -1, 0, 0, 0, 0, 0, 0), -- Using group definitions from reference tables
(14888, 1, -90005, -1, 0, 0, 0, 0, 0, 0),
(14888, 2, -90002, -1, 0, 0, 0, 0, 0, 0),
(14888, 3, -90002, -1, 0, 0, 0, 0, 0, 0),
(14888, 4, -90003, 0, 0, 0, 0, 0, 0, 0), -- Take from both groups(1 gem sack and 1 green)
(14888, 5, -90003, -1, 0, 0, 0, 0, 0, 0), -- Take only from the greens
(14888, 20644, 100, 0, 1, 1, 0, 0, 0, 0); -- Nightmare Engulfed Object 100%


-- Trisifal Glades Arena doors
UPDATE `gameobject_template` SET `faction` = '114', `flags` = '32' WHERE `entry` IN ('185918', '185917');

-- Cauldrons of Major Protection (Arcane, Frost, Shadow)
DELETE FROM `gameobject_template` WHERE `entry` IN ('186149', '186155', '186157');
INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
('186149', '22', '7409', 'Cauldron of Major Arcane Protection', '0', '0', '1', '41442', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('186155', '22', '7407', 'Cauldron of Major Frost Protection', '0', '0', '1', '41490', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('186157', '22', '7411', 'Cauldron of Major Shadow Protection', '0', '0', '1', '41492', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

INSERT IGNORE INTO `skill_discovery_template` VALUES ('41458', '28575', '30');
INSERT IGNORE INTO `skill_discovery_template` VALUES ('41500', '28571', '30');
INSERT IGNORE INTO `skill_discovery_template` VALUES ('41501', '28572', '30');
INSERT IGNORE INTO `skill_discovery_template` VALUES ('41502', '28573', '30');
INSERT IGNORE INTO `skill_discovery_template` VALUES ('41503', '28576', '30');

-- Rajah Haghazed
UPDATE `creature_template` SET `faction_A` = '74', `faction_H` = '74', `speed` = '1.5', `mechanic_immune_mask` = '1105' WHERE `entry` = '18046';

update `quest_template` set `ReqSourceId1` = 11242, `ReqSourceCount1` = 1, `ReqSourceRef1` = 1 where `entry` = 3909;

update `gameobject` set `position_x` = '-11164.39' where `id` = 300073;

update quest_template set RequestItemsText="Do not waste time, $gboy:girl;." where entry=9473;

-- 2 Epic Drops, 3 Blues (From Ref table 90002), 3 Greens + Gem Sack (From Ref table 90003)
DELETE FROM `creature_loot_template` WHERE `entry`=6109;
REPLACE INTO `creature_loot_template` VALUES
(90004, 19130, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 19132, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 18208, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 18202, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 17070, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 18545, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 18541, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 19131, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 18542, 10, -1, 1, 1, 0, 0, 0, 0),
(90004, 18547, 10, -1, 1, 1, 0, 0, 0, 0),
(6109, 0, -90004, 0, 0, 0, 0, 0, 0, 0),
(6109, 1, -90004, 0, 0, 0, 0, 0, 0, 0),
(6109, 2, -90002, 0, 0, 0, 0, 0, 0, 0),
(6109, 3, -90002, 0, 0, 0, 0, 0, 0, 0),
(6109, 4, -90002, 0, 0, 0, 0, 0, 0, 0),
(6109, 5, -90003, 0, 0, 0, 0, 0, 0, 0), -- Take from both groups in that reference table (1 green + gem sack)
(6109, 6, -90003, -1, 0, 0, 0, 0, 0, 0), -- Take only from the greens in that reference table
(6109, 7, -90003, -1, 0, 0, 0, 0, 0, 0), -- Take only from the greens in that reference table
(6109, 18704, 60, 0, 1, 1, 0, 0, 0, 0); -- Blue Dragon Sinew 60% chance

UPDATE `quest_template` SET `ReqSourceId1` = 9530, `ReqSourceCount1` = 1, `ReqSourceRef1` = 1 WHERE `entry` = 3062;

-- move GO and summon position according to screenshots
UPDATE `gameobject` SET `position_x` = -2764.684570, `position_y` = 2623.207764, `position_z` = 70.420448, `orientation` = 2.335779 WHERE `guid` = 49876;
UPDATE `event_scripts` SET `x` = -2764.684570, `y` = 2623.207764, `z` = 70.420448, `o` = 2.335779 WHERE `id` = 3973;

DELETE from `creature` where `id`='4969';

-- Need many samples to test to complete Q 4293 and 4294
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|1 WHERE `entry` IN (4561, 4661);

-- Q 4661 must be active only if on Q 4293, and MinLevel == Q4293.MinLevel
UPDATE `quest_template` SET `PrevQuestId` = -4293, `MinLevel` = 48 WHERE `entry` = 4661;
-- Q 4561 must be active only if on Q 4294, and MinLevel == Q4294.MinLevel
UPDATE `quest_template` SET `PrevQuestId` = -4294, `MinLevel` = 48 WHERE `entry` = 4561;

-- items 12230 and 12235 are indirectrly required
UPDATE `quest_template` SET `ReqSourceId1` = 12230, `ReqSourceCount1` = 100, `ReqSourceRef1` = 1 WHERE `entry` = 4293;
UPDATE `quest_template` SET `ReqSourceId1` = 12235, `ReqSourceCount1` = 100, `ReqSourceRef1` = 1 WHERE `entry` = 4294;

-- missing loot for "Pure Un'Goro Sample" form "Un'Goro Tested Sample"
DELETE FROM `item_loot_template` WHERE (`entry`=15102) AND (`item`=12236);
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15102, 12236, 30, 0, 1, 1, 0, 0, 0, 0);


update `quest_template` set `Details` = '', `Objectives` = '' where `entry` in (4561, 4661);
update `quest_template` set `RequestItemsText` = 'You take a sample of slime from Un\'Goro Crater and place some of it into the various tubes and beakers on the table. As things begin to boil and spurt, the slime changes colors. When the process slows down and the liquids calm, you see a small petri dish with your purified Un\'Goro slime samples in it along with some other remnants.' where `entry` = 4561;
update `quest_template` set `RequestItemsText` = 'You take a sample of slime from Felwood and place some of it into the various tubes and beakers on the table. As things begin to boil and spurt, the slime changes colors. When the process slows down and the liquids calm, you see a small petri dish with your altered Felwood slime samples in it along with some other remnants.' where `entry` = 4661;

update `quest_template` set `NextQuestId` = 4642, `ExclusiveGroup` = -4293 where `entry` in (4293, 4294);

UPDATE `creature_template` SET `faction_A` = 514, `faction_H` = 514 WHERE `entry` = 8075;

DELETE FROM `creature_loot_template` WHERE (`entry`=10184);

-- 2 Tier 2 Helms, using 1 ref table (90000)
REPLACE INTO `creature_loot_template` VALUES
(90000, 16900, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16908, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16914, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16921, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16929, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16939, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16947, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16955, 100/9, -1, 1, 1, 0, 0, 0, 0),
(90000, 16963, 100/9, -1, 1, 1, 0, 0, 0, 0);

-- 2 Non-set Epic drops, using 1 ref table (90001)
REPLACE INTO `creature_loot_template` VALUES
(90001, 17067, 20, -1, 1, 1, 0, 0, 0, 0),
(90001, 17078, 20, -1, 1, 1, 0, 0, 0, 0),
(90001, 18205, 20, -1, 1, 1, 0, 0, 0, 0),
(90001, 18813, 15, -1, 1, 1, 0, 0, 0, 0),
(90001, 17068, 9, -1, 1, 1, 0, 0, 0, 0),
(90001, 17075, 8, -1, 1, 1, 0, 0, 0, 0),
(90001, 17064, 8, -1, 1, 1, 0, 0, 0, 0);

-- Drop 2 blues including class books, using 1 ref table (90002, can also be used for Nefarian, Green Dragons)
REPLACE INTO `creature_loot_template` VALUES
(90002, 1203, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 1973, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 2564, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 4696, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 5266, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 5267, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 6622, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 7734, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 7976, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 7991, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 8028, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 9402, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 10605, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 10608, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 11302, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 12698, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 12711, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 12717, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 12720, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 12728, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13000, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13001, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13002, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13003, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13004, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13006, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13007, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13008, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13009, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13013, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13015, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13030, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13036, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13040, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13047, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13053, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13060, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13066, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13067, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13070, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13072, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13073, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13075, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13077, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13083, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13085, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13091, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13096, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13107, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13111, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13113, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13116, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13118, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13120, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13123, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13125, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13126, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13130, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13133, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13135, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13144, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 13146, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 14501, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 14509, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 14511, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 17413, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 17414, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 17682, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 17683, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 18600, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 22388, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 22389, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 22390, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 22393, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 22890, 100/76, -1, 1, 1, 0, 0, 0, 0),
(90002, 22891, 100/76, -1, 1, 1, 0, 0, 0, 0);

-- 1 Green Drop + 1 Gem Sack using 1 ref table (90003, can be used for other big angry dragons)
REPLACE INTO `creature_loot_template` VALUES
(90003, 9297, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10246, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10247, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10248, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10249, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10250, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10251, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10252, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10253, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10254, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10255, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10256, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10257, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10258, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10259, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10260, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10261, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10262, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10263, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10264, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10265, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10266, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10267, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10268, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10269, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10270, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10272, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10273, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10274, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10367, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10384, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10385, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10386, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10387, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10388, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10389, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10390, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 10391, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 11224, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 11226, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12017, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12048, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12682, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12683, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12684, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12685, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12689, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 12702, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 13486, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 13487, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 13488, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 13489, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14328, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14329, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14330, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14331, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14332, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14333, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14334, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14335, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14336, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14337, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14975, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14976, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14977, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14978, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14979, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14980, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14981, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14982, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 14983, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15221, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15229, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15240, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15247, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15258, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15267, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15273, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15278, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15283, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15289, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15325, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15434, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15435, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15436, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15437, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15438, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15439, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15440, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15441, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15442, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15678, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15679, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15680, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15681, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15682, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15683, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15684, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15685, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15686, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15687, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 15942, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 16044, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 16055, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 16253, 100/105, -1, 1, 1, 0, 0, 0, 0),
(90003, 17962, 20, -2, 1, 1, 0, 0, 0, 0),
(90003, 17963, 20, -2, 1, 1, 0, 0, 0, 0),
(90003, 17964, 20, -2, 1, 1, 0, 0, 0, 0),
(90003, 17965, 20, -2, 1, 1, 0, 0, 0, 0),
(90003, 17969, 20, -2, 1, 1, 0, 0, 0, 0);

REPLACE INTO `creature_loot_template` VALUES
(10184, 0, -90000, 0, 0, 0, 0, 0, 0, 0),
(10184, 1, -90000, 0, 0, 0, 0, 0, 0, 0),
(10184, 2, -90001, 0, 0, 0, 0, 0, 0, 0),
(10184, 3, -90001, 0, 0, 0, 0, 0, 0, 0),
(10184, 4, -90002, 0, 0, 0, 0, 0, 0, 0),
(10184, 5, -90002, 0, 0, 0, 0, 0, 0, 0),
(10184, 6, -90003, 0, 0, 0, 0, 0, 0, 0),
(10184, 17966, 100, 0, 1, 1, 0, 0, 0, 0),
(10184, 18422, 100, 0, 1, 1, 0, 6, 67, 0),
(10184, 18423, 100, 0, 1, 1, 0, 6, 469, 0),
(10184, 18705, 40, 0, 1, 1, 0, 0, 0, 0),
(10184, 21108, 0, 100, 1, 1, 0, 0, 0, 0);

UPDATE `creature_loot_template` SET `ChanceOrRef`='0', `QuestChanceOrGroup`='100' WHERE `item`='5089';

-- Tanaris Field Sampling
UPDATE `quest_template` SET `ReqSourceId1` = '9437', `ReqSourceId2` = '9439', `ReqSourceId3` = '9442', `ReqSourceCount1` = '20', `ReqSourceCount2` = '20', `ReqSourceCount3` = '20', `ReqSourceRef1` = '1', `ReqSourceRef2` = '2', `ReqSourceRef3` = '3', `IncompleteEmote` = '5', `SpecialFlags` = `SpecialFlags`&~'1' WHERE `entry` = '654';
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '100' WHERE `item` IN ('9437', '9439', '9442');
UPDATE `item_template` SET `Duration` = '-10800' WHERE `entry` IN ('9440', '9441', '9438', '9437', '9439', '9442');

DELETE FROM `creature_loot_template` WHERE (`entry`='8443') AND (`item`='1077');

UPDATE `quest_template` SET `ReqSpellCast2` = 0, `ReqSpellCast3` = 0 WHERE `entry` = 2995;

-- correcting loottable for GO 52, it just drops item [2007] The third troll legend
DELETE FROM `gameobject_loot_template` WHERE (`entry`=1691) AND (`item`=2592);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=1691) AND (`item`=4306);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=1691) AND (`item`=6712);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=1691) AND (`item`=16747);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=1691) AND (`item`=16748);

-- Arena Season 2 Items
-- Evee Copperspring
DELETE FROM `npc_vendor` WHERE (`entry`=25177);
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`) VALUES
(25177, 33313),
(25177, 31958),
(25177, 31959),
(25177, 31960),
(25177, 31961),
(25177, 31962),
(25177, 31963),
(25177, 31964),
(25177, 31965),
(25177, 31966),
(25177, 31967),
(25177, 31968),
(25177, 31969),
(25177, 31986),
(25177, 31971),
(25177, 31972),
(25177, 31973),
(25177, 31974),
(25177, 31975),
(25177, 31976),
(25177, 31977),
(25177, 31978),
(25177, 31979),
(25177, 31980),
(25177, 31981),
(25177, 31982),
(25177, 31983),
(25177, 32963),
(25177, 31984),
(25177, 31985),
(25177, 33946),
(25177, 33943),
(25177, 33076),
(25177, 31987),
(25177, 31988),
(25177, 31989),
(25177, 31990),
(25177, 31991),
(25177, 31992),
(25177, 31993),
(25177, 31997),
(25177, 31995),
(25177, 31996),
(25177, 31998),
(25177, 31999),
(25177, 32000),
(25177, 32001),
(25177, 32002),
(25177, 32003),
(25177, 33937),
(25177, 33077),
(25177, 33949),
(25177, 32004),
(25177, 32005),
(25177, 32006),
(25177, 32007),
(25177, 32008),
(25177, 32009),
(25177, 32010),
(25177, 32011),
(25177, 32012),
(25177, 32013),
(25177, 32014),
(25177, 32015),
(25177, 32016),
(25177, 32017),
(25177, 32018),
(25177, 32019),
(25177, 32020),
(25177, 32021),
(25177, 32022),
(25177, 32023),
(25177, 32024),
(25177, 32025),
(25177, 30486),
(25177, 30487),
(25177, 30488),
(25177, 30489),
(25177, 30490),
(25177, 32026),
(25177, 32027),
(25177, 33309),
(25177, 32961),
(25177, 32028),
(25177, 32029),
(25177, 32030),
(25177, 32031),
(25177, 32032),
(25177, 32033),
(25177, 32964),
(25177, 32034),
(25177, 32035),
(25177, 32036),
(25177, 32037),
(25177, 32038),
(25177, 32039),
(25177, 32040),
(25177, 32041),
(25177, 32042),
(25177, 32043),
(25177, 32044),
(25177, 32045),
(25177, 32046),
(25177, 32047),
(25177, 32048),
(25177, 32049),
(25177, 32050),
(25177, 32051),
(25177, 32052),
(25177, 32053),
(25177, 33940),
(25177, 33952),
(25177, 33078),
(25177, 32962),
(25177, 32054),
(25177, 32055),
(25177, 32056),
(25177, 32057),
(25177, 32058),
(25177, 32059),
(25177, 32060);
-- Frixee Brasstumbler
DELETE FROM `npc_vendor` WHERE (`entry`=25179);
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`) VALUES
(25179, 33313),
(25179, 31958),
(25179, 31959),
(25179, 31960),
(25179, 31961),
(25179, 31962),
(25179, 31963),
(25179, 31964),
(25179, 31965),
(25179, 31966),
(25179, 31967),
(25179, 31968),
(25179, 31969),
(25179, 31986),
(25179, 31971),
(25179, 31972),
(25179, 31973),
(25179, 31974),
(25179, 31975),
(25179, 31976),
(25179, 31977),
(25179, 31978),
(25179, 31979),
(25179, 31980),
(25179, 31981),
(25179, 31982),
(25179, 31983),
(25179, 32963),
(25179, 31984),
(25179, 31985),
(25179, 33946),
(25179, 33943),
(25179, 33076),
(25179, 31987),
(25179, 31988),
(25179, 31989),
(25179, 31990),
(25179, 31991),
(25179, 31992),
(25179, 31993),
(25179, 31997),
(25179, 31995),
(25179, 31996),
(25179, 31998),
(25179, 31999),
(25179, 32000),
(25179, 32001),
(25179, 32002),
(25179, 32003),
(25179, 33937),
(25179, 33077),
(25179, 33949),
(25179, 32004),
(25179, 32005),
(25179, 32006),
(25179, 32007),
(25179, 32008),
(25179, 32009),
(25179, 32010),
(25179, 32011),
(25179, 32012),
(25179, 32013),
(25179, 32014),
(25179, 32015),
(25179, 32016),
(25179, 32017),
(25179, 32018),
(25179, 32019),
(25179, 32020),
(25179, 32021),
(25179, 32022),
(25179, 32023),
(25179, 32024),
(25179, 32025),
(25179, 30486),
(25179, 30487),
(25179, 30488),
(25179, 30489),
(25179, 30490),
(25179, 32026),
(25179, 32027),
(25179, 33309),
(25179, 32961),
(25179, 32028),
(25179, 32029),
(25179, 32030),
(25179, 32031),
(25179, 32032),
(25179, 32033),
(25179, 32964),
(25179, 32034),
(25179, 32035),
(25179, 32036),
(25179, 32037),
(25179, 32038),
(25179, 32039),
(25179, 32040),
(25179, 32041),
(25179, 32042),
(25179, 32043),
(25179, 32044),
(25179, 32045),
(25179, 32046),
(25179, 32047),
(25179, 32048),
(25179, 32049),
(25179, 32050),
(25179, 32051),
(25179, 32052),
(25179, 32053),
(25179, 33940),
(25179, 33952),
(25179, 33078),
(25179, 32962),
(25179, 32054),
(25179, 32055),
(25179, 32056),
(25179, 32057),
(25179, 32058),
(25179, 32059),
(25179, 32060);
-- Grikkin Copperspring
DELETE FROM `npc_vendor` WHERE (`entry`=25176);
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`) VALUES
(25176, 33313),
(25176, 31958),
(25176, 31959),
(25176, 31960),
(25176, 31961),
(25176, 31962),
(25176, 31963),
(25176, 31964),
(25176, 31965),
(25176, 31966),
(25176, 31967),
(25176, 31968),
(25176, 31969),
(25176, 31986),
(25176, 31971),
(25176, 31972),
(25176, 31973),
(25176, 31974),
(25176, 31975),
(25176, 31976),
(25176, 31977),
(25176, 31978),
(25176, 31979),
(25176, 31980),
(25176, 31981),
(25176, 31982),
(25176, 31983),
(25176, 32963),
(25176, 31984),
(25176, 31985),
(25176, 33946),
(25176, 33943),
(25176, 33076),
(25176, 31987),
(25176, 31988),
(25176, 31989),
(25176, 31990),
(25176, 31991),
(25176, 31992),
(25176, 31993),
(25176, 31997),
(25176, 31995),
(25176, 31996),
(25176, 31998),
(25176, 31999),
(25176, 32000),
(25176, 32001),
(25176, 32002),
(25176, 32003),
(25176, 33937),
(25176, 33077),
(25176, 33949),
(25176, 32004),
(25176, 32005),
(25176, 32006),
(25176, 32007),
(25176, 32008),
(25176, 32009),
(25176, 32010),
(25176, 32011),
(25176, 32012),
(25176, 32013),
(25176, 32014),
(25176, 32015),
(25176, 32016),
(25176, 32017),
(25176, 32018),
(25176, 32019),
(25176, 32020),
(25176, 32021),
(25176, 32022),
(25176, 32023),
(25176, 32024),
(25176, 32025),
(25176, 30486),
(25176, 30487),
(25176, 30488),
(25176, 30489),
(25176, 30490),
(25176, 32026),
(25176, 32027),
(25176, 33309),
(25176, 32961),
(25176, 32028),
(25176, 32029),
(25176, 32030),
(25176, 32031),
(25176, 32032),
(25176, 32033),
(25176, 32964),
(25176, 32034),
(25176, 32035),
(25176, 32036),
(25176, 32037),
(25176, 32038),
(25176, 32039),
(25176, 32040),
(25176, 32041),
(25176, 32042),
(25176, 32043),
(25176, 32044),
(25176, 32045),
(25176, 32046),
(25176, 32047),
(25176, 32048),
(25176, 32049),
(25176, 32050),
(25176, 32051),
(25176, 32052),
(25176, 32053),
(25176, 33940),
(25176, 33952),
(25176, 33078),
(25176, 32962),
(25176, 32054),
(25176, 32055),
(25176, 32056),
(25176, 32057),
(25176, 32058),
(25176, 32059),
(25176, 32060);
-- Krixel Pinchwhistle
DELETE FROM `npc_vendor` WHERE (`entry`=23396);
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`) VALUES
(23396, 33313),
(23396, 31958),
(23396, 31959),
(23396, 31960),
(23396, 31961),
(23396, 31962),
(23396, 31963),
(23396, 31964),
(23396, 31965),
(23396, 31966),
(23396, 31967),
(23396, 31968),
(23396, 31969),
(23396, 31986),
(23396, 31971),
(23396, 31972),
(23396, 31973),
(23396, 31974),
(23396, 31975),
(23396, 31976),
(23396, 31977),
(23396, 31978),
(23396, 31979),
(23396, 31980),
(23396, 31981),
(23396, 31982),
(23396, 31983),
(23396, 32963),
(23396, 31984),
(23396, 31985),
(23396, 33946),
(23396, 33943),
(23396, 33076),
(23396, 31987),
(23396, 31988),
(23396, 31989),
(23396, 31990),
(23396, 31991),
(23396, 31992),
(23396, 31993),
(23396, 31997),
(23396, 31995),
(23396, 31996),
(23396, 31998),
(23396, 31999),
(23396, 32000),
(23396, 32001),
(23396, 32002),
(23396, 32003),
(23396, 33937),
(23396, 33077),
(23396, 33949),
(23396, 32004),
(23396, 32005),
(23396, 32006),
(23396, 32007),
(23396, 32008),
(23396, 32009),
(23396, 32010),
(23396, 32011),
(23396, 32012),
(23396, 32013),
(23396, 32014),
(23396, 32015),
(23396, 32016),
(23396, 32017),
(23396, 32018),
(23396, 32019),
(23396, 32020),
(23396, 32021),
(23396, 32022),
(23396, 32023),
(23396, 32024),
(23396, 32025),
(23396, 30486),
(23396, 30487),
(23396, 30488),
(23396, 30489),
(23396, 30490),
(23396, 32026),
(23396, 32027),
(23396, 33309),
(23396, 32961),
(23396, 32028),
(23396, 32029),
(23396, 32030),
(23396, 32031),
(23396, 32032),
(23396, 32033),
(23396, 32964),
(23396, 32034),
(23396, 32035),
(23396, 32036),
(23396, 32037),
(23396, 32038),
(23396, 32039),
(23396, 32040),
(23396, 32041),
(23396, 32042),
(23396, 32043),
(23396, 32044),
(23396, 32045),
(23396, 32046),
(23396, 32047),
(23396, 32048),
(23396, 32049),
(23396, 32050),
(23396, 32051),
(23396, 32052),
(23396, 32053),
(23396, 33940),
(23396, 33952),
(23396, 33078),
(23396, 32962),
(23396, 32054),
(23396, 32055),
(23396, 32056),
(23396, 32057),
(23396, 32058),
(23396, 32059),
(23396, 32060);

-- Evee Copperspring stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '4100', `maxhealth` = '4100', `npcflag` = `npcflag`|'129', `flags` = `flags`|'514' WHERE `entry` = '25177';
-- Frixee Brasstumbler stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '8400', `maxhealth` = '8400', `npcflag` = `npcflag`|'129', `flags` = `flags`|'514' WHERE `entry` = '25179';
-- Grikkin Copperspring stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '7900', `maxhealth` = '7900', `npcflag` = `npcflag`|'129', `flags` = `flags`|'514' WHERE `entry` = '25176';
-- Krixel Pinchwhistle stats
UPDATE `creature_template` SET `minhealth` = '11000', `maxhealth` = '11000', `flags` = `flags`|'514' WHERE `entry` = '23396';

DELETE FROM `creature_loot_template` WHERE `item` = 6766;

-- deleting the doublespawned Joseph's Chest according the position
DELETE FROM `gameobject` WHERE `guid`=20582;

update `creature_template` set `faction_A`='1620', `faction_H`='1620' where `entry` in ('18925', '18806');


-- gameobjects
DELETE FROM `gameobject` WHERE `id`=('179559');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44726, 179559, 429, 261.833, -455.17, -119.962, 4.90505, 0, 0, 0.635818, -0.771839, 180, 100, 1),
(44727, 179559, 429, 271.932, -452.03, -119.962, 4.22411, 0, 0, 0.857061, -0.515214, 180, 100, 1),
(44728, 179559, 429, 264.225, -445.195, -119.962, 4.49507, 0, 0, 0.779619, -0.626254, 180, 100, 1),
(44729, 179559, 429, 260.216, -441.411, -119.962, 4.6011, 0, 0, 0.745339, -0.666686, 180, 100, 1),
(44730, 179559, 429, 261.893, -449.823, -119.962, 4.78173, 0, 0, 0.682169, -0.731194, 180, 100, 1);

-- General Twinbraid's Strongbox
DELETE FROM `gameobject` WHERE `id` = '3646';
INSERT IGNORE INTO `gameobject` (`guid`, `id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES ('44731', '3646', '1', '-4079.51', '-2355.85', '108.909', '5.10412', '0', '0', '0.555973', '-0.8312', '60', '100', '1');

DELETE FROM `gameobject` WHERE `id` IN (141980, 141981);
INSERT IGNORE INTO `gameobject` VALUES
(44732, 141981, 0, -10633.4, -2985.83, 28.986, 4.74371, 0, 0, 0.695946, -0.718095, -600, 0, 1),
(44733, 141980, 0, -10633.4, -2985.83, 28.986, 4.74371, 0, 0, 0.695946, -0.718095, -600, 0, 1);
delete from `quest_start_scripts` where `id` = 2701;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(2701, 0, 9, 44732, 600, '', '', '', '', ''),
(2701, 0, 9, 44733, 600, '', '', '', '', '');

DELETE FROM `gameobject` WHERE `id` IN (20447, 181964, 184729, 184737, 177226, 179910, 179544, 179499);
INSERT IGNORE INTO `gameobject` VALUES
(44734, 181964, 530, -1946.03, -12883.6, 85.9281, 0.648948, 0, 0, 0.31881, 0.947818, 600, 0, 1),
(44735, 184729, 530, 1315.13, 6689.44, -18.3601, 1.914, 0, 0, 0.817468, 0.575973, 600, 100, 1),
(44736, 184737, 530, 1315.13, 6689.44, -18.3601, 3.34657, 0, 0, 0.994753, -0.10231, 600, 100, 1),
(44737, 177226, 1, -6724.46, -4723.56, 22.8288, 2.31933, 0, 0, 0.916668, 0.399649, 180, 0, 1),
(44738, 179910, 0, 409.278, -4824.31, 10.8469, 2.82366, 0, 0, 0.987392, 0.158296, 600, 100, 1),
(44739, 179544, 429, 168.564, 526.016, -48.4669, 1.62774, 0, 0, 0.72695, 0.68669, 180, 0, 1),
(44740, 179499, 429, 599.501, 606.489, -4.75246, 3.74834, 0, 0, 0.954335, -0.298739, 7200, 100, 1),
(44741, 20447, 1, -5570.07, -1573.35, 9.38747, 0.934452, 0, 0, 0.450411, 0.892821, 300, 100, 1);


-- creatures
DELETE FROM `creature` WHERE `id` IN (22143, 22144, 22148, 23022);
INSERT IGNORE INTO `creature` VALUES (91714, '22143', '530', '0', '599', '-1501.91', '5836.11', '202.229', '6.02919', '300', '2', '0', '-1501.91', '5836.11', '202.229', '0', '9485', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91715, '22148', '530', '0', '1375', '-1482.63', '5855.23', '200.262', '0.259386', '300', '0', '0', '-1482.63', '5855.23', '200.262', '0', '7214', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91716, '22144', '530', '0', '1463', '-1469.05', '5861.15', '199.129', '4.07315', '300', '0', '0', '-1469.05', '5861.15', '199.129', '0', '9485', '3231', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91717, '22144', '530', '0', '1463', '-1466.07', '5850.77', '200.025', '2.80814', '300', '0', '0', '-1466.07', '5850.77', '200.025', '0', '9485', '3231', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91718, '22144', '530', '0', '1463', '-1477.65', '5817.77', '204.174', '1.71225', '300', '4', '0', '-1477.65', '5817.77', '204.174', '0', '9485', '3231', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91719, '22144', '530', '0', '1463', '-1533.12', '5897.32', '198.947', '1.67677', '300', '0', '0', '-1533.12', '5897.32', '198.947', '0', '9250', '3155', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91720, '22143', '530', '0', '599', '-1551.94', '5916.72', '199.769', '2.07994', '300', '0', '0', '-1551.94', '5916.72', '199.769', '0', '9485', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91721, '22143', '530', '0', '599', '-1481.7', '5928.15', '194.61', '3.39731', '300', '0', '0', '-1481.7', '5928.15', '194.61', '0', '9485', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91722, '22143', '530', '0', '599', '-1475.36', '5946.29', '231.56', '4.82792', '300', '0', '0', '-1475.36', '5946.29', '231.56', '0', '9720', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91723, '22148', '530', '0', '1375', '-1502.15', '5912.79', '194.478', '2.06345', '300', '5', '0', '-1502.15', '5912.79', '194.478', '0', '7214', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91724, '22148', '530', '0', '1375', '-1577.6', '5997.89', '204.892', '5.81961', '300', '0', '0', '-1577.6', '5997.89', '204.892', '0', '7214', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91725, '22148', '530', '0', '1375', '-1578.38', '5977.31', '204.707', '0.245511', '300', '0', '0', '-1578.38', '5977.31', '204.707', '0', '7214', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91726, '22144', '530', '0', '1463', '-1534.3', '6029.87', '196.305', '4.60054', '300', '4', '0', '-1534.3', '6029.87', '196.305', '0', '9250', '3155', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91727, '22143', '530', '0', '599', '-1522.98', '6000.17', '193.162', '0.0902636', '300', '5', '0', '-1522.98', '6000.17', '193.162', '0', '9485', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91728, '22144', '530', '0', '1463', '-1392', '5885.14', '186.955', '2.52804', '300', '0', '0', '-1392', '5885.14', '186.955', '0', '9485', '3231', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91729, '22144', '530', '0', '1463', '-1362.35', '5833.74', '186.071', '5.80577', '300', '5', '0', '-1362.35', '5833.74', '186.071', '0', '9250', '3155', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91730, '22143', '530', '0', '599', '-1326.3', '5901.12', '190.996', '5.93103', '300', '5', '0', '-1326.3', '5901.12', '190.996', '0', '9720', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91731, '22144', '530', '0', '1463', '-1331.45', '5854.27', '222.398', '0.757743', '300', '0', '0', '-1331.45', '5854.27', '222.398', '0', '9250', '3155', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91732, '22148', '530', '0', '1375', '-1258.5', '5874.49', '183.428', '5.46489', '300', '5', '0', '-1258.5', '5874.49', '183.428', '0', '7214', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91733, '22143', '530', '0', '599', '-1285.06', '5837.2', '185.61', '3.88389', '300', '5', '0', '-1285.06', '5837.2', '185.61', '0', '9720', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91734, '22144', '530', '0', '1463', '-1289.37', '5750.7', '189.228', '2.06085', '300', '4', '0', '-1289.37', '5750.7', '189.228', '0', '9485', '3231', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91735, '22143', '530', '0', '599', '-1357.05', '5779.09', '191.121', '0.674748', '300', '0', '0', '-1357.05', '5779.09', '191.121', '0', '9720', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91736, '22143', '530', '0', '599', '-1373.85', '5763.62', '189.939', '0.568063', '300', '4', '0', '-1373.85', '5763.62', '189.939', '0', '9720', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91737, '22143', '530', '0', '599', '-1316.63', '5781.18', '184.33', '4.6965', '300', '3', '0', '-1316.63', '5781.18', '184.33', '0', '9485', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91738, '23022', '530', '0', '0', '-1315.22', '5809.05', '186.312', '5.15544', '300', '5', '0', '-1315.22', '5809.05', '186.312', '0', '27244', '6462', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91739, '22148', '530', '0', '1375', '-1339.94', '5707.33', '181.108', '4.36245', '300', '0', '0', '-1339.94', '5707.33', '181.108', '0', '7214', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91740, '22144', '530', '0', '1463', '-1387.87', '5654.51', '181.477', '3.63622', '300', '0', '0', '-1387.87', '5654.51', '181.477', '0', '9250', '3155', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91741, '22144', '530', '0', '1463', '-1401.78', '5649.74', '181.736', '6.22476', '300', '0', '0', '-1401.78', '5649.74', '181.736', '0', '9250', '3155', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91742, '22144', '530', '0', '1463', '-1387.99', '5643.67', '181.471', '2.40838', '300', '0', '0', '-1387.99', '5643.67', '181.471', '0', '9485', '3231', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91743, '22143', '530', '0', '599', '-1359.09', '5628.84', '181.522', '2.54326', '300', '3', '0', '-1359.09', '5628.84', '181.522', '0', '9720', '0', '0', '1');
INSERT IGNORE INTO `creature` VALUES (91744, '22143', '530', '0', '599', '-1335.39', '5599.93', '216.873', '5.88526', '300', '0', '0', '-1335.39', '5599.93', '216.873', '0', '9720', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91745, '22148', '530', '0', '1375', '-1351.55', '5595.39', '218.112', '4.6658', '300', '0', '0', '-1351.55', '5595.39', '218.112', '0', '7214', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91746, '22143', '530', '0', '599', '-1301.92', '5591.16', '196.79', '5.83552', '300', '0', '0', '-1301.92', '5591.16', '196.79', '0', '9485', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91747, '22143', '530', '0', '599', '-1270.2', '5648.68', '216.688', '5.6514', '300', '0', '0', '-1270.2', '5648.68', '216.688', '0', '9485', '0', '0', '0');
INSERT IGNORE INTO `creature` VALUES (91748, '22144', '530', '0', '1463', '-1225.45', '5704.02', '215.466', '6.04332', '300', '0', '0', '-1225.45', '5704.02', '215.466', '0', '9485', '3231', '0', '0');

DELETE FROM `creature` WHERE `id` IN (5296,5299,5297);

-- random movement
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (5299, 5297);

INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(91749,5296,1,0,0,-3955.96,1958.92,86.8278,1.50961,300,5,0,-3955.96,1958.92,86.8278,0,2400,0,0,1),
(91750,5296,1,0,0,-3876.93,1938.15,75.6216,6.22828,300,5,0,-3876.93,1938.15,75.6216,0,2400,0,0,1),
(91751,5296,1,0,0,-3668.9,1924.89,84.7403,0.179922,300,5,0,-3668.9,1924.89,84.7403,0,2500,0,0,1),
(91752,5296,1,0,0,-3608.42,1894.84,105.221,2.94374,300,5,0,-3608.42,1894.84,105.221,0,2500,0,0,1),
(91753,5296,1,0,0,-3886.91,1888.53,81.2768,0.827092,300,5,0,-3886.91,1888.53,81.2768,0,2400,0,0,1),
(91754,5296,1,0,0,-3790.88,1842.41,129.151,0.980238,300,5,0,-3790.88,1842.41,129.151,0,2500,0,0,1),
(91755,5296,1,0,0,-3691.74,1828.23,123.311,0.327574,300,5,0,-3691.74,1828.23,123.311,0,2400,0,0,1),
(91756,5296,1,0,0,-3789.68,1785.81,138.942,2.33034,300,5,0,-3789.68,1785.81,138.942,0,2400,0,0,1),
(91757,5296,1,0,0,-3840.6,1750.96,143.547,1.30145,300,5,0,-3840.6,1750.96,143.547,0,2400,0,0,1),
(91758,5296,1,0,0,-3863.29,1691.65,143.239,0.806639,300,5,0,-3863.29,1691.65,143.239,0,2400,0,0,1),
(91759,5296,1,0,0,-3904.17,1664.41,118.225,5.88737,300,5,0,-3904.17,1664.41,118.225,0,2500,0,0,1),
(91760,5296,1,0,0,-3894.87,1582.03,119.286,1.48519,300,5,0,-3894.87,1582.03,119.286,0,2400,0,0,1),
(91761,5299,1,0,0,-3974.59,1993.42,90.7549,1.77974,300,5,0,-3974.59,1993.42,90.7549,0,2500,0,0,0),
(91762,5299,1,0,0,-3872.24,1951.78,75.2247,0.351082,300,5,0,-3872.24,1951.78,75.2247,0,2600,0,0,0),
(91763,5299,1,0,0,-3896.84,1862.22,86.7441,2.23997,300,5,0,-3896.84,1862.22,86.7441,0,2500,0,0,0),
(91764,5299,1,0,0,-3787.5,1839.06,127.72,3.50132,300,5,0,-3787.5,1839.06,127.72,0,2500,0,0,0),
(91765,5299,1,0,0,-3845.28,1833.19,122.24,1.8402,300,5,0,-3845.28,1833.19,122.24,0,2500,0,0,0),
(91766,5299,1,0,0,-3729.32,1829.37,138.124,0.10682,300,5,0,-3729.32,1829.37,138.124,0,2600,0,0,0),
(91767,5299,1,0,0,-3758.3,1782.92,153.876,3.47618,300,5,0,-3758.3,1782.92,153.876,0,2600,0,0,0),
(91768,5299,1,0,0,-3840.39,1786.38,136.549,1.57552,300,5,0,-3840.39,1786.38,136.549,0,2600,0,0,0),
(91769,5299,1,0,0,-3871.43,1689.63,141.938,0.805827,300,5,0,-3871.43,1689.63,141.938,0,2600,0,0,0),
(91770,5299,1,0,0,-3944.66,1664.62,134.607,5.10901,300,5,0,-3944.66,1664.62,134.607,0,2500,0,0,0),
(91771,5299,1,0,0,-3905.06,1566.19,122.405,1.43728,300,5,0,-3905.06,1566.19,122.405,0,2500,0,0,0),
(91772,5297,1,0,0,-3941.92,2034.66,93.5707,5.66665,300,5,0,-3941.92,2034.66,93.5707,0,2700,0,0,0),
(91773,5297,1,0,0,-3876.44,1879.05,85.8204,0.892999,300,5,0,-3876.44,1879.05,85.8204,0,2700,0,0,0),
(91774,5297,1,0,0,-3815.97,1833.44,127.165,3.62226,300,5,0,-3815.97,1833.44,127.165,0,2700,0,0,0),
(91775,5297,1,0,0,-3792.54,1791.75,138.49,2.36248,300,5,0,-3792.54,1791.75,138.49,0,2500,0,0,0),
(91776,5297,1,0,0,-3841.68,1742.2,143.447,1.36895,300,5,0,-3841.68,1742.2,143.447,0,2700,0,0,0),
(91777,5297,1,0,0,-3873.14,1673.46,137.935,1.46162,300,5,0,-3873.14,1673.46,137.935,0,2500,0,0,0),
(91778,5297,1,0,0,-3938.62,1666.32,134.607,4.65505,300,5,0,-3938.62,1666.32,134.607,0,2500,0,0,0),
(91779,5297,1,0,0,-3903.95,1564.53,122.189,0.999026,300,5,0,-3903.95,1564.53,122.189,0,2500,0,0,0);

DELETE FROM `creature` WHERE `id` IN (23428, 23112, 22266, 23110, 22270, 22264, 22271, 23233, 23347, 23362, 23253, 23300, 23256, 23316, 23365, 23115);

-- Jho'nass - 23428
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=23428;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91780, 23428, 530, '2278.7', '7330.6', '366.763', '5.46139', 25, 0, 0, '2278.7', '7330.6', '366.763', '5.46139', 1200, 0, 0, 0);
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(23428, 33934, 0, 0),
(23428, 33935, 0, 0);

-- Mingo - 23112
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=23112;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91781, 23112, 530, '2308.44', '7263.41', '365.553', '1.83285', 25, 0, 0, '2308.44', '7263.41', '365.553', '1.83285', 20100, 0, 0, 0);

-- Ogri'la Grubgiver - 22266
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=22266;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91782, 22266, 530, '2302.08', '7335.93', '366.857', '4.38933', 25, 0, 0, '2302.08', '7335.93', '366.857', '4.38933', 8250, 0, 0, 0);

-- Ogri'la Keg King - 23110
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=23110;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91783, 23110, 530, '2324.68', '7336.14', '366.89', '5.24934', 25, 0, 0, '2324.68', '7336.14', '366.89', '5.24934', 19000, 0, 0, 0);

-- Ogri'la Merchant - 22270
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=22270;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91784, 22270, 530, '2292.5', '7335.65', '366.858', '5.04121', 25, 0, 0, '2292.5', '7335.65', '366.858', '5.04121', 6650, 0, 0, 0);

-- Ogri'la Steelshaper - 22264
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872, `npcflag`=4225 WHERE `entry`=22264;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91785, 22264, 530, '2331.76', '7242.9', '365.668', '0.446133', 180, 0, 0, '2331.76', '7242.9', '365.668', '0.446133', 14000, 3400, 0, 0);

-- Ogri'la Trader - 22271
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=22271;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91786, 22271, 530, '2363.78', '7288.47', '365.958', '3.41936', 25, 0, 0, '2363.78', '7288.47', '365.958', '3.41936', 7200, 0, 0, 0);

-- Chu'a'lor - 23233
UPDATE `creature_template` SET `faction_A`=1872, `faction_H`=1872 WHERE `entry`=23233;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91787, 23233, 530, 0, 0, 2335.24, 7285.18, 365.617, 2.7536, 25, 0, 0, 2335.24, 7285.18, 365.617, 0, 8900, 0, 0, 1);

-- Tork - 23347
UPDATE `creature_template` SET `minlevel` = '65', `maxlevel` = '65', `minhealth` = '7800', `maxhealth` = '7800', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100', `baseattacktime` = '1500',
`rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23347;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91788, 23347, 530, 0, 0, 2324.72, 7307.82, 365.622, 4.25764, 25, 0, 0, 2324.72, 7307.82, 365.622, 0, 7800, 0, 0, 0);

-- Torki - 23362
UPDATE `creature_template` SET `minlevel` = '65', `maxlevel` = '65', `minhealth` = '8900', `maxhealth` = '9000', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100', `baseattacktime` = '1500',
`rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23362;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91789, 23362, 530, 0, 0, 2285.18, 7279.5, 365.762, 0.353965, 25, 0, 0, 2285.18, 7279.5, 365.762, 0, 9000, 0, 0, 0);

-- Kronk - 23253
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '13000', `maxhealth` = '13000', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100', `baseattacktime` = '1500',
`rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23253;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91790, 23253, 530, 0, 0, 2313.07, 7276.83, 365.462, 1.14747, 25, 0, 0, 2313.07, 7276.83, 365.462, 0, 13000, 0, 0, 0);

-- This creature must be sit down and because is only one into the whole wow is not need to be added in creature_addon table
DELETE FROM `creature_template_addon` WHERE `entry` =23253;
INSERT IGNORE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`) VALUES (23253, '', 512, 1, 4097, 13);

-- Gahk - 23300
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '33000', `maxhealth` = '33000', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100', `baseattacktime` = '1500',
`rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23300;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91791, 23300, 530, 0, 0, 2308.34, 7300.44, 365.617, 5.86771, 25, 0, 0, 2308.34, 7300.44, 365.617, 0, 33000, 0, 0, 0);

-- Ogri'la Storyteller - 23256
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '73', `minhealth` = '6400', `maxhealth` = '9000', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100', `baseattacktime` = '1500',
`rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23256;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91792, 23256, 530, 0, 0, 2280.05, 7310.23, 365.158, 5.40825, 25, 0, 0, 2280.05, 7310.23, 365.158, 0, 9000, 0, 0, 0);

-- Torkus - 23316
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '7000', `maxhealth` = '7000', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100', `baseattacktime` = '1500',
`rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23316;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91793, 23316, 530, 0, 0, 2315.89, 7304.39, 366.92, 5.01167, 25, 0, 0, 2315.89, 7304.39, 366.92, 0, 7000, 0, 0, 0);

-- Torkus Jr. - 23365
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6100', `maxhealth` = '6100', `minmana` = '2790',
`maxmana` = '2790', `faction_A` = '1872', `faction_H` = '1872', `speed` = '1.48', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100',
`baseattacktime` = '1500', `rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100',
`MovementType` = '1' WHERE `entry` =23365;
UPDATE `creature_template` SET `civilian` = '1', `flag1` = '0' WHERE `entry` =23365;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91794, 23365, 530, 0, 0, 2306.95, 7287.63, 365.617, 0.346962, 25, 0, 0, 2306.95, 7287.63, 365.617, 0, 6100, 2790, 0, 0);

-- Ogri'la Peacekeeper - 23115
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '73', `minhealth` = '6900', `maxhealth` = '10100', `faction_A` = '1872',
`faction_H` = '1872', `speed` = '1.48', `npcflag` = 268435456, `rank` = '1', `mindmg` = '200', `maxdmg` = '300', `attackpower` = '100',
`baseattacktime` = '1500', `rangeattacktime` = '1650', `minrangedmg` = '200', `maxrangedmg` = '300', `rangedattackpower` = '100' WHERE `entry` =23115;

-- Bladespire Elder - 22262
-- The Bladespire ogres at this location were removed for 2.1 [url="http://www.wowhead.com/?npc=22262#comments"]http://www.wowhead.com/?npc=22262#comments[/url] removing wrong location.
DELETE FROM `creature` WHERE `guid` IN (78268, 78269);
-- Bladespire Guardian - 22261
-- These creatures has been removed from this location in WoW 2.1 but they are in the same place that must be Ogri'la Peacekeeper, so i just update their id.
UPDATE `creature` SET `id`=23115 WHERE `id`=22261;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91795, 23115, 530, 0, 0, 2274.66, 7255.09, 363.897, 4.33024, 25, 0, 0, 2274.66, 7255.09, 363.897, 0, 10100, 0, 0, 0);
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91796, 23115, 530, 0, 0, 2364.95, 7233.32, 365.741, 5.54821, 25, 0, 0, 2364.95, 7233.32, 365.741, 0, 10100, 0, 0, 0);
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91797, 23115, 530, 0, 0, 2391.88, 7330.96, 365.924, 0.0652802, 25, 0, 0, 2391.88, 7330.96, 365.924, 0, 10100, 0, 0, 0);

-- Quest: A Special Thank You
UPDATE `quest_template` SET `RequiredMinRepFaction` = '1038', `RequiredMinRepValue` = '6000' WHERE `entry` =11091;

-- delete unneeded forge and dupe cauldron
DELETE FROM `gameobject` WHERE `guid` = 25045;
DELETE FROM `gameobject` WHERE `guid`= 27640;

DELETE FROM `creature` WHERE `id` IN ('25179', '23396', '25176', '25177');
-- Arena Season 2 Vendors spawn
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- Krixel Pinchwhistle
('91798', '23396', '530', '0', '0', '3074.89', '3663.82', '142.80', '2.95', '120', '0', '0', '3074.89', '3663.82', '142.80', '2.95', '11000', '0', '0', '0'),
-- Grikkin Copperspring
('91799', '25176', '530', '0', '0', '-2159.90', '6634.74', '0.87', '0.48', '120', '0', '0', '-2159.90', '6634.74', '0.87', '0.48', '7900', '0', '0', '0'),
-- Frixee Brasstumbler
('91800', '25179', '530', '0', '0', '2896.93', '5986.73', '1.78', '0.92', '120', '0', '0', '2896.93', '5986.73', '1.78', '0.92', '8400', '0', '0', '0'),
-- Evee Copperspring
('91801', '25177', '1', '0', '0', '-7120.64', '-3769.91', '9.15', '0.81', '120', '0', '0', '-7120.64', '-3769.91', '9.15', '0.81', '4100', '0', '0', '0');

UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 182196;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 182198;

-- nf
-- Betrayed && The True Masters (lady prestor)
update `quest_template` set `SpecialFlags` = `SpecialFlags`|2 where `entry` in (3505, 4185);
-- The First and the Last
update `quest_template` set `MinLevel` = 56 where `entry` in (6182, 6182);

-- brutal-quests (warrior)
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 1838;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1838, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 1842 where `entry` = 1839;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1842, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 1842;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1842, `NextQuestId` = 1848, `ExclusiveGroup` = -1843, `NextQuestInChain` = 0 where `entry` = 1843;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1838, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 1844 where `entry` = 1840;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1840, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 1844;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1844, `NextQuestId` = 1848, `ExclusiveGroup` = -1843, `NextQuestInChain` = 0 where `entry` = 1845;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1838, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 1846 where `entry` = 1841;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1841, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 1846;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 1846, `NextQuestId` = 1848, `ExclusiveGroup` = -1843, `NextQuestInChain` = 0 where `entry` = 1847;
update `quest_template` set `MinLevel` = 20, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 1848;

-- gnomeregan
-- sparklematic 5200
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 0 where `entry` = 2951;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 2951, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 0 where `entry` = 2952;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 2952, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 1 where `entry` = 2953;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 0 where `entry` = 4601;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 4601, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 0 where `entry` = 4605;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 4605, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 1 where `entry` = 4603;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 0 where `entry` = 4602;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 4602, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 0 where `entry` = 4606;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 4606, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0, `SpecialFlags` = 1 where `entry` = 4604;

update `quest_template` set `PrevQuestId` = 0 where `entry` = 2930;
update `quest_template` set `RequiredRaces` = 1101 where `entry` in (2930, 2931, 2924, 2925);
update `quest_template` set `PrevQuestId` = -2841 where `entry` = 2842;
update `quest_template` set `RequiredRaces` = 690 where `entry` in (2841, 2842, 2843);
update `quest_template` set `SpecialFlags` = 2 where `entry` = 2843;
update `quest_template` set `PrevQuestId` = 0 where `entry` = 2924;

-- misc
update `quest_template` set `RewRepFaction1` = 967, `RewRepValue1` = 250 where `entry` = 9824;
update `quest_template` set `NextQuestInChain` = 0 where `entry` = 9824;
update `quest_template` set `NextQuestId` = 0 where `entry` = 9739;
update `quest_template` set `MinLevel` = 60 where `entry` = 7670;
update `quest_template` set `PrevQuestId` = 8284 where `entry` = 8285;

-- engineering cards
update `quest_template` set `RequiredSkillValue` = 200 where `entry` in (3644, 3645, 3646, 3647);
update `quest_template` set `PrevQuestId` = 3639 where `entry` = 3644;
update `quest_template` set `PrevQuestId` = 3641 where `entry` = 3645;
update `quest_template` set `PrevQuestId` = 3639 where `entry` = 3646;
update `quest_template` set `PrevQuestId` = 3643 where `entry` = 3647;
update `quest_template` set `PrevQuestId` = 3906 where `entry` = 3981;

-- Mission accomplished!
update `quest_template` set `RewRepFaction1` = 529, `RewRepFaction2` = 67, `RewRepValue1` = 1000, `RewRepValue2` = 500 where `entry` = 5237;
update `quest_template` set `RewRepFaction1` = 529, `RewRepFaction2` = 469, `RewRepValue1` = 1000, `RewRepValue2` = 500 where `entry` = 5238;

-- Thwarting Kolkar Aggression
update `quest_template` set `RequiredRaces` = 690, `ReqSpellCast1` = 0, `ReqSpellCast2` = 0, `ReqSpellCast3` = 0 where `entry` = 786;

-- Portals of the Legion
update `quest_template` set `ReqSpellCast1` = 0 where `entry` = 5581;

-- The Eyes of Grillok
update `quest_template` set `ReqSpellCast1` = 38530 where `entry` = 10813;

-- Seeking Spiritual Aid
update `quest_template` set `CompleteScript` = 5158 where `entry` = 5158;
delete from `quest_end_scripts` where `id` = 5158;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(5158, 0, 4, 46, 0x02000000, '', 0, 0, 0, 0),
(5158, 1, 3, 0, 0, '', -1345.16, -4065.02, -0.49, 4.73),
(5158, 6, 10, 11256, 30000, '', -1346.59, -4076.39, -1.23, 1.6),
(5158, 8, 2, 159, 8, '', 0, 0, 0, 0),
(5158, 10, 0, 0, 0, 'Spirits of Water, I give you praise, and I beg of you a favour. You have heard $N\'s pleas, and I trust his inent is noble. Please, will you aid us?', 0, 0, 0, 0),
(5158, 22, 0, 0, 0, 'Thank you great spirit. Thank you!', 0, 0, 0, 0),
(5158, 23, 2, 159, 0, '', 0, 0, 0, 0),
(5158, 24, 3, 0, 0, '', -1345.0, -4048.0, 6.09, 4.34),
(5158, 30, 5, 46, 0x02000000, '', 0, 0, 0, 0);

-- Gnomer-gooooone!
update `quest_template` set `StartScript` = 2843 where `entry` = 2843;
delete from `quest_start_scripts` where `id` = 2843;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(2843, 10, 7, 2843, 0, '', 0, 0, 0, 0);

-- Skirmish at Echo Ridge
update `quest_template` set `CompleteScript` = 21 where `entry` = 21;
delete from `quest_end_scripts` where `id` = 21;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(21, 2, 0, 0, 0, 'You are Dismissed, $N', 0, 0, 0, 0),
(21, 2, 1, 0x71, 0, '', 0, 0, 0, 0);

-- Heroes of Old
update `quest_template` set `StartScript` = 2701 where `entry` = 2701;
update `quest_template` set `StartScript` = 2702 where `entry` = 2702;
delete from `quest_start_scripts` where `id` = 2702;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(2702, 1, 10, 7750, 900000, '', -10630.35, -2987.05, 28.96, 4.54);

-- The Caverns of Time (not fully proper script, but will do until better suport)
update `quest_template` set `StartScript` = 10277 where `entry` = 10277;
delete from `quest_start_scripts` where `id` = 10277;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(10277, 2, 0, 1, 0, '[PH] Greetings, $N.', 0, 0, 0, 0),
(10277, 10, 7, 10277, 0, '', 0, 0, 0, 0);

-- The Absent Minded Prospector
update `quest_template` set `CompleteScript` = 943 where `entry` = 943;
delete from `quest_end_scripts` where `id` = 943;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(943, 0, 10, 3582, 40000, '', '-3809', '-839', '16.94', '2.16'),
(943, 0, 0, 0, 0, 'By the stars! A spirit has been summoned!', 0, 0, 0, 0),
(943, 1, 3, 0, 0, '', -3811.99, -835.09, 16.94, 5.21),
(943, 25, 0, 0, 0, 'It\'s a mystery of the past indeed! But a key to our future!', 0, 0, 0, 0),
(943, 30, 3, 0, 0, '', -3819, -821, 16.94, 4.70);

-- The Thunderspike
update `quest_template` set `CompleteScript` = 10526 where `entry` = 10526;
delete from `quest_end_scripts` where `id` = 10526;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(10526, 0, 10, 21950, 900000, '', '2272.95', '5984.40', '142.79', '6.23'),
(10526, 0, 10, 21952, 900000, '', '2273.26', '5986.73', '142.75', '5.14'),
(10526, 0, 10, 21951, 900000, '', '2270.95', '5982.93', '142.83', '0.31'),
(10526, 0, 10, 21951, 900000, '', '2271.17', '5986.07', '142.81', '5.86');

-- Take Down Tethyr!
update `quest_template` set `StartScript` = 11198 where `entry` = 11198;
delete from `quest_start_scripts` where `id` = 11198;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(11198, 2, 0, 2, 0, 'Keep moving!', 0, 0, 0, 0),
(11198, 5, 10, 23900, 900000, '', -3924.35, -4656.55, 9.15409, 5.80749),
(11198, 5, 10, 23900, 900000, '', -3917.6, -4648.53, 9.32604, 5.56795),
(11198, 5, 10, 23900, 900000, '', -3904.77, -4635.09, 9.62735, 5.49334),
(11198, 5, 10, 23900, 900000, '', -3890.48, -4620.7, 9.55527, 4.99383),
(11198, 5, 10, 23900, 900000, '', -3865.94, -4617.2, 9.26262, 4.16523),
(11198, 5, 10, 23900, 900000, '', -3856.59, -4622.45, 9.24753, 3.87856),
(11198, 5, 10, 23900, 900000, '', -3834.8, -4645.41, 9.25827, 3.61152),
(11198, 5, 10, 23900, 900000, '', -3826.61, -4655.32, 9.21484, 3.13243),
(11198, 5, 10, 23900, 900000, '', -3830.76, -4673.74, 9.50962, 2.70832),
(11198, 5, 10, 23900, 900000, '', -3843.65, -4687.59, 9.6436, 2.43735),
(11198, 5, 10, 23900, 900000, '', -3851.97, -4697.24, 9.36834, 2.33525),
(11198, 5, 10, 23900, 900000, '', -3858.49, -4703.49, 9.17411, 2.33525),
(11198, 8, 10, 23899, 900000, '', '-3891.03', '-4671.17', '-1.52', '0.74');

-- beta trash
update `quest_template` set `PrevQuestId` = 0 where `entry` = 10084;

-- Life's Finer Pleasures
update `quest_template` set `Details` = '', `SpecialFlags` = `SpecialFlags`|1 where `entry` = 9483;

-- The Den
update `quest_template` set `ReqSourceId1` = 31347, `ReqSourceCount1` = 1, `ReqSourceRef1` = 1 where `entry` = 1089;

-- Oran's Gratitude
update `quest_template` set `RewRepFaction1` = 68, `RewRepValue1` = 75 where `entry` = 8273;

--
--
--

-- cannons are real slow creatures
update `creature_template` set `speed` = 0.01 where `entry` in (19067, 19210, 19211, 19212, 19399, 21233, 22443, 22451);
-- Underground Well Credit Marker
update `creature_template` set `flags` = `flags`|33554432 where `entry` = 18161;

-- flight masters cenarion hold
update `creature_template` set `faction_A` = 995, `faction_H` = 995 where `entry` = 15178;
update `creature_template` set `faction_A` = 996, `faction_H` = 996 where `entry` = 15177;
-- talendris point
update `creature_template` set `faction_A` = 1097, `faction_H` = 1097 where `entry` = 12577;

-- relocate Captured Arko'nari.n
update `creature` set `position_x` = '5007.31', `position_y` = '-440.24', `position_z` = '319.05', `orientation` = '2.94', `spawn_position_x` = '5007.31', `spawn_position_y` = '-440.24', `spawn_position_z` = '319.05', `spawn_orientation` = '2.94' where `id` = 11016;
-- Relocate Sergeant Durgen Stormpike
update `creature` set `position_x` = '61.82', `position_y` = '-248.94', `position_z` = '129.33', `orientation` = '3.59', `spawn_position_x` = '61.82', `spawn_position_y` = '-248.94', `spawn_position_z` = '129.33', `spawn_orientation` = '3.59' where `id` = 13777;

-- Gurok the Usurper
update `creature_template` set `mechanic_immune_mask`=`mechanic_immune_mask`|137296 where `entry` = 18182;

-- few flags missing
update `creature_template` set `npcflag` = `npcflag`|1 where `entry` in (3850, 21981, 18141, 17885);

-- Sorcerer Ashcrombe
INSERT IGNORE INTO `npc_gossip` (`id`, `npc_guid`, `gossip_type`, `textid`, `option_count`) VALUES (0, 16262, 0, 798, NULL);

-- Rethilgore
update `creature_template` set `MovementType` = 0 where `entry` = 3914;
update `creature` set `spawndist` = 0, `MovementType` = 0 where `id` = 3914;

-- remove some non-default spawns (summoned in scripts below)
delete from `creature` where `id` in (3582, 4490, 8581, 11058, 11120, 11121, 11886, 11887, 14748, 16292, 17206, 17715, 22369, 22452);

UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 22288;
UPDATE `creature` SET `MovementType` = 0, `spawndist` = 0 WHERE `id` = 22288;

-- Scarlets in EPL
update `creature_template` set `faction_A` = 67, `faction_H` = 67 where `entry` in (9447, 9448, 9449, 9450, 9451, 9452, 11898, 12352, 15162);

--
--
--

-- Force of Neltharaku
INSERT IGNORE INTO `spell_script_target` VALUES (38762, 1, 21722);
-- Fel Cannon: Hate
INSERT IGNORE INTO `spell_script_target` VALUES (33531, 1, 19212);
-- Fel Cannon: Fear
INSERT IGNORE INTO `spell_script_target` VALUES (33532, 1, 19211);

-- Darkstone of Terokk
DELETE FROM `spell_script_target` WHERE `entry` IN (38729, 38736);
INSERT IGNORE INTO `spell_script_target` VALUES (38729, 1, 22288);
INSERT IGNORE INTO `spell_script_target` VALUES (38736, 1, 22288);

-- Quest Credit for Eye of Grillok
DELETE FROM `spell_script_target` WHERE `entry` = 38530;
INSERT IGNORE INTO `spell_script_target` VALUES (38530, 1, 22177);

-- Ignite Alliance Siege Engine
DELETE FROM `spell_script_target` WHERE `entry` = 33067;
INSERT IGNORE INTO `spell_script_target` VALUES (33067, 1, 18849);
INSERT IGNORE INTO `spell_script_target` VALUES (33067, 1, 19008);

--
--
--

-- old Gri'lek the Wanderer
delete from `gameobject` where `id` = 58;

-- chests always closed by default
update `gameobject` set `state` = 1 where `id` in (select `entry` from `gameobject_template` where `type` = 3) and `state` = 0;

-- Engineer Membership Cards
update `item_template` set `Duration` = 29030400 where `entry` in (10790, 10791);

-- Living Rot
update `item_template` set `Duration` = 600 where `entry` = 15447;

-- Door (one to to Ras, one to jandice)
update `gameobject` set `state` = 0 where `id` in (177370, 175619);

-- The Jewel of the Southsea
update `gameobject` set `spawntimesecs` = 600 where `id` = 123462;

-- Blacksmithing Plans
update `gameobject_template` set `size` = 0.3 where `entry` = 176325;

-- Statue of Queen Azshara
update `gameobject_template` set `size` = 3 where `entry` = 181964;

-- Tower Fire
update `gameobject_template` set `size` = 3 where `entry` in (148996, 149020, 149017, 149019);
-- Tower Smoke
update `gameobject_template` set `size` = 2 where `entry` in (148997, 149022, 149018, 149021);

-- re-use dupe to spawn Blacksmithing Plans
update `gameobject` set `id` = 176325, `map` = 329, `position_x` = 3814.73, `position_y` = -3725.76, `position_z` = 143.583, `orientation` = 0.726876, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.35549, `rotation3` = 0.93468, `spawntimesecs` = 7200, `animprogress` = 100, `state` = 1 where `guid` = 12043;
-- re-use dupe to spawn Blacksmithing Plans
update `gameobject` set `id` = 176327, `map` = 329, `position_x` = 3587.66, `position_y` = -2998.55, `position_z` = 125, `orientation` = 2.76498, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.982322, `rotation3` = 0.187197, `spawntimesecs` = 7200, `animprogress` = 100, `state` = 1 where `guid` = 12044;
-- re-use dupe to spawn Premium Siabi Tobacco
update `gameobject` set `id` = 176248, `map` = 329, `position_x` = 3471.98, `position_y` = -3294.78, `position_z` = 132.221, `orientation` = 5.65684, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.308078, `rotation3` = -0.951361, `spawntimesecs` = 7200, `animprogress` = 100, `state` = 1 where `guid` = 12045;
-- re-use dupe to spawn Altar of the Defiler
update `gameobject` set `id` = 153205, `map` = 0, `position_x` = -11234.1, `position_y` = -2831, `position_z` = 157.925, `orientation` = 4.56246, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.758079, `rotation3` = -0.652163, `spawntimesecs` = 900, `animprogress` = 100, `state` = 1 where `guid` = 16739;

-- tower fire
update `gameobject` set `id` = 148996, `map` = 0, `position_x` = -6902.43, `position_y` = -1082.71, `position_z` = 269.741, `orientation` = 2.71553, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.977395, `rotation3` = 0.211424, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16735;
update `gameobject` set `id` = 149020, `map` = 0, `position_x` = -6993.21, `position_y` = -1134.91, `position_z` = 271.049, `orientation` = 2.06559, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.858734, `rotation3` = -0.652163, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16736;
update `gameobject` set `id` = 149017, `map` = 0, `position_x` = -7021.83, `position_y` = -1294.12, `position_z` = 271.778, `orientation` = 3.36228, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.993918, `rotation3` = -0.110119, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16737;
update `gameobject` set `id` = 149019, `map` = 0, `position_x` = -6929.73, `position_y` = -1430.43, `position_z` = 269.668, `orientation` = 3.2649, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.9981, `rotation3` = -0.0616128, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16738;
-- tower smoke
update `gameobject` set `id` = 148997, `map` = 0, `position_x` = -6902.73, `position_y` = -1082.62, `position_z` = 278.213, `orientation` = 3.00987, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.997832, `rotation3` = 0.0658127, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16740;
update `gameobject` set `id` = 149022, `map` = 0, `position_x` = -6993.09, `position_y` = -1134.88, `position_z` = 279.316, `orientation` = 3.95392, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.918643, `rotation3` = -0.395088, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16741;
update `gameobject` set `id` = 149018, `map` = 0, `position_x` = -7021.90, `position_y` = -1294.26, `position_z` = 280.061, `orientation` = 4.52333, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.770693, `rotation3` = -0.637206, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16742;
update `gameobject` set `id` = 149021, `map` = 0, `position_x` = -6929.74, `position_y` = -1430.36, `position_z` = 277.768, `orientation` = 3.32403, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.995843, `rotation3` = -0.0910906, `spawntimesecs` = -600, `animprogress` = 100, `state` = 1 where `guid` = 16743;

--
--
--

delete from `areatrigger_involvedrelation` where `quest` = 3505;
INSERT IGNORE INTO `areatrigger_involvedrelation` (`id`, `quest`) values
(1388, 3505);

delete from `creature_questrelation` where `quest` in (3644, 3645, 3646, 3647);
delete from `creature_involvedrelation` where `quest` in (3644, 3645, 3646, 3647);
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) values
(8126, 3644),
(7944, 3645),
(8738, 3646),
(7406, 3647);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) values
(8126, 3644),
(7944, 3645),
(8738, 3646),
(7406, 3647);

delete from `creature_questrelation` where `quest` in (5237, 5238);
delete from `creature_involvedrelation` where `quest` in (5237, 5238);
insert into `creature_questrelation` (`id`, `quest`) values 
(10837, 5237),
(10838, 5238);
insert into `creature_involvedrelation` (`id`, `quest`) values 
(10837, 5237),
(10838, 5238);

delete from `gameobject_questrelation` where `quest` in (2951, 2952, 2953, 4601, 4602, 4603, 4604, 4605, 4606);
delete from `gameobject_involvedrelation` where `quest` in (2951, 2952, 2953, 4601, 4602, 4603, 4604, 4605, 4606);
INSERT IGNORE INTO `gameobject_questrelation` (`id`, `quest`) values
(142487, 2951),
(175084, 4601),
(175085, 4602),
(142487, 2952),
(175084, 4605),
(175085, 4606),
(142487, 2953),
(175084, 4603),
(175085, 4604);
INSERT IGNORE INTO `gameobject_involvedrelation` (`id`, `quest`) values
(142487, 2951),
(175084, 4601),
(175085, 4602),
(142487, 2952),
(175084, 4605),
(175085, 4606),
(142487, 2953),
(175084, 4603),
(175085, 4604);

INSERT IGNORE INTO `game_tele` values (417, -956.664, -3754.71, 5.33239, 0.996637, 1, 'Ratchet');

update `quest_template` set `RequestItemsText` = 'To tell you the truth, I really wasn\'t that worried about the strange creatures... Until the day that I saw it written on the side of a large stone.$B$BBEWARE OF PTERRORDAX$B$BWho could have written it? I don\'t know, but it\'s too creepy to just ignore!' where `entry` = 4501;

update `quest_template` set `RequestItemsText` = 'In order to renew your membership card, you will need to pay the renewal fee of two gold pieces.' where `entry` in (3644, 3646);
update `quest_template` set `OfferRewardText` = 'Since you\'re a practitioner of Goblin engineering and are in good standing, I am able to renew a lapsed membership card for the fee of two gold pieces. Once this fee is paid, you will be reissued a new membership card. This will allow access to Goblin engineering schemata from appropriate trainers.$B$BThis card will last for two weeks of activity, at the end of which your membership fees will become due again! If you want to access schemata, you\'ll need to bring your dues out of arrears.' where `entry` in (3644, 3646);

update `quest_template` set `RequestItemsText` = 'In order to renew your membership card, you will need to pay the renewal fee of two gold pieces.' where `entry`  in (3645, 3647);
update `quest_template` set `OfferRewardText` = 'Since you\'re a practitioner of Gnomish engineering and are in good standing, I am able to renew a lapsed membership card for the fee of two gold pieces. Once this fee is paid, you will be reissued a new membership card. This will allow access to Gnomish engineering schemata from appropriate trainers.$B$BThis card will last for two weeks of activity, at the end of which your membership fees will become due again! If you want to access schemata, you\'ll need to bring your dues out of arrears.' where `entry` in (3645, 3647);

update `quest_template` set `Details` = '', `Objectives` = '' where `entry` in (2953, 4603, 4604);
update `quest_template` set `Details` = '', `Objectives` = '', `RequestItemsText` = '' where `entry` in (2952, 4605, 4606);

update `quest_template` set `OfferRewardText` = 'As quickly as it started, the Sparklematic 5200 comes to an abrupt halt. A simple "ding" is heard from the machine, and the mouth of the machine spirals upward. Inside the Sparklematic 5200 is a small box wrapped in a little bow. The machine would appear to wrap an object up after eliminating its grime-encrusted status. Even if the machine didn\'t work, at least the item is now wrapped in a pretty box.$B$BWell, there is one way to find out if it cleaned the item or not...' where `entry` in (2952, 4605, 4606);

update `quest_template` set `RequestItemsText` = 'The Sparklematic 5200 is empty, awaiting a grime-encrusted object to clean and three silver coins to start!' where `entry` in (2953, 4603, 4604);
update `quest_template` set `OfferRewardText` = 'The Sparklematic 5200 comes to life, lurching to and fro. Inside, the helpless grime that has encrusted the object placed within it is being pulverized by the machine\'s gnomish cleaning agent.$B$BThe Sparklematic 5200 comes to a halt, heralded by a familiar "ding!" The item receptacle of the machine spirals open, revealing a neatly wrapped box.' where `entry` in (2953, 4603, 4604);

update `quest_template` set `OfferRewardText` = '$N, your successful re-engineering of the cauldrons is a tremendous victory for us!$B$B<The high executor clears his throat and begins to bellow loudly.>$B$BLet all within my presence hear: for service to the Forsaken and to the Horde as a whole above and beyond what was expected - in the face of overwhelming odds and incredible danger, might I add - I give $N this, and I extend upon $Ghis:her; our undying gratitude as a true hero of the Horde. Huzzah!' where `entry` = 5237;
update `quest_template` set `OfferRewardText` = '$N, your successful re-engineering of the cauldrons is a tremendous victory for us!$B$B<The commander clears his throat and begins to bellow loudly.>$B$BLet all within my presence hear: for service to the Kingdom of Stormwind and to the Alliance above and beyond the call of duty - in the face of overwhelming odds and incredible danger, might I add - I give $N this, and I extend upon $Ghis:her; our undying gratitude as a true hero of the Alliance. Cheers, I say!' where `entry` = 5238;

update `quest_template` set `OfferRewardText` = 'Now isn\'t this interesting? You say you found this tablet on a small, deserted island at The Overlook Cliffs in The Hinterlands, $C? Very interesting indeed. <Oran carefully puts the tablet away and rubs her hands together.>$B$BI thank you for your efforts in this matter. Our Dark Lady shall be very pleased with this discovery. Here, allow me to reward you proportionately.' where `entry` = 8273;

-- Torch(177385) open Door(175610)
DELETE FROM `gameobject_scripts` WHERE `id` = 43177;
INSERT IGNORE INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(43177, 0, 11, 43178, 7200, '', '', '', '', '');

-- Brazier of the Herald(175564) close Gate(175570), summon Kirtonos
DELETE FROM `gameobject_scripts` WHERE `id` = 43208;
INSERT IGNORE INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(43208, 0, 12, 18892, 600, '', '', '', '', ''),
(43208, 5, 10, 10506, 900000, '', '309.65', '93.47', '101.66', '0.03');

-- shadowforge lock (activates mechanism and close giant doors ("open" dummy doors))
delete from `gameobject_scripts` where `id` = 15351; -- entry 161460, Shadowforge Lock
INSERT IGNORE INTO `gameobject_scripts` values
(15351, 0, 11, 15639, 10, '', 0, 0, 0, 0), -- entry 161461, giant door mechanism
(15351, 0, 12, 15576, 7200, '', 0, 0, 0, 0), -- entry 157923, Giant Doors
(15351, 0, 11, 15640, 7200, '', 0, 0, 0, 0), -- entry 161462, Giant Door Fake Collision
(15351, 0, 11, 15352, 7200, '', 0, 0, 0, 0); -- entry 161516, BigDoorDummyCollision02

-- Marshal Haggard's Chest
DELETE FROM `event_scripts` WHERE `id` = 264;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(264, 3, 10, 2044, 300000, '', '-9548.42', '-1440.20', '62.29', '2.19');

-- Trelane's Footlocker
DELETE FROM `event_scripts` WHERE `id` = 415;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(415, 3, 10, 2569, 300000, '', '-1777.64', '-1513.58', '75.51', '5.28'),
(415, 3, 10, 2570, 300000, '', '-1778.46', '-1510.57', '75.17', '5.22');
-- Trelane's Lockbox
DELETE FROM `event_scripts` WHERE `id` = 417;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(417, 3, 10, 2569, 300000, '', '-1772.93', '-1505.90', '91.87', '5.70'),
(417, 3, 10, 2570, 300000, '', '-1774.76', '-1495.07', '90.60', '5.27');
-- Trelane's Chest
DELETE FROM `event_scripts` WHERE `id` = 416;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(416, 3, 10, 2569, 300000, '', '-1797.32', '-1504.70', '99.39', '5.14'),
(416, 3, 10, 2570, 300000, '', '-1789.80', '-1499.90', '99.38', '4.60');

-- Benedict's Chest
DELETE FROM `event_scripts` WHERE `id` = 498;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(498, 3, 10, 3129, 300000, '', '-228.09', '-5115.08', '49.32', '1.28');

-- Defias Gunpowder
DELETE FROM `event_scripts` WHERE `id` = 619;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(619, 3, 10, 634, 300000, '', '-18.44', '-617.46', '14.12', '0.08');

-- Premium Siabi Tobacco
DELETE FROM `event_scripts` WHERE `id` = 5225;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(5225, 5, 10, 11058, 900000, '', '3487.05', '-3289.75', '131.79', '4.69');

-- Blacksmithing Plans
DELETE FROM `event_scripts` WHERE `id` = 5300;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(5300, 5, 10, 11121, 900000, '', '3818.70', '-3730.37', '141.88', '1.86');

-- Blacksmithing Plans
DELETE FROM `event_scripts` WHERE `id` = 5301;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(5301, 5, 10, 11120, 900000, '', '3589.51', '-2991.87', '125.18', '3.35');

-- Massive Treasure Chest
DELETE FROM `event_scripts` WHERE `id` = 14376;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(14376, 5, 10, 22369, 900000, '', -3755.66, 4737.93, -19.8168, 4.3861),
(14376, 5, 10, 22369, 900000, '', -3760.43, 4736.39, -20.2451, 4.01068),
(14376, 5, 10, 22369, 900000, '', -3729.4, 4706.81, -16.1222, 3.61561),
(14376, 5, 10, 22369, 900000, '', -3729.91, 4701.97, -16.1335, 3.04384),
(14376, 5, 10, 22369, 900000, '', -3731.43, 4697.39, -16.1774, 2.74225),
(14376, 5, 10, 22369, 900000, '', -3772.36, 4724.78, -21.3002, 5.81195),
(14376, 5, 10, 22369, 900000, '', -3767.97, 4731.29, -20.9252, 4.03171),
(14376, 5, 10, 22369, 900000, '', -3770.51, 4728.37, -21.0502, 0),
(14376, 5, 10, 22369, 900000, '', -3764.99, 4733.9, -20.6666, 5.65487),
(14376, 5, 10, 22369, 900000, '', -3733.74, 4693.02, -16.24, 2.487),
(14376, 5, 10, 22369, 900000, '', -3736.77, 4689.91, -16.3146, 2.49721),
(14376, 5, 10, 22369, 900000, '', -3739.15, 4687.17, -16.4299, 1.88145),
(14376, 5, 10, 22369, 900000, '', -3742.75, 4684.69, -16.6026, 1.98513),
(14376, 5, 10, 22369, 900000, '', -3746.76, 4682.73, -16.8866, 1.93172),
(14376, 5, 10, 22369, 900000, '', -3751.6, 4682.35, -17.3406, 1.57044),
(14376, 5, 10, 22369, 900000, '', -3756.1, 4683.74, -17.9125, 0.734772),
(14376, 5, 10, 22369, 900000, '', -3760.22, 4685.72, -18.5906, 0.334227),
(14376, 5, 10, 22369, 900000, '', -3763.69, 4688.06, -19.2893, 0.613044),
(14376, 5, 10, 22369, 900000, '', -3767.46, 4691.24, -20.1502, 6.20901),
(14376, 5, 10, 22369, 900000, '', -3769.89, 4694.89, -20.7665, 0.406484),
(14376, 5, 10, 22369, 900000, '', -3772.26, 4699.55, -21.3722, 0.111175),
(14376, 5, 10, 22369, 900000, '', -3773.9, 4704.32, -21.7617, 1.14319),
(14376, 5, 10, 22369, 900000, '', -3774.08, 4710.46, -21.7888, 0.492878),
(14376, 5, 10, 22369, 900000, '', -3773.85, 4715.78, -21.6975, 1.45735),
(14376, 5, 10, 22369, 900000, '', -3773.46, 4720.45, -21.5752, 1.44792),
(14376, 5, 10, 22369, 900000, '', -3744.9, 4736.18, -18.717, 2.8797),
(14376, 5, 10, 22369, 900000, '', -3750.57, 4737.88, -19.35, 4.01853);

-- Joys of Omosh
update `quest_template` set `StartScript` = 2755 where `entry` = 2755;
delete from `quest_start_scripts` where `id` = 2755;
insert into `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values 
(2755, 5, 1, 10, 0, '', 0, 0, 0, 0),
(2755, 30, 1, 0, 0, '', 0, 0, 0, 0),
(2755, 35, 7, 2755, 0, '', 0, 0, 0, 0);

-- Mound of Dirt
DELETE FROM `event_scripts` WHERE `id` = 664;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(664, 3, 10, 3946, 60000, '', '-11142.50', '-1151.78', '43.61', '5.28');

-- Altar of the Tides
DELETE FROM `event_scripts` WHERE `id` = 364;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(364, 5, 10, 2624, 900000, '', '-12179.39', '644.22', '-67.10', '5.18');

-- The Jewel of the Southsea
DELETE FROM `event_scripts` WHERE `id` = 2153;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(2153, 5, 10, 7167, 900000, '', '-1456.55', '-3959.53', '0.24', '1.99');

-- Arcane Focusing Crystal
DELETE FROM `event_scripts` WHERE `id` = 3241;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(3241, 5, 10, 8581, 600000, '', '4279.11', '-6295.57', '95.56', '0.05'),
(3241, 20, 10, 8578, 900000, '', '4279.11', '-6295.57', '95.56', '0.05');

-- Altar of the Defiler
DELETE FROM `event_scripts` WHERE `id` = 3301;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(3301, 2, 10, 7664, 900000, '', '-11234.37', '-2842.68', '157.92', '1.42');

-- Loose Dirt Mound
DELETE FROM `event_scripts` WHERE `id` = 5759;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(5759, 2, 10, 11886, 600000, '', '1571.63', '-3276.00', '88.88', '6.05'),
(5759, 6, 10, 11887, 600000, '', '1569.40', '-3272', '88.15', '0.28'),
(5759, 6, 10, 11887, 600000, '', '1572.08', '-3278', '89.31', '0.34'),
(5759, 6, 10, 11887, 600000, '', '1576.60', '-3275', '89.08', '0.16');

-- Lard's Picnic Basket
DELETE FROM `event_scripts` WHERE `id` = 8605;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(8605, 2, 10, 14748, 600000, '', '421.52', '-4811.76', '12.03', '4.35'),
(8605, 2, 10, 14748, 600000, '', '414.50', '-4812.67', '12.54', '4.48'),
(8605, 2, 10, 14748, 600000, '', '417.09', '-4817.01', '12.06', '4.58');

-- Gong of Bethekk
DELETE FROM `event_scripts` WHERE `id` = 9066;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(9066, 10, 10, 14515, 900000, '', '-11540.67', '-1627.71', '41.27', '0.10');

-- Altar of Tidal Mastery
DELETE FROM `event_scripts` WHERE `id` = 9980;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(9980, 2, 10, 16292, 900000, '', '7941.15', '-7636.45', '116.19', '5.66');

-- Wickerman Effigy
DELETE FROM `event_scripts` WHERE `id` = 10626;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(10626, 2, 10, 17206, 900000, '', '-5027.5', '-10964.4', '20.69', '2.18');

-- Barrel of Filth
DELETE FROM `event_scripts` WHERE `id` = 10685;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(10685, 2, 10, 17359, 900000, '', '-1624.67', '-10913.38', '58.52', '3.18'),
(10685, 5, 10, 6748, 900000, '', '-1646.68', '-10917.88', '58.91', '0.99'),
(10685, 5, 10, 6748, 900000, '', '-1651.37', '-10910.92', '58.71', '6.01');

-- Statue of Queen Azshara
DELETE FROM `event_scripts` WHERE `id` = 11027;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(11027, 2, 10, 17715, 900000, '', '-1953.43', '-12887.12', '86.10', '0.86');

-- Mysterious Egg
DELETE FROM `event_scripts` WHERE `id` = 12307;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(12307, 1, 10, 19055, 900000, '', '-2413.40', '6914.48', '25.01', '3.67');

-- The Thunderspike
DELETE FROM `event_scripts` WHERE `id` = 13685;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(13685, 1, 10, 21319, 900000, '', '-2413.40', '6914.48', '25.01', '3.67');

-- Auchenai Coffi.n
DELETE FROM `event_scripts` WHERE `id` = 14444;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(14444, 1, 10, 22452, 900000, '', '-3361.84', '5149.58', '-8.26', '1.52');

-- Ogre Tannin Basket
DELETE FROM `event_scripts` WHERE `id` = 8175;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(8175, 5, 10, 14351, 900000, '', '588.44', '606.87', '-4.75', '5.62');

-- Harpy Foodstuffs
DELETE FROM `event_scripts` WHERE `id` = 747;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(747, 5, 10, 4100, 900000, '', '-5587.69', '-1571.45', '11.21', '6.14'),
(747, 25, 10, 4100, 900000, '', '-5587.69', '-1571.45', '11.21', '6.14'),
(747, 25, 10, 4100, 900000, '', '-5589.63', '-1575.89', '11.75', '6.02'),
(747, 40, 10, 4100, 900000, '', '-5587.69', '-1571.45', '11.21', '6.14'),
(747, 40, 10, 4490, 900000, '', '-5589.63', '-1575.89', '11.75', '6.02');

-- Sentry Brazier
DELETE FROM `event_scripts` WHERE `id` = 3201;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(3201, 2, 9, 16736, 600, '', 0, 0, 0, 0),
(3201, 2, 9, 16741, 600, '', 0, 0, 0, 0);
DELETE FROM `event_scripts` WHERE `id` = 3202;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(3202, 2, 9, 16737, 600, '', 0, 0, 0, 0),
(3202, 2, 9, 16742, 600, '', 0, 0, 0, 0);
DELETE FROM `event_scripts` WHERE `id` = 3203;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(3203, 2, 9, 16738, 600, '', 0, 0, 0, 0),
(3203, 2, 9, 16743, 600, '', 0, 0, 0, 0);
DELETE FROM `event_scripts` WHERE `id` = 3204;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(3204, 2, 9, 16735, 600, '', 0, 0, 0, 0),
(3204, 2, 9, 16740, 600, '', 0, 0, 0, 0);

-- Book of Aquor
DELETE FROM `event_scripts` WHERE `id` = 3708;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(3708, 3, 10, 9453, 300000, '', '-8170.74', '-5078.13', '15.83', '4.83');

-- seph
-- Scroll of Demonic Unbanishing
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0', `QuestChanceOrGroup` = '35' WHERE `item` = '30811';
UPDATE `quest_template` SET `ReqSourceId1` = '30811', `ReqSourceCount1` = '1', `ReqSourceRef1` = '1', ReqSpellCast1=37834 WHERE `entry` IN ('10688', '10637');

-- Magic Sucker Device
DELETE FROM `creature_template_addon` WHERE (`entry` = '22267');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('22267', '38721 0 38672 0');

-- Hellfire Wardling
DELETE FROM `creature_template_addon` WHERE (`entry` = '22259');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('22259', '38683 0');

-- Making Amend
UPDATE `quest_template` SET `RequiredMaxRepFaction` = '577', `RequiredMaxRepValue` = '0', `SpecialFlags` = '1', `RewRepFaction3` = '21', `RewRepFaction4` = '369', `RewRepFaction5` = '470', `RewRepValue3` = '250', `RewRepValue4` = '250', `RewRepValue5` = '250' WHERE `entry` = '9266';
UPDATE `creature_template` SET `flags` = `flags`|'2', `MovementType` = '0' WHERE `entry` = '16416';

-- Nutral
UPDATE `creature_template` SET `flags` = `flags`|'2' WHERE `entry` = '18940';

-- Normal Trash Mobs in Magtheridon's Lair shouldn't respawn before 2 hours
UPDATE `creature` SET `spawntimesecs` = '7200' WHERE (`spawntimesecs` < '7200') AND (`map` = '544');
-- Hellfire Channeler should have same respawntime of Magtheridon (7 days)
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` = '17256';

-- Okrek should only drop 1 waist at a time
UPDATE `creature_loot_template` SET `ChanceOrRef` = '25', `QuestChanceOrGroup` = '-1' WHERE `item` IN ('31227', '31228', '31229', '31231') AND (`entry` = '18685');

-- Recipe: Inlaid Mithril Cylinder not to engineering trainers
DELETE FROM `npc_trainer` WHERE `entry` IN ('7406', '7944') AND (`spell` = '12894');

-- The Crone, Roar, Strawman, Tinhead, Dorothee and his pet Tito are summoned bosses
DELETE FROM `creature` WHERE `id` IN ('17535', '17548', '18168', '17543', '17547', '17546');

-- Rokad the Ravager stats and faction
UPDATE `creature_template` SET `minhealth` = '230000', `maxhealth` = '230000', `faction_A` = '14', `faction_H` = '14', `baseattacktime` = '2000' WHERE `entry` = '16181';
-- Rokad the Ravager should only drop 1 pair of Bracers at a time
UPDATE `creature_loot_template` SET `ChanceOrRef` = '25', `QuestChanceOrGroup` = '-1' WHERE `item` IN ('30684', '30685', '30686', '30687') AND (`entry` = '16181');

-- Shadikith the Glider faction and misc
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `pickpocketloot` = '0' WHERE `entry` = '16180';
-- Shadikith the Glider should only drop 1 pair of Boots at a time
UPDATE `creature_loot_template` SET `ChanceOrRef` = '25', `QuestChanceOrGroup` = '-1' WHERE `item` IN ('30681', '30682', '30683', '30680') AND (`entry` = '16180');

-- Hyakiss the Lurker misc
UPDATE `creature_template` SET `baseattacktime` = '1900', `family` = '0' WHERE `entry` = '16179';
-- Hyakiss the Lurker should only drop 1 Waist at a time
UPDATE `creature_loot_template` SET `ChanceOrRef` = '25', `QuestChanceOrGroup` = '-1' WHERE `item` IN ('30675', '30676', '30678', '30677') AND (`entry` = '16179');

-- Sai'kkal is neutral but should be possible to interact with him without killing
UPDATE `creature_template` SET `flags` = `flags`|'2', `spell1` = '0' WHERE `entry` = '22932';
-- Sai'kkal Invisibility (lets see if this time gets in svn)
DELETE FROM `creature_template_addon` WHERE (`entry` = '22932');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('22932', '39680 0');
DELETE FROM `creature_addon` WHERE (`guid` = '90506');
INSERT IGNORE INTO `creature_addon` (`guid`, `auras`) VALUES ('90506', '39680 0');

-- Salvaged Ethereum Prison Key
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0', `QuestChanceOrGroup` = '8' WHERE `item` = '31956';

-- Dimensius the All-Devouring shouldn't move, bestiary stats, correct model
UPDATE `creature_template` SET `modelid_A` = '18988', `minhealth` = '279440', `maxhealth` = '279440', `armor` = '6792', `speed` = '0', `MovementType` = '0', `mindmg` = '2272', `maxdmg` = '3213', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '19554';
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0' WHERE `id` = '19554';
-- Spawn of Dimensius
UPDATE `creature_template` SET `faction_A` = '1715', `faction_H` = '1715' WHERE `entry` = '21780';
-- Captain Saeed bestiary stats and spell
UPDATE `creature_template` SET `minhealth` = '34464', `maxhealth` = '34464', `armor` = '5714', `spell1` = '15496', `ScriptName` = 'generic_creature', `mindmg` = '357', `maxdmg` = '505', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '20985';

-- A Thousand Worlds should require revered to be acceptable and award rep
UPDATE `quest_template` SET `RequiredMinRepFaction` = '933', `RequiredMinRepValue` = '21000', `RequiredMaxRepFaction` = '0', `RequiredMaxRepValue` = '0', `RewRepFaction1` = '933', `RewRepValue1` = '500' WHERE `entry` = '10973';

-- Ethereum Prisoner I.D. Catalogue should be repeatable, award rep, require honored with consortium and level 70
UPDATE `quest_template` SET `MinLevel` = '70', `SpecialFlags` = '1', `RequiredMinRepFaction` = '933', `RequiredMinRepValue` = '9000', `RewRepFaction1` = '933', `RewRepValue1` = '250' WHERE `entry` = '10972';

-- Windfury Totem IV alliance model
UPDATE `creature_template` SET `modelid_A` = '19071' WHERE `entry` = '15496';
-- Magma Totem V alliance model
UPDATE `creature_template` SET `modelid_A` = '19074' WHERE `entry` = '15484';

-- Leeli Longhaggle should not sell Barbaric Cloth Robe, noone should
DELETE FROM `npc_vendor` WHERE `item` = '6531';

-- Innkeeper Kerp potions
UPDATE `npc_vendor` SET `maxcount` = '2' WHERE (`entry` = '18908') AND `item` IN ('6149', '3928');

-- Bog Lurker should drop only one shoulder item at a time
UPDATE `creature_loot_template` SET `ChanceOrRef` = '25', `QuestChanceOrGroup` = '-1' WHERE (`entry` = '18682') AND `item` IN ('31247', '31248', '31249', '31250');

-- Coilfang Emissary should drop only one leg item at a time
UPDATE `creature_loot_template` SET `ChanceOrRef` = '25', `QuestChanceOrGroup` = '-1' WHERE (`entry` = '18681') AND `item` IN ('31242', '31243', '31244', '31246');

-- Marticar (rare) should always drop Striderhide Cloak (random enchantment)
UPDATE `creature_loot_template` SET `ChanceOrRef` = '100' WHERE (`entry` = '18680') AND (`item` = '31254');
-- Marticar had too low dmg
UPDATE `creature_template` SET `mindmg` = '2350', `maxdmg` = '2800', `baseattacktime` = '1600', `mechanic_immune_mask` = `mechanic_immune_mask`|'10696703', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18680';

-- Amnennar the Coldbringer bestiary data
UPDATE `creature_template` SET `minlevel` = '37', `maxlevel` = '37', `minhealth` = '8744', `maxhealth` = '8744', `minmana` = '9136', `maxmana` = '9136', `armor` = '1769', `mindmg` = '191', `maxdmg` = '253', `spell1` = '0', `spell2` = '0', `spell3` = '0', `spell4` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '7358';
-- Doomwalker bestiary data
UPDATE `creature_template` SET `minlevel` = '73', `maxlevel` = '73', `minhealth` = '2276400', `maxhealth` = '2276400', `armor` = '7684', `mindmg` = '13940', `maxdmg` = '19711', `mechanic_immune_mask` = `mechanic_immune_mask`|'44466175', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '17711';
-- Fenissa the Assassin bestiary data
UPDATE `creature_template` SET `minhealth` = '751', `maxhealth` = '751', `armor` = '782', `mindmg` = '30', `maxdmg` = '40', `spell1` = '19472', `spell2` = '12540', `ScriptName` = 'generic_creature', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22060';
-- Fenissa the Assassin should always drop 1 chest item
UPDATE `creature_loot_template` SET `ChanceOrRef` = 100/3, `QuestChanceOrGroup` = '-1' WHERE `item` IN ('31263', '31264', '31256') AND (`entry` = '22060');

-- item Luanga's Orders is no longer in game
DELETE FROM `creature_loot_template` WHERE `item` IN ('25705', '25706');

-- Luanga the Imprisoner had no damage and 900hp
UPDATE `creature_template` SET `minhealth` = '19000', `maxhealth` = '19000', `mindmg` = '152', `maxdmg` = '239', `attackpower` = '1367' WHERE `entry` = '18533';
-- [PH]Altar of Shadows target quest invisibility
UPDATE `creature_template` SET `modelid_A2` = '0', `modelid_H2` = '0' WHERE `entry` = '22395';
UPDATE `creature_template_addon` SET `auras` = '23196 0' WHERE `entry` = '22395';
DELETE FROM `creature_addon` WHERE (`guid` = '78730');
INSERT IGNORE INTO `creature_addon` (`guid`, `auras`) VALUES ('78730', '23196 0');

-- the HEROIC Cache of the Legion contains 1 Badge of Justice
DELETE FROM `gameobject_loot_template` WHERE (`entry` = '20530') AND (`item` = '29434');
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('20530', '29434', '100', '0', '1', '1', '1', '0', '0', '0');

-- Mature Spore Sac does not contain quest loot
UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry` = '182069';

-- Interrogator Khan bestiary stats and should not move
UPDATE `creature_template` SET `MovementType` = '0', `minhealth` = '879800', `maxhealth` = '879800', `armor` = '7684', `mindmg` = '131', `maxdmg` = '174', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '19152';
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0', `curhealth` = '879800' WHERE `id` = '19152';

-- Enchanted Sea Kelp is not a Quest Item
UPDATE `creature_loot_template` SET `ChanceOrRef` = '8', `QuestChanceOrGroup` = '0' WHERE `item` = '4639';
UPDATE `quest_template` SET `ReqSourceId1` = '0', `ReqSourceCount1` = '0', `ReqSourceRef1` = '0' WHERE `entry` = '736';
-- Dagun the Ravenous bestiary data
UPDATE `creature_template` SET `minhealth` = '5148', `maxhealth` = '5148', `armor` = '2397', `mindmg` = '153', `maxdmg` = '203', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '2937';

-- Nagrand Spawn Trigger in Halaa (Nagrand) should be invisible and have the correct model
UPDATE `creature_template` SET `modelid_A` = '18783', `modelid_A2` = '0', `modelid_H` = '18783', `modelid_H2` = '0' WHERE `entry` = '18263';
-- Nagrand Spawn Timer in Halaa (Nagrand) should be invisible and have the correct model
UPDATE `creature_template` SET `modelid_A` = '169', `modelid_H` = '169', `MovementType` = '0' WHERE `entry` = '18264';
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0' WHERE `id` = '18264';
UPDATE `creature_template_addon` SET `auras` = '23196 0' WHERE `entry` IN ('18263', '18264');
-- Target dummy template misc fix
UPDATE `creature_template` SET `MovementType` = '0' WHERE `entry` = '19139';

-- Adamantite deposit was inside a building in nagrand
DELETE FROM `gameobject` WHERE `guid` = '40133';

-- Hoof of Bach'lor
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '100' WHERE `item` = '24523';
-- Bach'lor duplicate spawn
DELETE FROM `creature` WHERE `guid` = '65527';
-- Bach'lor bestiary data + immunities
UPDATE `creature_template` SET `minhealth` = '25304', `maxhealth` = '25304', `armor` = '5892', `mechanic_immune_mask` = `mechanic_immune_mask`|'1104', `mindmg` = '832', `maxdmg` = '1170', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18258';
-- Bach'lor spawntime is 4 minutes
UPDATE `creature` SET `spawntimesecs` = '240', `curhealth` = '25304' WHERE `id` = '18258';

-- Smolderweb Hatchling is a non-combat pet
DELETE FROM `creature` WHERE `id` = '10598';

-- Sanguine Hibiscus spawn on same position of a trap spawned (need more)
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('44742', '183385', '546', '-66.7795', '-240.119', '-4.53713', '3.00197', '0', '0', '0.997564', '0.069757', '500', '100', '1');
-- Sanguine Hibiscus does not contain quest loot
UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry` = '183385';

-- GO Cache of the Legion spawn
DELETE FROM `gameobject` WHERE `id` = '184465';
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`,`rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('44743', '184465', '554', '225.441986', '83.407539', '0.002621', '4.745913', '0.000000', '0.000000', '0.000000', '0.000000', '1', '100', '1');



-- creature scaling
update creature_template set scale = 0.5 where entry = 0;
update creature_template set scale = 0.5 where entry = 1;
update creature_template set scale = 0.7 where entry = 6;
update creature_template set scale = 0.42 where entry = 30;
update creature_template set scale = 0.85 where entry = 36;
update creature_template set scale = 1.15 where entry = 40;
update creature_template set scale = 0.55 where entry = 43;
update creature_template set scale = 0.85 where entry = 48;
update creature_template set scale = 1.3 where entry = 60;
update creature_template set scale = 0.70509 where entry = 69;
update creature_template set scale = 1.3 where entry = 79;
update creature_template set scale = 0.85 where entry = 80;
update creature_template set scale = 0.85 where entry = 97;
update creature_template set scale = 1.3 where entry = 98;
update creature_template set scale = 0.62712 where entry = 113;
update creature_template set scale = 1.1 where entry = 114;
update creature_template set scale = 1.15 where entry = 115;
update creature_template set scale = 0.85 where entry = 118;
update creature_template set scale = 0.75 where entry = 119;
update creature_template set scale = 1.15 where entry = 123;
update creature_template set scale = 1.15 where entry = 124;
update creature_template set scale = 1.3 where entry = 125;
update creature_template set scale = 1.5 where entry = 127;
update creature_template set scale = 1.15 where entry = 154;
update creature_template set scale = 1.3 where entry = 171;
update creature_template set scale = 0.85 where entry = 199;
update creature_template set scale = 1.15 where entry = 205;
update creature_template set scale = 1.3 where entry = 206;
update creature_template set scale = 1.15 where entry = 210;
update creature_template set scale = 1.3 where entry = 212;
update creature_template set scale = 0.85 where entry = 213;
update creature_template set scale = 0.7 where entry = 217;
update creature_template set scale = 0.85 where entry = 257;
update creature_template set scale = 0.85 where entry = 285;
update creature_template set scale = 0.7 where entry = 299;
update creature_template set scale = 1.45 where entry = 300;
update creature_template set scale = 1.3 where entry = 314;
update creature_template set scale = 1.15 where entry = 327;
update creature_template set scale = 0.75 where entry = 330;
update creature_template set scale = 1.5 where entry = 334;
update creature_template set scale = 1.3 where entry = 345;
update creature_template set scale = 1.15 where entry = 374;
update creature_template set scale = 0.64068 where entry = 390;
update creature_template set scale = 2 where entry = 391;
update creature_template set scale = 1.45 where entry = 412;
update creature_template set scale = 0.5 where entry = 416;
update creature_template set scale = 0.7 where entry = 417;
update creature_template set scale = 1.75 where entry = 422;
update creature_template set scale = 1.15 where entry = 424;
update creature_template set scale = 1.15 where entry = 426;
update creature_template set scale = 0.75 where entry = 428;
update creature_template set scale = 1.15 where entry = 429;
update creature_template set scale = 1.3 where entry = 431;
update creature_template set scale = 1.1 where entry = 437;
update creature_template set scale = 0.85 where entry = 441;
update creature_template set scale = 0.55 where entry = 442;
update creature_template set scale = 1.3 where entry = 445;
update creature_template set scale = 1.3 where entry = 446;
update creature_template set scale = 1.15 where entry = 448;
update creature_template set scale = 1.15 where entry = 452;
update creature_template set scale = 1.3 where entry = 453;
update creature_template set scale = 0.75 where entry = 454;
update creature_template set scale = 1.15 where entry = 456;
update creature_template set scale = 1.3 where entry = 458;
update creature_template set scale = 1.15 where entry = 460;
update creature_template set scale = 1.15 where entry = 462;
update creature_template set scale = 1.15 where entry = 466;
update creature_template set scale = 0.7 where entry = 471;
update creature_template set scale = 0.85 where entry = 478;
update creature_template set scale = 0.85 where entry = 480;
update creature_template set scale = 1.05 where entry = 485;
update creature_template set scale = 1.2 where entry = 486;
update creature_template set scale = 1.15 where entry = 501;
update creature_template set scale = 1.3 where entry = 503;
update creature_template set scale = 0.7 where entry = 505;
update creature_template set scale = 1.15 where entry = 506;
update creature_template set scale = 1.15 where entry = 513;
update creature_template set scale = 1.5 where entry = 517;
update creature_template set scale = 1.3 where entry = 519;
update creature_template set scale = 1.5 where entry = 520;
update creature_template set scale = 1.15 where entry = 521;
update creature_template set scale = 1.15 where entry = 522;
update creature_template set scale = 0.75 where entry = 524;
update creature_template set scale = 0.72542 where entry = 525;
update creature_template set scale = 1.5 where entry = 534;
update creature_template set scale = 0.55 where entry = 539;
update creature_template set scale = 2 where entry = 544;
update creature_template set scale = 2 where entry = 545;
update creature_template set scale = 1.15 where entry = 547;
update creature_template set scale = 1.5 where entry = 548;
update creature_template set scale = 1.15 where entry = 568;
update creature_template set scale = 0.7 where entry = 569;
update creature_template set scale = 1.15 where entry = 570;
update creature_template set scale = 0.6 where entry = 575;
update creature_template set scale = 2 where entry = 578;
update creature_template set scale = 0.85 where entry = 579;
update creature_template set scale = 1.15 where entry = 580;
update creature_template set scale = 0.95 where entry = 598;
update creature_template set scale = 1.15 where entry = 604;
update creature_template set scale = 1.1 where entry = 615;
update creature_template set scale = 0.85 where entry = 616;
update creature_template set scale = 0.85 where entry = 623;
update creature_template set scale = 0.9 where entry = 624;
update creature_template set scale = 0.9 where entry = 625;
update creature_template set scale = 0.75 where entry = 626;
update creature_template set scale = 1.15 where entry = 628;
update creature_template set scale = 1.2 where entry = 639;
update creature_template set scale = 1.15 where entry = 644;
update creature_template set scale = 1.3 where entry = 645;
update creature_template set scale = 1.62 where entry = 646;
update creature_template set scale = 1.5 where entry = 647;
update creature_template set scale = 10 where entry = 659;
update creature_template set scale = 1.1 where entry = 660;
update creature_template set scale = 1.2 where entry = 671;
update creature_template set scale = 1.1 where entry = 672;
update creature_template set scale = 1.6 where entry = 678;
update creature_template set scale = 1.75 where entry = 679;
update creature_template set scale = 2.05 where entry = 680;
update creature_template set scale = 0.90339 where entry = 681;
update creature_template set scale = 0.89661 where entry = 683;
update creature_template set scale = 1.15 where entry = 684;
update creature_template set scale = 1.15 where entry = 685;
update creature_template set scale = 1.15 where entry = 686;
update creature_template set scale = 1.3 where entry = 687;
update creature_template set scale = 0.7 where entry = 688;
update creature_template set scale = 0.85 where entry = 689;
update creature_template set scale = 1.15 where entry = 703;
update creature_template set scale = 0.70509 where entry = 704;
update creature_template set scale = 0.7 where entry = 705;
update creature_template set scale = 0.75 where entry = 706;
update creature_template set scale = 0.55 where entry = 707;
update creature_template set scale = 0.61356 where entry = 708;
update creature_template set scale = 1.45 where entry = 709;
update creature_template set scale = 1.3 where entry = 710;
update creature_template set scale = 0.7 where entry = 724;
update creature_template set scale = 1.45 where entry = 728;
update creature_template set scale = 1.5 where entry = 729;
update creature_template set scale = 1.5 where entry = 730;
update creature_template set scale = 1.5 where entry = 731;
update creature_template set scale = 0.85 where entry = 735;
update creature_template set scale = 1.3 where entry = 740;
update creature_template set scale = 1.5 where entry = 741;
update creature_template set scale = 1.25 where entry = 743;
update creature_template set scale = 1.5 where entry = 744;
update creature_template set scale = 1.75 where entry = 745;
update creature_template set scale = 1.5 where entry = 746;
update creature_template set scale = 1.5 where entry = 750;
update creature_template set scale = 2 where entry = 751;
update creature_template set scale = 1.75 where entry = 752;
update creature_template set scale = 1.15 where entry = 756;
update creature_template set scale = 0.85 where entry = 760;
update creature_template set scale = 1.3 where entry = 764;
update creature_template set scale = 1.33 where entry = 765;
update creature_template set scale = 1.5 where entry = 766;
update creature_template set scale = 1.15 where entry = 767;
update creature_template set scale = 1.15 where entry = 768;
update creature_template set scale = 1.3 where entry = 771;
update creature_template set scale = 1.3 where entry = 772;
update creature_template set scale = 1.1 where entry = 781;
update creature_template set scale = 1.1 where entry = 783;
update creature_template set scale = 1.15 where entry = 785;
update creature_template set scale = 0.9 where entry = 808;
update creature_template set scale = 1.1 where entry = 813;
update creature_template set scale = 2.05 where entry = 818;
update creature_template set scale = 0.85 where entry = 822;
update creature_template set scale = 0.95 where entry = 824;
update creature_template set scale = 0.75 where entry = 832;
update creature_template set scale = 0.85 where entry = 834;
update creature_template set scale = 1.15 where entry = 854;
update creature_template set scale = 0.64746 where entry = 855;
update creature_template set scale = 0.75 where entry = 856;
update creature_template set scale = 0.85 where entry = 858;
update creature_template set scale = 1.75 where entry = 871;
update creature_template set scale = 1.5 where entry = 877;
update creature_template set scale = 1.5 where entry = 879;
update creature_template set scale = 1.3 where entry = 889;
update creature_template set scale = 0.6 where entry = 890;
update creature_template set scale = 1.15 where entry = 892;
update creature_template set scale = 0.85 where entry = 898;
update creature_template set scale = 1.5 where entry = 905;
update creature_template set scale = 1.5 where entry = 920;
update creature_template set scale = 1.3 where entry = 922;
update creature_template set scale = 0.75 where entry = 923;
update creature_template set scale = 0.55 where entry = 930;
update creature_template set scale = 1.15 where entry = 944;
update creature_template set scale = 0.75 where entry = 946;
update creature_template set scale = 0.85 where entry = 949;
update creature_template set scale = 1.15 where entry = 1010;
update creature_template set scale = 1.3 where entry = 1011;
update creature_template set scale = 1.15 where entry = 1012;
update creature_template set scale = 1.15 where entry = 1013;
update creature_template set scale = 1.3 where entry = 1014;
update creature_template set scale = 0.61186 where entry = 1015;
update creature_template set scale = 0.7 where entry = 1016;
update creature_template set scale = 0.85 where entry = 1017;
update creature_template set scale = 0.63729 where entry = 1018;
update creature_template set scale = 1.15 where entry = 1019;
update creature_template set scale = 0.61186 where entry = 1020;
update creature_template set scale = 0.7 where entry = 1021;
update creature_template set scale = 0.85 where entry = 1022;
update creature_template set scale = 0.85 where entry = 1023;
update creature_template set scale = 1.15 where entry = 1024;
update creature_template set scale = 1.3 where entry = 1026;
update creature_template set scale = 1.75 where entry = 1027;
update creature_template set scale = 1.5 where entry = 1028;
update creature_template set scale = 1.15 where entry = 1029;
update creature_template set scale = 0.7 where entry = 1030;
update creature_template set scale = 1.15 where entry = 1031;
update creature_template set scale = 1.15 where entry = 1032;
update creature_template set scale = 1.3 where entry = 1033;
update creature_template set scale = 1.15 where entry = 1040;
update creature_template set scale = 1.3 where entry = 1041;
update creature_template set scale = 0.85 where entry = 1042;
update creature_template set scale = 1.6 where entry = 1059;
update creature_template set scale = 1.4 where entry = 1060;
update creature_template set scale = 1.5 where entry = 1061;
update creature_template set scale = 1.1 where entry = 1062;
update creature_template set scale = 1.15 where entry = 1069;
update creature_template set scale = 1.3 where entry = 1083;
update creature_template set scale = 0.85 where entry = 1084;
update creature_template set scale = 1.15 where entry = 1085;
update creature_template set scale = 1.15 where entry = 1087;
update creature_template set scale = 1.5 where entry = 1088;
update creature_template set scale = 0.86271 where entry = 1108;
update creature_template set scale = 1.15 where entry = 1110;
update creature_template set scale = 0.55 where entry = 1111;
update creature_template set scale = 0.88814 where entry = 1114;
update creature_template set scale = 0.85 where entry = 1115;
update creature_template set scale = 0.85 where entry = 1116;
update creature_template set scale = 0.85 where entry = 1117;
update creature_template set scale = 0.9 where entry = 1118;
update creature_template set scale = 1.15 where entry = 1119;
update creature_template set scale = 0.8 where entry = 1120;
update creature_template set scale = 0.8 where entry = 1121;
update creature_template set scale = 0.9 where entry = 1122;
update creature_template set scale = 0.8 where entry = 1123;
update creature_template set scale = 0.9 where entry = 1124;
update creature_template set scale = 0.62712 where entry = 1125;
update creature_template set scale = 0.75 where entry = 1126;
update creature_template set scale = 0.7 where entry = 1127;
update creature_template set scale = 0.6339 where entry = 1128;
update creature_template set scale = 0.85 where entry = 1129;
update creature_template set scale = 0.73051 where entry = 1131;
update creature_template set scale = 0.74576 where entry = 1132;
update creature_template set scale = 0.74068 where entry = 1133;
update creature_template set scale = 0.55 where entry = 1134;
update creature_template set scale = 0.7 where entry = 1135;
update creature_template set scale = 0.85 where entry = 1137;
update creature_template set scale = 0.72542 where entry = 1138;
update creature_template set scale = 1.15 where entry = 1142;
update creature_template set scale = 1.3 where entry = 1144;
update creature_template set scale = 0.7 where entry = 1150;
update creature_template set scale = 0.85 where entry = 1151;
update creature_template set scale = 0.85 where entry = 1152;
update creature_template set scale = 0.85 where entry = 1161;
update creature_template set scale = 0.7 where entry = 1162;
update creature_template set scale = 1.15 where entry = 1164;
update creature_template set scale = 0.7 where entry = 1166;
update creature_template set scale = 1.15 where entry = 1167;
update creature_template set scale = 0.7 where entry = 1172;
update creature_template set scale = 0.85 where entry = 1173;
update creature_template set scale = 1.15 where entry = 1175;
update creature_template set scale = 0.85 where entry = 1176;
update creature_template set scale = 1.15 where entry = 1177;
update creature_template set scale = 1.1 where entry = 1178;
update creature_template set scale = 0.85 where entry = 1179;
update creature_template set scale = 1.15 where entry = 1180;
update creature_template set scale = 1.15 where entry = 1183;
update creature_template set scale = 0.55 where entry = 1184;
update creature_template set scale = 0.7 where entry = 1185;
update creature_template set scale = 0.8 where entry = 1186;
update creature_template set scale = 1.15 where entry = 1188;
update creature_template set scale = 1.15 where entry = 1189;
update creature_template set scale = 0.7 where entry = 1190;
update creature_template set scale = 0.8 where entry = 1191;
update creature_template set scale = 1.15 where entry = 1192;
update creature_template set scale = 0.85 where entry = 1194;
update creature_template set scale = 0.55 where entry = 1195;
update creature_template set scale = 0.85 where entry = 1196;
update creature_template set scale = 0.85 where entry = 1197;
update creature_template set scale = 0.72712 where entry = 1199;
update creature_template set scale = 1.4 where entry = 1200;
update creature_template set scale = 0.85 where entry = 1201;
update creature_template set scale = 0.7 where entry = 1202;
update creature_template set scale = 1.15 where entry = 1211;
update creature_template set scale = 1.15 where entry = 1216;
update creature_template set scale = 0.75 where entry = 1224;
update creature_template set scale = 1.3 where entry = 1225;
update creature_template set scale = 1.15 where entry = 1228;
update creature_template set scale = 1.15 where entry = 1236;
update creature_template set scale = 2 where entry = 1244;
update creature_template set scale = 1.1 where entry = 1247;
update creature_template set scale = 1.15 where entry = 1251;
update creature_template set scale = 1.3 where entry = 1258;
update creature_template set scale = 1.5 where entry = 1259;
update creature_template set scale = 1.2 where entry = 1260;
update creature_template set scale = 1.15 where entry = 1268;
update creature_template set scale = 1.15 where entry = 1269;
update creature_template set scale = 1.15 where entry = 1270;
update creature_template set scale = 1.2 where entry = 1284;
update creature_template set scale = 1.3 where entry = 1393;
update creature_template set scale = 0.8 where entry = 1397;
update creature_template set scale = 1.5 where entry = 1398;
update creature_template set scale = 0.55 where entry = 1400;
update creature_template set scale = 1.3 where entry = 1412;
update creature_template set scale = 0.47119 where entry = 1417;
update creature_template set scale = 2 where entry = 1418;
update creature_template set scale = 1.3 where entry = 1424;
update creature_template set scale = 1.3 where entry = 1425;
update creature_template set scale = 0.8 where entry = 1447;
update creature_template set scale = 1.6 where entry = 1449;
update creature_template set scale = 1.15 where entry = 1454;
update creature_template set scale = 1.15 where entry = 1466;
update creature_template set scale = 1.3 where entry = 1487;
update creature_template set scale = 1.3 where entry = 1491;
update creature_template set scale = 1.45 where entry = 1492;
update creature_template set scale = 0.85 where entry = 1501;
update creature_template set scale = 0.85 where entry = 1502;
update creature_template set scale = 0.85 where entry = 1503;
update creature_template set scale = 0.40678 where entry = 1504;
update creature_template set scale = 0.41017 where entry = 1505;
update creature_template set scale = 0.7 where entry = 1508;
update creature_template set scale = 0.71017 where entry = 1509;
update creature_template set scale = 0.4 where entry = 1512;
update creature_template set scale = 0.41525 where entry = 1513;
update creature_template set scale = 1.15 where entry = 1514;
update creature_template set scale = 0.85 where entry = 1520;
update creature_template set scale = 0.85 where entry = 1522;
update creature_template set scale = 1.15 where entry = 1530;
update creature_template set scale = 0.75 where entry = 1531;
update creature_template set scale = 0.9 where entry = 1533;
update creature_template set scale = 0.75 where entry = 1534;
update creature_template set scale = 0.85 where entry = 1544;
update creature_template set scale = 0.75 where entry = 1547;
update creature_template set scale = 0.9 where entry = 1548;
update creature_template set scale = 1.15 where entry = 1550;
update creature_template set scale = 1.15 where entry = 1551;
update creature_template set scale = 0.42542 where entry = 1553;
update creature_template set scale = 0.44068 where entry = 1554;
update creature_template set scale = 0.55 where entry = 1555;
update creature_template set scale = 1.33 where entry = 1557;
update creature_template set scale = 1.15 where entry = 1558;
update creature_template set scale = 2.3 where entry = 1559;
update creature_template set scale = 1.33 where entry = 1653;
update creature_template set scale = 0.9 where entry = 1654;
update creature_template set scale = 1.15 where entry = 1656;
update creature_template set scale = 0.85 where entry = 1657;
update creature_template set scale = 1.15 where entry = 1658;
update creature_template set scale = 0.85 where entry = 1674;
update creature_template set scale = 0.85 where entry = 1675;
update creature_template set scale = 1.15 where entry = 1676;
update creature_template set scale = 0.55 where entry = 1688;
update creature_template set scale = 0.7 where entry = 1693;
update creature_template set scale = 1.2 where entry = 1696;
update creature_template set scale = 1.3 where entry = 1713;
update creature_template set scale = 0.7 where entry = 1718;
update creature_template set scale = 0.95 where entry = 1727;
update creature_template set scale = 0.5 where entry = 1733;
update creature_template set scale = 1.5 where entry = 1763;
update creature_template set scale = 0.85 where entry = 1765;
update creature_template set scale = 0.7 where entry = 1769;
update creature_template set scale = 0.85 where entry = 1770;
update creature_template set scale = 0.85 where entry = 1778;
update creature_template set scale = 0.55 where entry = 1780;
update creature_template set scale = 0.55 where entry = 1781;
update creature_template set scale = 1.15 where entry = 1782;
update creature_template set scale = 1.15 where entry = 1783;
update creature_template set scale = 1.15 where entry = 1784;
update creature_template set scale = 1.15 where entry = 1785;
update creature_template set scale = 1.3 where entry = 1787;
update creature_template set scale = 1.5 where entry = 1788;
update creature_template set scale = 1.3 where entry = 1789;
update creature_template set scale = 1.15 where entry = 1791;
update creature_template set scale = 1.3 where entry = 1794;
update creature_template set scale = 1.3 where entry = 1795;
update creature_template set scale = 1.3 where entry = 1796;
update creature_template set scale = 1.15 where entry = 1797;
update creature_template set scale = 1.45 where entry = 1805;
update creature_template set scale = 1.3 where entry = 1806;
update creature_template set scale = 1.15 where entry = 1809;
update creature_template set scale = 1.5 where entry = 1815;
update creature_template set scale = 1.5 where entry = 1816;
update creature_template set scale = 0.85 where entry = 1822;
update creature_template set scale = 1.33 where entry = 1823;
update creature_template set scale = 1.33 where entry = 1825;
update creature_template set scale = 1.05 where entry = 1845;
update creature_template set scale = 0.8 where entry = 1860;
update creature_template set scale = 0.9 where entry = 1866;
update creature_template set scale = 1.15 where entry = 1889;
update creature_template set scale = 0.85 where entry = 1890;
update creature_template set scale = 1.15 where entry = 1892;
update creature_template set scale = 1.3 where entry = 1893;
update creature_template set scale = 1.33 where entry = 1895;
update creature_template set scale = 0.85 where entry = 1896;
update creature_template set scale = 1.3 where entry = 1907;
update creature_template set scale = 1.3 where entry = 1908;
update creature_template set scale = 1.3 where entry = 1909;
update creature_template set scale = 1.15 where entry = 1914;
update creature_template set scale = 1.15 where entry = 1915;
update creature_template set scale = 0.85 where entry = 1916;
update creature_template set scale = 0.85 where entry = 1917;
update creature_template set scale = 1.15 where entry = 1918;
update creature_template set scale = 0.85 where entry = 1919;
update creature_template set scale = 0.85 where entry = 1922;
update creature_template set scale = 1.15 where entry = 1923;
update creature_template set scale = 1.15 where entry = 1924;
update creature_template set scale = 1.15 where entry = 1940;
update creature_template set scale = 0.85 where entry = 1941;
update creature_template set scale = 1.15 where entry = 1949;
update creature_template set scale = 1.15 where entry = 1954;
update creature_template set scale = 1.15 where entry = 1955;
update creature_template set scale = 1.3 where entry = 1956;
update creature_template set scale = 1.15 where entry = 1957;
update creature_template set scale = 1.15 where entry = 1958;
update creature_template set scale = 1.3 where entry = 1972;
update creature_template set scale = 0.60678 where entry = 1984;
update creature_template set scale = 0.75 where entry = 1985;
update creature_template set scale = 0.40678 where entry = 1986;
update creature_template set scale = 0.85 where entry = 1988;
update creature_template set scale = 1.2 where entry = 1993;
update creature_template set scale = 0.7 where entry = 1994;
update creature_template set scale = 0.85 where entry = 1995;
update creature_template set scale = 1.15 where entry = 1997;
update creature_template set scale = 0.55 where entry = 1998;
update creature_template set scale = 0.7 where entry = 1999;
update creature_template set scale = 0.85 where entry = 2000;
update creature_template set scale = 1.15 where entry = 2001;
update creature_template set scale = 1.15 where entry = 2004;
update creature_template set scale = 1.15 where entry = 2005;
update creature_template set scale = 0.9 where entry = 2006;
update creature_template set scale = 0.9 where entry = 2007;
update creature_template set scale = 1.1 where entry = 2010;
update creature_template set scale = 1.2 where entry = 2012;
update creature_template set scale = 1.3 where entry = 2013;
update creature_template set scale = 1.2 where entry = 2014;
update creature_template set scale = 0.85 where entry = 2017;
update creature_template set scale = 1.15 where entry = 2019;
update creature_template set scale = 1.15 where entry = 2020;
update creature_template set scale = 1.3 where entry = 2021;
update creature_template set scale = 0.7 where entry = 2022;
update creature_template set scale = 0.85 where entry = 2025;
update creature_template set scale = 1.15 where entry = 2030;
update creature_template set scale = 0.7 where entry = 2031;
update creature_template set scale = 0.70678 where entry = 2032;
update creature_template set scale = 1.33 where entry = 2033;
update creature_template set scale = 0.85 where entry = 2038;
update creature_template set scale = 1.3 where entry = 2039;
update creature_template set scale = 2 where entry = 2041;
update creature_template set scale = 0.85 where entry = 2042;
update creature_template set scale = 0.85 where entry = 2043;
update creature_template set scale = 0.85 where entry = 2070;
update creature_template set scale = 1.15 where entry = 2071;
update creature_template set scale = 0.7 where entry = 2089;
update creature_template set scale = 1.15 where entry = 2106;
update creature_template set scale = 0.85 where entry = 2156;
update creature_template set scale = 1.15 where entry = 2158;
update creature_template set scale = 1.3 where entry = 2159;
update creature_template set scale = 1.2 where entry = 2162;
update creature_template set scale = 0.85 where entry = 2163;
update creature_template set scale = 0.85 where entry = 2164;
update creature_template set scale = 1.15 where entry = 2166;
update creature_template set scale = 1.1 where entry = 2168;
update creature_template set scale = 1.1 where entry = 2169;
update creature_template set scale = 1.2 where entry = 2170;
update creature_template set scale = 1.2 where entry = 2171;
update creature_template set scale = 1.15 where entry = 2172;
update creature_template set scale = 1.25 where entry = 2174;
update creature_template set scale = 0.78814 where entry = 2175;
update creature_template set scale = 0.75 where entry = 2176;
update creature_template set scale = 0.75 where entry = 2177;
update creature_template set scale = 0.85 where entry = 2180;
update creature_template set scale = 1.15 where entry = 2183;
update creature_template set scale = 1.2 where entry = 2186;
update creature_template set scale = 1.15 where entry = 2187;
update creature_template set scale = 1.15 where entry = 2189;
update creature_template set scale = 1.15 where entry = 2190;
update creature_template set scale = 1.3 where entry = 2191;
update creature_template set scale = 1.15 where entry = 2203;
update creature_template set scale = 1.15 where entry = 2204;
update creature_template set scale = 1.3 where entry = 2205;
update creature_template set scale = 1.5 where entry = 2206;
update creature_template set scale = 1.5 where entry = 2207;
update creature_template set scale = 1.75 where entry = 2208;
update creature_template set scale = 0.85 where entry = 2212;
update creature_template set scale = 0.85 where entry = 2231;
update creature_template set scale = 1.15 where entry = 2233;
update creature_template set scale = 0.85 where entry = 2234;
update creature_template set scale = 1.15 where entry = 2236;
update creature_template set scale = 1.15 where entry = 2237;
update creature_template set scale = 1.15 where entry = 2249;
update creature_template set scale = 1.15 where entry = 2251;
update creature_template set scale = 1.15 where entry = 2252;
update creature_template set scale = 1.3 where entry = 2253;
update creature_template set scale = 1.45 where entry = 2254;
update creature_template set scale = 1.15 where entry = 2255;
update creature_template set scale = 1.6 where entry = 2256;
update creature_template set scale = 1.9 where entry = 2257;
update creature_template set scale = 0.4 where entry = 2274;
update creature_template set scale = 0.85 where entry = 2283;
update creature_template set scale = 1.75 where entry = 2287;
update creature_template set scale = 1.1 where entry = 2304;
update creature_template set scale = 0.85 where entry = 2321;
update creature_template set scale = 1.3 where entry = 2323;
update creature_template set scale = 1.15 where entry = 2339;
update creature_template set scale = 1.33 where entry = 2348;
update creature_template set scale = 1.15 where entry = 2349;
update creature_template set scale = 0.85 where entry = 2350;
update creature_template set scale = 1.15 where entry = 2354;
update creature_template set scale = 1.3 where entry = 2356;
update creature_template set scale = 0.85 where entry = 2359;
update creature_template set scale = 1.15 where entry = 2369;
update creature_template set scale = 1.15 where entry = 2371;
update creature_template set scale = 1.15 where entry = 2372;
update creature_template set scale = 1.15 where entry = 2373;
update creature_template set scale = 1.3 where entry = 2374;
update creature_template set scale = 1.3 where entry = 2375;
update creature_template set scale = 1.5 where entry = 2376;
update creature_template set scale = 1.5 where entry = 2377;
update creature_template set scale = 0.85593 where entry = 2384;
update creature_template set scale = 1.15 where entry = 2406;
update creature_template set scale = 1.3 where entry = 2407;
update creature_template set scale = 1.45 where entry = 2417;
update creature_template set scale = 1.75 where entry = 2420;
update creature_template set scale = 1.6 where entry = 2421;
update creature_template set scale = 1.3 where entry = 2422;
update creature_template set scale = 1.2 where entry = 2425;
update creature_template set scale = 0.3 where entry = 2462;
update creature_template set scale = 1.15 where entry = 2473;
update creature_template set scale = 1.15 where entry = 2474;
update creature_template set scale = 1.5 where entry = 2476;
update creature_template set scale = 1.35 where entry = 2478;
update creature_template set scale = 1.35 where entry = 2487;
update creature_template set scale = 1.15 where entry = 2489;
update creature_template set scale = 1.15 where entry = 2491;
update creature_template set scale = 1.2 where entry = 2496;
update creature_template set scale = 1.5 where entry = 2505;
update creature_template set scale = 0.4 where entry = 2520;
update creature_template set scale = 1.5 where entry = 2529;
update creature_template set scale = 0.25 where entry = 2540;
update creature_template set scale = 1.3 where entry = 2544;
update creature_template set scale = 1.15 where entry = 2559;
update creature_template set scale = 0.6678 where entry = 2560;
update creature_template set scale = 1.3 where entry = 2561;
update creature_template set scale = 1.15 where entry = 2562;
update creature_template set scale = 0.85 where entry = 2563;
update creature_template set scale = 1.3 where entry = 2564;
update creature_template set scale = 1.15 where entry = 2565;
update creature_template set scale = 1.44 where entry = 2566;
update creature_template set scale = 1.3 where entry = 2567;
update creature_template set scale = 1.6 where entry = 2569;
update creature_template set scale = 1.6 where entry = 2570;
update creature_template set scale = 1.75 where entry = 2571;
update creature_template set scale = 1.3 where entry = 2572;
update creature_template set scale = 1.5 where entry = 2573;
update creature_template set scale = 1.5 where entry = 2574;
update creature_template set scale = 0.7 where entry = 2578;
update creature_template set scale = 1.15 where entry = 2579;
update creature_template set scale = 1.3 where entry = 2580;
update creature_template set scale = 0.85 where entry = 2592;
update creature_template set scale = 1.3 where entry = 2595;
update creature_template set scale = 1.3 where entry = 2596;
update creature_template set scale = 1.75 where entry = 2602;
update creature_template set scale = 1.3 where entry = 2603;
update creature_template set scale = 1.3 where entry = 2611;
update creature_template set scale = 0.9 where entry = 2628;
update creature_template set scale = 1.33 where entry = 2635;
update creature_template set scale = 1.05 where entry = 2640;
update creature_template set scale = 1.05 where entry = 2641;
update creature_template set scale = 1.05 where entry = 2642;
update creature_template set scale = 1.1 where entry = 2643;
update creature_template set scale = 1.15 where entry = 2644;
update creature_template set scale = 1.05 where entry = 2645;
update creature_template set scale = 1.15 where entry = 2646;
update creature_template set scale = 1.2 where entry = 2647;
update creature_template set scale = 0.95 where entry = 2649;
update creature_template set scale = 1.05 where entry = 2652;
update creature_template set scale = 1.05 where entry = 2653;
update creature_template set scale = 1.1 where entry = 2654;
update creature_template set scale = 1.15 where entry = 2655;
update creature_template set scale = 1.3 where entry = 2656;
update creature_template set scale = 1.15 where entry = 2658;
update creature_template set scale = 1.3 where entry = 2659;
update creature_template set scale = 0.7 where entry = 2667;
update creature_template set scale = 1.3 where entry = 2671;
update creature_template set scale = 2 where entry = 2673;
update creature_template set scale = 2 where entry = 2674;
update creature_template set scale = 0.4 where entry = 2676;
update creature_template set scale = 0.9339 where entry = 2680;
update creature_template set scale = 1.15 where entry = 2682;
update creature_template set scale = 1.15 where entry = 2683;
update creature_template set scale = 1.15 where entry = 2687;
update creature_template set scale = 1.15 where entry = 2688;
update creature_template set scale = 1.45 where entry = 2701;
update creature_template set scale = 1.6 where entry = 2715;
update creature_template set scale = 1.75 where entry = 2716;
update creature_template set scale = 1.9 where entry = 2717;
update creature_template set scale = 2.05 where entry = 2718;
update creature_template set scale = 1.9 where entry = 2719;
update creature_template set scale = 2.05 where entry = 2720;
update creature_template set scale = 1.3 where entry = 2725;
update creature_template set scale = 0.85 where entry = 2726;
update creature_template set scale = 1.15 where entry = 2728;
update creature_template set scale = 1.3 where entry = 2729;
update creature_template set scale = 1.15 where entry = 2731;
update creature_template set scale = 1.3 where entry = 2732;
update creature_template set scale = 1.5 where entry = 2734;
update creature_template set scale = 0.85 where entry = 2735;
update creature_template set scale = 1.15 where entry = 2736;
update creature_template set scale = 1.4 where entry = 2749;
update creature_template set scale = 1.3 where entry = 2753;
update creature_template set scale = 1.3 where entry = 2754;
update creature_template set scale = 1.5 where entry = 2757;
update creature_template set scale = 1.3 where entry = 2759;
update creature_template set scale = 0.75 where entry = 2760;
update creature_template set scale = 1.25 where entry = 2762;
update creature_template set scale = 1.15 where entry = 2764;
update creature_template set scale = 1.15 where entry = 2765;
update creature_template set scale = 1.9 where entry = 2773;
update creature_template set scale = 1.2 where entry = 2784;
update creature_template set scale = 1.6 where entry = 2793;
update creature_template set scale = 0.7 where entry = 2794;
update creature_template set scale = 1.35 where entry = 2798;
update creature_template set scale = 1.15 where entry = 2830;
update creature_template set scale = 1.5 where entry = 2831;
update creature_template set scale = 1.15 where entry = 2892;
update creature_template set scale = 1.5 where entry = 2893;
update creature_template set scale = 1.3 where entry = 2894;
update creature_template set scale = 1.1 where entry = 2907;
update creature_template set scale = 1.15 where entry = 2920;
update creature_template set scale = 1.15 where entry = 2921;
update creature_template set scale = 0.4 where entry = 2922;
update creature_template set scale = 1.15 where entry = 2924;
update creature_template set scale = 1.3 where entry = 2925;
update creature_template set scale = 1.5 where entry = 2926;
update creature_template set scale = 2 where entry = 2931;
update creature_template set scale = 1.3 where entry = 2937;
update creature_template set scale = 1.75 where entry = 2944;
update creature_template set scale = 1.5 where entry = 2945;
update creature_template set scale = 0.85 where entry = 2946;
update creature_template set scale = 1.35 where entry = 2947;
update creature_template set scale = 1.35 where entry = 2948;
update creature_template set scale = 0.85 where entry = 2949;
update creature_template set scale = 0.85 where entry = 2950;
update creature_template set scale = 0.85 where entry = 2951;
update creature_template set scale = 0.8 where entry = 2952;
update creature_template set scale = 0.9 where entry = 2953;
update creature_template set scale = 0.75 where entry = 2954;
update creature_template set scale = 0.72034 where entry = 2958;
update creature_template set scale = 0.85 where entry = 2959;
update creature_template set scale = 0.71356 where entry = 2961;
update creature_template set scale = 0.85 where entry = 2962;
update creature_template set scale = 0.85 where entry = 2963;
update creature_template set scale = 1.15 where entry = 2965;
update creature_template set scale = 0.61356 where entry = 2966;
update creature_template set scale = 0.85 where entry = 2967;
update creature_template set scale = 0.85 where entry = 2968;
update creature_template set scale = 0.7 where entry = 2969;
update creature_template set scale = 0.85 where entry = 2970;
update creature_template set scale = 0.7 where entry = 2971;
update creature_template set scale = 0.85 where entry = 2972;
update creature_template set scale = 1.15 where entry = 2974;
update creature_template set scale = 1.1 where entry = 2976;
update creature_template set scale = 1.1 where entry = 2978;
update creature_template set scale = 1.35 where entry = 2980;
update creature_template set scale = 1.35 where entry = 2981;
update creature_template set scale = 1.35 where entry = 2982;
update creature_template set scale = 0.8 where entry = 2983;
update creature_template set scale = 1.35 where entry = 2984;
update creature_template set scale = 1.35 where entry = 2985;
update creature_template set scale = 1.35 where entry = 2986;
update creature_template set scale = 1.35 where entry = 2987;
update creature_template set scale = 1.35 where entry = 2988;
update creature_template set scale = 1.25 where entry = 2991;
update creature_template set scale = 1.35 where entry = 2993;
update creature_template set scale = 1.35 where entry = 2994;
update creature_template set scale = 1.35 where entry = 2995;
update creature_template set scale = 1.35 where entry = 2996;
update creature_template set scale = 1.25 where entry = 2997;
update creature_template set scale = 1.35 where entry = 2998;
update creature_template set scale = 1.35 where entry = 2999;
update creature_template set scale = 1.35 where entry = 3001;
update creature_template set scale = 1.35 where entry = 3002;
update creature_template set scale = 1.25 where entry = 3003;
update creature_template set scale = 1.25 where entry = 3004;
update creature_template set scale = 1.35 where entry = 3005;
update creature_template set scale = 1.25 where entry = 3007;
update creature_template set scale = 1.35 where entry = 3008;
update creature_template set scale = 1.25 where entry = 3009;
update creature_template set scale = 1.25 where entry = 3010;
update creature_template set scale = 1.35 where entry = 3011;
update creature_template set scale = 1.25 where entry = 3012;
update creature_template set scale = 1.35 where entry = 3013;
update creature_template set scale = 1.25 where entry = 3014;
update creature_template set scale = 1.25 where entry = 3015;
update creature_template set scale = 1.35 where entry = 3016;
update creature_template set scale = 1.25 where entry = 3017;
update creature_template set scale = 1.35 where entry = 3018;
update creature_template set scale = 1.35 where entry = 3019;
update creature_template set scale = 1.35 where entry = 3020;
update creature_template set scale = 1.35 where entry = 3021;
update creature_template set scale = 1.25 where entry = 3022;
update creature_template set scale = 1.25 where entry = 3023;
update creature_template set scale = 1.35 where entry = 3024;
update creature_template set scale = 1.25 where entry = 3025;
update creature_template set scale = 1.25 where entry = 3026;
update creature_template set scale = 1.35 where entry = 3027;
update creature_template set scale = 1.35 where entry = 3028;
update creature_template set scale = 1.25 where entry = 3029;
update creature_template set scale = 1.25 where entry = 3030;
update creature_template set scale = 1.35 where entry = 3031;
update creature_template set scale = 1.35 where entry = 3032;
update creature_template set scale = 1.35 where entry = 3033;
update creature_template set scale = 1.25 where entry = 3034;
update creature_template set scale = 0.85 where entry = 3035;
update creature_template set scale = 1.25 where entry = 3036;
update creature_template set scale = 1.25 where entry = 3037;
update creature_template set scale = 1.25 where entry = 3038;
update creature_template set scale = 1.35 where entry = 3039;
update creature_template set scale = 1.35 where entry = 3040;
update creature_template set scale = 1.35 where entry = 3041;
update creature_template set scale = 1.35 where entry = 3042;
update creature_template set scale = 1.25 where entry = 3043;
update creature_template set scale = 1.35 where entry = 3050;
update creature_template set scale = 1.35 where entry = 3052;
update creature_template set scale = 1.35 where entry = 3054;
update creature_template set scale = 1.35 where entry = 3055;
update creature_template set scale = 1.62 where entry = 3057;
update creature_template set scale = 1.15 where entry = 3058;
update creature_template set scale = 1.35 where entry = 3059;
update creature_template set scale = 1.35 where entry = 3060;
update creature_template set scale = 1.35 where entry = 3061;
update creature_template set scale = 1.25 where entry = 3062;
update creature_template set scale = 1.35 where entry = 3063;
update creature_template set scale = 1.25 where entry = 3064;
update creature_template set scale = 1.35 where entry = 3065;
update creature_template set scale = 1.35 where entry = 3066;
update creature_template set scale = 1.35 where entry = 3067;
update creature_template set scale = 1.35 where entry = 3069;
update creature_template set scale = 1.25 where entry = 3072;
update creature_template set scale = 1.35 where entry = 3073;
update creature_template set scale = 1.25 where entry = 3074;
update creature_template set scale = 1.35 where entry = 3075;
update creature_template set scale = 1.35 where entry = 3076;
update creature_template set scale = 1.35 where entry = 3077;
update creature_template set scale = 1.35 where entry = 3078;
update creature_template set scale = 1.35 where entry = 3079;
update creature_template set scale = 1.35 where entry = 3080;
update creature_template set scale = 1.25 where entry = 3081;
update creature_template set scale = 1.35 where entry = 3083;
update creature_template set scale = 1.25 where entry = 3084;
update creature_template set scale = 1.25 where entry = 3092;
update creature_template set scale = 1.35 where entry = 3093;
update creature_template set scale = 1.25 where entry = 3095;
update creature_template set scale = 1.15 where entry = 3096;
update creature_template set scale = 0.6 where entry = 3098;
update creature_template set scale = 0.75 where entry = 3099;
update creature_template set scale = 0.8 where entry = 3100;
update creature_template set scale = 0.85 where entry = 3101;
update creature_template set scale = 0.7 where entry = 3102;
update creature_template set scale = 0.55 where entry = 3103;
update creature_template set scale = 0.55 where entry = 3104;
update creature_template set scale = 0.7 where entry = 3105;
update creature_template set scale = 0.75932 where entry = 3106;
update creature_template set scale = 0.85 where entry = 3107;
update creature_template set scale = 0.85 where entry = 3108;
update creature_template set scale = 0.42712 where entry = 3110;
update creature_template set scale = 0.8 where entry = 3111;
update creature_template set scale = 0.9 where entry = 3112;
update creature_template set scale = 0.9 where entry = 3113;
update creature_template set scale = 0.85 where entry = 3115;
update creature_template set scale = 0.85 where entry = 3116;
update creature_template set scale = 0.85 where entry = 3119;
update creature_template set scale = 0.85 where entry = 3120;
update creature_template set scale = 0.85 where entry = 3121;
update creature_template set scale = 0.55 where entry = 3122;
update creature_template set scale = 0.7 where entry = 3123;
update creature_template set scale = 0.71017 where entry = 3124;
update creature_template set scale = 0.85 where entry = 3125;
update creature_template set scale = 0.85 where entry = 3126;
update creature_template set scale = 0.7 where entry = 3127;
update creature_template set scale = 0.85 where entry = 3130;
update creature_template set scale = 0.9 where entry = 3131;
update creature_template set scale = 1.15 where entry = 3133;
update creature_template set scale = 0.7 where entry = 3141;
update creature_template set scale = 1.15 where entry = 3181;
update creature_template set scale = 1.25 where entry = 3209;
update creature_template set scale = 1.35 where entry = 3210;
update creature_template set scale = 1.35 where entry = 3211;
update creature_template set scale = 1.35 where entry = 3212;
update creature_template set scale = 1.35 where entry = 3213;
update creature_template set scale = 1.35 where entry = 3214;
update creature_template set scale = 1.35 where entry = 3215;
update creature_template set scale = 1.25 where entry = 3217;
update creature_template set scale = 1.25 where entry = 3218;
update creature_template set scale = 1.25 where entry = 3219;
update creature_template set scale = 1.35 where entry = 3220;
update creature_template set scale = 1.35 where entry = 3221;
update creature_template set scale = 1.35 where entry = 3222;
update creature_template set scale = 1.25 where entry = 3223;
update creature_template set scale = 1.35 where entry = 3224;
update creature_template set scale = 0.7 where entry = 3226;
update creature_template set scale = 0.7 where entry = 3227;
update creature_template set scale = 0.85 where entry = 3228;
update creature_template set scale = 0.9 where entry = 3229;
update creature_template set scale = 0.43729 where entry = 3231;
update creature_template set scale = 1.35 where entry = 3233;
update creature_template set scale = 1.15 where entry = 3234;
update creature_template set scale = 1.5 where entry = 3235;
update creature_template set scale = 1.3 where entry = 3236;
update creature_template set scale = 1.5 where entry = 3237;
update creature_template set scale = 1.15 where entry = 3238;
update creature_template set scale = 0.85 where entry = 3240;
update creature_template set scale = 1.3 where entry = 3241;
update creature_template set scale = 0.85 where entry = 3242;
update creature_template set scale = 0.56102 where entry = 3247;
update creature_template set scale = 0.85 where entry = 3248;
update creature_template set scale = 0.85 where entry = 3249;
update creature_template set scale = 0.25 where entry = 3251;
update creature_template set scale = 0.85 where entry = 3252;
update creature_template set scale = 0.7 where entry = 3254;
update creature_template set scale = 0.85 where entry = 3255;
update creature_template set scale = 1.15 where entry = 3258;
update creature_template set scale = 1.15 where entry = 3263;
update creature_template set scale = 1.15 where entry = 3265;
update creature_template set scale = 1.25 where entry = 3266;
update creature_template set scale = 1.15 where entry = 3269;
update creature_template set scale = 1.4 where entry = 3270;
update creature_template set scale = 1.25 where entry = 3271;
update creature_template set scale = 0.85 where entry = 3272;
update creature_template set scale = 0.85 where entry = 3273;
update creature_template set scale = 1.15 where entry = 3275;
update creature_template set scale = 1.15 where entry = 3276;
update creature_template set scale = 0.85 where entry = 3277;
update creature_template set scale = 1.3 where entry = 3278;
update creature_template set scale = 1.15 where entry = 3280;
update creature_template set scale = 0.85 where entry = 3281;
update creature_template set scale = 1.15 where entry = 3290;
update creature_template set scale = 1.5 where entry = 3322;
update creature_template set scale = 1.35 where entry = 3341;
update creature_template set scale = 1.1 where entry = 3353;
update creature_template set scale = 1.35 where entry = 3387;
update creature_template set scale = 1.25 where entry = 3388;
update creature_template set scale = 1.2 where entry = 3391;
update creature_template set scale = 1.15 where entry = 3394;
update creature_template set scale = 1.15 where entry = 3395;
update creature_template set scale = 1.3 where entry = 3396;
update creature_template set scale = 1.4 where entry = 3398;
update creature_template set scale = 1.15 where entry = 3416;
update creature_template set scale = 0.6 where entry = 3417;
update creature_template set scale = 1.35 where entry = 3418;
update creature_template set scale = 0.7 where entry = 3424;
update creature_template set scale = 1.1 where entry = 3430;
update creature_template set scale = 1.3 where entry = 3434;
update creature_template set scale = 1.4 where entry = 3435;
update creature_template set scale = 1.15 where entry = 3436;
update creature_template set scale = 1.4 where entry = 3438;
update creature_template set scale = 0.75 where entry = 3439;
update creature_template set scale = 1.35 where entry = 3441;
update creature_template set scale = 1.25 where entry = 3447;
update creature_template set scale = 1.35 where entry = 3448;
update creature_template set scale = 0.25 where entry = 3450;
update creature_template set scale = 1.3 where entry = 3452;
update creature_template set scale = 1.25 where entry = 3457;
update creature_template set scale = 1.4 where entry = 3458;
update creature_template set scale = 1.4 where entry = 3459;
update creature_template set scale = 0.57119 where entry = 3461;
update creature_template set scale = 1.15 where entry = 3466;
update creature_template set scale = 3 where entry = 3468;
update creature_template set scale = 3 where entry = 3469;
update creature_template set scale = 1.3 where entry = 3473;
update creature_template set scale = 1.3 where entry = 3474;
update creature_template set scale = 1.15 where entry = 3475;
update creature_template set scale = 1.5 where entry = 3476;
update creature_template set scale = 1.25 where entry = 3480;
update creature_template set scale = 1.35 where entry = 3483;
update creature_template set scale = 1.25 where entry = 3486;
update creature_template set scale = 1.35 where entry = 3500;
update creature_template set scale = 0.9017 where entry = 3503;
update creature_template set scale = 1.2 where entry = 3516;
update creature_template set scale = 0.85 where entry = 3529;
update creature_template set scale = 0.85 where entry = 3531;
update creature_template set scale = 0.85 where entry = 3533;
update creature_template set scale = 1.3 where entry = 3535;
update creature_template set scale = 0.9 where entry = 3537;
update creature_template set scale = 0.7 where entry = 3560;
update creature_template set scale = 0.75 where entry = 3570;
update creature_template set scale = 1.3 where entry = 3581;
update creature_template set scale = 0.75 where entry = 3582;
update creature_template set scale = 0.55085 where entry = 3630;
update creature_template set scale = 0.55424 where entry = 3631;
update creature_template set scale = 0.7 where entry = 3632;
update creature_template set scale = 0.85 where entry = 3633;
update creature_template set scale = 0.7 where entry = 3634;
update creature_template set scale = 0.85 where entry = 3636;
update creature_template set scale = 0.7 where entry = 3638;
update creature_template set scale = 0.85 where entry = 3640;
update creature_template set scale = 0.6 where entry = 3641;
update creature_template set scale = 1.5 where entry = 3653;
update creature_template set scale = 1.5 where entry = 3654;
update creature_template set scale = 1.45 where entry = 3659;
update creature_template set scale = 1.15 where entry = 3666;
update creature_template set scale = 1.2 where entry = 3669;
update creature_template set scale = 1.2 where entry = 3670;
update creature_template set scale = 1.1 where entry = 3672;
update creature_template set scale = 1.2 where entry = 3673;
update creature_template set scale = 1.62 where entry = 3678;
update creature_template set scale = 0.75 where entry = 3680;
update creature_template set scale = 1.35 where entry = 3685;
update creature_template set scale = 1.35 where entry = 3688;
update creature_template set scale = 1.35 where entry = 3689;
update creature_template set scale = 1.35 where entry = 3690;
update creature_template set scale = 1.15 where entry = 3692;
update creature_template set scale = 1.35 where entry = 3703;
update creature_template set scale = 1.25 where entry = 3704;
update creature_template set scale = 1.35 where entry = 3705;
update creature_template set scale = 1.3 where entry = 3711;
update creature_template set scale = 1.15 where entry = 3712;
update creature_template set scale = 1.15 where entry = 3715;
update creature_template set scale = 1.15 where entry = 3722;
update creature_template set scale = 1.3 where entry = 3737;
update creature_template set scale = 1.3 where entry = 3739;
update creature_template set scale = 1.5 where entry = 3740;
update creature_template set scale = 1.5 where entry = 3742;
update creature_template set scale = 1.1 where entry = 3745;
update creature_template set scale = 1.2 where entry = 3746;
update creature_template set scale = 1.2 where entry = 3748;
update creature_template set scale = 1.3 where entry = 3749;
update creature_template set scale = 1.1 where entry = 3750;
update creature_template set scale = 1.4 where entry = 3752;
update creature_template set scale = 1.4 where entry = 3754;
update creature_template set scale = 1.4 where entry = 3755;
update creature_template set scale = 1.4 where entry = 3757;
update creature_template set scale = 1.3 where entry = 3765;
update creature_template set scale = 1.4 where entry = 3767;
update creature_template set scale = 1.4 where entry = 3770;
update creature_template set scale = 1.3 where entry = 3771;
update creature_template set scale = 1.2 where entry = 3773;
update creature_template set scale = 0.7 where entry = 3774;
update creature_template set scale = 1.3 where entry = 3782;
update creature_template set scale = 1.15 where entry = 3783;
update creature_template set scale = 1.3 where entry = 3784;
update creature_template set scale = 1.15 where entry = 3809;
update creature_template set scale = 1.15 where entry = 3810;
update creature_template set scale = 1.45 where entry = 3811;
update creature_template set scale = 1.15 where entry = 3812;
update creature_template set scale = 1.15 where entry = 3814;
update creature_template set scale = 1.15 where entry = 3818;
update creature_template set scale = 0.85 where entry = 3819;
update creature_template set scale = 1.15 where entry = 3821;
update creature_template set scale = 1.15 where entry = 3824;
update creature_template set scale = 1.3 where entry = 3825;
update creature_template set scale = 1.5 where entry = 3834;
update creature_template set scale = 0.7 where entry = 3844;
update creature_template set scale = 0.85 where entry = 3851;
update creature_template set scale = 0.85 where entry = 3853;
update creature_template set scale = 0.85 where entry = 3855;
update creature_template set scale = 1.15 where entry = 3859;
update creature_template set scale = 0.85 where entry = 3861;
update creature_template set scale = 0.85 where entry = 3862;
update creature_template set scale = 1.15 where entry = 3864;
update creature_template set scale = 0.51186 where entry = 3866;
update creature_template set scale = 0.51695 where entry = 3868;
update creature_template set scale = 1.35 where entry = 3883;
update creature_template set scale = 1.25 where entry = 3884;
update creature_template set scale = 1.15 where entry = 3886;
update creature_template set scale = 1.2 where entry = 3887;
update creature_template set scale = 1.15 where entry = 3888;
update creature_template set scale = 0.75 where entry = 3892;
update creature_template set scale = 1.15 where entry = 3914;
update creature_template set scale = 0.85 where entry = 3915;
update creature_template set scale = 0.85 where entry = 3917;
update creature_template set scale = 1.5 where entry = 3919;
update creature_template set scale = 1.3 where entry = 3921;
update creature_template set scale = 1.3 where entry = 3922;
update creature_template set scale = 1.2 where entry = 3923;
update creature_template set scale = 1.1 where entry = 3924;
update creature_template set scale = 1.1 where entry = 3925;
update creature_template set scale = 1.3 where entry = 3931;
update creature_template set scale = 1.35 where entry = 3934;
update creature_template set scale = 0.85 where entry = 3939;
update creature_template set scale = 1.3 where entry = 3943;
update creature_template set scale = 1.3 where entry = 3944;
update creature_template set scale = 1.3 where entry = 3975;
update creature_template set scale = 1.2 where entry = 3976;
update creature_template set scale = 1.25 where entry = 3977;
update creature_template set scale = 1.35 where entry = 3978;
update creature_template set scale = 1.5 where entry = 3987;
update creature_template set scale = 1.3 where entry = 3999;
update creature_template set scale = 0.55 where entry = 4005;
update creature_template set scale = 0.85 where entry = 4006;
update creature_template set scale = 0.7 where entry = 4007;
update creature_template set scale = 0.85 where entry = 4008;
update creature_template set scale = 0.75 where entry = 4011;
update creature_template set scale = 1.15 where entry = 4014;
update creature_template set scale = 1.15 where entry = 4017;
update creature_template set scale = 1.3 where entry = 4019;
update creature_template set scale = 1.15 where entry = 4021;
update creature_template set scale = 1.15 where entry = 4022;
update creature_template set scale = 1.3 where entry = 4023;
update creature_template set scale = 1.5 where entry = 4024;
update creature_template set scale = 1.15 where entry = 4025;
update creature_template set scale = 1.3 where entry = 4026;
update creature_template set scale = 1.5 where entry = 4027;
update creature_template set scale = 1.5 where entry = 4028;
update creature_template set scale = 1.75 where entry = 4029;
update creature_template set scale = 1.75 where entry = 4030;
update creature_template set scale = 1.3 where entry = 4031;
update creature_template set scale = 1.15 where entry = 4032;
update creature_template set scale = 0.85 where entry = 4034;
update creature_template set scale = 0.5 where entry = 4036;
update creature_template set scale = 0.75 where entry = 4037;
update creature_template set scale = 0.7 where entry = 4040;
update creature_template set scale = 0.85 where entry = 4041;
update creature_template set scale = 0.7 where entry = 4042;
update creature_template set scale = 1.1 where entry = 4043;
update creature_template set scale = 0.55 where entry = 4044;
update creature_template set scale = 1.2 where entry = 4046;
update creature_template set scale = 1.15 where entry = 4063;
update creature_template set scale = 1.05 where entry = 4064;
update creature_template set scale = 1.1 where entry = 4065;
update creature_template set scale = 0.55 where entry = 4068;
update creature_template set scale = 1.15 where entry = 4077;
update creature_template set scale = 1.15 where entry = 4081;
update creature_template set scale = 1.15 where entry = 4093;
update creature_template set scale = 1.3 where entry = 4095;
update creature_template set scale = 1.15 where entry = 4097;
update creature_template set scale = 1.15 where entry = 4099;
update creature_template set scale = 1.3 where entry = 4100;
update creature_template set scale = 1.15 where entry = 4101;
update creature_template set scale = 1.3 where entry = 4104;
update creature_template set scale = 1.3 where entry = 4107;
update creature_template set scale = 1.15 where entry = 4109;
update creature_template set scale = 1.5 where entry = 4110;
update creature_template set scale = 1.3 where entry = 4111;
update creature_template set scale = 1.15 where entry = 4112;
update creature_template set scale = 1.5 where entry = 4113;
update creature_template set scale = 1.15 where entry = 4114;
update creature_template set scale = 1.3 where entry = 4116;
update creature_template set scale = 0.85 where entry = 4117;
update creature_template set scale = 0.85 where entry = 4118;
update creature_template set scale = 1.33 where entry = 4119;
update creature_template set scale = 0.85 where entry = 4120;
update creature_template set scale = 0.85 where entry = 4127;
update creature_template set scale = 1.15 where entry = 4128;
update creature_template set scale = 0.7 where entry = 4130;
update creature_template set scale = 0.85 where entry = 4131;
update creature_template set scale = 0.85 where entry = 4132;
update creature_template set scale = 0.7 where entry = 4133;
update creature_template set scale = 1.15 where entry = 4139;
update creature_template set scale = 0.8 where entry = 4140;
update creature_template set scale = 1.3 where entry = 4143;
update creature_template set scale = 1.15 where entry = 4144;
update creature_template set scale = 0.7 where entry = 4147;
update creature_template set scale = 0.85 where entry = 4151;
update creature_template set scale = 1.15 where entry = 4158;
update creature_template set scale = 0.5 where entry = 4166;
update creature_template set scale = 0.5 where entry = 4196;
update creature_template set scale = 1.15 where entry = 4202;
update creature_template set scale = 1.45 where entry = 4243;
update creature_template set scale = 1.15 where entry = 4249;
update creature_template set scale = 0.44407 where entry = 4263;
update creature_template set scale = 2 where entry = 4274;
update creature_template set scale = 1.3 where entry = 4279;
update creature_template set scale = 0.85 where entry = 4304;
update creature_template set scale = 0.75 where entry = 4308;
update creature_template set scale = 1.35 where entry = 4309;
update creature_template set scale = 1.35 where entry = 4310;
update creature_template set scale = 1.1 where entry = 4311;
update creature_template set scale = 1.35 where entry = 4312;
update creature_template set scale = 0.85 where entry = 4316;
update creature_template set scale = 1.25 where entry = 4317;
update creature_template set scale = 1.3 where entry = 4323;
update creature_template set scale = 1.5 where entry = 4324;
update creature_template set scale = 1.5 where entry = 4328;
update creature_template set scale = 1.25 where entry = 4334;
update creature_template set scale = 0.7 where entry = 4341;
update creature_template set scale = 0.7 where entry = 4342;
update creature_template set scale = 0.85 where entry = 4343;
update creature_template set scale = 0.85 where entry = 4344;
update creature_template set scale = 1.15 where entry = 4352;
update creature_template set scale = 1.3 where entry = 4355;
update creature_template set scale = 1.5 where entry = 4356;
update creature_template set scale = 1.75 where entry = 4357;
update creature_template set scale = 1.5 where entry = 4358;
update creature_template set scale = 1.5 where entry = 4359;
update creature_template set scale = 2 where entry = 4360;
update creature_template set scale = 1.75 where entry = 4361;
update creature_template set scale = 1.75 where entry = 4362;
update creature_template set scale = 2 where entry = 4363;
update creature_template set scale = 1.5 where entry = 4364;
update creature_template set scale = 1.75 where entry = 4366;
update creature_template set scale = 2 where entry = 4368;
update creature_template set scale = 1.75 where entry = 4370;
update creature_template set scale = 1.5 where entry = 4371;
update creature_template set scale = 1.5 where entry = 4374;
update creature_template set scale = 0.85 where entry = 4376;
update creature_template set scale = 0.85 where entry = 4377;
update creature_template set scale = 0.7 where entry = 4378;
update creature_template set scale = 0.7 where entry = 4379;
update creature_template set scale = 1.3 where entry = 4382;
update creature_template set scale = 1.5 where entry = 4385;
update creature_template set scale = 1.3 where entry = 4386;
update creature_template set scale = 1.3 where entry = 4387;
update creature_template set scale = 1.15 where entry = 4388;
update creature_template set scale = 1.3 where entry = 4389;
update creature_template set scale = 1.5 where entry = 4390;
update creature_template set scale = 1.15 where entry = 4391;
update creature_template set scale = 1.15 where entry = 4392;
update creature_template set scale = 1.3 where entry = 4393;
update creature_template set scale = 1.15 where entry = 4397;
update creature_template set scale = 1.3 where entry = 4398;
update creature_template set scale = 1.75 where entry = 4399;
update creature_template set scale = 1.5 where entry = 4400;
update creature_template set scale = 1.15 where entry = 4403;
update creature_template set scale = 1.15 where entry = 4404;
update creature_template set scale = 1.3 where entry = 4405;
update creature_template set scale = 1.3 where entry = 4412;
update creature_template set scale = 0.85 where entry = 4413;
update creature_template set scale = 1.15 where entry = 4414;
update creature_template set scale = 1.5 where entry = 4415;
update creature_template set scale = 1.05 where entry = 4416;
update creature_template set scale = 0.7 where entry = 4425;
update creature_template set scale = 1.05 where entry = 4429;
update creature_template set scale = 1.2075 where entry = 4430;
update creature_template set scale = 1.35 where entry = 4451;
update creature_template set scale = 1.15 where entry = 4453;
update creature_template set scale = 1.15 where entry = 4454;
update creature_template set scale = 1.5 where entry = 4457;
update creature_template set scale = 1.75 where entry = 4458;
update creature_template set scale = 2 where entry = 4459;
update creature_template set scale = 2 where entry = 4460;
update creature_template set scale = 2 where entry = 4461;
update creature_template set scale = 1.1 where entry = 4462;
update creature_template set scale = 1.2 where entry = 4464;
update creature_template set scale = 1.05 where entry = 4466;
update creature_template set scale = 1.5 where entry = 4468;
update creature_template set scale = 1.15 where entry = 4474;
update creature_template set scale = 1.15 where entry = 4475;
update creature_template set scale = 1.5 where entry = 4490;
update creature_template set scale = 1.2075 where entry = 4495;
update creature_template set scale = 1.05 where entry = 4496;
update creature_template set scale = 0.85 where entry = 4499;
update creature_template set scale = 1.45 where entry = 4500;
update creature_template set scale = 1.45 where entry = 4501;
update creature_template set scale = 1.44 where entry = 4502;
update creature_template set scale = 1.45 where entry = 4503;
update creature_template set scale = 0.5 where entry = 4539;
update creature_template set scale = 1.3 where entry = 4543;
update creature_template set scale = 1.3 where entry = 4548;
update creature_template set scale = 1.5 where entry = 4619;
update creature_template set scale = 1.15 where entry = 4620;
update creature_template set scale = 1.05 where entry = 4624;
update creature_template set scale = 1.35 where entry = 4629;
update creature_template set scale = 1.15 where entry = 4634;
update creature_template set scale = 1.3 where entry = 4636;
update creature_template set scale = 1.15 where entry = 4637;
update creature_template set scale = 1.5 where entry = 4640;
update creature_template set scale = 1.15 where entry = 4642;
update creature_template set scale = 1.15 where entry = 4643;
update creature_template set scale = 1.3 where entry = 4644;
update creature_template set scale = 1.3 where entry = 4645;
update creature_template set scale = 1.15 where entry = 4647;
update creature_template set scale = 1.15 where entry = 4648;
update creature_template set scale = 1.15 where entry = 4651;
update creature_template set scale = 1.3 where entry = 4652;
update creature_template set scale = 1.3 where entry = 4653;
update creature_template set scale = 1.15 where entry = 4654;
update creature_template set scale = 1.15 where entry = 4655;
update creature_template set scale = 1.3 where entry = 4656;
update creature_template set scale = 1.15 where entry = 4657;
update creature_template set scale = 1.3 where entry = 4658;
update creature_template set scale = 1.5 where entry = 4659;
update creature_template set scale = 0.85 where entry = 4660;
update creature_template set scale = 0.85 where entry = 4661;
update creature_template set scale = 0.85 where entry = 4662;
update creature_template set scale = 1.15 where entry = 4670;
update creature_template set scale = 1.3 where entry = 4671;
update creature_template set scale = 1.15 where entry = 4672;
update creature_template set scale = 1.3 where entry = 4673;
update creature_template set scale = 1.5 where entry = 4674;
update creature_template set scale = 1.15 where entry = 4675;
update creature_template set scale = 1.3 where entry = 4676;
update creature_template set scale = 1.6 where entry = 4679;
update creature_template set scale = 1.15 where entry = 4680;
update creature_template set scale = 1.15 where entry = 4681;
update creature_template set scale = 1.3 where entry = 4685;
update creature_template set scale = 1.45 where entry = 4687;
update creature_template set scale = 1.3 where entry = 4688;
update creature_template set scale = 0.85 where entry = 4689;
update creature_template set scale = 1.15 where entry = 4690;
update creature_template set scale = 0.7 where entry = 4692;
update creature_template set scale = 1.15 where entry = 4693;
update creature_template set scale = 1.3 where entry = 4694;
update creature_template set scale = 1.15 where entry = 4695;
update creature_template set scale = 1.15 where entry = 4697;
update creature_template set scale = 1.3 where entry = 4699;
update creature_template set scale = 1.5 where entry = 4700;
update creature_template set scale = 1.3 where entry = 4701;
update creature_template set scale = 1.75 where entry = 4702;
update creature_template set scale = 1.15 where entry = 4707;
update creature_template set scale = 1.2075 where entry = 4720;
update creature_template set scale = 1.35 where entry = 4721;
update creature_template set scale = 1.35 where entry = 4722;
update creature_template set scale = 1.15 where entry = 4726;
update creature_template set scale = 1.3 where entry = 4727;
update creature_template set scale = 0.85 where entry = 4728;
update creature_template set scale = 0.85 where entry = 4788;
update creature_template set scale = 1.15 where entry = 4798;
update creature_template set scale = 1.3 where entry = 4799;
update creature_template set scale = 0.85 where entry = 4802;
update creature_template set scale = 1.15 where entry = 4805;
update creature_template set scale = 1.25 where entry = 4810;
update creature_template set scale = 1.15 where entry = 4812;
update creature_template set scale = 1.35 where entry = 4814;
update creature_template set scale = 0.85 where entry = 4815;
update creature_template set scale = 1.5 where entry = 4818;
update creature_template set scale = 1.75 where entry = 4819;
update creature_template set scale = 1.3 where entry = 4820;
update creature_template set scale = 1.15 where entry = 4822;
update creature_template set scale = 1.3 where entry = 4823;
update creature_template set scale = 3 where entry = 4829;
update creature_template set scale = 1.3 where entry = 4830;
update creature_template set scale = 1.3 where entry = 4831;
update creature_template set scale = 1.2 where entry = 4832;
update creature_template set scale = 1.3 where entry = 4841;
update creature_template set scale = 1.15 where entry = 4850;
update creature_template set scale = 1.3 where entry = 4851;
update creature_template set scale = 1.5 where entry = 4853;
update creature_template set scale = 1.75 where entry = 4855;
update creature_template set scale = 1.15 where entry = 4856;
update creature_template set scale = 1.75 where entry = 4857;
update creature_template set scale = 0.6 where entry = 4861;
update creature_template set scale = 0.85 where entry = 4863;
update creature_template set scale = 1.35 where entry = 4876;
update creature_template set scale = 1.25 where entry = 4877;
update creature_template set scale = 1.35 where entry = 4878;
update creature_template set scale = 1.45 where entry = 4879;
update creature_template set scale = 1.45 where entry = 4883;
update creature_template set scale = 1.45 where entry = 4884;
update creature_template set scale = 1.5 where entry = 4887;
update creature_template set scale = 0.75 where entry = 4901;
update creature_template set scale = 1.15 where entry = 4941;
update creature_template set scale = 1.35 where entry = 4943;
update creature_template set scale = 1.2 where entry = 4949;
update creature_template set scale = 0.87288 where entry = 4950;
update creature_template set scale = 1.2 where entry = 4968;
update creature_template set scale = 0.55 where entry = 4977;
update creature_template set scale = 1.5 where entry = 4978;
update creature_template set scale = 1.45 where entry = 4983;
update creature_template set scale = 0.5 where entry = 5048;
update creature_template set scale = 0.55 where entry = 5053;
update creature_template set scale = 1.35 where entry = 5054;
update creature_template set scale = 0.5 where entry = 5055;
update creature_template set scale = 0.56441 where entry = 5056;
update creature_template set scale = 1.45 where entry = 5087;
update creature_template set scale = 1.15 where entry = 5100;
update creature_template set scale = 1.15 where entry = 5114;
update creature_template set scale = 1.15 where entry = 5127;
update creature_template set scale = 1.15 where entry = 5128;
update creature_template set scale = 1.15 where entry = 5129;
update creature_template set scale = 1.15 where entry = 5132;
update creature_template set scale = 1.15 where entry = 5144;
update creature_template set scale = 1.15 where entry = 5145;
update creature_template set scale = 1.15 where entry = 5146;
update creature_template set scale = 1.15 where entry = 5151;
update creature_template set scale = 1.15 where entry = 5152;
update creature_template set scale = 1.15 where entry = 5157;
update creature_template set scale = 1.15 where entry = 5158;
update creature_template set scale = 1.15 where entry = 5162;
update creature_template set scale = 1.15 where entry = 5163;
update creature_template set scale = 1.15 where entry = 5167;
update creature_template set scale = 1.15 where entry = 5169;
update creature_template set scale = 1.15 where entry = 5171;
update creature_template set scale = 1.15 where entry = 5172;
update creature_template set scale = 1.15 where entry = 5174;
update creature_template set scale = 1.15 where entry = 5175;
update creature_template set scale = 1.15 where entry = 5177;
update creature_template set scale = 1.15 where entry = 5178;
update creature_template set scale = 1.35 where entry = 5189;
update creature_template set scale = 1.2 where entry = 5195;
update creature_template set scale = 0.8 where entry = 5224;
update creature_template set scale = 0.8 where entry = 5225;
update creature_template set scale = 1.2 where entry = 5226;
update creature_template set scale = 1.5 where entry = 5228;
update creature_template set scale = 1.6 where entry = 5229;
update creature_template set scale = 1.9 where entry = 5232;
update creature_template set scale = 2.05 where entry = 5234;
update creature_template set scale = 1.5 where entry = 5235;
update creature_template set scale = 2.2 where entry = 5236;
update creature_template set scale = 1.6 where entry = 5237;
update creature_template set scale = 2.35 where entry = 5238;
update creature_template set scale = 1.9 where entry = 5239;
update creature_template set scale = 1.75 where entry = 5240;
update creature_template set scale = 2.35 where entry = 5241;
update creature_template set scale = 1.15 where entry = 5244;
update creature_template set scale = 1.15 where entry = 5247;
update creature_template set scale = 1.3 where entry = 5249;
update creature_template set scale = 1.3 where entry = 5251;
update creature_template set scale = 1.3 where entry = 5253;
update creature_template set scale = 1.5 where entry = 5254;
update creature_template set scale = 1.5 where entry = 5255;
update creature_template set scale = 1.5 where entry = 5258;
update creature_template set scale = 1.3 where entry = 5262;
update creature_template set scale = 1.3 where entry = 5268;
update creature_template set scale = 1.5 where entry = 5272;
update creature_template set scale = 1.75 where entry = 5274;
update creature_template set scale = 1.3 where entry = 5276;
update creature_template set scale = 1.5 where entry = 5277;
update creature_template set scale = 1.15 where entry = 5278;
update creature_template set scale = 1.15 where entry = 5287;
update creature_template set scale = 1.3 where entry = 5288;
update creature_template set scale = 1.5 where entry = 5291;
update creature_template set scale = 1.15 where entry = 5292;
update creature_template set scale = 1.5 where entry = 5293;
update creature_template set scale = 1.3 where entry = 5295;
update creature_template set scale = 1.15 where entry = 5296;
update creature_template set scale = 1.5 where entry = 5297;
update creature_template set scale = 1.3 where entry = 5299;
update creature_template set scale = 1.15 where entry = 5305;
update creature_template set scale = 1.15 where entry = 5306;
update creature_template set scale = 1.15 where entry = 5308;
update creature_template set scale = 1.5 where entry = 5312;
update creature_template set scale = 2 where entry = 5314;
update creature_template set scale = 1.25 where entry = 5317;
update creature_template set scale = 1.5 where entry = 5319;
update creature_template set scale = 2 where entry = 5320;
update creature_template set scale = 1.15 where entry = 5327;
update creature_template set scale = 1.5 where entry = 5331;
update creature_template set scale = 1.3 where entry = 5332;
update creature_template set scale = 2 where entry = 5333;
update creature_template set scale = 1.75 where entry = 5334;
update creature_template set scale = 1.3 where entry = 5335;
update creature_template set scale = 1.75 where entry = 5336;
update creature_template set scale = 1.5 where entry = 5337;
update creature_template set scale = 2 where entry = 5343;
update creature_template set scale = 1.8 where entry = 5345;
update creature_template set scale = 1.5 where entry = 5349;
update creature_template set scale = 1.45 where entry = 5352;
update creature_template set scale = 1.75 where entry = 5354;
update creature_template set scale = 1.45 where entry = 5357;
update creature_template set scale = 1.45 where entry = 5358;
update creature_template set scale = 1.75 where entry = 5359;
update creature_template set scale = 1.6 where entry = 5360;
update creature_template set scale = 1.45 where entry = 5361;
update creature_template set scale = 1.15 where entry = 5362;
update creature_template set scale = 1.3 where entry = 5364;
update creature_template set scale = 1.3 where entry = 5366;
update creature_template set scale = 1.35 where entry = 5390;
update creature_template set scale = 1.15 where entry = 5397;
update creature_template set scale = 1.5 where entry = 5402;
update creature_template set scale = 1.25 where entry = 5412;
update creature_template set scale = 1.15 where entry = 5420;
update creature_template set scale = 1.3 where entry = 5421;
update creature_template set scale = 1.15 where entry = 5423;
update creature_template set scale = 1.3 where entry = 5424;
update creature_template set scale = 0.85 where entry = 5425;
update creature_template set scale = 1.15 where entry = 5426;
update creature_template set scale = 1.3 where entry = 5427;
update creature_template set scale = 1.15 where entry = 5429;
update creature_template set scale = 1.5 where entry = 5430;
update creature_template set scale = 1.3 where entry = 5431;
update creature_template set scale = 1.15 where entry = 5434;
update creature_template set scale = 0.85 where entry = 5435;
update creature_template set scale = 0.5 where entry = 5446;
update creature_template set scale = 1.35 where entry = 5448;
update creature_template set scale = 1.15 where entry = 5450;
update creature_template set scale = 1.15 where entry = 5451;
update creature_template set scale = 1.15 where entry = 5454;
update creature_template set scale = 1.15 where entry = 5456;
update creature_template set scale = 1.15 where entry = 5457;
update creature_template set scale = 1.15 where entry = 5460;
update creature_template set scale = 1.3 where entry = 5461;
update creature_template set scale = 1.15 where entry = 5462;
update creature_template set scale = 1.45 where entry = 5466;
update creature_template set scale = 1.45 where entry = 5469;
update creature_template set scale = 1.6 where entry = 5470;
update creature_template set scale = 2.05 where entry = 5471;
update creature_template set scale = 2.2 where entry = 5472;
update creature_template set scale = 2.65 where entry = 5473;
update creature_template set scale = 2.05 where entry = 5474;
update creature_template set scale = 2.2 where entry = 5475;
update creature_template set scale = 1.5 where entry = 5477;
update creature_template set scale = 1.3 where entry = 5481;
update creature_template set scale = 1.5 where entry = 5485;
update creature_template set scale = 1.3 where entry = 5490;
update creature_template set scale = 1.15 where entry = 5518;
update creature_template set scale = 1.15 where entry = 5519;
update creature_template set scale = 1.15 where entry = 5520;
update creature_template set scale = 1.25 where entry = 5523;
update creature_template set scale = 1.15 where entry = 5568;
update creature_template set scale = 1.15 where entry = 5569;
update creature_template set scale = 1.35 where entry = 5599;
update creature_template set scale = 1.5 where entry = 5600;
update creature_template set scale = 1.5 where entry = 5601;
update creature_template set scale = 1.5 where entry = 5602;
update creature_template set scale = 1.15 where entry = 5612;
update creature_template set scale = 1.3 where entry = 5624;
update creature_template set scale = 0.8 where entry = 5676;
update creature_template set scale = 0.9 where entry = 5685;
update creature_template set scale = 1.45 where entry = 5687;
update creature_template set scale = 1.5 where entry = 5708;
update creature_template set scale = 0.8 where entry = 5709;
update creature_template set scale = 1.5 where entry = 5718;
update creature_template set scale = 1.3 where entry = 5722;
update creature_template set scale = 0.7 where entry = 5726;
update creature_template set scale = 0.7 where entry = 5730;
update creature_template set scale = 0.75 where entry = 5755;
update creature_template set scale = 0.7 where entry = 5756;
update creature_template set scale = 2 where entry = 5760;
update creature_template set scale = 0.75424 where entry = 5766;
update creature_template set scale = 1.35 where entry = 5767;
update creature_template set scale = 1.62 where entry = 5769;
update creature_template set scale = 1.25 where entry = 5770;
update creature_template set scale = 1.2 where entry = 5774;
update creature_template set scale = 4.5 where entry = 5775;
update creature_template set scale = 0.7 where entry = 5780;
update creature_template set scale = 1.35 where entry = 5784;
update creature_template set scale = 1.3 where entry = 5785;
update creature_template set scale = 0.85 where entry = 5787;
update creature_template set scale = 1.035 where entry = 5792;
update creature_template set scale = 0.85 where entry = 5808;
update creature_template set scale = 1.15 where entry = 5823;
update creature_template set scale = 1.1 where entry = 5824;
update creature_template set scale = 1.1 where entry = 5826;
update creature_template set scale = 1.5 where entry = 5827;
update creature_template set scale = 0.85593 where entry = 5828;
update creature_template set scale = 1.3 where entry = 5830;
update creature_template set scale = 1.2 where entry = 5831;
update creature_template set scale = 1.3 where entry = 5832;
update creature_template set scale = 1.3 where entry = 5833;
update creature_template set scale = 1.15 where entry = 5837;
update creature_template set scale = 1.3 where entry = 5838;
update creature_template set scale = 1.3 where entry = 5841;
update creature_template set scale = 1.25 where entry = 5852;
update creature_template set scale = 1.3 where entry = 5853;
update creature_template set scale = 1.5 where entry = 5854;
update creature_template set scale = 0.85 where entry = 5856;
update creature_template set scale = 1.15 where entry = 5858;
update creature_template set scale = 1.4 where entry = 5859;
update creature_template set scale = 1.35 where entry = 5860;
update creature_template set scale = 1.15 where entry = 5862;
update creature_template set scale = 1.2 where entry = 5863;
update creature_template set scale = 1.75 where entry = 5881;
update creature_template set scale = 1.25 where entry = 5888;
update creature_template set scale = 0.5 where entry = 5890;
update creature_template set scale = 3 where entry = 5891;
update creature_template set scale = 0.75 where entry = 5893;
update creature_template set scale = 0.85 where entry = 5894;
update creature_template set scale = 0.85 where entry = 5895;
update creature_template set scale = 0.5 where entry = 5896;
update creature_template set scale = 0.85 where entry = 5897;
update creature_template set scale = 1.25 where entry = 5901;
update creature_template set scale = 1.25 where entry = 5905;
update creature_template set scale = 1.35 where entry = 5906;
update creature_template set scale = 1.25 where entry = 5937;
update creature_template set scale = 1.35 where entry = 5938;
update creature_template set scale = 1.25 where entry = 5939;
update creature_template set scale = 1.35 where entry = 5940;
update creature_template set scale = 1.25 where entry = 5944;
update creature_template set scale = 0.75 where entry = 5951;
update creature_template set scale = 1.5 where entry = 5955;
update creature_template set scale = 2.2 where entry = 5974;
update creature_template set scale = 2.2 where entry = 5975;
update creature_template set scale = 2.35 where entry = 5976;
update creature_template set scale = 2.5 where entry = 5977;
update creature_template set scale = 2.5 where entry = 5978;
update creature_template set scale = 1.3 where entry = 5981;
update creature_template set scale = 1.5 where entry = 5982;
update creature_template set scale = 1.15 where entry = 5985;
update creature_template set scale = 1.5 where entry = 5988;
update creature_template set scale = 1.3 where entry = 5991;
update creature_template set scale = 1.5 where entry = 5992;
update creature_template set scale = 1.5 where entry = 5993;
update creature_template set scale = 1.15 where entry = 5997;
update creature_template set scale = 1.15 where entry = 6001;
update creature_template set scale = 1.3 where entry = 6011;
update creature_template set scale = 1.15 where entry = 6013;
update creature_template set scale = 0.7 where entry = 6017;
update creature_template set scale = 0.85 where entry = 6020;
update creature_template set scale = 1.35 where entry = 6028;
update creature_template set scale = 1.25 where entry = 6033;
update creature_template set scale = 0.85 where entry = 6047;
update creature_template set scale = 0.7 where entry = 6066;
update creature_template set scale = 1.3 where entry = 6069;
update creature_template set scale = 1.15 where entry = 6070;
update creature_template set scale = 0.85 where entry = 6071;
update creature_template set scale = 1.45 where entry = 6073;
update creature_template set scale = 1.8 where entry = 6109;
update creature_template set scale = 1.2 where entry = 6113;
update creature_template set scale = 1.15 where entry = 6119;
update creature_template set scale = 1.15 where entry = 6120;
update creature_template set scale = 1.3 where entry = 6125;
update creature_template set scale = 1.5 where entry = 6126;
update creature_template set scale = 1.5 where entry = 6127;
update creature_template set scale = 1.15 where entry = 6128;
update creature_template set scale = 1.25 where entry = 6129;
update creature_template set scale = 1.5 where entry = 6130;
update creature_template set scale = 1.2 where entry = 6132;
update creature_template set scale = 2 where entry = 6134;
update creature_template set scale = 1.15 where entry = 6135;
update creature_template set scale = 1.75 where entry = 6136;
update creature_template set scale = 1.3 where entry = 6137;
update creature_template set scale = 1.75 where entry = 6138;
update creature_template set scale = 1.15 where entry = 6139;
update creature_template set scale = 2 where entry = 6140;
update creature_template set scale = 0.85 where entry = 6141;
update creature_template set scale = 1.6 where entry = 6143;
update creature_template set scale = 1.75 where entry = 6144;
update creature_template set scale = 1.3 where entry = 6146;
update creature_template set scale = 1.6 where entry = 6147;
update creature_template set scale = 1.45 where entry = 6148;
update creature_template set scale = 1.45 where entry = 6167;
update creature_template set scale = 1.15 where entry = 6169;
update creature_template set scale = 1.2 where entry = 6184;
update creature_template set scale = 1.3 where entry = 6185;
update creature_template set scale = 1.3 where entry = 6186;
update creature_template set scale = 1.5 where entry = 6187;
update creature_template set scale = 1.4 where entry = 6188;
update creature_template set scale = 1.4 where entry = 6189;
update creature_template set scale = 1.3 where entry = 6190;
update creature_template set scale = 1.3 where entry = 6193;
update creature_template set scale = 1.5 where entry = 6194;
update creature_template set scale = 1.75 where entry = 6195;
update creature_template set scale = 1.75 where entry = 6196;
update creature_template set scale = 1.3 where entry = 6200;
update creature_template set scale = 1.5 where entry = 6201;
update creature_template set scale = 1.5 where entry = 6202;
update creature_template set scale = 1.15 where entry = 6206;
update creature_template set scale = 0.7 where entry = 6207;
update creature_template set scale = 0.85 where entry = 6210;
update creature_template set scale = 1.3 where entry = 6211;
update creature_template set scale = 0.85 where entry = 6213;
update creature_template set scale = 1.3 where entry = 6219;
update creature_template set scale = 1.15 where entry = 6221;
update creature_template set scale = 1.15 where entry = 6222;
update creature_template set scale = 1.265 where entry = 6223;
update creature_template set scale = 1.15 where entry = 6224;
update creature_template set scale = 1.1 where entry = 6226;
update creature_template set scale = 1.1 where entry = 6227;
update creature_template set scale = 1.1 where entry = 6229;
update creature_template set scale = 0.75 where entry = 6230;
update creature_template set scale = 0.75 where entry = 6232;
update creature_template set scale = 1.2 where entry = 6234;
update creature_template set scale = 1.2 where entry = 6235;
update creature_template set scale = 2 where entry = 6243;
update creature_template set scale = 0.85 where entry = 6250;
update creature_template set scale = 0.8 where entry = 6271;
update creature_template set scale = 0.9 where entry = 6272;
update creature_template set scale = 1.35 where entry = 6290;
update creature_template set scale = 1.15 where entry = 6328;
update creature_template set scale = 0.75 where entry = 6347;
update creature_template set scale = 1.3 where entry = 6348;
update creature_template set scale = 1.5 where entry = 6349;
update creature_template set scale = 1.5 where entry = 6350;
update creature_template set scale = 1.75 where entry = 6351;
update creature_template set scale = 1.5 where entry = 6352;
update creature_template set scale = 0.5 where entry = 6368;
update creature_template set scale = 1.3 where entry = 6370;
update creature_template set scale = 1.75 where entry = 6371;
update creature_template set scale = 1.15 where entry = 6375;
update creature_template set scale = 1.15 where entry = 6376;
update creature_template set scale = 1.15 where entry = 6377;
update creature_template set scale = 1.3 where entry = 6378;
update creature_template set scale = 1.5 where entry = 6379;
update creature_template set scale = 1.3 where entry = 6380;
update creature_template set scale = 0.7 where entry = 6386;
update creature_template set scale = 1.35 where entry = 6387;
update creature_template set scale = 0.85 where entry = 6388;
update creature_template set scale = 1.15 where entry = 6391;
update creature_template set scale = 1.15 where entry = 6392;
update creature_template set scale = 1.25 where entry = 6393;
update creature_template set scale = 1.35 where entry = 6394;
update creature_template set scale = 1.15 where entry = 6407;
update creature_template set scale = 1.35 where entry = 6410;
update creature_template set scale = 1.15 where entry = 6426;
update creature_template set scale = 1.35 where entry = 6466;
update creature_template set scale = 1.25 where entry = 6487;
update creature_template set scale = 0.5 where entry = 6492;
update creature_template set scale = 0.95 where entry = 6495;
update creature_template set scale = 1.15 where entry = 6496;
update creature_template set scale = 2.5 where entry = 6498;
update creature_template set scale = 2.5 where entry = 6499;
update creature_template set scale = 2.5 where entry = 6500;
update creature_template set scale = 2 where entry = 6501;
update creature_template set scale = 2 where entry = 6502;
update creature_template set scale = 2.25 where entry = 6503;
update creature_template set scale = 2.25 where entry = 6504;
update creature_template set scale = 2 where entry = 6505;
update creature_template set scale = 1.75 where entry = 6506;
update creature_template set scale = 2.25 where entry = 6507;
update creature_template set scale = 2 where entry = 6508;
update creature_template set scale = 1.3 where entry = 6510;
update creature_template set scale = 1.15 where entry = 6511;
update creature_template set scale = 1.5 where entry = 6512;
update creature_template set scale = 1.3 where entry = 6513;
update creature_template set scale = 1.15 where entry = 6514;
update creature_template set scale = 1.5 where entry = 6516;
update creature_template set scale = 1.3 where entry = 6517;
update creature_template set scale = 1.75 where entry = 6518;
update creature_template set scale = 2 where entry = 6519;
update creature_template set scale = 1.25 where entry = 6521;
update creature_template set scale = 1.5 where entry = 6527;
update creature_template set scale = 1.15 where entry = 6551;
update creature_template set scale = 1.15 where entry = 6552;
update creature_template set scale = 1.15 where entry = 6553;
update creature_template set scale = 1.3 where entry = 6554;
update creature_template set scale = 1.15 where entry = 6555;
update creature_template set scale = 1.3 where entry = 6556;
update creature_template set scale = 1.5 where entry = 6557;
update creature_template set scale = 1.75 where entry = 6559;
update creature_template set scale = 2 where entry = 6560;
update creature_template set scale = 1.15 where entry = 6569;
update creature_template set scale = 1.15 where entry = 6577;
update creature_template set scale = 1.15 where entry = 6579;
update creature_template set scale = 2.5 where entry = 6581;
update creature_template set scale = 3 where entry = 6582;
update creature_template set scale = 2.5 where entry = 6583;
update creature_template set scale = 3 where entry = 6584;
update creature_template set scale = 1.5 where entry = 6585;
update creature_template set scale = 1.33 where entry = 6646;
update creature_template set scale = 1.5 where entry = 6648;
update creature_template set scale = 1.5 where entry = 6653;
update creature_template set scale = 1.15 where entry = 6667;
update creature_template set scale = 1.5 where entry = 6669;
update creature_template set scale = 1.3 where entry = 6726;
update creature_template set scale = 0.5 where entry = 6728;
update creature_template set scale = 1.15 where entry = 6730;
update creature_template set scale = 0.9 where entry = 6732;
update creature_template set scale = 1.3 where entry = 6733;
update creature_template set scale = 1.25 where entry = 6746;
update creature_template set scale = 1.35 where entry = 6747;
update creature_template set scale = 0.7 where entry = 6748;
update creature_template set scale = 1.25 where entry = 6775;
update creature_template set scale = 1.35 where entry = 6776;
update creature_template set scale = 1.15 where entry = 6782;
update creature_template set scale = 0.8 where entry = 6786;
update creature_template set scale = 1.15 where entry = 6788;
update creature_template set scale = 0.65424 where entry = 6789;
update creature_template set scale = 1.0925 where entry = 6826;
update creature_template set scale = 0.85 where entry = 6867;
update creature_template set scale = 0.85 where entry = 6909;
update creature_template set scale = 1.2 where entry = 7011;
update creature_template set scale = 1.2 where entry = 7012;
update creature_template set scale = 1.3 where entry = 7015;
update creature_template set scale = 1.15 where entry = 7016;
update creature_template set scale = 0.8 where entry = 7022;
update creature_template set scale = 1.15 where entry = 7032;
update creature_template set scale = 2.2 where entry = 7033;
update creature_template set scale = 2.2 where entry = 7034;
update creature_template set scale = 2.35 where entry = 7035;
update creature_template set scale = 1.75 where entry = 7039;
update creature_template set scale = 1.25 where entry = 7042;
update creature_template set scale = 1.25 where entry = 7043;
update creature_template set scale = 1.15 where entry = 7045;
update creature_template set scale = 1.3 where entry = 7046;
update creature_template set scale = 1.5 where entry = 7047;
update creature_template set scale = 1.75 where entry = 7048;
update creature_template set scale = 2 where entry = 7049;
update creature_template set scale = 1.2 where entry = 7051;
update creature_template set scale = 1.15 where entry = 7055;
update creature_template set scale = 1.5 where entry = 7076;
update creature_template set scale = 1.5 where entry = 7077;
update creature_template set scale = 0.87797 where entry = 7078;
update creature_template set scale = 1.3 where entry = 7079;
update creature_template set scale = 1.3 where entry = 7086;
update creature_template set scale = 1.25 where entry = 7089;
update creature_template set scale = 1.5 where entry = 7092;
update creature_template set scale = 1.5 where entry = 7098;
update creature_template set scale = 1.3 where entry = 7099;
update creature_template set scale = 1.75 where entry = 7101;
update creature_template set scale = 1.3 where entry = 7105;
update creature_template set scale = 1.3 where entry = 7109;
update creature_template set scale = 1.15 where entry = 7125;
update creature_template set scale = 1.75 where entry = 7135;
update creature_template set scale = 1.6 where entry = 7136;
update creature_template set scale = 2 where entry = 7138;
update creature_template set scale = 1.75 where entry = 7139;
update creature_template set scale = 1.3 where entry = 7156;
update creature_template set scale = 1.4 where entry = 7157;
update creature_template set scale = 0.75 where entry = 7161;
update creature_template set scale = 0.6 where entry = 7166;
update creature_template set scale = 0.5 where entry = 7167;
update creature_template set scale = 0.75 where entry = 7172;
update creature_template set scale = 0.85 where entry = 7175;
update creature_template set scale = 2 where entry = 16452;
update creature_template set scale = 1.15 where entry = 7207;
update creature_template set scale = 1.3 where entry = 7208;
update creature_template set scale = 0.5 where entry = 7209;
update creature_template set scale = 2.2 where entry = 16451;
update creature_template set scale = 1.3 where entry = 7234;
update creature_template set scale = 0.8 where entry = 7235;
update creature_template set scale = 1.2 where entry = 7267;
update creature_template set scale = 0.3 where entry = 7269;
update creature_template set scale = 3 where entry = 7273;
update creature_template set scale = 1.2 where entry = 7274;
update creature_template set scale = 1.2 where entry = 7276;
update creature_template set scale = 0.75 where entry = 7287;
update creature_template set scale = 1.5 where entry = 7288;
update creature_template set scale = 2 where entry = 16449;
update creature_template set scale = 1.35 where entry = 7293;
update creature_template set scale = 0.95 where entry = 7307;
update creature_template set scale = 1.5 where entry = 7309;
update creature_template set scale = 1.15 where entry = 7312;
update creature_template set scale = 1.25 where entry = 7319;
update creature_template set scale = 1.75 where entry = 7320;
update creature_template set scale = 1.3 where entry = 7327;
update creature_template set scale = 1.75 where entry = 7328;
update creature_template set scale = 1.5 where entry = 7329;
update creature_template set scale = 1.3 where entry = 7332;
update creature_template set scale = 1.5 where entry = 7334;
update creature_template set scale = 1.5 where entry = 7335;
update creature_template set scale = 1.75 where entry = 7337;
update creature_template set scale = 1.15 where entry = 7344;
update creature_template set scale = 1.5 where entry = 7345;
update creature_template set scale = 1.3 where entry = 7346;
update creature_template set scale = 0.5 where entry = 7349;
update creature_template set scale = 2.5 where entry = 7355;
update creature_template set scale = 2 where entry = 7357;
update creature_template set scale = 1.25 where entry = 7358;
update creature_template set scale = 2.35 where entry = 7369;
update creature_template set scale = 0.8 where entry = 7370;
update creature_template set scale = 2.5 where entry = 7371;
update creature_template set scale = 2.5 where entry = 7372;
update creature_template set scale = 1.5 where entry = 7376;
update creature_template set scale = 2.35 where entry = 7379;
update creature_template set scale = 0.5 where entry = 7380;
update creature_template set scale = 0.5 where entry = 7381;
update creature_template set scale = 0.5 where entry = 7382;
update creature_template set scale = 0.5 where entry = 7383;
update creature_template set scale = 0.5 where entry = 7384;
update creature_template set scale = 0.5 where entry = 7385;
update creature_template set scale = 0.35 where entry = 7386;
update creature_template set scale = 0.25 where entry = 7387;
update creature_template set scale = 0.25 where entry = 7389;
update creature_template set scale = 0.25 where entry = 7390;
update creature_template set scale = 0.25 where entry = 7391;
update creature_template set scale = 1.2 where entry = 7396;
update creature_template set scale = 1.2 where entry = 7397;
update creature_template set scale = 1.2 where entry = 7404;
update creature_template set scale = 0.90848 where entry = 7405;
update creature_template set scale = 1.15 where entry = 7406;
update creature_template set scale = 0.9 where entry = 7408;
update creature_template set scale = 1.25 where entry = 7411;
update creature_template set scale = 1.6 where entry = 7428;
update creature_template set scale = 1.75 where entry = 7429;
update creature_template set scale = 1.07288 where entry = 7430;
update creature_template set scale = 1.3 where entry = 7431;
update creature_template set scale = 1.5 where entry = 7432;
update creature_template set scale = 1.3 where entry = 7433;
update creature_template set scale = 1.3 where entry = 7434;
update creature_template set scale = 1.5 where entry = 7436;
update creature_template set scale = 1.75 where entry = 7440;
update creature_template set scale = 1.625 where entry = 7441;
update creature_template set scale = 1.3 where entry = 7442;
update creature_template set scale = 1.5 where entry = 7443;
update creature_template set scale = 1.3 where entry = 7444;
update creature_template set scale = 1.75 where entry = 7445;
update creature_template set scale = 1.75 where entry = 7446;
update creature_template set scale = 1.45 where entry = 7447;
update creature_template set scale = 1.6 where entry = 7448;
update creature_template set scale = 1.75 where entry = 7449;
update creature_template set scale = 1.3 where entry = 7455;
update creature_template set scale = 1.5 where entry = 7456;
update creature_template set scale = 1.15 where entry = 7457;
update creature_template set scale = 1.3 where entry = 7458;
update creature_template set scale = 1.5 where entry = 7459;
update creature_template set scale = 1.75 where entry = 7460;
update creature_template set scale = 1.15 where entry = 7462;
update creature_template set scale = 1.5 where entry = 7463;
update creature_template set scale = 0.5 where entry = 7543;
update creature_template set scale = 0.5 where entry = 7544;
update creature_template set scale = 0.5 where entry = 7545;
update creature_template set scale = 0.25 where entry = 7553;
update creature_template set scale = 0.25 where entry = 7555;
update creature_template set scale = 1.1 where entry = 7572;
update creature_template set scale = 1.75 where entry = 7584;
update creature_template set scale = 1.15 where entry = 7603;
update creature_template set scale = 1.5 where entry = 7665;
update creature_template set scale = 1.35 where entry = 7668;
update creature_template set scale = 1.35 where entry = 7670;
update creature_template set scale = 1.35 where entry = 7671;
update creature_template set scale = 1.35 where entry = 7714;
update creature_template set scale = 0.9 where entry = 7724;
update creature_template set scale = 1.25 where entry = 7725;
update creature_template set scale = 1.2 where entry = 7726;
update creature_template set scale = 1.25 where entry = 7727;
update creature_template set scale = 1.5 where entry = 7732;
update creature_template set scale = 1.25 where entry = 7737;
update creature_template set scale = 1.15 where entry = 7763;
update creature_template set scale = 1.3 where entry = 7765;
update creature_template set scale = 1.15 where entry = 7766;
update creature_template set scale = 0.7 where entry = 7767;
update creature_template set scale = 0.4 where entry = 7768;
update creature_template set scale = 0.3 where entry = 7769;
update creature_template set scale = 0.9 where entry = 7774;
update creature_template set scale = 1.35 where entry = 7776;
update creature_template set scale = 1.05 where entry = 7780;
update creature_template set scale = 3 where entry = 7784;
update creature_template set scale = 0.7 where entry = 7785;
update creature_template set scale = 0.85 where entry = 7786;
update creature_template set scale = 0.8 where entry = 7787;
update creature_template set scale = 0.9 where entry = 7788;
update creature_template set scale = 1.1 where entry = 7789;
update creature_template set scale = 1.35 where entry = 7793;
update creature_template set scale = 1.1 where entry = 7796;
update creature_template set scale = 1.2 where entry = 7797;
update creature_template set scale = 1.05 where entry = 7798;
update creature_template set scale = 0.8 where entry = 7803;
update creature_template set scale = 3 where entry = 7806;
update creature_template set scale = 3 where entry = 7807;
update creature_template set scale = 1.15 where entry = 7843;
update creature_template set scale = 1.75 where entry = 7846;
update creature_template set scale = 1.2 where entry = 7847;
update creature_template set scale = 0.4 where entry = 7849;
update creature_template set scale = 0.75 where entry = 7853;
update creature_template set scale = 1.35 where entry = 7854;
update creature_template set scale = 1.35 where entry = 7869;
update creature_template set scale = 1.3 where entry = 7872;
update creature_template set scale = 1.25 where entry = 7873;
update creature_template set scale = 1.2 where entry = 7874;
update creature_template set scale = 1.35 where entry = 7875;
update creature_template set scale = 0.4 where entry = 7897;
update creature_template set scale = 0.5 where entry = 7903;
update creature_template set scale = 0.5 where entry = 7904;
update creature_template set scale = 0.5 where entry = 7915;
update creature_template set scale = 0.9 where entry = 7917;
update creature_template set scale = 0.75 where entry = 7918;
update creature_template set scale = 1.38 where entry = 7937;
update creature_template set scale = 1.15 where entry = 7944;
update creature_template set scale = 1.15 where entry = 7950;
update creature_template set scale = 1.15 where entry = 7954;
update creature_template set scale = 1.15 where entry = 7955;
update creature_template set scale = 1.25 where entry = 7975;
update creature_template set scale = 1.3 where entry = 7977;
update creature_template set scale = 1.15 where entry = 7978;
update creature_template set scale = 1.2 where entry = 7996;
update creature_template set scale = 0.9 where entry = 7997;
update creature_template set scale = 1.35 where entry = 8016;
update creature_template set scale = 1.25 where entry = 8020;
update creature_template set scale = 0.2 where entry = 8130;
update creature_template set scale = 2 where entry = 8136;
update creature_template set scale = 0.6 where entry = 8138;
update creature_template set scale = 1.35 where entry = 8142;
update creature_template set scale = 1.25 where entry = 8143;
update creature_template set scale = 1.35 where entry = 8144;
update creature_template set scale = 1.25 where entry = 8145;
update creature_template set scale = 1.35 where entry = 8146;
update creature_template set scale = 1.25 where entry = 8147;
update creature_template set scale = 1.35 where entry = 8152;
update creature_template set scale = 1.35 where entry = 8153;
update creature_template set scale = 1.25 where entry = 8154;
update creature_template set scale = 0.85 where entry = 8156;
update creature_template set scale = 1.35 where entry = 8158;
update creature_template set scale = 1.35 where entry = 8159;
update creature_template set scale = 0.7 where entry = 8179;
update creature_template set scale = 1.3 where entry = 8197;
update creature_template set scale = 1.15 where entry = 8198;
update creature_template set scale = 1.5 where entry = 8201;
update creature_template set scale = 1.8 where entry = 8204;
update creature_template set scale = 1.2 where entry = 8205;
update creature_template set scale = 1.3 where entry = 8207;
update creature_template set scale = 1.25 where entry = 8208;
update creature_template set scale = 0.95 where entry = 8219;
update creature_template set scale = 0.5 where entry = 8257;
update creature_template set scale = 1.3 where entry = 8277;
update creature_template set scale = 1.15 where entry = 8278;
update creature_template set scale = 1.3 where entry = 8279;
update creature_template set scale = 1.2 where entry = 8284;
update creature_template set scale = 1.6 where entry = 8299;
update creature_template set scale = 1.45 where entry = 8300;
update creature_template set scale = 1.5 where entry = 8301;
update creature_template set scale = 1.3 where entry = 8303;
update creature_template set scale = 1.3 where entry = 8304;
update creature_template set scale = 1.35 where entry = 8307;
update creature_template set scale = 0.3 where entry = 8311;
update creature_template set scale = 0.5 where entry = 8318;
update creature_template set scale = 1.5 where entry = 8319;
update creature_template set scale = 1.25 where entry = 8356;
update creature_template set scale = 1.35 where entry = 8357;
update creature_template set scale = 1.35 where entry = 8358;
update creature_template set scale = 1.35 where entry = 8359;
update creature_template set scale = 1.35 where entry = 8360;
update creature_template set scale = 1.25 where entry = 8361;
update creature_template set scale = 1.35 where entry = 8362;
update creature_template set scale = 1.25 where entry = 8363;
update creature_template set scale = 1.25 where entry = 8364;
update creature_template set scale = 1.3 where entry = 8380;
update creature_template set scale = 1.3 where entry = 8384;
update creature_template set scale = 1.25 where entry = 8385;
update creature_template set scale = 1.25 where entry = 8393;
update creature_template set scale = 1.35 where entry = 8398;
update creature_template set scale = 3 where entry = 8400;
update creature_template set scale = 1.35 where entry = 8401;
update creature_template set scale = 1.3 where entry = 8405;
update creature_template set scale = 1.0925 where entry = 8416;
update creature_template set scale = 0.8 where entry = 8437;
update creature_template set scale = 1.5 where entry = 8438;
update creature_template set scale = 1.45 where entry = 8441;
update creature_template set scale = 2.5 where entry = 8443;
update creature_template set scale = 1.15 where entry = 8444;
update creature_template set scale = 0.85 where entry = 8477;
update creature_template set scale = 1.05 where entry = 8479;
update creature_template set scale = 1.75 where entry = 8480;
update creature_template set scale = 1.25 where entry = 8497;
update creature_template set scale = 1.15 where entry = 8503;
update creature_template set scale = 0.1 where entry = 8506;
update creature_template set scale = 1.15 where entry = 8523;
update creature_template set scale = 1.15 where entry = 8524;
update creature_template set scale = 1.15 where entry = 8525;
update creature_template set scale = 1.3 where entry = 8526;
update creature_template set scale = 1.3 where entry = 8528;
update creature_template set scale = 1.5 where entry = 8529;
update creature_template set scale = 1.3 where entry = 8530;
update creature_template set scale = 1.3 where entry = 8531;
update creature_template set scale = 1.5 where entry = 8532;
update creature_template set scale = 1.15 where entry = 8535;
update creature_template set scale = 1.15 where entry = 8540;
update creature_template set scale = 1.3 where entry = 8541;
update creature_template set scale = 1.5 where entry = 8542;
update creature_template set scale = 1.45 where entry = 8543;
update creature_template set scale = 1.1 where entry = 8554;
update creature_template set scale = 0.85 where entry = 8556;
update creature_template set scale = 1.45 where entry = 8567;
update creature_template set scale = 1.15 where entry = 8597;
update creature_template set scale = 1.3 where entry = 8598;
update creature_template set scale = 0.66949 where entry = 8600;
update creature_template set scale = 0.75 where entry = 8601;
update creature_template set scale = 0.9 where entry = 8602;
update creature_template set scale = 0.75 where entry = 8603;
update creature_template set scale = 1.25 where entry = 8605;
update creature_template set scale = 1.3 where entry = 8606;
update creature_template set scale = 1.5 where entry = 8607;
update creature_template set scale = 0.75 where entry = 8612;
update creature_template set scale = 1.15 where entry = 8615;
update creature_template set scale = 1.5 where entry = 8617;
update creature_template set scale = 1.2 where entry = 8636;
update creature_template set scale = 0.8 where entry = 8656;
update creature_template set scale = 0.5 where entry = 8658;
update creature_template set scale = 0.1 where entry = 8662;
update creature_template set scale = 1.25 where entry = 8664;
update creature_template set scale = 0.8 where entry = 8666;
update creature_template set scale = 1.5 where entry = 8667;
update creature_template set scale = 1.35 where entry = 8674;
update creature_template set scale = 0.85 where entry = 8675;
update creature_template set scale = 1.15 where entry = 8679;
update creature_template set scale = 1.15 where entry = 8681;
update creature_template set scale = 1.5 where entry = 8717;
update creature_template set scale = 1.3 where entry = 8718;
update creature_template set scale = 1.35 where entry = 8722;
update creature_template set scale = 1.15 where entry = 8737;
update creature_template set scale = 1.15 where entry = 8759;
update creature_template set scale = 1.3 where entry = 8760;
update creature_template set scale = 1.5 where entry = 8761;
update creature_template set scale = 1.45 where entry = 8763;
update creature_template set scale = 1.5 where entry = 8766;
update creature_template set scale = 1.15 where entry = 8767;
update creature_template set scale = 3 where entry = 8836;
update creature_template set scale = 0.4 where entry = 8856;
update creature_template set scale = 1.35 where entry = 8878;
update creature_template set scale = 1.5 where entry = 8882;
update creature_template set scale = 2.5 where entry = 8886;
update creature_template set scale = 1.3 where entry = 8956;
update creature_template set scale = 1.75 where entry = 8957;
update creature_template set scale = 1.5 where entry = 8958;
update creature_template set scale = 1.15 where entry = 8960;
update creature_template set scale = 1.3 where entry = 8961;
update creature_template set scale = 0.5 where entry = 8963;
update creature_template set scale = 1.5 where entry = 8976;
update creature_template set scale = 2.5 where entry = 8977;
update creature_template set scale = 3 where entry = 8983;
update creature_template set scale = 0.8 where entry = 8996;
update creature_template set scale = 1.2 where entry = 9043;
update creature_template set scale = 1.2 where entry = 9044;
update creature_template set scale = 1.2 where entry = 9045;
update creature_template set scale = 1.35 where entry = 9076;
update creature_template set scale = 1.35 where entry = 9081;
update creature_template set scale = 1.35 where entry = 9084;
update creature_template set scale = 1.25 where entry = 9087;
update creature_template set scale = 1.15 where entry = 9099;
update creature_template set scale = 1.15 where entry = 9117;
update creature_template set scale = 0.4 where entry = 9157;
update creature_template set scale = 0.75 where entry = 9162;
update creature_template set scale = 1.25 where entry = 9163;
update creature_template set scale = 1.5 where entry = 9164;
update creature_template set scale = 0.75 where entry = 9165;
update creature_template set scale = 1.5 where entry = 9166;
update creature_template set scale = 1.25 where entry = 9167;
update creature_template set scale = 2.5 where entry = 9176;
update creature_template set scale = 2 where entry = 9196;
update creature_template set scale = 2 where entry = 9197;
update creature_template set scale = 2 where entry = 9198;
update creature_template set scale = 2 where entry = 9199;
update creature_template set scale = 2 where entry = 9200;
update creature_template set scale = 2 where entry = 9201;
update creature_template set scale = 2 where entry = 9216;
update creature_template set scale = 0.6 where entry = 9274;
update creature_template set scale = 1.1 where entry = 9297;
update creature_template set scale = 2.5 where entry = 9376;
update creature_template set scale = 1.25 where entry = 9377;
update creature_template set scale = 0.85 where entry = 9396;
update creature_template set scale = 1.4 where entry = 9453;
update creature_template set scale = 1.15 where entry = 9456;
update creature_template set scale = 1.75 where entry = 9467;
update creature_template set scale = 1.5 where entry = 9477;
update creature_template set scale = 1.35 where entry = 9501;
update creature_template set scale = 2.7 where entry = 9516;
update creature_template set scale = 1.2 where entry = 9524;
update creature_template set scale = 1.35 where entry = 9525;
update creature_template set scale = 1.25 where entry = 9529;
update creature_template set scale = 1.35 where entry = 9548;
update creature_template set scale = 1.35 where entry = 9550;
update creature_template set scale = 1.35 where entry = 9551;
update creature_template set scale = 1.15 where entry = 9561;
update creature_template set scale = 2 where entry = 9568;
update creature_template set scale = 2 where entry = 16368;
update creature_template set scale = 2 where entry = 16157;
update creature_template set scale = 0.5 where entry = 9600;
update creature_template set scale = 1.15 where entry = 9616;
update creature_template set scale = 1.35 where entry = 9619;
update creature_template set scale = 1.75 where entry = 9622;
update creature_template set scale = 1.25 where entry = 9636;
update creature_template set scale = 0.15 where entry = 9656;
update creature_template set scale = 0.15 where entry = 9657;
update creature_template set scale = 0.3 where entry = 9662;
update creature_template set scale = 1.15 where entry = 9676;
update creature_template set scale = 2.5 where entry = 9684;
update creature_template set scale = 1.3 where entry = 9691;
update creature_template set scale = 1.15 where entry = 9694;
update creature_template set scale = 0.8 where entry = 9695;
update creature_template set scale = 1.5 where entry = 9697;
update creature_template set scale = 1.75 where entry = 9698;
update creature_template set scale = 0.1 where entry = 9699;
update creature_template set scale = 0.3 where entry = 9700;
update creature_template set scale = 0.6 where entry = 9701;
update creature_template set scale = 1.3 where entry = 9776;
update creature_template set scale = 1.3 where entry = 9777;
update creature_template set scale = 1.5 where entry = 9778;
update creature_template set scale = 1.5 where entry = 9779;
update creature_template set scale = 1.15 where entry = 9859;
update creature_template set scale = 1.5 where entry = 9862;
update creature_template set scale = 1.75 where entry = 9916;
update creature_template set scale = 1.25 where entry = 9981;
update creature_template set scale = 1.35 where entry = 9983;
update creature_template set scale = 1.2 where entry = 10000;
update creature_template set scale = 1.45 where entry = 10036;
update creature_template set scale = 1.25 where entry = 10050;
update creature_template set scale = 1.485 where entry = 10054;
update creature_template set scale = 1.35 where entry = 10079;
update creature_template set scale = 1.35 where entry = 10086;
update creature_template set scale = 2 where entry = 10119;
update creature_template set scale = 0.85 where entry = 10159;
update creature_template set scale = 1.2 where entry = 10181;
update creature_template set scale = 1.5 where entry = 10182;
update creature_template set scale = 2 where entry = 10184;
update creature_template set scale = 1.5 where entry = 10200;
update creature_template set scale = 2 where entry = 10204;
update creature_template set scale = 0.4 where entry = 10259;
update creature_template set scale = 0.25 where entry = 10262;
update creature_template set scale = 2.5 where entry = 10268;
update creature_template set scale = 1.35 where entry = 10278;
update creature_template set scale = 1.3 where entry = 10317;
update creature_template set scale = 1.5 where entry = 10323;
update creature_template set scale = 0.9 where entry = 10356;
update creature_template set scale = 0.45085 where entry = 10357;
update creature_template set scale = 0.7 where entry = 10359;
update creature_template set scale = 1.5 where entry = 10363;
update creature_template set scale = 1.35 where entry = 10377;
update creature_template set scale = 1.35 where entry = 10378;
update creature_template set scale = 1.35 where entry = 10380;
update creature_template set scale = 1.15 where entry = 10381;
update creature_template set scale = 1.3 where entry = 10382;
update creature_template set scale = 1.3 where entry = 10390;
update creature_template set scale = 1.4 where entry = 10394;
update creature_template set scale = 1.15 where entry = 10405;
update creature_template set scale = 1.45 where entry = 10414;
update creature_template set scale = 1.55 where entry = 10416;
update creature_template set scale = 1.45 where entry = 10417;
update creature_template set scale = 1.1 where entry = 10418;
update creature_template set scale = 1.1 where entry = 10419;
update creature_template set scale = 1.1 where entry = 10420;
update creature_template set scale = 1.1 where entry = 10421;
update creature_template set scale = 1.1 where entry = 10422;
update creature_template set scale = 1.2 where entry = 10425;
update creature_template set scale = 1.15 where entry = 10426;
update creature_template set scale = 1.215 where entry = 10427;
update creature_template set scale = 1.35 where entry = 10428;
update creature_template set scale = 3 where entry = 10430;
update creature_template set scale = 1.5 where entry = 10435;
update creature_template set scale = 1.85 where entry = 10439;
update creature_template set scale = 1.15 where entry = 10455;
update creature_template set scale = 1.15 where entry = 10456;
update creature_template set scale = 1.35 where entry = 10537;
update creature_template set scale = 1.35 where entry = 10539;
update creature_template set scale = 1.2 where entry = 10540;
update creature_template set scale = 0.1 where entry = 10541;
update creature_template set scale = 0.8 where entry = 10556;
update creature_template set scale = 1.15 where entry = 10580;
update creature_template set scale = 0.75 where entry = 10581;
update creature_template set scale = 0.4 where entry = 10582;
update creature_template set scale = 1.5 where entry = 10596;
update creature_template set scale = 0.25 where entry = 10598;
update creature_template set scale = 1.35 where entry = 10599;
update creature_template set scale = 1.35 where entry = 10600;
update creature_template set scale = 1.2 where entry = 10610;
update creature_template set scale = 0.8 where entry = 10611;
update creature_template set scale = 1.35 where entry = 10612;
update creature_template set scale = 1.5 where entry = 10617;
update creature_template set scale = 1.3 where entry = 10619;
update creature_template set scale = 1.35 where entry = 10638;
update creature_template set scale = 1.75 where entry = 10643;
update creature_template set scale = 1.25 where entry = 10645;
update creature_template set scale = 1.25 where entry = 10646;
update creature_template set scale = 0.7 where entry = 10656;
update creature_template set scale = 1.45 where entry = 10666;
update creature_template set scale = 1.15 where entry = 10667;
update creature_template set scale = 1.1 where entry = 10676;
update creature_template set scale = 0.4 where entry = 10685;
update creature_template set scale = 0.4 where entry = 10716;
update creature_template set scale = 0.5 where entry = 10717;
update creature_template set scale = 1.15 where entry = 10720;
update creature_template set scale = 1.25 where entry = 10721;
update creature_template set scale = 1.62 where entry = 10739;
update creature_template set scale = 1.15 where entry = 10756;
update creature_template set scale = 1.25 where entry = 10758;
update creature_template set scale = 1.25 where entry = 10759;
update creature_template set scale = 1.35 where entry = 10760;
update creature_template set scale = 1.35 where entry = 10761;
update creature_template set scale = 1.3 where entry = 10779;
update creature_template set scale = 1.3 where entry = 10801;
update creature_template set scale = 1.25 where entry = 10806;
update creature_template set scale = 2 where entry = 10807;
update creature_template set scale = 1.15 where entry = 10857;
update creature_template set scale = 0.3 where entry = 10876;
update creature_template set scale = 1.35 where entry = 10881;
update creature_template set scale = 1.35 where entry = 10896;
update creature_template set scale = 0.1 where entry = 10902;
update creature_template set scale = 0.1 where entry = 10903;
update creature_template set scale = 0.1 where entry = 10904;
update creature_template set scale = 0.1 where entry = 10905;
update creature_template set scale = 1.35 where entry = 10921;
update creature_template set scale = 1.25 where entry = 10922;
update creature_template set scale = 0.3 where entry = 10925;
update creature_template set scale = 5 where entry = 10942;
update creature_template set scale = 1.5 where entry = 10956;
update creature_template set scale = 0.87288 where entry = 10979;
update creature_template set scale = 0.25 where entry = 10980;
update creature_template set scale = 1.5 where entry = 10988;
update creature_template set scale = 2 where entry = 10992;
update creature_template set scale = 0.94407 where entry = 11024;
update creature_template set scale = 1.15 where entry = 11026;
update creature_template set scale = 1.15 where entry = 11028;
update creature_template set scale = 1.15 where entry = 11029;
update creature_template set scale = 1.15 where entry = 11035;
update creature_template set scale = 1.15 where entry = 11037;
update creature_template set scale = 0.9 where entry = 11043;
update creature_template set scale = 1.35 where entry = 11047;
update creature_template set scale = 1.35 where entry = 11051;
update creature_template set scale = 1.1 where entry = 11054;
update creature_template set scale = 1.35 where entry = 11071;
update creature_template set scale = 1.15 where entry = 11075;
update creature_template set scale = 1.5 where entry = 11076;
update creature_template set scale = 1.3 where entry = 11077;
update creature_template set scale = 1.35 where entry = 11084;
update creature_template set scale = 1.25 where entry = 11098;
update creature_template set scale = 1.35 where entry = 11116;
update creature_template set scale = 1.5 where entry = 11120;
update creature_template set scale = 1.5 where entry = 11121;
update creature_template set scale = 0.1 where entry = 11152;
update creature_template set scale = 1.3 where entry = 11181;
update creature_template set scale = 0.25 where entry = 11199;
update creature_template set scale = 1.35 where entry = 11259;
update creature_template set scale = 1.2 where entry = 11262;
update creature_template set scale = 0.85 where entry = 11318;
update creature_template set scale = 0.7 where entry = 11319;
update creature_template set scale = 0.5 where entry = 11320;
update creature_template set scale = 0.25 where entry = 11325;
update creature_template set scale = 0.25 where entry = 11326;
update creature_template set scale = 0.25 where entry = 11327;
update creature_template set scale = 2 where entry = 11352;
update creature_template set scale = 0.8 where entry = 11378;
update creature_template set scale = 0.75 where entry = 11438;
update creature_template set scale = 2.2 where entry = 11440;
update creature_template set scale = 2.2 where entry = 11443;
update creature_template set scale = 2.35 where entry = 11444;
update creature_template set scale = 2 where entry = 11447;
update creature_template set scale = 5 where entry = 11496;
update creature_template set scale = 2 where entry = 11498;
update creature_template set scale = 2 where entry = 11501;
update creature_template set scale = 1.3 where entry = 11516;
update creature_template set scale = 1.5 where entry = 11520;
update creature_template set scale = 1.5 where entry = 11521;
update creature_template set scale = 1.35 where entry = 11548;
update creature_template set scale = 1.4 where entry = 11552;
update creature_template set scale = 1.3 where entry = 11553;
update creature_template set scale = 1.5 where entry = 11554;
update creature_template set scale = 1.5 where entry = 11555;
update creature_template set scale = 1.5 where entry = 11556;
update creature_template set scale = 1.5 where entry = 11557;
update creature_template set scale = 1.5 where entry = 11558;
update creature_template set scale = 1.3 where entry = 11559;
update creature_template set scale = 1.3 where entry = 11560;
update creature_template set scale = 2 where entry = 11561;
update creature_template set scale = 1.25 where entry = 11578;
update creature_template set scale = 2 where entry = 11583;
update creature_template set scale = 1.35 where entry = 11608;
update creature_template set scale = 2 where entry = 11623;
update creature_template set scale = 2.5 where entry = 11661;
update creature_template set scale = 2 where entry = 11662;
update creature_template set scale = 2 where entry = 11663;
update creature_template set scale = 3.5 where entry = 11664;
update creature_template set scale = 2 where entry = 11673;
update creature_template set scale = 0.75 where entry = 11684;
update creature_template set scale = 1.3 where entry = 11685;
update creature_template set scale = 1.5 where entry = 11686;
update creature_template set scale = 1.5 where entry = 11687;
update creature_template set scale = 1.5 where entry = 11688;
update creature_template set scale = 1.3 where entry = 11714;
update creature_template set scale = 1.25 where entry = 11718;
update creature_template set scale = 1.35 where entry = 11720;
update creature_template set scale = 2.3 where entry = 11734;
update creature_template set scale = 1.45 where entry = 11735;
update creature_template set scale = 1.5 where entry = 11736;
update creature_template set scale = 1.55 where entry = 11737;
update creature_template set scale = 1.2 where entry = 11741;
update creature_template set scale = 1.25 where entry = 11748;
update creature_template set scale = 1.35 where entry = 11749;
update creature_template set scale = 1.15 where entry = 11750;
update creature_template set scale = 1.15 where entry = 11758;
update creature_template set scale = 0.5 where entry = 11783;
update creature_template set scale = 1.15 where entry = 11785;
update creature_template set scale = 1.3 where entry = 11786;
update creature_template set scale = 1.5 where entry = 11787;
update creature_template set scale = 1.25 where entry = 11788;
update creature_template set scale = 0.6 where entry = 11789;
update creature_template set scale = 1.3 where entry = 11790;
update creature_template set scale = 1.5 where entry = 11791;
update creature_template set scale = 1.3 where entry = 11792;
update creature_template set scale = 1.15 where entry = 11793;
update creature_template set scale = 1.3 where entry = 11794;
update creature_template set scale = 1.25 where entry = 11795;
update creature_template set scale = 1.25 where entry = 11796;
update creature_template set scale = 1.35 where entry = 11797;
update creature_template set scale = 1.35 where entry = 11798;
update creature_template set scale = 1.35 where entry = 11805;
update creature_template set scale = 1.15 where entry = 11811;
update creature_template set scale = 1.25 where entry = 11822;
update creature_template set scale = 2 where entry = 11832;
update creature_template set scale = 1.35 where entry = 11833;
update creature_template set scale = 1.35 where entry = 11834;
update creature_template set scale = 0.85 where entry = 11836;
update creature_template set scale = 1.25 where entry = 11856;
update creature_template set scale = 1.35 where entry = 11857;
update creature_template set scale = 1.35 where entry = 11858;
update creature_template set scale = 1.2 where entry = 11859;
update creature_template set scale = 1.62 where entry = 11860;
update creature_template set scale = 1.35 where entry = 11861;
update creature_template set scale = 1.15 where entry = 11862;
update creature_template set scale = 1.25 where entry = 11864;
update creature_template set scale = 1.35 where entry = 11869;
update creature_template set scale = 1.15 where entry = 11871;
update creature_template set scale = 1.15 where entry = 11872;
update creature_template set scale = 1.35 where entry = 11910;
update creature_template set scale = 1.25 where entry = 11911;
update creature_template set scale = 1.25 where entry = 11912;
update creature_template set scale = 1.25 where entry = 11913;
update creature_template set scale = 1.35 where entry = 11914;
update creature_template set scale = 1.5 where entry = 11921;
update creature_template set scale = 1.3 where entry = 11937;
update creature_template set scale = 1.35 where entry = 11944;
update creature_template set scale = 2 where entry = 11956;
update creature_template set scale = 2 where entry = 11957;
update creature_template set scale = 1.5 where entry = 11981;
update creature_template set scale = 3 where entry = 11982;
update creature_template set scale = 1.5 where entry = 11983;
update creature_template set scale = 3 where entry = 11988;
update creature_template set scale = 2 where entry = 12017;
update creature_template set scale = 3 where entry = 12018;
update creature_template set scale = 1.15 where entry = 12037;
update creature_template set scale = 1.25 where entry = 12043;
update creature_template set scale = 2.5 where entry = 12046;
update creature_template set scale = 1.15 where entry = 12047;
update creature_template set scale = 3 where entry = 12056;
update creature_template set scale = 2.7 where entry = 12057;
update creature_template set scale = 3 where entry = 12098;
update creature_template set scale = 1.5 where entry = 12099;
update creature_template set scale = 3 where entry = 12118;
update creature_template set scale = 2.5 where entry = 12119;
update creature_template set scale = 1.3 where entry = 12121;
update creature_template set scale = 1.3 where entry = 12122;
update creature_template set scale = 0.85 where entry = 12123;
update creature_template set scale = 3 where entry = 12129;
update creature_template set scale = 1.15 where entry = 12138;
update creature_template set scale = 1.15 where entry = 12144;
update creature_template set scale = 0.6 where entry = 12150;
update creature_template set scale = 2 where entry = 12201;
update creature_template set scale = 1.6 where entry = 12203;
update creature_template set scale = 1.3 where entry = 12206;
update creature_template set scale = 1.5 where entry = 12207;
update creature_template set scale = 1.15 where entry = 12216;
update creature_template set scale = 1.15 where entry = 12217;
update creature_template set scale = 0.3 where entry = 12218;
update creature_template set scale = 1.75 where entry = 12219;
update creature_template set scale = 1.25 where entry = 12220;
update creature_template set scale = 1.15 where entry = 12221;
update creature_template set scale = 1.2 where entry = 12222;
update creature_template set scale = 1.3 where entry = 12223;
update creature_template set scale = 1.5 where entry = 12224;
update creature_template set scale = 1.3 where entry = 12225;
update creature_template set scale = 2 where entry = 12236;
update creature_template set scale = 3 where entry = 12238;
update creature_template set scale = 1.5 where entry = 12239;
update creature_template set scale = 1.5 where entry = 12240;
update creature_template set scale = 1.5 where entry = 12241;
update creature_template set scale = 1.5 where entry = 12242;
update creature_template set scale = 1.5 where entry = 12243;
update creature_template set scale = 0.4 where entry = 12245;
update creature_template set scale = 0.1 where entry = 12247;
update creature_template set scale = 0.1 where entry = 12251;
update creature_template set scale = 0.1 where entry = 12252;
update creature_template set scale = 0.1 where entry = 12254;
update creature_template set scale = 0.1 where entry = 12255;
update creature_template set scale = 0.25 where entry = 12257;
update creature_template set scale = 2.5 where entry = 12258;
update creature_template set scale = 3 where entry = 12259;
update creature_template set scale = 1.5 where entry = 12262;
update creature_template set scale = 1.45 where entry = 12263;
update creature_template set scale = 3 where entry = 12264;
update creature_template set scale = 1.2 where entry = 12351;
update creature_template set scale = 1.2 where entry = 12353;
update creature_template set scale = 0.6 where entry = 12354;
update creature_template set scale = 0.6 where entry = 12355;
update creature_template set scale = 0.6 where entry = 12151;
update creature_template set scale = 0.6 where entry = 12148;
update creature_template set scale = 1.5 where entry = 12358;
update creature_template set scale = 1.5 where entry = 12359;
update creature_template set scale = 1.5 where entry = 12360;
update creature_template set scale = 1.5 where entry = 12377;
update creature_template set scale = 1.25 where entry = 12381;
update creature_template set scale = 1.3 where entry = 12396;
update creature_template set scale = 2.2 where entry = 12397;
update creature_template set scale = 1.15 where entry = 12418;
update creature_template set scale = 1.25 where entry = 12422;
update creature_template set scale = 1.15 where entry = 12432;
update creature_template set scale = 0.55 where entry = 12433;
update creature_template set scale = 2 where entry = 12435;
update creature_template set scale = 1.25 where entry = 12461;
update creature_template set scale = 1.5 where entry = 12463;
update creature_template set scale = 1.75 where entry = 12467;
update creature_template set scale = 1.25 where entry = 12473;
update creature_template set scale = 2 where entry = 12474;
update creature_template set scale = 2 where entry = 12475;
update creature_template set scale = 2 where entry = 12476;
update creature_template set scale = 2 where entry = 12477;
update creature_template set scale = 1.25 where entry = 12478;
update creature_template set scale = 1.5 where entry = 12479;
update creature_template set scale = 1.5 where entry = 12496;
update creature_template set scale = 1.5 where entry = 12497;
update creature_template set scale = 1.35 where entry = 12576;
update creature_template set scale = 1.3 where entry = 12579;
update creature_template set scale = 1.15 where entry = 12596;
update creature_template set scale = 1.3 where entry = 12676;
update creature_template set scale = 1.3 where entry = 12677;
update creature_template set scale = 1.25 where entry = 12696;
update creature_template set scale = 1.25 where entry = 12723;
update creature_template set scale = 1.1 where entry = 12737;
update creature_template set scale = 1.8 where entry = 12756;
update creature_template set scale = 1.6 where entry = 12800;
update creature_template set scale = 1.6 where entry = 12801;
update creature_template set scale = 1.75 where entry = 12802;
update creature_template set scale = 2 where entry = 12803;
update creature_template set scale = 0.6 where entry = 12806;
update creature_template set scale = 2 where entry = 12836;
update creature_template set scale = 1.25 where entry = 12837;
update creature_template set scale = 1.5 where entry = 12900;
update creature_template set scale = 0.5 where entry = 12904;
update creature_template set scale = 0.5 where entry = 12922;
update creature_template set scale = 1.15 where entry = 12958;
update creature_template set scale = 1.15 where entry = 12997;
update creature_template set scale = 1.15 where entry = 13000;
update creature_template set scale = 1.15 where entry = 13018;
update creature_template set scale = 1.5 where entry = 13020;
update creature_template set scale = 1.15 where entry = 13084;
update creature_template set scale = 1.15 where entry = 13096;
update creature_template set scale = 1.5 where entry = 13141;
update creature_template set scale = 1.5 where entry = 13142;
update creature_template set scale = 2 where entry = 13145;
update creature_template set scale = 2 where entry = 13146;
update creature_template set scale = 2 where entry = 13278;
update creature_template set scale = 2 where entry = 13282;
update creature_template set scale = 0.85 where entry = 13323;
update creature_template set scale = 1.35 where entry = 13417;
update creature_template set scale = 3 where entry = 13419;
update creature_template set scale = 0.7 where entry = 13456;
update creature_template set scale = 0.75 where entry = 13533;
update creature_template set scale = 1.15 where entry = 13546;
update creature_template set scale = 3 where entry = 13596;
update creature_template set scale = 0.72881 where entry = 13599;
update creature_template set scale = 1.3 where entry = 13618;
update creature_template set scale = 1.15 where entry = 13697;
update creature_template set scale = 1.15 where entry = 13699;
update creature_template set scale = 1.3 where entry = 13716;
update creature_template set scale = 1.3 where entry = 13718;
update creature_template set scale = 1.5 where entry = 13738;
update creature_template set scale = 1.5 where entry = 13739;
update creature_template set scale = 1.5 where entry = 13740;
update creature_template set scale = 1.5 where entry = 13741;
update creature_template set scale = 1.5 where entry = 13742;
update creature_template set scale = 1.5 where entry = 13743;
update creature_template set scale = 1.15 where entry = 13839;
update creature_template set scale = 1.35 where entry = 13896;
update creature_template set scale = 3 where entry = 14020;
update creature_template set scale = 1.15 where entry = 14041;
update creature_template set scale = 1.725 where entry = 14121;
update creature_template set scale = 0.85 where entry = 14122;
update creature_template set scale = 1.3 where entry = 14123;
update creature_template set scale = 1.35 where entry = 14182;
update creature_template set scale = 1.2 where entry = 14222;
update creature_template set scale = 1.15 where entry = 14226;
update creature_template set scale = 1.35 where entry = 14228;
update creature_template set scale = 2 where entry = 14230;
update creature_template set scale = 1.3 where entry = 14231;
update creature_template set scale = 1.15 where entry = 14232;
update creature_template set scale = 1.15 where entry = 14233;
update creature_template set scale = 1.4 where entry = 14234;
update creature_template set scale = 1.3 where entry = 14235;
update creature_template set scale = 1.25 where entry = 14242;
update creature_template set scale = 0.85 where entry = 14267;
update creature_template set scale = 1.5 where entry = 14268;
update creature_template set scale = 1.15 where entry = 14271;
update creature_template set scale = 1.15 where entry = 14277;
update creature_template set scale = 0.9 where entry = 14278;
update creature_template set scale = 1.3 where entry = 14280;
update creature_template set scale = 1.1 where entry = 14304;
update creature_template set scale = 2 where entry = 14323;
update creature_template set scale = 1.2 where entry = 14324;
update creature_template set scale = 0.5 where entry = 14337;
update creature_template set scale = 1.45 where entry = 14344;
update creature_template set scale = 1.5 where entry = 14353;
update creature_template set scale = 1.75 where entry = 14356;
update creature_template set scale = 1.5 where entry = 14357;
update creature_template set scale = 0.2 where entry = 14362;
update creature_template set scale = 1.35 where entry = 14373;
update creature_template set scale = 1.4 where entry = 14380;
update creature_template set scale = 1.1 where entry = 14392;
update creature_template set scale = 1.1 where entry = 14394;
update creature_template set scale = 1.3 where entry = 14425;
update creature_template set scale = 1.35 where entry = 14426;
update creature_template set scale = 1.3 where entry = 14428;
update creature_template set scale = 1.1 where entry = 14429;
update creature_template set scale = 1.1 where entry = 14430;
update creature_template set scale = 2 where entry = 14433;
update creature_template set scale = 1.1 where entry = 14436;
update creature_template set scale = 1.1 where entry = 14439;
update creature_template set scale = 1.35 where entry = 14440;
update creature_template set scale = 1.35 where entry = 14441;
update creature_template set scale = 1.35 where entry = 14442;
update creature_template set scale = 1.75 where entry = 14445;
update creature_template set scale = 1.3 where entry = 14452;
update creature_template set scale = 1.4 where entry = 14454;
update creature_template set scale = 1.75 where entry = 14455;
update creature_template set scale = 2 where entry = 14461;
update creature_template set scale = 1.75 where entry = 14462;
update creature_template set scale = 1.15 where entry = 14469;
update creature_template set scale = 0.5 where entry = 14470;
update creature_template set scale = 1.8 where entry = 14472;
update creature_template set scale = 2.85 where entry = 14476;
update creature_template set scale = 2 where entry = 14477;
update creature_template set scale = 2 where entry = 14478;
update creature_template set scale = 1.15 where entry = 14481;
update creature_template set scale = 1.75 where entry = 14483;
update creature_template set scale = 2 where entry = 14490;
update creature_template set scale = 1.4 where entry = 14491;
update creature_template set scale = 0.9 where entry = 14497;
update creature_template set scale = 2 where entry = 14506;
update creature_template set scale = 0.9 where entry = 14508;
update creature_template set scale = 1.1 where entry = 14523;
update creature_template set scale = 0.4 where entry = 14528;
update creature_template set scale = 2 where entry = 14530;
update creature_template set scale = 1.35 where entry = 14531;
update creature_template set scale = 0.75 where entry = 14532;
update creature_template set scale = 1.5 where entry = 14533;
update creature_template set scale = 2.5 where entry = 14538;
update creature_template set scale = 1.2 where entry = 14539;
update creature_template set scale = 1.2 where entry = 14540;
update creature_template set scale = 1.2 where entry = 14541;
update creature_template set scale = 0.6 where entry = 14542;
update creature_template set scale = 0.6 where entry = 14549;
update creature_template set scale = 0.6 where entry = 14550;
update creature_template set scale = 1.5 where entry = 14555;
update creature_template set scale = 1.5 where entry = 14556;
update creature_template set scale = 1.5 where entry = 14557;
update creature_template set scale = 1.5 where entry = 14602;
update creature_template set scale = 1.35 where entry = 14738;
update creature_template set scale = 1.33 where entry = 14757;
update creature_template set scale = 1.75 where entry = 14827;
update creature_template set scale = 8 where entry = 14834;
update creature_template set scale = 1.35 where entry = 14845;
update creature_template set scale = 1.15 where entry = 14865;
update creature_template set scale = 0.15 where entry = 14868;
update creature_template set scale = 0.2 where entry = 14881;
update creature_template set scale = 2 where entry = 14887;
update creature_template set scale = 2 where entry = 14888;
update creature_template set scale = 2 where entry = 14889;
update creature_template set scale = 2 where entry = 14890;
update creature_template set scale = 0.4 where entry = 14892;
update creature_template set scale = 0.1 where entry = 14894;
update creature_template set scale = 1.5 where entry = 14902;
update creature_template set scale = 0.7 where entry = 14987;
update creature_template set scale = 2.4 where entry = 15082;
update creature_template set scale = 3 where entry = 15114;
update creature_template set scale = 1.35 where entry = 15175;
update creature_template set scale = 1.35 where entry = 15176;
update creature_template set scale = 1.35 where entry = 15178;
update creature_template set scale = 1.35 where entry = 15188;
update creature_template set scale = 1.2 where entry = 15191;
update creature_template set scale = 1.2 where entry = 15192;
update creature_template set scale = 3 where entry = 15196;
update creature_template set scale = 1.35 where entry = 15270;
update creature_template set scale = 1.35 where entry = 15306;
update creature_template set scale = 1.3 where entry = 40201;
update creature_template set scale = 1.3 where entry = 40203;
update creature_template set scale = 1.3 where entry = 40211;
update creature_template set scale = 1.3 where entry = 40212;
update creature_template set scale = 1.2 where entry = 15168;
update creature_template set scale = 1.35 where entry = 15233;
update creature_template set scale = 1.5 where entry = 15235;
update creature_template set scale = 1.5 where entry = 15236;
update creature_template set scale = 1.5 where entry = 15246;
update creature_template set scale = 1.5 where entry = 15247;
update creature_template set scale = 1.5 where entry = 15249;
update creature_template set scale = 1.5 where entry = 15250;
update creature_template set scale = 2 where entry = 15252;
update creature_template set scale = 2 where entry = 15262;
update creature_template set scale = 4.5 where entry = 15263;
update creature_template set scale = 4 where entry = 15264;
update creature_template set scale = 5 where entry = 15275;
update creature_template set scale = 5 where entry = 15276;
update creature_template set scale = 4 where entry = 15277;
update creature_template set scale = 4 where entry = 15286;
update creature_template set scale = 4 where entry = 15288;
update creature_template set scale = 4 where entry = 15290;
update creature_template set scale = 4 where entry = 15299;
update creature_template set scale = 2 where entry = 15311;
update creature_template set scale = 2 where entry = 15312;
update creature_template set scale = 4 where entry = 15318;
update creature_template set scale = 4 where entry = 15319;
update creature_template set scale = 4 where entry = 15320;
update creature_template set scale = 4 where entry = 15323;
update creature_template set scale = 4 where entry = 15327;
update creature_template set scale = 4 where entry = 15333;
update creature_template set scale = 1.5 where entry = 15334;
update creature_template set scale = 3 where entry = 15335;
update creature_template set scale = 4 where entry = 15336;
update creature_template set scale = 4 where entry = 15338;
update creature_template set scale = 3.5 where entry = 15339;
update creature_template set scale = 6 where entry = 15340;
update creature_template set scale = 3 where entry = 15341;
update creature_template set scale = 3 where entry = 15344;
update creature_template set scale = 2 where entry = 15348;
update creature_template set scale = 3 where entry = 15355;
update creature_template set scale = 2 where entry = 15369;
update creature_template set scale = 2 where entry = 15370;
update creature_template set scale = 3 where entry = 15381;
update creature_template set scale = 4 where entry = 15384;
update creature_template set scale = 3 where entry = 15385;
update creature_template set scale = 3 where entry = 15386;
update creature_template set scale = 2 where entry = 15387;
update creature_template set scale = 3 where entry = 15388;
update creature_template set scale = 3 where entry = 15389;
update creature_template set scale = 3 where entry = 15390;
update creature_template set scale = 3 where entry = 15391;
update creature_template set scale = 3 where entry = 15392;
update creature_template set scale = 2 where entry = 15428;
update creature_template set scale = 2 where entry = 15461;
update creature_template set scale = 2 where entry = 15462;
update creature_template set scale = 2 where entry = 15471;
update creature_template set scale = 4 where entry = 15473;
update creature_template set scale = 1.8 where entry = 15491;
update creature_template set scale = 2 where entry = 15505;
update creature_template set scale = 2 where entry = 15509;
update creature_template set scale = 1.5 where entry = 15510;
update creature_template set scale = 4 where entry = 15516;
update creature_template set scale = 4 where entry = 15517;
update creature_template set scale = 2 where entry = 15521;
update creature_template set scale = 3 where entry = 15527;
update creature_template set scale = 4 where entry = 15537;
update creature_template set scale = 3 where entry = 15538;
update creature_template set scale = 2 where entry = 15543;
update creature_template set scale = 1.5 where entry = 15589;
update creature_template set scale = 1.35 where entry = 15613;
update creature_template set scale = 4 where entry = 15620;
update creature_template set scale = 2.5 where entry = 15630;
update creature_template set scale = 4 where entry = 15667;
update creature_template set scale = 1.5 where entry = 15726;
update creature_template set scale = 5 where entry = 15740;
update creature_template set scale = 5 where entry = 15741;
update creature_template set scale = 5 where entry = 15742;
update creature_template set scale = 4 where entry = 15743;
update creature_template set scale = 3 where entry = 15744;
update creature_template set scale = 2.5 where entry = 15818;
update creature_template set scale = 1.35 where entry = 15869;
update creature_template set scale = 2 where entry = 15904;
update creature_template set scale = 1.5 where entry = 15943;
update creature_template set scale = 2 where entry = 15964;
update creature_template set scale = 2 where entry = 16146;
update creature_template set scale = 2 where entry = 16163;
update creature_template set scale = 1.5 where entry = 15974;
update creature_template set scale = 1.5 where entry = 16165;
update creature_template set scale = 1.5 where entry = 16168;
update creature_template set scale = 2 where entry = 16243;
update creature_template set scale = 1.5 where entry = 16290;
update creature_template set scale = 0.5 where entry = 16297;
update creature_template set scale = 1.2 where entry = 16375;
update creature_template set scale = 1.2 where entry = 16381;
update creature_template set scale = 1.2 where entry = 16390;
update creature_template set scale = 1.2 where entry = 16446;
update creature_template set scale = 1.2 where entry = 16447;
update creature_template set scale = 1.2 where entry = 16448;
update creature_template set scale = 1.2 where entry = 16453;
update creature_template set scale = 1.2 where entry = 16505;
update creature_template set scale = 1.2 where entry = 16506;
update creature_template set scale = 1.2 where entry = 16573;
update creature_template set scale = 1.2 where entry = 16698;
update creature_template set scale = 1.5 where entry = 16803;
update creature_template set scale = 2 where entry = 16127;
update creature_template set scale = 2 where entry = 16018;
update creature_template set scale = 2 where entry = 15975;
update creature_template set scale = 1.4 where entry = 15978;
update creature_template set scale = 1.5 where entry = 16024;
update creature_template set scale = 2.1 where entry = 15930;
update creature_template set scale = 1.2 where entry = 16036;
update creature_template set scale = 3.5 where entry = 15932;
update creature_template set scale = 1.5 where entry = 16060;
update creature_template set scale = 1.8 where entry = 15953;
update creature_template set scale = 2.3 where entry = 15931;
update creature_template set scale = 1.5 where entry = 15936;
update creature_template set scale = 1.5 where entry = 16062;
update creature_template set scale = 2.5 where entry = 15990;
update creature_template set scale = 1.5 where entry = 16065;
update creature_template set scale = 1.5 where entry = 16021;
update creature_template set scale = 4.5 where entry = 16011;
update creature_template set scale = 1.2 where entry = 16020;
update creature_template set scale = 2 where entry = 15952;
update creature_template set scale = 1.5 where entry = 15954;
update creature_template set scale = 4 where entry = 16028;
update creature_template set scale = 2 where entry = 16017;
update creature_template set scale = 1.2 where entry = 16034;
update creature_template set scale = 1.2 where entry = 16037;
update creature_template set scale = 2.5 where entry = 15989;
update creature_template set scale = 2 where entry = 16164;
update creature_template set scale = 1.5 where entry = 16063;
update creature_template set scale = 2.5 where entry = 16029;
update creature_template set scale = 2.1 where entry = 15929;
update creature_template set scale = 1.2 where entry = 16025;
update creature_template set scale = 1.2 where entry = 16022;
update creature_template set scale = 2.1 where entry = 15928;
update creature_template set scale = 2 where entry = 16064;
update creature_template set scale = 2.5 where entry = 15976;
update creature_template set scale = 2 where entry = 16145;
update creature_template set scale = 1.35 where entry = 16134;
update creature_template set scale = 1.5 where entry = 16061;
update creature_template set scale = 1.5 where entry = 15714;
update creature_template set scale = 1.5 where entry = 15715;
update creature_template set scale = 1.5 where entry = 15716;
update creature_template set scale = 1.5 where entry = 15666;
update creature_template set scale = 1.5 where entry = 16043;
update creature_template set scale = 1.6 where entry = 16073;
update creature_template set scale = 1.2 where entry = 15702;
update creature_template set scale = 1.35 where entry = 15499;
update creature_template set scale = 2 where entry = 16387;
update creature_template set scale = 0.8 where entry = 15186;
update creature_template set scale = 1.1 where entry = 7228;
update creature_template set scale = 1.5 where entry = 2748;
update creature_template set scale = 2 where entry = 4854;
update creature_template set scale = 1.2 where entry = 6908;
update creature_template set scale = 1.5 where entry = 10120;
update creature_template set scale = 1.3 where entry = 7206;
update creature_template set scale = 1.5 where entry = 6910;
update creature_template set scale = 1.6 where entry = 16042;
update creature_template set scale = 1.2 where entry = 16428;
update creature_template set scale = 1.2 where entry = 16441;
update creature_template set scale = 0.75 where entry = 15366;
update creature_template set scale = 2 where entry = 17544;
update creature_template set scale = 0.4 where entry = 18237;
update creature_template set scale = 3 where entry = 22302;
update creature_template set scale = 0.3 where entry = 22306;
update creature_template set scale = 4 where entry = 22297;
update creature_template set scale = 0.65 where entry = 16516;
update creature_template set scale = 1.75 where entry = 15274;
update creature_template set scale = 0.75 where entry = 15294;
update creature_template set scale = 0.25 where entry = 22040;
update creature_template set scale = 2 where entry = 16933;
update creature_template set scale = 2 where entry = 16959;
update creature_template set scale = 0.3 where entry = 17285;
update creature_template set scale = 4 where entry = 18481;
update creature_template set scale = 2 where entry = 18944;
update creature_template set scale = 6 where entry = 18945;
update creature_template set scale = 3 where entry = 18946;
update creature_template set scale = 2.4 where entry = 19005;
update creature_template set scale = 2 where entry = 17536;
update creature_template set scale = 1.8 where entry = 19434;
update creature_template set scale = 0.25 where entry = 17255;
update creature_template set scale = 1.5 where entry = 19188;
update creature_template set scale = 2.35 where entry = 20444;
update creature_template set scale = 2.35 where entry = 20443;
update creature_template set scale = 1.5 where entry = 18134;
update creature_template set scale = 1.25 where entry = 17799;
update creature_template set scale = 2.5 where entry = 17798;
update creature_template set scale = 1.2 where entry = 22062;
update creature_template set scale = 0.75 where entry = 15298;
update creature_template set scale = 2 where entry = 15937;
update creature_template set scale = 1.3 where entry = 17801;
update creature_template set scale = 0.75 where entry = 15271;
update creature_template set scale = 0.75 where entry = 15372;
update creature_template set scale = 0.5 where entry = 22848;
update creature_template set scale = 2 where entry = 21694;
update creature_template set scale = 1.5 where entry = 21767;
update creature_template set scale = 2 where entry = 17381;
update creature_template set scale = 2 where entry = 17308;
update creature_template set scale = 2 where entry = 17307;
update creature_template set scale = 2 where entry = 18835;
update creature_template set scale = 2.5 where entry = 20084;
update creature_template set scale = 2 where entry = 18894;
update creature_template set scale = 1.5 where entry = 20471;
update creature_template set scale = 0.25 where entry = 21055;
update creature_template set scale = 0.25 where entry = 21064;
update creature_template set scale = 1.5 where entry = 18037;
update creature_template set scale = 2 where entry = 17206;
update creature_template set scale = 2 where entry = 17796;
update creature_template set scale = 0.25 where entry = 21056;
update creature_template set scale = 3 where entry = 17257;
update creature_template set scale = 1.5 where entry = 19531;
update creature_template set scale = 1.5 where entry = 19533;
update creature_template set scale = 1.5 where entry = 19534;
update creature_template set scale = 1.5 where entry = 19536;
update creature_template set scale = 1.5 where entry = 19537;
update creature_template set scale = 1.5 where entry = 19538;
update creature_template set scale = 1.5 where entry = 19539;
update creature_template set scale = 1.5 where entry = 20980;
update creature_template set scale = 1.5 where entry = 20989;
update creature_template set scale = 1.5 where entry = 18103;
update creature_template set scale = 2 where entry = 18102;
update creature_template set scale = 2 where entry = 18099;
update creature_template set scale = 0.25 where entry = 21063;
update creature_template set scale = 3 where entry = 19044;
update creature_template set scale = 1.5 where entry = 17802;
update creature_template set scale = 2 where entry = 17377;
update creature_template set scale = 1.75 where entry = 17805;
update creature_template set scale = 1.5 where entry = 17803;
update creature_template set scale = 2.35 where entry = 19732;
update creature_template set scale = 2.35 where entry = 18121;
update creature_template set scale = 2.35 where entry = 18118;
update creature_template set scale = 1.5 where entry = 20784;
update creature_template set scale = 1.3 where entry = 17722;
update creature_template set scale = 4 where entry = 18411;
update creature_template set scale = 2.35 where entry = 18119;
update creature_template set scale = 2 where entry = 17800;
update creature_template set scale = 2.35 where entry = 18120;
update creature_template set scale = 3.5 where entry = 19191;
update creature_template set scale = 2.2 where entry = 18117;
update creature_template set scale = 2 where entry = 15409;
update creature_template set scale = 2 where entry = 17380;
update creature_template set scale = 0.95 where entry = 17343;
update creature_template set scale = 2 where entry = 17306;
update creature_template set scale = 2 where entry = 18834;
update creature_template set scale = 2 where entry = 18100;
update creature_template set scale = 5 where entry = 16809;
update creature_template set scale = 3 where entry = 16808;
update creature_template set scale = 2 where entry = 16807;
update creature_template set scale = 1.75 where entry = 16595;
update creature_template set scale = 0.25 where entry = 16547;
update creature_template set scale = 1.8 where entry = 16524;
update creature_template set scale = 3 where entry = 16485;
update creature_template set scale = 1.25 where entry = 16469;
update creature_template set scale = 2 where entry = 18728;
update creature_template set scale = 0.4 where entry = 20206;
update creature_template set scale = 1.25 where entry = 16344;
update creature_template set scale = 1.5 where entry = 16346;
update creature_template set scale = 1.2 where entry = 16800;
update creature_template set scale = 2 where entry = 18836;
update creature_template set scale = 2.5 where entry = 16245;
update creature_template set scale = 1.2 where entry = 16802;
update creature_template set scale = 3 where entry = 18831;
update creature_template set scale = 1.8 where entry = 15687;
update creature_template set scale = 2 where entry = 18832;
update creature_template set scale = 1.5 where entry = 16775;
update creature_template set scale = 2 where entry = 22917;
update creature_template set scale = 1.2 where entry = 16329;
update creature_template set scale = 2 where entry = 16247;
update creature_template set scale = 1.15 where entry = 16314;
update creature_template set scale = 2.7 where entry = 15691;
update creature_template set scale = 1.3 where entry = 16248;
update creature_template set scale = 1.3 where entry = 16249;
update creature_template set scale = 1.15 where entry = 16308;
update creature_template set scale = 1.15 where entry = 16305;
update creature_template set scale = 2.5 where entry = 16246;
update creature_template set scale = 1.2 where entry = 16801;
update creature_template set scale = 0.1 where entry = 16030;
update creature_template set scale = 0.1 where entry = 16068;
update creature_template set scale = 3 where entry = 15690;
update creature_template set scale = 1.8 where entry = 13636;
update creature_template set scale = 1.75 where entry = 16358;
update creature_template set scale = 1.5 where entry = 16151;
update creature_template set scale = 1.5 where entry = 16345;
update creature_template set scale = 0.5 where entry = 18381;
update creature_template set scale = 0.5 where entry = 22009;
update creature_template set scale = 0.35 where entry = 22027;
update creature_template set scale = 2 where entry = 16988;
update creature_template set scale = 0.6 where entry = 12356;
update creature_template set scale = 0.6 where entry = 12357;
update creature_template set scale = 0.5 where entry = 6827;
update creature_template set scale = 0.8 where entry = 23234;
update creature_template set scale = 1.2 where entry = 19284;
update creature_template set scale = 2 where entry = 16778;
update creature_template set scale = 1.5 where entry = 16777;
update creature_template set scale = 1.5 where entry = 16776;
update creature_template set scale = 1.6 where entry = 16125;
update creature_template set scale = 1.3 where entry = 18528;
update creature_template set scale = 1.5 where entry = 15711;
update creature_template set scale = 3 where entry = 19622;
update creature_template set scale = 2.1 where entry = 22264;
update creature_template set scale = 2.1 where entry = 22266;
update creature_template set scale = 2.1 where entry = 22270;
update creature_template set scale = 2.1 where entry = 22271;
update creature_template set scale = 1.1 where entry = 23208;
update creature_template set scale = 2.1 where entry = 23110;
update creature_template set scale = 2.1 where entry = 23112;
update creature_template set scale = 1.3 where entry = 23367;
update creature_template set scale = 2.1 where entry = 23428;
update creature_template set scale = 1.3 where entry = 21700;
update creature_template set scale = 1.6 where entry = 21867;
update creature_template set scale = 2 where entry = 22869;
update creature_template set scale = 2 where entry = 22876;
update creature_template set scale = 2 where entry = 22955;
update creature_template set scale = 4 where entry = 22954;
update creature_template set scale = 2 where entry = 22953;
update creature_template set scale = 2 where entry = 22874;
update creature_template set scale = 2 where entry = 22873;
update creature_template set scale = 4 where entry = 22855;
update creature_template set scale = 2 where entry = 22853;
update creature_template set scale = 2 where entry = 22877;
update creature_template set scale = 2 where entry = 22875;
update creature_template set scale = 2 where entry = 22939;
update creature_template set scale = 10 where entry = 22898;
update creature_template set scale = 3 where entry = 22884;
update creature_template set scale = 5 where entry = 22878;
update creature_template set scale = 1.75 where entry = 23172;
update creature_template set scale = 2.5 where entry = 23337;
update creature_template set scale = 2 where entry = 23339;
update creature_template set scale = 1.5 where entry = 22883;
update creature_template set scale = 6 where entry = 22887;
update creature_template set scale = 1.5 where entry = 22881;
update creature_template set scale = 2.1 where entry = 23233;
update creature_template set scale = 1.3 where entry = 22820;
update creature_template set scale = 2 where entry = 17767;
-- more scales
UPDATE `creature_template` SET `scale`='4.000000' WHERE `entry` = '21903';
UPDATE `creature_template` SET `scale`='4.000000' WHERE `entry` = '18341';
UPDATE `creature_template` SET `scale`='4.000000' WHERE `entry` = '17257';
UPDATE `creature_template` SET `scale`='4.000000' WHERE `entry` = '12056';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '8982';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '8400';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '7806';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '5891';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '12264';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '12259';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '12118';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '12098';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '12057';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '11988';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '11982';
UPDATE `creature_template` SET `scale`='3.000000' WHERE `entry` = '11896';
UPDATE `creature_template` SET `scale`='2.650000' WHERE `entry` = '22940';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '9677';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '9176';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '8977';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '23873';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '23841';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '21957';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '21313';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '18343';
UPDATE `creature_template` SET `scale`='2.500000' WHERE `entry` = '16072';
UPDATE `creature_template` SET `scale`='2.350000' WHERE `entry` = '7035';
UPDATE `creature_template` SET `scale`='2.250000' WHERE `entry` = '18344';
UPDATE `creature_template` SET `scale`='2.250000' WHERE `entry` = '16043';
UPDATE `creature_template` SET `scale`='2.200000' WHERE `entry` = '7034';
UPDATE `creature_template` SET `scale`='2.200000' WHERE `entry` = '7033';
UPDATE `creature_template` SET `scale`='2.200000' WHERE `entry` = '22100';
UPDATE `creature_template` SET `scale`='2.100000' WHERE `entry` = '8905';
UPDATE `creature_template` SET `scale`='2.050000' WHERE `entry` = '2720';
UPDATE `creature_template` SET `scale`='2.050000' WHERE `entry` = '2718';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9040';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9039';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9038';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9037';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9036';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9035';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '9034';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '8606';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '8522';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '7049';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '578';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '545';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '544';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '4393';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '4368';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '4363';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '391';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '2931';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '2656';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '2425';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '23979';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '23832';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '22441';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '21963';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '19674';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '19307';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '18431';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '1808';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '1806';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '16184';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '14270';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '14230';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '1418';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '12477';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '1244';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '12119';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11673';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11668';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11662';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11661';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11622';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11374';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '11352';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '1033';
UPDATE `creature_template` SET `scale`='2.000000' WHERE `entry` = '10119';
UPDATE `creature_template` SET `scale`='10.000000' WHERE `entry` = '14834';
UPDATE `creature_template` SET `scale`='1.900000' WHERE `entry` = '2773';
UPDATE `creature_template` SET `scale`='1.900000' WHERE `entry` = '2719';
UPDATE `creature_template` SET `scale`='1.900000' WHERE `entry` = '2717';
UPDATE `creature_template` SET `scale`='1.900000' WHERE `entry` = '2257';
UPDATE `creature_template` SET `scale`='1.800000' WHERE `entry` = '8908';
UPDATE `creature_template` SET `scale`='1.800000' WHERE `entry` = '8907';
UPDATE `creature_template` SET `scale`='1.800000' WHERE `entry` = '14889';
UPDATE `creature_template` SET `scale`='1.800000' WHERE `entry` = '11672';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '9938';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '9698';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '9016';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '8545';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '8521';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '7977';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '7048';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '7039';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '4370';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '4366';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '4362';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '4361';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '422';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2944';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2775';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2716';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2609';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2571';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2420';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '23579';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '2287';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '22095';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '1813';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '15067';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '12101';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '11659';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '10901';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '10504';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '1050';
UPDATE `creature_template` SET `scale`='1.750000' WHERE `entry` = '1027';
UPDATE `creature_template` SET `scale`='1.620000' WHERE `entry` = '10739';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '8544';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '534';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '2793';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '2715';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '2570';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '2569';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '2421';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '2256';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '19306';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '14731';
UPDATE `creature_template` SET `scale`='1.600000' WHERE `entry` = '11361';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '9779';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '9778';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '9697';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '9502';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '9017';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '8906';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '8607';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '8542';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '8532';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '8529';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '8520';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '711';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '7047';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '5854';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '5718';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '548';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '520';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '517';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4468';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4415';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4390';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4385';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4374';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4371';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4364';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4359';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4328';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '4324';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '334';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '3322';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2945';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2926';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2893';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2831';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2757';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2734';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2574';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2573';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2505';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2377';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '2376';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '21816';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1852';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '18469';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1816';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1815';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1812';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1788';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '17878';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1787';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '16805';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '14861';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '14627';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '14357';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1398';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '12899';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '127';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1259';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '12496';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '12479';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '12387';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '12262';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1205';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '11669';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '11665';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '11658';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '11359';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10826';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10508';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10487';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10486';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10481';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10478';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1047';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '10432';
UPDATE `creature_template` SET `scale`='1.500000' WHERE `entry` = '1028';
UPDATE `creature_template` SET `scale`='1.485000' WHERE `entry` = '24667';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '920';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '8543';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '8441';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '5087';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4983';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4884';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4883';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4879';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4503';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4501';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '4500';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '300';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '2701';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '2529';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '2417';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '2254';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '1972';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '1805';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '12263';
UPDATE `creature_template` SET `scale`='1.450000' WHERE `entry` = '10036';
UPDATE `creature_template` SET `scale`='1.440000' WHERE `entry` = '4502';
UPDATE `creature_template` SET `scale`='1.440000' WHERE `entry` = '2566';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '14517';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '14510';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '14509';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '14507';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '1200';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '11382';
UPDATE `creature_template` SET `scale`='1.400000' WHERE `entry` = '11380';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '9501';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '9084';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '9081';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '9024';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '8914';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '8912';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '7869';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '7793';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '6466';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '5860';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '2478';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '23714';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '23595';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '23594';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '23593';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '23592';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '19676';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '18315';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '18313';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '16134';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '15188';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '14182';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '13417';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '12791';
UPDATE `creature_template` SET `scale`='1.350000' WHERE `entry` = '10043';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '98';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '9777';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '9776';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '9691';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '9042';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8598';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8541';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8539';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8531';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8530';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8528';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8527';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8526';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8519';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '8277';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '771';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '7046';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '6733';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '5853';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '5833';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '573';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '5624';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '519';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '518';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '503';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4851';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4841';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '458';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '453';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '446';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '445';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4412';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4389';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4387';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4382';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4357';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4348';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '4323';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '431';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '345';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2925';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2906';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2894';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2766';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2759';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2732';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2729';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2725';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2723';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2659';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2611';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2596';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2595';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2580';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2572';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2567';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2564';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2561';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2422';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '24208';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2407';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '23969';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2375';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2374';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '23687';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2356';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2253';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '21242';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '212';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '2106';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '206';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1973';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1956';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1944';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '19264';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1924';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1909';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1908';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '18477';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1796';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1795';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1794';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1789';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '17878';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1782';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '171';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1487';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '14425';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '14280';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '14276';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1425';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1424';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1412';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1393';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1258';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '125';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1225';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1210';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1207';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1206';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '11885';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '11614';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '11373';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1083';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '10801';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '10779';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '10489';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '10480';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1048';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '10478';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1044';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '10433';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1041';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1026';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1014';
UPDATE `creature_template` SET `scale`='1.300000' WHERE `entry` = '1011';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '9033';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '8915';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '8914';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '8911';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '8605';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '8393';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '8385';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '7043';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '7042';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '6033';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '5852';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '522';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '4334';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '2762';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '2745';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23714';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23636';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23595';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23593';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23592';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23589';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '23483';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '2173';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '19673';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '19671';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '19670';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '18317';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '18311';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '12793';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '12478';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '12100';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '11667';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '11439';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '10503';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '10502';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '1049';
UPDATE `creature_template` SET `scale`='1.250000' WHERE `entry` = '10488';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9554';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9459';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9046';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9044';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9043';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9041';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9020';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9019';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '9018';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '8636';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '8284';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '7996';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '7051';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '6707';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '5195';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '4968';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '4949';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '486';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '4464';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '435';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '2648';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '2647';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '24520';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '21235';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '19912';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '1948';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '1855';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '17256';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '17235';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '15602';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '15594';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '15592';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '15566';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '15561';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '15559';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '14882';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '14825';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '14541';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '14540';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '14539';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '14222';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '12353';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '12351';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11831';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11830';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11391';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11390';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11389';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11388';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11387';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11356';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11353';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11351';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11350';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11348';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11347';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11340';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11339';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '11338';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '10828';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '10802';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '10540';
UPDATE `creature_template` SET `scale`='1.200000' WHERE `entry` = '10181';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '9694';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '9561';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '9499';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '9025';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8922';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8920';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '892';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8913';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8597';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8540';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8535';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8525';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8524';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8523';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8444';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '8278';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '785';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '7055';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '7045';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '7032';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '703';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '6777';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '6577';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '628';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '604';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '5862';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '5858';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '5823';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '580';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '570';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '568';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '547';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '513';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '506';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '501';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4941';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4856';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '456';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '452';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4475';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4474';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4414';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4404';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4403';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4397';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4394';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4356';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4352';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4347';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '429';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '426';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '424';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4128';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '4063';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '374';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '3290';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '3246';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '3238';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '3181';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '3133';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '3096';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2924';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2921';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2920';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2892';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2830';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2774';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2768';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2765';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2764';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2736';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2731';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2728';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2688';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2684';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2682';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2681';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2658';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2655';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2646';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2644';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2579';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2565';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2562';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2559';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2474';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2473';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2406';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2373';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2372';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2371';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2369';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '23555';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2354';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2349';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2255';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2252';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2251';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '2249';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '22213';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '210';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '205';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1958';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1957';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1955';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1954';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1943';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1942';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1940';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1923';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1915';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1914';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1889';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1888';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '18476';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1847';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '18314';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1809';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1797';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1791';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1785';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1784';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1783';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1779';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '17088';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1676';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '15591';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '15552';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '154';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '15111';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '14883';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '14826';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1454';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '14284';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '14278';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '14277';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '14271';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '13839';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '12958';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1270';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '12596';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1251';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '12432';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '124';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1236';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '123';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1216';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '12099';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '12076';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1192';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1189';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1188';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11872';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11871';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1183';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1180';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1177';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11750';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1175';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1167';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1164';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11582';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '115';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1140';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11372';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11365';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11257';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1110';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '11035';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10857';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1069';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10667';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10580';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10495';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10491';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10477';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10476';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10475';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10472';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10471';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10470';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '10469';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1040';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1032';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1031';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1029';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1024';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1019';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1013';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1012';
UPDATE `creature_template` SET `scale`='1.150000' WHERE `entry` = '1010';
UPDATE `creature_template` SET `scale`='1.130000' WHERE `entry` = '440';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '9681';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '9021';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '8983';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '615';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '5826';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '5824';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '4462';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '437';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '4311';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '4065';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '4043';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '3890';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '3353';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2907';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2804';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2654';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2643';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2304';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '21869';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '21859';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '21858';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2108';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2091';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '2090';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '19907';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '19906';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '19905';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '19855';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '19687';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '18675';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '1842';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '16870';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '15021';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '15006';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '14983';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '14942';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '14720';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '14436';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '14392';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '14304';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '1178';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '114';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '11360';
UPDATE `creature_template` SET `scale`='1.100000' WHERE `entry` = '10676';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '8479';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '8216';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '7780';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '485';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '4466';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '4064';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '2653';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '2652';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '2645';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '2642';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '2641';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '2640';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '1846';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '1845';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '14748';
UPDATE `creature_template` SET `scale`='1.050000' WHERE `entry` = '10824';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '999';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9989';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9988';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9987';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9982';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9979';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9978';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9976';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9956';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9856';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9836';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9796';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9695';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9690';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9680';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9679';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9678';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9660';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '960';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9565';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9564';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9563';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9562';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9560';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '956';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9555';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9553';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9552';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9547';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9545';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9544';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9543';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '954';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9536';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9520';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9503';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9500';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '95';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '948';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9452';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9451';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9450';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9449';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9448';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9447';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '936';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9356';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '935';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '934';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '933';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '932';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9319';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9318';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9317';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '931';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '923';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '92';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9179';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9177';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9156';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '910';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '909';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9086';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9085';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9083';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9082';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9080';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9079';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9078';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9077';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9056';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '903';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9026';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9023';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '9022';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '900';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8965';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8964';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8962';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8934';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8931';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '893';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8929';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8921';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8917';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8916';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8915';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8914';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8913';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8912';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8910';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '891';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8904';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8903';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8902';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8901';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8900';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8899';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8898';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8897';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8896';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8895';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8894';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8893';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8892';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8891';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8890';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '889';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8889';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8888';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8887';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8885';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8881';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '888';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '887';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '886';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '885';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8837';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '883';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '878';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '876';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '874';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8724';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '870';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '869';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8673';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8659';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8637';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8596';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '859';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8566';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8565';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8564';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8563';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8562';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8561';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8560';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8558';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8557';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8555';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8553';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8551';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8550';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8548';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8547';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8546';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8538';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8534';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '851';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8509';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '850';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '849';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '848';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '847';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8447';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8442';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '844';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8439';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8436';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '843';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '842';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8419';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8417';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8404';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8402';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '840';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8390';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '833';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8310';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '831';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8309';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8305';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '830';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8282';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '828';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8276';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '827';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '826';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '824';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8210';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '821';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '820';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '819';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8161';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8160';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8155';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8141';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8140';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '812';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8096';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8055';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '8018';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7995';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7953';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7952';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '793';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '791';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '790';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '789';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7884';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '787';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7868';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7867';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7865';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7801';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7792';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7790';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7778';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '777';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7744';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7567';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7565';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7562';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7489';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7325';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7324';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7323';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7311';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7294';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7231';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7230';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '721';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7170';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '712';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7088';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7075';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7072';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7071';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7070';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7069';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7068';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7067';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7057';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7056';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7053';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7052';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7050';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7044';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7041';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7040';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7038';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7037';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7036';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7031';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7029';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7028';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7027';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7026';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7025';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7010';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7009';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '7007';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6987';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6986';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6966';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6929';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6928';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6868';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6790';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6787';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6779';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6771';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6768';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6766';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6739';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6734';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6727';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6670';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '664';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '663';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '661';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6607';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6586';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6574';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6570';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6567';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6547';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6546';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6523';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6497';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6491';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6446';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6412';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6408';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6389';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '633';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6295';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6241';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '620';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '619';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6182';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6176';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6170';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6166';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6145';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6030';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6027';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6018';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '6014';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5994';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '599';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '596';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5958';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5953';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5952';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5943';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5942';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5941';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '594';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5910';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5909';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5900';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '590';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5897';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5892';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '589';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5887';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5886';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5885';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5884';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5883';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5882';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5880';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5875';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5862';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5861';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5860';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5857';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5855';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5850';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5846';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5844';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5843';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5840';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5839';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5822';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '582';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5817';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5816';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5815';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5812';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5811';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5765';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '576';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5758';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5757';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5748';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '574';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5738';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5736';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5735';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5734';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5733';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5683';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5682';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '565';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5640';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5639';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5636';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5635';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5634';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5620';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5614';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5613';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5611';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5610';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5609';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5608';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5607';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5606';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5603';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5598';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5597';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '550';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5464';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5418';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5414';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5406';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5405';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5404';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5403';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5394';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5388';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '533';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '531';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '523';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5204';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5202';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5200';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5199';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5188';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5184';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '515';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '511';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5096';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5095';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5094';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5093';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5092';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5091';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5090';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5089';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5086';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5085';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5083';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5082';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '5057';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '504';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '502';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '500';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '499';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4980';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4979';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4973';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4971';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4967';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4966';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4965';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4964';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4963';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4962';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4954';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4952';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4951';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '495';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4948';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4944';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '494';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4926';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4924';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4923';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4922';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4921';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '491';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4902';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4900';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '490';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4899';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4898';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4897';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4896';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4895';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4894';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4893';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4892';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4891';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4890';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '489';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4889';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4888';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4886';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4885';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '488';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4872';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '487';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4846';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4845';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4844';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4834';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '481';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4794';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4792';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4791';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4782';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4752';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '468';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '467';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '464';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4618';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4611';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4610';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4609';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '46';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4494';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4493';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '449';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4485';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4481';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4480';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4479';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4472';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4469';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4467';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4465';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4463';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4455';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4401';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '440';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4388';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4380';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '436';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4351';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4346';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4345';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '434';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4339';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4331';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '433';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4329';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4321';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '432';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4314';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4305';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '430';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '423';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '415';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4076';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4075';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4062';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '4047';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3985';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3984';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3982';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3980';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '397';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3948';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3933';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '392';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3903';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3882';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3881';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '385';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3836';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '382';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '381';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '379';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '372';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3708';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3707';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3706';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3620';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3578';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3577';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3557';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3556';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3555';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3554';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3553';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3552';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3551';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3545';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3544';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3543';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3542';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3541';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3540';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3539';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3538';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3536';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3534';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3532';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3530';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3528';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '349';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '348';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '346';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '344';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '343';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '342';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3413';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3412';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3410';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '341';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3409';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3408';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3407';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3406';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3405';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3404';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3403';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3402';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3401';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3400';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3399';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3373';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3372';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3371';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3370';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3369';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3368';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3367';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3366';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3365';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3364';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3363';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3362';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3361';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3360';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3359';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3358';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3357';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3356';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3355';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3354';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3352';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3351';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3350';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '335';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3349';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3348';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3347';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3346';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3345';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3344';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3342';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3336';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3335';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3334';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3333';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3332';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3331';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3330';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3329';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3328';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3327';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3326';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3325';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3324';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3323';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3321';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3320';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3319';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3318';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3317';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3316';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3315';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3314';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3313';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3312';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3310';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3309';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3305';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3304';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3300';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3298';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3297';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3296';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3294';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3293';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3291';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3287';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '325';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3226';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3225';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3216';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3208';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3207';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3206';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3205';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3204';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3203';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3199';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3198';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3197';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3196';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3195';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3194';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3193';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3192';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3191';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3190';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3189';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3188';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3187';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3186';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3185';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3184';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3183';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3182';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3180';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3179';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3178';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3175';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3174';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3173';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3172';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3171';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3170';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3169';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3168';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3167';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3166';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3165';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3164';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3163';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3161';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3160';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3159';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3158';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3157';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3156';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3155';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3154';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3153';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '315';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3147';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3145';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3144';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3143';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3142';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3140';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3139';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3138';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3137';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3136';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3135';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3134';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3131';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3129';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3128';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3127';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3118';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3117';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3114';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '311';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3100';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3097';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3091';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3090';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3089';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3088';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3087';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3086';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3085';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '302';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '3';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2941';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2932';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2929';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2928';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2927';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2923';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2914';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2911';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2910';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2909';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2908';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '289';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2888';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '288';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2861';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2860';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2857';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2855';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2851';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2835';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2829';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2821';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2820';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2819';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2818';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2817';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2816';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2814';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2812';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2810';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2808';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2805';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2792';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2791';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2789';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2788';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2787';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2785';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2783';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2782';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2781';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2780';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2778';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2772';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2771';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2770';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2769';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2767';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2761';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '276';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2752';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '275';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2743';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2742';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2740';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '274';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2739';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2738';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2733';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2730';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '273';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2727';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2721';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '272';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2714';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2713';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2712';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2711';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '271';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2706';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2705';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2704';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2703';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2700';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '270';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2698';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2697';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2696';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2694';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2693';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2692';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2691';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '269';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2686';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '268';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2679';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '267';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2669';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2668';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '266';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2657';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2651';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2650';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '265';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2640';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '264';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2639';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2636';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '263';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2623';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2621';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2620';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2619';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2618';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2616';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2612';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2610';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2608';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2607';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2600';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2599';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2597';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2591';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2590';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2589';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2588';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2587';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2586';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2585';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2584';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2583';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2582';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2581';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2578';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2577';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2575';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2558';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2557';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2556';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2555';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2554';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2553';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2552';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2543';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2528';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2527';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2526';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2525';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2524';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2518';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2517';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2516';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2515';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2514';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2513';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2512';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2511';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2510';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2509';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25083';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25081';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25080';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2508';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25079';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25077';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25076';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25074';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25072';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25071';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '25070';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2507';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2506';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2503';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24931';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24930';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24929';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24927';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24926';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24924';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24842';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24841';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24839';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24837';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24836';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24835';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24834';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24819';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24818';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2481';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2480';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2477';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2470';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2469';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2468';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24668';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2466';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2451';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2450';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2449';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2448';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24477';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2447';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2442';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2440';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2438';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2437';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2436';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2432';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2431';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2430';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2429';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2428';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2427';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2423';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2419';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2418';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2416';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2415';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2414';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2413';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2412';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2411';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2410';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2409';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2408';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2405';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2404';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2403';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2402';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2401';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24007';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24006';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '24005';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2400';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23995';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2399';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2398';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2397';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2396';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23951';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23950';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2395';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23949';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23942';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2394';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2393';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2392';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2391';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23907';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23905';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2390';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '239';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23896';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2389';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23881';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2388';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2387';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2386';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2385';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23843';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23835';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2383';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2382';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2381';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2380';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '238';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23797';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2379';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2378';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23723';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23720';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23704';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2370';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '237';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23699';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2368';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2367';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2366';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2365';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2364';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23637';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23635';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2363';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23620';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2362';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23612';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2361';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23602';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23601';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23600';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2360';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23591';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23590';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23589';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2358';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23573';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23572';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23571';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23570';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2357';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23569';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23568';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23567';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23566';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23554';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2352';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2351';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '235';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2348';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2347';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2346';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2345';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2344';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '234';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2335';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2333';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2332';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '233';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23273';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23263';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2320';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '232';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2319';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2318';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2317';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2316';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23131';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23128';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2306';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2305';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '23033';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2299';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2284';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '22831';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '228';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2278';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2277';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2276';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2272';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2271';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2270';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '227';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2269';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2268';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2267';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2266';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2265';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2264';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2263';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2261';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2260';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '226';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2250';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '225';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2248';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2247';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2246';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '22457';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2245';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2244';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2243';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2242';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2241';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '22407';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2240';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2239';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2238';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2230';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2229';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2228';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2227';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2226';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '22212';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '22208';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '222';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2216';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2215';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2214';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21907';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21902';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21870';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21854';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21852';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21846';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '218';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21662';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21661';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21660';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21655';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2153';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21517';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '215';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21434';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2142';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21411';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2140';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21317';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21285';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21284';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '21252';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2121';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2120';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2112';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2111';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2110';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2105';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2104';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2103';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2102';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2099';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2098';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2097';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2096';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2094';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2093';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20876';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2086';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20808';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2068';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2067';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2066';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2065';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2064';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2063';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2062';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2061';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2060';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2058';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2057';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2055';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2054';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '2053';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20386';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20385';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20384';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '203';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20276';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20274';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '20269';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '202';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19850';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1983';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1978';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1974';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1971';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19697';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19693';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19689';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19684';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19680';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19679';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19678';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19672';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19669';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19664';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19663';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19662';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19661';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1963';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1953';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1952';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1951';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1950';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19475';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1947';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19417';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1939';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1938';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1937';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19338';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19337';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19331';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1933';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19289';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19283';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19246';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19244';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19232';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19227';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19223';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19213';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1920';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19197';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19196';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19195';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19194';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19187';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19185';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19180';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19170';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19165';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19164';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19163';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19162';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1915';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19144';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1914';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1913';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '19120';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1912';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1895';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1894';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1891';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1889';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1888';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1884';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1883';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18829';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18718';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1870';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1869';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1868';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1867';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1865';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1854';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18470';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18460';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18430';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18394';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1836';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1835';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1834';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18331';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1833';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1832';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18312';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1831';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18309';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1827';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1826';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1824';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1821';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1817';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '18165';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1804';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1802';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1793';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17795';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1777';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1773';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1772';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1770';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17698';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17696';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17690';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17689';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1768';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1767';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1766';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17647';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17635';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17598';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17474';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1727';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1726';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17253';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1725';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17238';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17223';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17218';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17209';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17119';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17108';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17104';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17098';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17097';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17095';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17092';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17088';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17072';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17069';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '17059';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1687';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16867';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1686';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1685';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1684';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1683';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1682';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1681';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1680';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1678';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1673';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1672';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1671';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1670';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '167';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1669';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1668';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16519';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16392';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16378';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16376';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16288';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16284';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16283';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16256';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16229';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16228';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16225';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16212';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16135';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16133';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16132';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16131';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16117';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16116';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16115';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16114';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16113';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16112';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16096';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16090';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16079';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16076';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16047';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '16012';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15765';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15761';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1572';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1571';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '157';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15591';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15553';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15384';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15350';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15214';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15162';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15137';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15130';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15128';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15127';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15126';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15125';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15124';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15091';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15042';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '15022';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14990';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14984';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14962';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14961';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1484';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1483';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14821';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1482';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1481';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1480';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1479';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1476';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14758';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14757';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14750';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14741';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14740';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1474';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14739';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14738';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14737';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14736';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14734';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14730';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1473';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14727';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14726';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1471';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1470';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1469';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1465';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1464';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14634';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1463';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14628';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14626';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14625';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14624';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14622';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14621';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1462';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1461';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1460';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1459';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1458';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1457';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14561';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14560';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1456';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14559';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14545';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14544';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14543';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1453';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14529';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1452';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1451';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1450';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14499';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14498';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1448';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1446';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14451';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1445';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14437';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1441';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14387';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14377';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14376';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14375';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1437';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1434';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14285';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14284';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14273';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14272';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1426';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '14234';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1423';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1420';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1407';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1399';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13842';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13841';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13840';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1383';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13817';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13816';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1379';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13777';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13776';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1364';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1362';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1353';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13476';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1345';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1344';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1343';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1342';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1340';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1338';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1337';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1336';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1335';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1334';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13321';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1332';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1331';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1330';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1329';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13277';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13219';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13217';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13177';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13157';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13118';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '13085';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1296';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12944';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12942';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12941';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12939';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12920';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12919';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1283';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1282';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1281';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1280';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12798';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12797';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12796';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12795';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12794';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12790';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1279';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12789';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12788';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1278';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12776';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1277';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1276';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12716';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12658';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12657';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12636';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12617';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '126';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12431';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12430';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12425';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1242';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1239';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12384';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12376';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12375';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12350';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12349';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12346';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12337';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12322';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12261';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12250';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12248';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1224';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1222';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '122';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1217';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1214';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '12136';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '121';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1202';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11943';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11936';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1193';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1191';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1190';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11899';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11898';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11878';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11873';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1187';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11868';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1186';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11835';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11814';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11813';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11812';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11810';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1181';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1174';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11710';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11706';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11704';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11703';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '117';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1169';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11671';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11666';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1165';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1163';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11621';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11620';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11616';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11613';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11611';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11610';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11609';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1160';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1159';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11582';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1158';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1157';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1156';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1155';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1154';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11536';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1153';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1139';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11370';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11355';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11346';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11291';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11290';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11289';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11288';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11261';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11258';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11257';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11217';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11216';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11194';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11178';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11177';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11176';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11140';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11102';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11097';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1109';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11066';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11064';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11063';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11056';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11053';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11052';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1105';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11046';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11044';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11040';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11039';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11038';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11036';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11034';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11033';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11025';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11023';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '11017';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10976';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10940';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10930';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1093';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10928';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10927';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10926';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1092';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1091';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1090';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1089';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10880';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10840';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10838';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10816';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10780';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1078';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10778';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1077';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1076';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1075';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1074';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1073';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1072';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1071';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1070';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10696';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10682';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1068';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10678';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1065';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10608';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10605';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10578';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10577';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1057';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1054';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1053';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1052';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1051';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10507';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10505';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10500';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10499';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10498';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10485';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10482';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10477';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10476';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10475';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10472';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10471';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10470';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10469';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1046';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1045';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1043';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1039';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1038';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10369';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1036';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1035';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1034';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10321';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10304';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1030';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10267';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10266';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10260';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1025';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10176';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10136';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10117';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10116';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1009';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10088';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1008';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '1007';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10062';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10061';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10058';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10057';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10047';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10046';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10045';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10043';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10038';
UPDATE `creature_template` SET `scale`='1.000000' WHERE `entry` = '10037';
UPDATE `creature_template` SET `scale`='0.950000' WHERE `entry` = '824';
UPDATE `creature_template` SET `scale`='0.950000' WHERE `entry` = '2649';
UPDATE `creature_template` SET `scale`='0.950000' WHERE `entry` = '1727';
UPDATE `creature_template` SET `scale`='0.933898' WHERE `entry` = '2680';
UPDATE `creature_template` SET `scale`='0.928814' WHERE `entry` = '2680';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '8901';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '8602';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '6732';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '6272';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '625';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '624';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '3537';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '3131';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '3113';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '3112';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '2628';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '1866';
UPDATE `creature_template` SET `scale`='0.900000' WHERE `entry` = '1548';
UPDATE `creature_template` SET `scale`='0.876271' WHERE `entry` = '10979';
UPDATE `creature_template` SET `scale`='0.872881' WHERE `entry` = '4950';
UPDATE `creature_template` SET `scale`='0.872881' WHERE `entry` = '10979';
UPDATE `creature_template` SET `scale`='0.855932' WHERE `entry` = '2384';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '949';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '898';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '8556';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '8477';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '834';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '6250';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '623';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '616';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '6020';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '5897';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '5856';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '5808';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '579';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '480';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '48';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '441';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '4376';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '4344';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '4343';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '36';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3281';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3228';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3130';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3126';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3125';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3121';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3120';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3119';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3116';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3115';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3108';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3107';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '3101';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2735';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2726';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2592';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2563';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2384';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2359';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '2350';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '213';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '199';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1822';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1778';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1769';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1765';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '15043';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '14268';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '14267';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '14266';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1197';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1194';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1179';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1176';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1173';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1161';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '11551';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '11371';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '11357';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1042';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1023';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1022';
UPDATE `creature_template` SET `scale`='0.850000' WHERE `entry` = '1017';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '8996';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '7951';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '6786';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '6271';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '3111';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '24476';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '21443';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '1447';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '11378';
UPDATE `creature_template` SET `scale`='0.800000' WHERE `entry` = '10556';
UPDATE `creature_template` SET `scale`='0.759322' WHERE `entry` = '3106';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '8909';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '8603';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '8601';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '832';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '626';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '5951';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '4901';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '454';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '428';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '3099';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '2760';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '18464';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '18429';
UPDATE `creature_template` SET `scale`='0.750000' WHERE `entry` = '14532';
UPDATE `creature_template` SET `scale`='0.747458' WHERE `entry` = '3106';
UPDATE `creature_template` SET `scale`='0.710169' WHERE `entry` = '3124';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '688';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '5897';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '569';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '505';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '4379';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '4378';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '4341';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '3560';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '3227';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '3141';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '3123';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '3105';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '3102';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '217';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '2089';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '17236';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '1185';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '1172';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '1166';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '1162';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '11368';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '11027';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '10698';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '1021';
UPDATE `creature_template` SET `scale`='0.700000' WHERE `entry` = '1016';
UPDATE `creature_template` SET `scale`='0.674576' WHERE `entry` = '8600';
UPDATE `creature_template` SET `scale`='0.669492' WHERE `entry` = '8600';
UPDATE `creature_template` SET `scale`='0.667797' WHERE `entry` = '2560';
UPDATE `creature_template` SET `scale`='0.664407' WHERE `entry` = '8600';
UPDATE `creature_template` SET `scale`='0.662712' WHERE `entry` = '2560';
UPDATE `creature_template` SET `scale`='0.660000' WHERE `entry` = '25075';
UPDATE `creature_template` SET `scale`='0.660000' WHERE `entry` = '24935';
UPDATE `creature_template` SET `scale`='0.660000' WHERE `entry` = '24934';
UPDATE `creature_template` SET `scale`='0.650000' WHERE `entry` = '16069';
UPDATE `creature_template` SET `scale`='0.650000' WHERE `entry` = '15186';
UPDATE `creature_template` SET `scale`='0.637288' WHERE `entry` = '1018';
UPDATE `creature_template` SET `scale`='0.632203' WHERE `entry` = '1018';
UPDATE `creature_template` SET `scale`='0.616949' WHERE `entry` = '1015';
UPDATE `creature_template` SET `scale`='0.611864' WHERE `entry` = '1020';
UPDATE `creature_template` SET `scale`='0.611864' WHERE `entry` = '1015';
UPDATE `creature_template` SET `scale`='0.606780' WHERE `entry` = '3098';
UPDATE `creature_template` SET `scale`='0.606780' WHERE `entry` = '1020';
UPDATE `creature_template` SET `scale`='0.600000' WHERE `entry` = '3098';
UPDATE `creature_template` SET `scale`='0.593220' WHERE `entry` = '14880';
UPDATE `creature_template` SET `scale`='0.589831' WHERE `entry` = '14880';
UPDATE `creature_template` SET `scale`='0.586441' WHERE `entry` = '14880';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '930';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '539';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '442';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '4040';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '3122';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '3104';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '3103';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '2476';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '1781';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '1780';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '1400';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '12433';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '1195';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '1184';
UPDATE `creature_template` SET `scale`='0.550000' WHERE `entry` = '1111';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '8963';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '8023';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '6728';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '25171';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '24025';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '23869';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '23868';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '23753';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '23752';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '23751';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '23727';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '12922';
UPDATE `creature_template` SET `scale`='0.500000' WHERE `entry` = '11776';
UPDATE `creature_template` SET `scale`='0.471186' WHERE `entry` = '1417';
UPDATE `creature_template` SET `scale`='0.467797' WHERE `entry` = '1417';
UPDATE `creature_template` SET `scale`='0.447458' WHERE `entry` = '1693';
UPDATE `creature_template` SET `scale`='0.444068' WHERE `entry` = '1693';
UPDATE `creature_template` SET `scale`='0.433898' WHERE `entry` = '3231';
UPDATE `creature_template` SET `scale`='0.433898' WHERE `entry` = '3110';
UPDATE `creature_template` SET `scale`='0.430508' WHERE `entry` = '3110';
UPDATE `creature_template` SET `scale`='0.427119' WHERE `entry` = '3110';
UPDATE `creature_template` SET `scale`='0.400000' WHERE `entry` = '7768';
UPDATE `creature_template` SET `scale`='0.400000' WHERE `entry` = '5890';
UPDATE `creature_template` SET `scale`='0.400000' WHERE `entry` = '2922';
UPDATE `creature_template` SET `scale`='0.400000' WHERE `entry` = '2274';
UPDATE `creature_template` SET `scale`='0.400000' WHERE `entry` = '10685';
UPDATE `creature_template` SET `scale`='0.300000' WHERE `entry` = '5890';
UPDATE `creature_template` SET `scale`='0.300000' WHERE `entry` = '2462';
UPDATE `creature_template` SET `scale`='0.300000' WHERE `entry` = '10699';
UPDATE `creature_template` SET `scale`='0.250000' WHERE `entry` = '2540';
UPDATE `creature_template` SET `scale`='0.250000' WHERE `entry` = '23585';
UPDATE `creature_template` SET `scale`='0.250000' WHERE `entry` = '10262';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '9700';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '9699';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '19677';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '17376';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '14881';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '13936';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12256';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12255';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12254';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12253';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12252';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12251';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12249';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12247';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12244';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '12202';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '11152';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '10905';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '10904';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '10903';
UPDATE `creature_template` SET `scale`='0.100000' WHERE `entry` = '10902';


-- sk
update creature_template set mechanic_immune_mask=131073 where entry=18796;
update creature_template set mechanic_immune_mask=131072 where entry=18848;
-- Shattrath cleanup a bit
update creature set MovementType=0, spawndist=0 where id=19153;
update creature set MovementType=0, spawndist=0 where id=19337;
update creature set MovementType=0, spawndist=0 where id=19161;
update creature set MovementType=0, spawndist=0 where id=19165;
update creature set MovementType=0, spawndist=0 where id=19346;
update creature set MovementType=0, spawndist=0 where id=19165;
update creature set MovementType=0, spawndist=0 where id=19377;
update creature set MovementType=0, spawndist=0 where id=19475;
update creature set position_x=-1836.266, position_y=5316.9799, position_z=-12.428, orientation=1.8133, spawn_position_x=-1836.266, spawn_position_y=5316.9799, spawn_position_z=-12.428, spawn_orientation=1.8133 where guid=68573;
update creature set position_x=-1798.554, position_y=5604.002, position_z=130.811, orientation=1.4140, spawn_position_x=-1798.554, spawn_position_y=5604.002, spawn_position_z=130.811, spawn_orientation=1.4140 where guid=69139;
update creature set position_x=-1802.0100, position_y=5620.100, position_z=130.895, orientation=1.186, spawn_position_x=-1802.0100, spawn_position_y=5620.100, spawn_position_z=130.895, spawn_orientation=1.186 where guid=69138;
update creature set position_x=-1776.1300, position_y=5726.779, position_z=126.538, orientation=1.5708, spawn_position_x=-1776.1300, spawn_position_y=5726.779, spawn_position_z=126.538, spawn_orientation=1.5708 where guid=69109;
DELETE FROM creature WHERE guid = '68963';
DELETE FROM creature_addon WHERE guid = '68963';
DELETE FROM creature_movement WHERE id = '68963';
DELETE FROM creature WHERE guid = '68499';
DELETE FROM creature_addon WHERE guid = '68499';
DELETE FROM creature_movement WHERE id = '68499';
DELETE FROM creature WHERE guid = '68500';
DELETE FROM creature_addon WHERE guid = '68500';
DELETE FROM creature_movement WHERE id = '68500';
DELETE FROM creature WHERE guid = '68931';
DELETE FROM creature_addon WHERE guid = '68931';
DELETE FROM creature_movement WHERE id = '68931';
DELETE FROM creature WHERE guid = '68930';
DELETE FROM creature_addon WHERE guid = '68930';
DELETE FROM creature_movement WHERE id = '68930';
DELETE FROM creature WHERE guid = '68922';
DELETE FROM creature_addon WHERE guid = '68922';
DELETE FROM creature_movement WHERE id = '68922';
DELETE FROM creature WHERE guid = '68491';
DELETE FROM creature_addon WHERE guid = '68491';
DELETE FROM creature_movement WHERE id = '68491';
DELETE FROM creature WHERE guid = '68543';
DELETE FROM creature_addon WHERE guid = '68543';
DELETE FROM creature_movement WHERE id = '68543';

-- WDB updates
update `gameobject_template` set `name`='Curious Bookcase' where entry='184453';

INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10471','1','Splendid! Marvelous! An excellent performance!','','0','0','21','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10126','1','Your presence here is interfering with very important work. Please leave at once. Where was I, again?','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10124','1','It\'s here... somewhere... I know it. Somewhere in this library is the knowledge I\'m looking for...','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10125','1','','This tower is complete and utter madness. This isn\'t a library, it\'s a huge haystack of books and I don\'t think the needle even exists! Now, what was I doing?','0','0','5','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');

update `npc_text` set text0_0='Aran has been defeated? Yes... I can sense his grip has loosened - if only just a little. But just enough to allow me to do my job as the doorman! Would you like me transport you to the Guardian\'s Library, $N?' where id='10741';
update `npc_text` set text0_0='This is the tower of Karazhan and residence of my master, Medivh. As a humble doorman, there is little else I can explain to you.' where id='10113';
update `npc_text` set text0_0='All inquiries regarding Medivh should be directed to Moroes, the Tower Steward. I myself know very little about the Master\'s business. I believe several nobles are currently having an audience with Moroes in the Banquet Hall, if you wish to inquire further.' where id='10114';
update `npc_text` set text0_0='From here in the Gatehouse, you may travel in one of three directions. The stairs behind me lead to the Grand Ball Room, where guests are currently being entertained. I\'m sure you can smell the nearby Stables, and the entrance to Servant\'s Quarters lies next to the Gatehouse door.' where id='10115';
update `npc_text` set text0_0='Ah, guests of the Master. I hope you\'ve been watching your step in here.' where id='8404';
update `npc_text` set text0_0='Midnight is Attumen the Huntsman\'s personal mount. I\'ve never seen a faster, stronger, or more mean spirited horse. And her rider is even more temperamental! Everyone keeps their distance from her, lest they get a hoof upside the head from Midnight or a beating from Attumen.' where id='10117';
update `npc_text` set text0_0='I once served Medivh... or pretended to.  I helped the Violet Eye keep a close eye on the Master.$B$BBut now all I can think of is... making horseshoes.  Over and over.' where id='9003';
update `npc_text` set text0_0='Greetings, travelers. I have been instructed to treat any bearer of a key to Karazhan as an honored guest of the Master. Feel free to ask any questions you wish of me. How may I assist you?' where id='8401';

update `npc_text` set `text0_1`='' where id='10741';
update `npc_text` set `text0_1`='' where id='9003';

update npc_text set `text0_0`='Welcome, $N. Bring me the marks that Illidan bestows upon his most powerful minions and I shall grant you access to my alchemical goods.' where id='11085';

update npc_text set `text0_1`='' where id='11085';
INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) values('179644','3','1667','Imprisoned Doomguard','0','0','1','43','16668','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11196','The merchant known as Griftah has been exiled from this city for his fraudulent activities. We plan to go over these little knick-knacks he sells extremely carefully. Please, leave his stall undisturbed and let us do our work.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11243','Be on your guard. We are Theramore\'s first line of defense against its many enemies in the marsh.','','7','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11245','Now that the deserters have taken over Lost Point, North Point Tower is the most distant of Theramore\'s outposts.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11424','I haven\'t much time to talk unless it\'s urgent, citizen. The gates of Theramore are my greatest responsibility.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9403','Hail, champion! Have you ever thought about going into the gladiator business full time? You and I could make a mountain of gold.','','0','1','0','66','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11457','Welcome to Theramore.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11136','You seem like a sensible $c, friend. Do you remember the glory days of Theramore, back before Jaina made us give up the fight against the Horde? Are you sick of being told to stay your blade while the orcs continue to provoke us?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11376','You might wanna stand back. Fish guttin\' is a dirty job.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11432','Thank the Light the Defias don\'t know the first thing about diving!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11224','','Well met, $c. I\'m learning the art of gryphon handling from Baldruc over there. One day, I hope to run my own stable of gryphons.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11469','Pleased to meet you, $c.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('6996','So, you have found me. I suppose that you have come to learn of suppression and control.$B$BI will teach you much more than that... you will also learn of sacrifice.$B$B<Daio grins.>','','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('6997','That will be the choice of the demon you wish to conjure and enslave. We wield dark powers and we pay grossly for the use of said powers.','','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('6998','We must first craft a prison to confine the beast, if you wish to progress further.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');

update item_template set stat_value2='11' where entry='34622';

update item_template set stat_value1='10' where entry='34622';

update item_template set allowableclass='32767' where entry='22736';
update item_template set allowableclass='32767' where entry='22520';
-- 2 more quests
INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `SuggestedPlayers`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `LimitTime`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) values('10461','1941','0','70','0','0','0','0','0','0','0','0','0','128','0','0','0','10465','0','0','0','Restorer\'s Pledge','','',NULL,NULL,'','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','29307','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','75900','0','0','0','0','0','1','0','0','0','1','1','1','0','0','0','0','0');
INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `SuggestedPlayers`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `LimitTime`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) values('10638','-262','0','10','0','0','0','0','0','0','0','0','0','136','0','0','0','10379','0','0','0','NOT A QUEST','Seek your trainer in Silvermoon City.','Seek <NAME> in the <DISTRICT> of Silvermoon City.',NULL,NULL,'','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','60','0','0','0','0','0','1','0','0','0','1','1','1','0','0','0','0','0');

-- type10 go
update `gameobject_template` set `flags`=`flags`&~4 where `type`=10;
update `gameobject_template` set `flags`=`flags`|4 where `type`=10 and `data1`>0;

-- SD2 Stuffs
-- 269
-- removing old script names that does no longer exist
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (12198,14982,857,12197,7427,347,15007,2804);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (9564,12136,3149,12137,9566,3150,9559,9558);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 197;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (11328, 11260);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (80, 1236, 3578, 40, 1358, 1360, 5996, 1426, 1094, 674);

-- 270
UPDATE `creature_template` SET `ScriptName` = 'npc_overseer_nuaar' WHERE `entry` = 21981;

-- 271
UPDATE `creature_template` SET `ScriptName` = 'npc_greatmother_geyah' WHERE `entry` = 18141;

-- 272
UPDATE `creature_template` SET `ScriptName` = 'boss_kaelthas' WHERE `entry` = 23054;
UPDATE `creature_template` SET `ScriptName` = 'boss_thaladred_the_darkener' WHERE `entry` = 20064;
UPDATE `creature_template` SET `ScriptName` = 'boss_lord_sanguinar' WHERE `entry` = 20060;
UPDATE `creature_template` SET `ScriptName` = 'boss_grand_astromancer_capernian' WHERE `entry` = 20062;
UPDATE `creature_template` SET `ScriptName` = 'boss_master_engineer_telonicus' WHERE `entry` = 20063;
UPDATE `creature_template` SET `ScriptName` = 'mob_phoenix' WHERE `entry` = 21362;
UPDATE `creature_template` SET `ScriptName` = 'mob_nether_vapor' WHERE `entry` = 21002;
UPDATE `creature_template` SET `ScriptName` = 'mob_kael_flamestrike' WHERE `entry` = 21369;

-- 273
UPDATE `creature_template` SET `ScriptName` = 'npc_saikkal_the_elder' WHERE `entry` = 22932;

-- 274
UPDATE `creature_template` SET `ScriptName` = 'mob_blackwing_lair' WHERE `entry` = 12557;

-- 275
UPDATE `creature_template` SET `ScriptName` = 'mob_shade_of_jindo' WHERE `entry` = 14986;

-- 282
UPDATE creature_template SET ScriptName = 'npc_tyrande_whisperwind' WHERE entry = 17948;
UPDATE creature_template SET ScriptName = 'npc_thrall' WHERE entry  = 17852;
UPDATE creature_template SET ScriptName = 'npc_jaina_proudmoore' WHERE entry = 17772;
UPDATE creature_template SET ScriptName = 'npc_akama_shade' WHERE entry = 23089; -- Akama at Shade of Akama
UPDATE creature_template SET ScriptName = 'npc_akama_illidan' WHERE entry = 22990; -- Akama at Illidan
UPDATE creature_template SET ScriptName = 'illidari_council' WHERE entry = 23426; -- Illidari Council controller mob
UPDATE creature_template SET ScriptName = 'boss_veras_darkshadow' WHERE entry = 22952; -- Rogue of Illidari Council
UPDATE creature_template SET ScriptName = 'boss_teron_gorefiend' WHERE entry = 22871; -- Teron Gorefiend
UPDATE creature_template SET ScriptName = 'boss_supremus' WHERE entry = 22898; -- Supremus
UPDATE creature_template SET ScriptName = 'boss_shade_of_akama' WHERE entry = 22841; -- Shade of Akama
UPDATE creature_template SET ScriptName = 'boss_reliquary_of_souls' WHERE entry = 22856; -- Reliquary Controller Mob
UPDATE creature_template SET ScriptName = 'boss_essence_of_suffering' WHERE entry = 23418; -- Essence Of Suffering
UPDATE creature_template SET ScriptName = 'boss_essence_of_desire' WHERE entry = 23419; -- Essence of Desire
UPDATE creature_template SET ScriptName = 'boss_essence_of_anger' WHERE entry = 23420; -- Essence of Anger
UPDATE creature_template SET ScriptName = 'boss_najentus' WHERE entry = 22887; -- High Warlord Naj'entus
UPDATE creature_template SET ScriptName = 'boss_gurtogg_bloodboil' WHERE entry = 22948; -- Gurtogg Bloodboil
UPDATE creature_template SET ScriptName = 'boss_mother_shahraz' WHERE entry = 22947; -- Mother Shahraz
UPDATE creature_template SET ScriptName = 'boss_lady_malande' WHERE entry = 22951; -- Priest <3 at Illidari Council
UPDATE creature_template SET ScriptName = 'boss_illidan_stormrage' WHERE entry = 22917; -- Illidan The Betrayer!
UPDATE creature_template SET ScriptName = 'boss_high_nethermancer_zerevor' WHERE entry = 22950; -- Mage at Illidari Council
UPDATE creature_template SET ScriptName = 'boss_gathios_the_shatterer' WHERE entry = 22949; -- Paladin at Illidari Council
UPDATE creature_template SET ScriptName = 'boss_maiev_shadowsong' WHERE entry = 23197; -- Maiev Shadowsong
UPDATE creature_template SET ScriptName = 'mob_blaze' WHERE entry = 23259; -- Blaze mob in Illidan Phase 2
UPDATE creature_template SET ScriptName = 'mob_flame_of_azzinoth' WHERE entry = 22997; -- Flame of Azzinoth (Illidan Phase 2)
UPDATE creature_template SET ScriptName = 'mob_blade_of_azzinoth' WHERE entry = 22996; -- Blade of Azzinoth (Illidan Phase 2)
UPDATE creature_template SET ScriptName = 'mob_demon_fire' WHERE entry = 23069; -- Demon Fire in Illidan Phase 2
UPDATE creature_template SET ScriptName = 'mob_flame_crash' WHERE entry = 23336; -- Flame Crash in Illidan Normal Form
UPDATE creature_template SET ScriptName = 'mob_cage_trap_trigger' WHERE entry = 23304; -- Cage Trap mob in Illidan Phase 3/4 Normal
UPDATE creature_template SET ScriptName = 'mob_shadow_demon' WHERE entry = 23375; -- Shadow Demon in Illidan Demon Form
UPDATE creature_template SET ScriptName = 'npc_volcano' WHERE entry = 23085; -- Supremus Volcano
UPDATE creature_template SET ScriptName = 'molten_flame' WHERE entry = 23095; -- Molten Flame in SUpremus
UPDATE creature_template SET ScriptName = 'mob_ashtongue_channeler' WHERE entry = 23421; -- Ashtongue CHanneler in Shade of AKama
UPDATE creature_template SET ScriptName = 'mob_ashtongue_sorcerer' WHERE entry = 23215; -- Ashtongue Sorcerer in Shade of Akama
UPDATE creature_template SET ScriptName = 'npc_enslaved_soul' WHERE entry = 23469; -- Enslaved Soul in Reliquary Event
UPDATE creature_template SET ScriptName = 'mob_doom_blossom' WHERE entry = 23123; -- Doom Blossoms in Teron Gorefiend's encounter
-- UPDATE creature_template sET ScriptName = 'mob_shadowy_construct' WHERE entry = 23111; -- Shadowy Construct in Teron Gorefiend's encounter. Commented until Mind Control is implemented.
-- UPDATE creature_template SET ScriptName = 'mob_najentus_spine' WHERE entry = 500000; -- Workaround creature for spine in Najentus event

-- 286
-- Items
UPDATE `item_template` SET `ScriptName` = '' WHERE `entry` = 23751; -- Remove script for Skin of Purest Water

-- 289
UPDATE `creature_template` SET `scriptname` = 'npc_creditmarker_visit_with_ancestors' WHERE `entry` IN (18840,18841,18842,18843);

-- EAI updates
-- ScriptDev2 EventAI Mangos DB Release 0.0.2
-- ------------------------------------------

-- Garrick Padfoot
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 103;

-- Defias Thug
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 38;

-- Riverpaw Runt
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 97;

-- Hogger
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 448;

-- Narg The Taskmaster
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 79;

-- Murloc Forager
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 46;

-- Kobold Miner
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 40;

-- Kobold Vermin/Worker/Labourer/Tunneler
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 6;
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 80;
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 257;
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 475;

-- Defias Bandit
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 116;

-- Thorngrin The Tender
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17978;

-- High Botanist Freywinn with Seedlings and Protector (Changed Faction of Seedlings)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17975;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19962;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19969;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19964;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19958;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19953;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 19958;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 19962;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 19964;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 19969;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 19953;

-- Goblin Wood Carver
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 641;

-- Rhahk'zor
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 644;

-- Oggleflint
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11517;

-- Jergosh The Invoker
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11518;

-- Ragefire Trogg
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11318;

-- Earthborer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11320;

-- Searing Blade Cultist
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11322;

-- Searing Blade Enforcer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11323;

-- Searing Blade Warlock
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11324;

-- Kobold Geomancer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 476;

-- Sneed's Shredder
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 642;

-- Quagmirran
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17942;

-- The Black Stalker
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17882;

-- Wrath-Scryer Soccothrates
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 20886;

-- Bazzalan
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11519;

-- Ragefire Shaman
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11319;

-- Young WOlf
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 299;

-- Primal Ooze
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 6557;

-- Zereketh The Unbound
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 20870;

-- Taragaman The Hungerer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 11520;

-- Hazzali Stinger And Hazzali Swarmer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 5450;
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 5451;

-- Full Mana Tombs Trash Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (18313,18311,18317,18331,18312,18309,18314,19307,18315,18429,18394);

-- Hyjal Summit Trash Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17895;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17899;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17897;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17898;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17907;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17905;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17906;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17908;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17916;

-- Commander Sarannis
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17976;

-- Anzu
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 23035;

-- Riverpaw Outrunner
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 478;

-- Karazhan Trash Mobs
UPDATE creature_template SET ScriptName='mob_eventai' WHERE entry IN ( 15547, 15548, 15551, 16411, 16409, 16415, 16407, 16414, 16414, 16408, 16406, 16410, 16425, 17067, 16424, 16460, 16461, 16459, 16171, 16170, 16173, 16174, 16177, 16176, 16178, 16472, 16471, 16473, 16468, 16470, 16481, 16482, 16485, 16488, 16492, 16504, 17283, 16489, 16491, 16530, 16529, 16525, 16540, 16526, 16544, 16545, 16595 );
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 16411;
UPDATE `creature_template` SET `modelid_A` = 10045, `modelid_H` = 10045 WHERE `entry` = 17283;

-- Steam Vault Trash Mobs
UPDATE creature_template SET ScriptName='mob_eventai' WHERE entry IN ( 21694, 17721, 21338, 17800, 17803, 17801, 17805, 17722, 17802, 21696, 21695 );

-- The Underbog Non-Heroic
UPDATE `creature_template` SET `scriptname` = 'mob_eventai' WHERE `entry` IN (17735, 17727, 17726, 17871, 17725, 17734, 17724, 17729, 17771, 17730, 17731, 17732, 19632);

-- Warmaul Shaman
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 18064;
DELETE from creature where id=9637 and map=530;

-- Dalliah The Doomsayer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 20885;

-- Mechanar Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (19168, 20988, 19231, 19716, 19713, 19712, 20990, 19510, 19167, 20059, 19735, 19166);

-- --------------------------
-- ADDITIONS FOR REVISION 002
-- --------------------------

-- Daggerspine Tribe Nagas
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (2595,2370,2369,2368,2371,2596);

-- Gatewatcher Gyro-kill
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19218;

-- Lady Anacondra
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 3671;

-- Mechano-lord Capacitus
UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (20405,19219);
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth`= '8000', `maxhealth` = '8000', `speed`= '0.7', `flags`='2' WHERE `entry`= 20405;

-- Slave Pens Trash Mobs
UPDATE creature_template SET ScriptName='mob_eventai' WHERE entry IN (17964,17959,17957,17938,17961,17958,17940,17963,17960);

-- Dalaran Trash Mobs and a Furblog
DELETE FROM `creature` WHERE `id` in (2540,2623);
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (2358,1920,2271,1912,1914,1915,3577,1867,3987,1913,2272,1888,1889);
UPDATE `creature_template` SET `faction_A` = '76', `faction_H` = '76' WHERE `entry` = 2272;

-- Mennu The Betrayer
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` in (17941,18176,20208,18179,18177);
UPDATE `creature_template` SET `minlevel`='64', `maxlevel` = '64', `maxhealth` = `minhealth`, `mindmg` = '680', `maxdmg` = '760' WHERE `entry`= 17941;
UPDATE `creature_template` SET `minlevel`='64', `maxlevel` = '64', `maxhealth` = `minhealth`, `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0' WHERE `entry` =20208;
UPDATE `creature_template` SET `minlevel`='64', `maxlevel` = '64', `maxhealth` = `minhealth`, `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0' WHERE `entry` =18176;
UPDATE `creature_template` SET `minlevel`='64', `maxlevel` = '64', `maxhealth` = `minhealth`, `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0' WHERE `entry` =18179;
UPDATE `creature_template` SET `minlevel`='64', `maxlevel` = '64', `maxhealth` = `minhealth`, `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0' WHERE `entry` =18177;

-- Dark Conclave Arrokoa
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (21384,19825,19826,21385,19827,21386);

-- Various Turtles
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (4825,3461,4144,4143,4142,13599);

-- Berserk and Ragefire Troggs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (1393,11318);

--  Dark Keepers
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (9438,9439,9437,9443,9442,9441);

-- Darkcrest Naga Tribe
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (18087,19946,19947,18086);

-- Dark Iron Dwarves
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (9445,6212,6228,4062,1054,1051,5839,5840,5844,2577,1222,1052,6523,8566,1169,1053,5846,2575,5840,8637);

-- Dalin Forgewright/Darbel Montrose/Darkhan Drathnir
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (5682,2598,16329);

-- Grulloc Son of Gruul
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 20216;

-- Durn the Hungerer
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 18411;

-- Lord Cobrahn
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 3669;

-- Dark Strand Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (3728,3725,2337,3727,2336);

-- Mad Magglish
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 3655;

-- Warbringer Omrogg
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 16809;

-- Azgalor
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17842;
-- UPDATE `creature_equip_template` SET `equipmodel1` = '39393', `equipmodel2` = '0', `equipmodel3` = '0', `equipinfo1` = '33490434', `equipinfo2` = '0', `equipinfo3` = '0', `equipslot1` = '4', `equipslot2` = '0', `equipslot3` = '0' WHERE `entry` = 17842;
-- UPDATE `creature_equip_template` SET `equipmodel1` = '45776', `equipmodel2` = '0', `equipmodel3` = '0', `equipinfo1` = '33490434', `equipinfo2` = '0', `equipinfo3` = '0', `equipslot1` = '3', `equipslot2` = '0', `equipslot3` = '0' WHERE `entry` = 17888;
-- UPDATE `creature_template` SET `equipment_id` = 17842 WHERE `entry` = 17842;
-- UPDATE `creature_template` SET `equipment_id` = 17842 WHERE `entry` = 17888;

-- Lord Serpentis
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 3673;

-- Verdan the Everliving
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 5775;

-- Deaths Head Quilboar
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (4519,4518,4517,4516,4515,7337,7335,7872,4428);

-- Void Spawner and Collapsing Voidwalker
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (20143,17014);

-- Rage Winterchill
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17767;

-- Akil'zon
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` in (23574,24858);
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '8400', `maxhealth` = '8400', `faction_A` = 14, `faction_H` = 14 WHERE `entry` ='24858';

-- Defias Rogue Wizard
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 474;

-- Lord Pythas
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 3670;

-- Bears
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (8956,8957,8958,6788,1815,1816,17348,7445,5299,17347,1196,5274,7446,2164,7444,743,2163,6789);

-- Bael'dun Dwarves
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (2990,3374,3375,3378,3377);

-- Various Banshees
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (8542, 8541, 8535, 21200, 8540, 16321, 1534, 1804, 12377);

-- The Bash'ir
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (23391,22243,23368,23249,23390,23414,22241,23332,22242,23247,23153);

-- Rest of Wailing Caverns
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` in (3672,3654,3674,3840,5755,5756,3631,3633,5761,3636,5055,5056,5053,3632,5048);

-- All Basilisks
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (11785, 11786, 4044, 690, 20607, 689, 18461, 18463, 5419, 5420, 5421, 20924, 4728, 4729, 1551, 21816, 19730, 21854, 19706, 20280, 20279, 5990, 5991, 4147, 4151, 4150, 20925, 1552, 4041, 4042, 688, 1550);
UPDATE `creature_template` SET `resistance2`='100' WHERE `entry` IN (5990, 5991);

-- Zul'Aman Trash Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` in (23597, 23889, 24179, 23581, 23542, 23584, 23580, 24065, 23596, 24043, 24064, 24530, 24047, 23582, 24225, 24180, 24549, 23834, 23587,23586);

-- Bjarn
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 1130;

-- Baron Aquanis
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 12876;

-- Banthar
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 18259;

-- Bhag'thera
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 728;

-- Beholders
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (20867,20868,21346);

-- Bats
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (3868,11368,8927,16036,1553,4539,16174,16355,8602,8601,8600,16037,10357,16173,4861,1554,16354,16175,3866);
UPDATE `creature_template` SET `resistance5`='105' WHERE `entry` = 16174;

-- Black Dragonkin
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (7047,441,7040,7044,14265,7041,21497,9461,14388);
UPDATE `creature_template` SET `resistance2`= '200', `resistance5` = '200' WHERE `entry` = 14265;
UPDATE `creature_template` SET `resistance2`='150' WHERE `entry` = 7047;
UPDATE `creature_template` SET `resistance2`='125' WHERE `entry` = 7040;
UPDATE `creature_template` SET `resistance2`='125' WHERE `entry` = 7041;

-- Deers
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry`IN (4018,4019,3818,17201,8761);

-- Deathshadow Mobs
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` IN (22341,23393,22362,22363,22343,22393,22394,22342);

-- Deathforge Mobs
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` IN (22295, 20878,19978,20887,19756,19979,20872,19754,22315);

-- Earth Elementals
UPDATE `creature_template` SET `scriptName`='mob_eventai' WHERE `entry` IN (4120,11778,11777,4035,11782,17156,21708,11747,7206,17157,11778,11782,11780,1174,18062,21050,11781);

-- Darrowshire Undead and a few other D Creatures
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` in (18860,4053,14232,11064,10948,10947,18970,19530);

-- Deadwood and Deadwind plus other D Creatures
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` in (13285,5823,19532,7153,7158,7155,7154,7157,7156,7372,17672,7379,7371,7369);

-- More D Creatures
UPDATE `creature_template` SET `scriptname`='mob_eventai' where `entry` in (8302,15196,10077,1911,10827,18647);

-- Assorted "E" Creatures
UPDATE `creature_template` SET `scriptname` = 'mob_eventai' WHERE `entry` IN (23136, 4842, 10642, 1137, 639, 19493, 18197, 6235, 21729, 314);

-- Baron Kazum
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 15205;

-- Baron Rafe Dreuger
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 15205;

-- Battle-Mage Dathric
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19543;

-- Baron Vardus
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 2306;

-- Baron Silverlaine
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 3887;

-- Baroness Dorothea Millstipe
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 19875;

-- Dalmanis the Hated
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 3662;


-- This Section contains Scripts that have Official Custom SD2 Scripts as they take perference over EAI Scripts
-- ------------------------------------------------------------------------------------------------------------

-- Coilfang Water Elemental
-- UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17917;

-- Jadespine Basilisk
-- UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 4863;


-- Cleanup
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` set `flags`=`flags`&~4 where `type` in (2, 19, 17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 and `MovementType` = 1;
UPDATE `creature` SET `spawndist` = 0 WHERE `MovementType` = 0;
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (select `entry` FROM `creature_equip_template`);
UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (select `entry` FROM `creature_equip_template`);
-- And finally db_version UPDATE
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.9.2 (342) with SD2 calls rev.290');
-- END
