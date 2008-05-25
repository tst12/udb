-- Start update pack 349 (hostfix for 0.10.1)

-- Delete some custom crap that has been in the database for a LONG time
DELETE FROM `gameobject_template` WHERE `entry` BETWEEN 300000 and 300007;
-- missing gossips in scholo
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('2600', '', 'You may not pass.  You are not our kin, nor have you issued the challenge.', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48468,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48467,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48466,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48465,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48464,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48463,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48462,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48461,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48460,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48459,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48948,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48949,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48950,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48951,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48952,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48953,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48954,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48955,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48956,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48957,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91312,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91313,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91314,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91315,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91316,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91317,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91318,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91319,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91320,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91321,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91370,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=91371,`textid`=4445;
INSERT IGNORE INTO `npc_gossip` SET `npc_guid`=48805,`textid`=4446;

-- target script spell
INSERT IGNORE INTO `spell_script_target` VALUES (30166, 1, 17257);
INSERT IGNORE INTO `spell_script_target` VALUES (30410, 1, 17257);
INSERT IGNORE INTO `spell_script_target` VALUES (30207, 1, 17257);
DELETE from `gameobject` where `id`=187123;
-- seph
-- sephiroth
-- Winna's Kitten was dropping hallowed ends mask
UPDATE `creature_template` SET `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `lootid` = '0', `skinloot` = '0' WHERE `entry` = '10658';
DELETE FROM `creature_loot_template` WHERE `entry` = '10658';
-- Flimsy masks of Hallowed end event
DELETE FROM `creature_loot_template` WHERE `item` IN ('20573', '20561', '20566', '20570', '20572');
-- Korfax should not have loot
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '16112';
DELETE FROM `creature_loot_template` WHERE `entry` = '16112';
-- Mekgineer Steamrigger bestiary and immunities
UPDATE `creature_template` SET `minhealth` = '103320', `maxhealth` = '103320', `armor` = '7387', `mindmg` = '2091', `maxdmg` = '2957', `rangeattacktime` = '0', `rangedattackpower` = '0', `MovementType` = '0', `mechanic_immune_mask` = `mechanic_immune_mask`|'109543423', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '17796';
UPDATE `creature_template` SET `minlevel` = '72', `maxlevel` = '72', `faction_A` = '14', `faction_H` = '14', `baseattacktime` = '1400', `minhealth` = '103320', `maxhealth` = '103320', `armor` = '7387', `mindmg` = '2091', `maxdmg` = '2957', `rangeattacktime` = '0', `rangedattackpower` = '0', `MovementType` = '0', `mechanic_immune_mask` = `mechanic_immune_mask`|'109543423', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '20630';
-- Gan'arg Analyzer respawntime from offy .
UPDATE `creature` SET `spawntimesecs` = '600' WHERE `id` = '23386';
-- Beacon Torch had faction human player
UPDATE `gameobject_template` SET `faction` = '0' WHERE `entry` = '176093';
-- 2.4 PvP BG rewards
-- Doris Volanthius
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('24520', '35320', '0', '0', '2028'), -- Vindicator's Band of Subjugation
('24520', '35327', '0', '0', '2289'), -- Battlemaster's Alacrity
('24520', '35317', '0', '0', '127'); -- Vindicator's Pendant of Reprieve
-- Lieutenant Tristia
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('23446', '35320', '0', '0', '2028'), -- Vindicator's Band of Subjugation
('23446', '35327', '0', '0', '2289'), -- Battlemaster's Alacrity
('23446', '35317', '0', '0', '127'); -- Vindicator's Pendant of Reprieve
-- The Saga of Terokk correct position (trap included)
UPDATE `gameobject` SET `position_x` = '-83.826736', `position_y` = '268.552064', `animprogress` = '100' WHERE `id` IN ('183997', '183050');
-- Wicker Chest spawns
DELETE FROM `gameobject` WHERE (`id` = '184740');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47237', '184740', '530', '-211.172241', '7320.037598', '57.225140', '0.967150', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47238', '184740', '530', '-198.284790', '7301.591309', '22.885893', '5.805982', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47239', '184740', '530', '-120.267479', '7268.196289', '23.184383', '2.530872', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47240', '184740', '530', '-114.852631', '7168.375000', '23.840525', '4.795966', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47241', '184740', '530', '-100.032425', '7167.497559', '19.208019', '5.160389', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47242', '184740', '530', '-105.529892', '6972.419922', '19.133032', '1.676213', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47243', '184740', '530', '-103.496513', '7017.231934', '23.219490', '5.505029', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47244', '184740', '530', '-129.921066', '6965.453613', '23.545742', '0.966212', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47245', '184740', '530', '-134.075836', '7015.826172', '23.616699', '0.077938', '0', '0', '0.000000', '0.000000', '500', '100', '1'),
('47246', '184740', '530', '-215.460098', '7027.604980', '18.369150', '2.280988', '0', '0', '0.000000', '0.000000', '500', '100', '1');
-- Wicker Chest loot grouped
-- UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE (`entry` = '20890'); -- equal-chanced grouped entry, but group not defined - skipped
-- Wicker Chest trackable with find treasure
UPDATE `gameobject_template` SET `faction` = '94' WHERE `entry` = '184740';
-- Formula: Enchant Cloak - Major Resistance was dropping too easy
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.03' WHERE `item` = '22548';
-- Gan'arg Analyzer was dropping greens very easily
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.08' WHERE (`entry` = '23386') AND (`ChanceOrQuestChance` = '0.5');
-- 2.3 cooking quests exclusive group
UPDATE `quest_template` SET `ExclusiveGroup` = '11377' WHERE `entry` IN ('11380', '11377', '11381', '11379');



-- moar trainer spells
update npc_trainer set spell=33388 where spell=33389; 
update npc_trainer set spell=33391 where spell=33392;
update npc_trainer set spell=7412 where spell=7415 ;
update npc_trainer set spell=7411 where spell=7414 ;
update npc_trainer set spell=13920 where spell=13921 ;
update npc_trainer set spell=7413 where spell=7416;
update npc_trainer set spell=28029 where spell=28030 ;
update npc_trainer set spell=34091 where spell=34093;
update npc_trainer set spell=34090 where spell=34092 ;
update npc_trainer set spell=28695 where spell=28696 ;
update npc_trainer set spell=2368 where spell=2373 ;
update npc_trainer set spell=3570 where spell=3571 ;
update npc_trainer set spell=11993 where spell=11994 ;
update npc_trainer set spell=2366 where spell=2372 ;
update npc_trainer set spell=2259 where spell=2275 ;
update npc_trainer set spell=11611 where spell=11612 ;
update npc_trainer set spell=3464 where spell=3465 ;
update npc_trainer set spell=3101 where spell=2280 ;
update npc_trainer set spell=28596 where spell=28597 ;
update npc_trainer set spell=29844 where spell=29845 ;
update npc_trainer set spell=3100 where spell=2021 ;
update npc_trainer set spell=3538 where spell=3539 ;
update npc_trainer set spell=9785 where spell=9786 ;
update npc_trainer set spell=2018 where spell=2020 ;
update npc_trainer set spell=4036 where spell=4039 ;
update npc_trainer set spell=12656 where spell=12657 ;
update npc_trainer set spell=4038 where spell=4041 ;
update npc_trainer set spell=4037 where spell=4040 ;
update npc_trainer set spell=30350 where spell=30351;
update npc_trainer set spell=2108 where spell=2155 ;
update npc_trainer set spell=10662 where spell=10663 ;
update npc_trainer set spell=3811 where spell=3812;
update npc_trainer set spell=3104 where spell=2154 ;
update npc_trainer set spell=32549 where spell=32550 ;
update npc_trainer set spell=25229 where spell=25245 ;
update npc_trainer set spell=28895 where spell=28899 ;
update npc_trainer set spell=28894 where spell=28896 ;
update npc_trainer set spell=25230 where spell=25246 ;
update npc_trainer set spell=28897 where spell=28901 ;
update npc_trainer set spell=8613 where spell=8615 ;
update npc_trainer set spell=10768 where spell=10769 ;
update npc_trainer set spell=8618 where spell=8620 ;
update npc_trainer set spell=8617 where spell=8619 ;
update npc_trainer set spell=32678 where spell=32679 ;
update npc_trainer set spell=3908 where spell=3911 ;
update npc_trainer set spell=12180 where spell=12181 ;
update npc_trainer set spell=3910 where spell=3913 ;
update npc_trainer set spell=3909 where spell=3912 ;
update npc_trainer set spell=26790 where spell=26791 ;
update npc_trainer set spell=1804 where spell=1809 ;
update npc_trainer set spell=3273 where spell=3279;
update npc_trainer set spell=10846 where spell=10847 ;
update npc_trainer set spell=10846 where spell=19902 ;
update npc_trainer set spell=7924 where spell=19903 ;
update npc_trainer set spell=27028 where spell=27029 ;
update npc_trainer set spell=3274 where spell=3280 ;
update npc_trainer set spell=7620 where spell=7733 ;
update npc_trainer set spell=18248 where spell=18249 ;
update npc_trainer set spell=18248 where spell=19890;
update npc_trainer set spell=7732 where spell=19889 ;
update npc_trainer set spell=33095 where spell=33100 ;
update npc_trainer set spell=2550 where spell=2551 ;
update npc_trainer set spell=18260 where spell=18261 ;
update npc_trainer set spell=18260 where spell=19887 ;
update npc_trainer set spell=3413 where spell=19886 ;
update npc_trainer set spell=3102 where spell=3412;
update npc_trainer set spell=33359 where spell=33361 ;
-- fixes mining trainers
update npc_trainer set spell=2575 where spell=2581 ;
update npc_trainer set spell=2576 where spell=2582 ;
update npc_trainer set spell=3564 where spell=3568 ;
update npc_trainer set spell=29354 where spell=29355 ;
update npc_trainer set spell=10248 where spell=10249 ;
-- more visag
-- Night saber in outlands? :O
DELETE FROM creature WHERE guid = '12767';
DELETE FROM creature_addon WHERE guid = '12767';
DELETE FROM creature_movement WHERE id = '12767';
DELETE FROM game_event_creature WHERE guid = '12767';
DELETE FROM game_event_model_equip WHERE guid = '12767';
-- only 6 left after this cleanup
DELETE FROM creature WHERE guid = '70554';
DELETE FROM creature_addon WHERE guid = '70554';
DELETE FROM creature_movement WHERE id = '70554';
DELETE FROM game_event_creature WHERE guid = '70554';
DELETE FROM game_event_model_equip WHERE guid = '70554';
DELETE FROM creature WHERE guid = '70522';
DELETE FROM creature_addon WHERE guid = '70522';
DELETE FROM creature_movement WHERE id = '70522';
DELETE FROM game_event_creature WHERE guid = '70522';
DELETE FROM game_event_model_equip WHERE guid = '70522';
DELETE FROM creature WHERE guid = '70571';
DELETE FROM creature_addon WHERE guid = '70571';
DELETE FROM creature_movement WHERE id = '70571';
DELETE FROM game_event_creature WHERE guid = '70571';
DELETE FROM game_event_model_equip WHERE guid = '70571';
DELETE FROM creature WHERE guid = '70574';
DELETE FROM creature_addon WHERE guid = '70574';
DELETE FROM creature_movement WHERE id = '70574';
DELETE FROM game_event_creature WHERE guid = '70574';
DELETE FROM game_event_model_equip WHERE guid = '70574';
DELETE FROM creature WHERE guid = '70563';
DELETE FROM creature_addon WHERE guid = '70563';
DELETE FROM creature_movement WHERE id = '70563';
DELETE FROM game_event_creature WHERE guid = '70563';
DELETE FROM game_event_model_equip WHERE guid = '70563';
DELETE FROM creature WHERE guid = '70555';
DELETE FROM creature_addon WHERE guid = '70555';
DELETE FROM creature_movement WHERE id = '70555';
DELETE FROM game_event_creature WHERE guid = '70555';
DELETE FROM game_event_model_equip WHERE guid = '70555';
DELETE FROM creature WHERE guid = '70572';
DELETE FROM creature_addon WHERE guid = '70572';
DELETE FROM creature_movement WHERE id = '70572';
DELETE FROM game_event_creature WHERE guid = '70572';
DELETE FROM game_event_model_equip WHERE guid = '70572';
DELETE FROM creature WHERE guid = '70519';
DELETE FROM creature_addon WHERE guid = '70519';
DELETE FROM creature_movement WHERE id = '70519';
DELETE FROM game_event_creature WHERE guid = '70519';
DELETE FROM game_event_model_equip WHERE guid = '70519';
DELETE FROM creature WHERE guid = '70528';
DELETE FROM creature_addon WHERE guid = '70528';
DELETE FROM creature_movement WHERE id = '70528';
DELETE FROM game_event_creature WHERE guid = '70528';
DELETE FROM game_event_model_equip WHERE guid = '70528';
DELETE FROM creature WHERE guid = '70578';
DELETE FROM creature_addon WHERE guid = '70578';
DELETE FROM creature_movement WHERE id = '70578';
DELETE FROM game_event_creature WHERE guid = '70578';
DELETE FROM game_event_model_equip WHERE guid = '70578';
DELETE FROM creature WHERE guid = '70576';
DELETE FROM creature_addon WHERE guid = '70576';
DELETE FROM creature_movement WHERE id = '70576';
DELETE FROM game_event_creature WHERE guid = '70576';
DELETE FROM game_event_model_equip WHERE guid = '70576';
DELETE FROM creature WHERE guid = '70525';
DELETE FROM creature_addon WHERE guid = '70525';
DELETE FROM creature_movement WHERE id = '70525';
DELETE FROM game_event_creature WHERE guid = '70525';
DELETE FROM game_event_model_equip WHERE guid = '70525';
DELETE FROM creature WHERE guid = '70523';
DELETE FROM creature_addon WHERE guid = '70523';
DELETE FROM creature_movement WHERE id = '70523';
DELETE FROM game_event_creature WHERE guid = '70523';
DELETE FROM game_event_model_equip WHERE guid = '70523';
DELETE FROM creature WHERE guid = '70520';
DELETE FROM creature_addon WHERE guid = '70520';
DELETE FROM creature_movement WHERE id = '70520';
DELETE FROM game_event_creature WHERE guid = '70520';
DELETE FROM game_event_model_equip WHERE guid = '70520';
DELETE FROM creature WHERE guid = '70575';
DELETE FROM creature_addon WHERE guid = '70575';
DELETE FROM creature_movement WHERE id = '70575';
DELETE FROM game_event_creature WHERE guid = '70575';
DELETE FROM game_event_model_equip WHERE guid = '70575';
DELETE FROM creature WHERE guid = '70526';
DELETE FROM creature_addon WHERE guid = '70526';
DELETE FROM creature_movement WHERE id = '70526';
DELETE FROM game_event_creature WHERE guid = '70526';
DELETE FROM game_event_model_equip WHERE guid = '70526';
DELETE FROM creature WHERE guid = '70566';
DELETE FROM creature_addon WHERE guid = '70566';
DELETE FROM creature_movement WHERE id = '70566';
DELETE FROM game_event_creature WHERE guid = '70566';
DELETE FROM game_event_model_equip WHERE guid = '70566';
DELETE FROM creature WHERE guid = '70556';
DELETE FROM creature_addon WHERE guid = '70556';
DELETE FROM creature_movement WHERE id = '70556';
DELETE FROM game_event_creature WHERE guid = '70556';
DELETE FROM game_event_model_equip WHERE guid = '70556';
DELETE FROM creature WHERE guid = '70550';
DELETE FROM creature_addon WHERE guid = '70550';
DELETE FROM creature_movement WHERE id = '70550';
DELETE FROM game_event_creature WHERE guid = '70550';
DELETE FROM game_event_model_equip WHERE guid = '70550';
DELETE FROM creature WHERE guid = '70516';
DELETE FROM creature_addon WHERE guid = '70516';
DELETE FROM creature_movement WHERE id = '70516';
DELETE FROM game_event_creature WHERE guid = '70516';
DELETE FROM game_event_model_equip WHERE guid = '70516';
DELETE FROM creature WHERE guid = '70551';
DELETE FROM creature_addon WHERE guid = '70551';
DELETE FROM creature_movement WHERE id = '70551';
DELETE FROM game_event_creature WHERE guid = '70551';
DELETE FROM game_event_model_equip WHERE guid = '70551';
DELETE FROM creature WHERE guid = '70517';
DELETE FROM creature_addon WHERE guid = '70517';
DELETE FROM creature_movement WHERE id = '70517';
DELETE FROM game_event_creature WHERE guid = '70517';
DELETE FROM game_event_model_equip WHERE guid = '70517';
DELETE FROM creature WHERE guid = '70553';
DELETE FROM creature_addon WHERE guid = '70553';
DELETE FROM creature_movement WHERE id = '70553';
DELETE FROM game_event_creature WHERE guid = '70553';
DELETE FROM game_event_model_equip WHERE guid = '70553';
DELETE FROM creature WHERE guid = '70557';
DELETE FROM creature_addon WHERE guid = '70557';
DELETE FROM creature_movement WHERE id = '70557';
DELETE FROM game_event_creature WHERE guid = '70557';
DELETE FROM game_event_model_equip WHERE guid = '70557';
DELETE FROM creature WHERE guid = '70518';
DELETE FROM creature_addon WHERE guid = '70518';
DELETE FROM creature_movement WHERE id = '70518';
DELETE FROM game_event_creature WHERE guid = '70518';
DELETE FROM game_event_model_equip WHERE guid = '70518';
DELETE FROM creature WHERE guid = '70515';
DELETE FROM creature_addon WHERE guid = '70515';
DELETE FROM creature_movement WHERE id = '70515';
DELETE FROM game_event_creature WHERE guid = '70515';
DELETE FROM game_event_model_equip WHERE guid = '70515';
DELETE FROM creature WHERE guid = '70514';
DELETE FROM creature_addon WHERE guid = '70514';
DELETE FROM creature_movement WHERE id = '70514';
DELETE FROM game_event_creature WHERE guid = '70514';
DELETE FROM game_event_model_equip WHERE guid = '70514';
DELETE FROM creature WHERE guid = '70527';
DELETE FROM creature_addon WHERE guid = '70527';
DELETE FROM creature_movement WHERE id = '70527';
DELETE FROM game_event_creature WHERE guid = '70527';
DELETE FROM game_event_model_equip WHERE guid = '70527';
DELETE FROM creature WHERE guid = '70521';
DELETE FROM creature_addon WHERE guid = '70521';
DELETE FROM creature_movement WHERE id = '70521';
DELETE FROM game_event_creature WHERE guid = '70521';
DELETE FROM game_event_model_equip WHERE guid = '70521';
DELETE FROM creature WHERE guid = '70573';
DELETE FROM creature_addon WHERE guid = '70573';
DELETE FROM creature_movement WHERE id = '70573';
DELETE FROM game_event_creature WHERE guid = '70573';
DELETE FROM game_event_model_equip WHERE guid = '70573';
DELETE FROM creature WHERE guid = '70564';
DELETE FROM creature_addon WHERE guid = '70564';
DELETE FROM creature_movement WHERE id = '70564';
DELETE FROM game_event_creature WHERE guid = '70564';
DELETE FROM game_event_model_equip WHERE guid = '70564';
DELETE FROM creature WHERE guid = '70570';
DELETE FROM creature_addon WHERE guid = '70570';
DELETE FROM creature_movement WHERE id = '70570';
DELETE FROM game_event_creature WHERE guid = '70570';
DELETE FROM game_event_model_equip WHERE guid = '70570';
DELETE FROM creature WHERE guid = '70567';
DELETE FROM creature_addon WHERE guid = '70567';
DELETE FROM creature_movement WHERE id = '70567';
DELETE FROM game_event_creature WHERE guid = '70567';
DELETE FROM game_event_model_equip WHERE guid = '70567';
DELETE FROM creature WHERE guid = '70565';
DELETE FROM creature_addon WHERE guid = '70565';
DELETE FROM creature_movement WHERE id = '70565';
DELETE FROM game_event_creature WHERE guid = '70565';
DELETE FROM game_event_model_equip WHERE guid = '70565';
DELETE FROM creature WHERE guid = '70560';
DELETE FROM creature_addon WHERE guid = '70560';
DELETE FROM creature_movement WHERE id = '70560';
DELETE FROM game_event_creature WHERE guid = '70560';
DELETE FROM game_event_model_equip WHERE guid = '70560';
DELETE FROM creature WHERE guid = '70562';
DELETE FROM creature_addon WHERE guid = '70562';
DELETE FROM creature_movement WHERE id = '70562';
DELETE FROM game_event_creature WHERE guid = '70562';
DELETE FROM game_event_model_equip WHERE guid = '70562';
DELETE FROM creature WHERE guid = '70561';
DELETE FROM creature_addon WHERE guid = '70561';
DELETE FROM creature_movement WHERE id = '70561';
DELETE FROM game_event_creature WHERE guid = '70561';
DELETE FROM game_event_model_equip WHERE guid = '70561';
DELETE FROM creature WHERE guid = '70568';
DELETE FROM creature_addon WHERE guid = '70568';
DELETE FROM creature_movement WHERE id = '70568';
DELETE FROM game_event_creature WHERE guid = '70568';
DELETE FROM game_event_model_equip WHERE guid = '70568';
delete from npc_gossip where npc_guid not in (select guid from creature);
delete from creature where guid in (84764, 84765);
update creature_template_addon set auras='23196 0' where entry in (24708, 24808, 25172, 23746); update creature_template set civilian=1, flags=flags|33554432 where entry in (24708, 24808, 25172, 23746);
update creature_addon set auras='23196 0' where guid in (select guid from creature where id in (24708, 24808, 25172, 23746));
update creature_template_addon set auras=NULL where entry=10504;
update item_template set description='' where entry=33867;
-- hmm hmm bagfamily
UPDATE item_template SET BagFamily=256 WHERE BagFamily=9;
UPDATE item_template SET BagFamily=64 WHERE BagFamily=7;
-- arena tournament event bugged in full dump?
replace into `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `description`) values('33','0000-00-00 00:00:00','0000-00-00 00:00:00','5184000','2592000','Arena Tournament');
-- stupid rat
update creature_model_info set modelid_other_gender=1141 where modelid=2176;
-- scales...
update creature_template set scale=1;
-- invisible attackers are stupid too
delete from creature where id=15214 and map=585;
update creature_template set civilian=1, flags=flags|33554432  where entry in (select entry from creature_template_addon where auras='23196 0') and entry not in (select distinct reqcreatureorgoid1 from quest_template) and entry not in (select distinct reqcreatureorgoid2 from quest_template) and entry not in (select distinct reqcreatureorgoid3 from quest_template) and entry not in (select distinct reqcreatureorgoid4 from quest_template);
update creature_template set civilian=1, flags=flags|33554432  where entry in (select distinct id from creature where guid in (select guid from creature_addon where auras='23196 0')) and entry not in (select distinct reqcreatureorgoid1 from quest_template) and entry not in (select distinct reqcreatureorgoid2 from quest_template) and entry not in (select distinct reqcreatureorgoid3 from quest_template) and entry not in (select distinct reqcreatureorgoid4 from quest_template);
-- vashj stole my loots
UPDATE creature_loot_template SET `MinCountOrRef`=-90062 WHERE `entry`=21212 and `item` IN (90062, 190062);
-- random go changes
update gameobject_template set data0='4' where entry='183821';
update gameobject_template set name='Brackish Mixed School' where entry='182954';
update gameobject_template set name='Kil\'sorrow Armaments' where entry='182355';


-- SD2 Stuff start
-- Sd2 Stuff end

-- Cleanup
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry`;
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
-- DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
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
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.10.1 (349) with SD2 calls rev.351');
-- END
