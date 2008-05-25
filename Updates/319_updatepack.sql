-- Level requirements for outland instances
update `areatrigger_template` set `required_level`=55 where `target_map`= 540; -- Shattered Halls
update `areatrigger_template` set `required_level`=55 where `target_map`= 542; -- Blood Furnace
update `areatrigger_template` set `required_level`=55 where `target_map`= 543; -- Ramparts
update `areatrigger_template` set `required_level`=65 where `target_map`= 544; -- Magtheridons Lair
update `areatrigger_template` set `required_level`=55 where `target_map`= 545; -- Steamvault
update `areatrigger_template` set `required_level`=55 where `target_map`= 546; -- Underbog
update `areatrigger_template` set `required_level`=55 where `target_map`= 547; -- Slave Pens
update `areatrigger_template` set `required_level`=70 where `target_map`= 548; -- SSC
update `areatrigger_template` set `required_level`=70 where `target_map`= 550; -- Tempest Keep
update `areatrigger_template` set `required_level`=67 where `target_map`= 552; -- Arcatraz
update `areatrigger_template` set `required_level`=65 where `target_map`= 553; -- Botanica
update `areatrigger_template` set `required_level`=65 where `target_map`= 554; -- Mechanar
update `areatrigger_template` set `required_level`=65 where `target_map`= 555; -- Shadowlab
update `areatrigger_template` set `required_level`=55 where `target_map`= 556; -- Sethekk Halls
update `areatrigger_template` set `required_level`=55 where `target_map`= 557; -- Mana Tombs
update `areatrigger_template` set `required_level`=55 where `target_map`= 558; -- Auchenai Crypts
update `areatrigger_template` set `required_level`=66 where `target_map`= 560; -- CoT: Durnholde
update `areatrigger_template` set `required_level`=66 where `target_map`= 269; -- CoT: Dark Portal
update `areatrigger_template` set `required_level`=70 where `target_map`= 532; -- Karazhan
update `areatrigger_template` set `required_level`=65 where `target_map`= 565; -- Gruuls Lair
update `areatrigger_template` set `required_level`=70 where `target_map`= 534; -- CoT: Hyal
update `areatrigger_template` set `required_level`=70 where `target_map`= 564; -- Black Temple

-- Exit triggers set to 0
UPDATE `areatrigger_template` SET `required_level` = 0 where trigger_map in (540, 542, 543, 543, 544, 545, 546, 547, 548, 550, 552, 553, 554, 555, 556, 557, 558, 560, 269, 565, 534, 564);
delete from npc_trainer where entry=19539;
insert into npc_trainer values (19539, 25245, 100, 0, 0, 5);
insert into npc_trainer values (19539, 25246, 500, 755, 50, 10);
insert into npc_trainer values (19539, 28896, 5000, 755, 125, 20);
insert into npc_trainer values (19539, 28899, 50000, 755, 200, 35);
insert into npc_trainer values (19539, 28901, 100000, 755, 275, 50);
insert into npc_trainer values (19539, 32177, 100, 755, 20, 5);
insert into npc_trainer values (19539, 26929, 50, 755, 5, 0);
insert into npc_trainer values (19539, 32181, 90, 755, 20, 0);
insert into npc_trainer values (19539, 32180, 90, 755, 20, 0);
insert into npc_trainer values (19539, 25326, 90, 755, 30, 0);
insert into npc_trainer values (19539, 26931, 90, 755, 30, 0);
insert into npc_trainer values (19539, 25647, 180, 755, 50, 0);
insert into npc_trainer values (19539, 25492, 270, 755, 50, 0);
insert into npc_trainer values (19539, 26930, 270, 755, 50, 0);
insert into npc_trainer values (19539, 25491, 180, 755, 50, 0);
insert into npc_trainer values (19539, 21821, 180, 755, 50, 0);
insert into npc_trainer values (19539, 25327, 360, 755, 60, 0);
insert into npc_trainer values (19539, 37819, 450, 755, 65, 0);
insert into npc_trainer values (19539, 25330, 360, 755, 70, 0);
insert into npc_trainer values (19539, 36528, 540, 755, 75, 0);
insert into npc_trainer values (19539, 38176, 585, 755, 80, 0);
insert into npc_trainer values (19539, 25335, 540, 755, 80, 0);
insert into npc_trainer values (19539, 25334, 900, 755, 90, 0);
insert into npc_trainer values (19539, 25336, 720, 755, 100, 0);
insert into npc_trainer values (19539, 36529, 720, 755, 105, 0);
insert into npc_trainer values (19539, 25499, 540, 755, 110, 0);
insert into npc_trainer values (19539, 32822, 540, 755, 110, 0);
insert into npc_trainer values (19539, 25341, 1350, 755, 120, 0);
insert into npc_trainer values (19539, 25629, 1080, 755, 135, 0);
insert into npc_trainer values (19539, 25631, 1350, 755, 150, 0);
insert into npc_trainer values (19539, 25636, 1800, 755, 170, 0);
insert into npc_trainer values (19539, 32823, 1800, 755, 175, 0);
insert into npc_trainer values (19539, 34962, 2250, 755, 180, 0);
insert into npc_trainer values (19539, 25637, 1800, 755, 180, 0);
insert into npc_trainer values (19539, 34963, 2700, 755, 200, 0);
insert into npc_trainer values (19539, 26932, 2250, 755, 200, 0);
insert into npc_trainer values (19539, 26933, 4500, 755, 210, 0);
insert into npc_trainer values (19539, 26934, 2700, 755, 220, 0);
insert into npc_trainer values (19539, 32824, 3150, 755, 225, 0);
insert into npc_trainer values (19539, 26936, 3150, 755, 225, 0);
insert into npc_trainer values (19539, 36530, 3600, 755, 230, 0);
insert into npc_trainer values (19539, 26937, 3600, 755, 235, 0);
insert into npc_trainer values (19539, 26938, 4500, 755, 240, 0);
insert into npc_trainer values (19539, 26941, 9000, 755, 260, 0);
insert into npc_trainer values (19539, 36531, 9000, 755, 265, 0);
insert into npc_trainer values (19539, 26942, 9000, 755, 275, 0);
insert into npc_trainer values (19539, 34964, 9000, 755, 280, 0);
insert into npc_trainer values (19539, 26943, 9000, 755, 280, 0);
insert into npc_trainer values (19539, 26944, 10800, 755, 280, 0);
insert into npc_trainer values (19539, 26945, 13500, 755, 290, 0);
insert into npc_trainer values (19539, 34965, 9000, 755, 290, 0);
insert into npc_trainer values (19539, 26946, 20000, 755, 310, 0);
insert into npc_trainer values (19539, 31171, 20000, 755, 310, 0);
insert into npc_trainer values (19539, 31172, 20000, 755, 310, 0);
insert into npc_trainer values (19539, 31173, 25000, 755, 320, 0);
insert into npc_trainer values (19539, 41416, 10000, 755, 325, 0);
insert into npc_trainer values (19539, 38069, 20000, 755, 325, 0);
insert into npc_trainer values (19539, 41422, 8500, 755, 325, 0);
insert into npc_trainer values (19539, 41417, 10000, 755, 330, 0);
insert into npc_trainer values (19539, 31175, 30000, 755, 335, 0);
insert into npc_trainer values (19539, 31174, 30000, 755, 335, 0);
insert into npc_trainer values (19539, 40516, 30000, 755, 340, 0);
insert into npc_trainer values (19539, 41430, 10000, 755, 350, 0);
insert into npc_trainer values (19539, 41419, 30000, 755, 365, 0);
delete from npc_vendor where entry=19539;
insert into npc_vendor values (19539, 20815, 0, 0);
insert into npc_vendor values (19539, 20284, 0, 0);
update creature set spawndist=0 where id=19539;
update creature_template set movementtype=0 where entry=19539;

DELETE FROM `creature_loot_template` Where `item`='24401';
insert `creature_loot_template` VALUES ('20294','24401','37',0,'1','1','1');
insert `creature_loot_template` VALUES ('20295','24401','37',0,'1','1','1');
insert `creature_loot_template` VALUES ('20447','24401','36',0,'1','1','1');
insert `creature_loot_template` VALUES ('20293','24401','35',0,'1','1','1');
insert `creature_loot_template` VALUES ('20197','24401','25',0,'1','1','1');
insert `creature_loot_template` VALUES ('18212','24401','25',0,'1','1','1');
insert `creature_loot_template` VALUES ('20291','24401','25',0,'1','1','1');
insert `creature_loot_template` VALUES ('18113','24401','25',0,'1','1','1');
insert `creature_loot_template` VALUES ('20387','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18087','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18089','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('19947','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18280','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('19734','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18130','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18127','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18132','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('13136','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18138','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18131','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18135','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18125','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18128','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('19402','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18133','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18286','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18129','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18134','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18137','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18340','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18088','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('19946','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('20088','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('19519','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18086','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18213','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('18124','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('20198','24401','24',0,'1','1','1');
insert `creature_loot_template` VALUES ('20324','24401','23',0,'1','1','1');
insert `creature_loot_template` VALUES ('18282','24401','23',0,'1','1','1');
insert `creature_loot_template` VALUES ('18214','24401','23',0,'1','1','1');
insert `creature_loot_template` VALUES ('18281','24401','23',0,'1','1','1');
insert `creature_loot_template` VALUES ('20089','24401','23',0,'1','1','1');
insert `creature_loot_template` VALUES ('18293','24401','22',0,'1','1','1');
insert `creature_loot_template` VALUES ('20292','24401','20',0,'1','1','1');
insert `creature_loot_template` VALUES ('18122','24401','17',0,'1','1','1');
insert `creature_loot_template` VALUES ('17725','24401','0.4',0,'1','1','1');
insert `creature_loot_template` VALUES ('21694','24401','0.3',0,'1','1','1');
insert `creature_loot_template` VALUES ('17723','24401','0.3',0,'1','1','1');
insert `creature_loot_template` VALUES ('22095','24401','0.1',0,'1','1','1');
DELETE FROM `gameobject_loot_template` Where `item`='24401';
insert `gameobject_loot_template` VALUES ('181275','24401','24',0,'1','1','1');
insert `gameobject_loot_template` VALUES ('142143','24401','7',0,'1','1','1');
insert `gameobject_loot_template` VALUES ('181271','24401','4',0,'1','1','1');
insert `gameobject_loot_template` VALUES ('181270','24401','3',0,'1','1','1');
update quest_template set RequiredMaxRepFaction=942, RequiredMaxRepValue=8999 where entry=9784;
-- Factions for all summoned mobs
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` in (18398, 18399, 18400, 18401, 18402, 18069);

-- Delete the dupes (just a suggestion)
DELETE FROM `creature_template` WHERE `entry`in (183980, 183990, 184000, 184010, 184020, 180690);
delete from `quest_start_scripts` where `id` in (9962, 9967, 9970, 9972, 9973, 9977);
insert into `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(9962,0,0,0,0,'Get in the Ring of Blood, $N. The fight is about to start!',0,0,0,0), -- Brokentoe
(9962,9,0,0,0,'The battle is about to begin!',0,0,0,0),
(9962,13,0,0,0,'$N versus the ferocious clefthoof, Brokentoe!',0,0,0,0),
(9962,15,10,18398,180000,'','-704.669','7871.08','45.0387','1.59531'),
(9967,10,10,18399,180000,'','-704.669','7871.08','45.0387','1.59531'), -- Murkblood Twi.n
(9967,10,10,18399,180000,'','-708.076','7870.41','44.8457','1.59531'), -- Murkblood Twi.n
(9970,10,10,18400,180000,'','-704.669','7871.08','45.0387','1.59531'), -- Rokdar the Sundered Lord
(9972,10,10,18401,180000,'','-704.669','7871.08','45.0387','1.59531'), -- Skra'gath
(9973,10,10,18402,180000,'','-704.669','7871.08','45.0387','1.59531'), -- Warmaul Champion
(9977,10,10,18069,180000,'','-704.669','7871.08','45.0387','1.59531'); -- Mogor

update `quest_template` set `ReqCreatureOrGOId1` = 18398 where `entry`= 9962;
update `quest_template` set `ReqCreatureOrGOId1` = 18399 where `entry`= 9967;
update `quest_template` set `ReqCreatureOrGOId1` = 18400 where `entry`= 9970;
update `quest_template` set `ReqCreatureOrGOId1` = 18401 where `entry`= 9972;
update `quest_template` set `ReqCreatureOrGOId1` = 18402 where `entry`= 9973;
update `quest_template` set `ReqCreatureOrGOId1` = 18069 where `entry`= 9977;

INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES
(10940, -364, 1, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 31907, 0, 0, 'Darkmoon Furies Deck', 'Now that you have gathered all of the Furies cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return these cards to the Darkmoon Faire and be rewarded." You have heard that this faire alternately stops at Mulgore and Goldshire every few months, so you will have to wait until they are here next.', 'Return the Furies Deck to the Darkmoon Faire when it comes to town.', 'So you have put together a deck of Furies. Your gesture of returning it to us will create a tie between you and the Darkmoon that will not soon be forgotten. Allow me to present you with one of the greater Darkmoon cards as a small token of our appreciation.', 'I see that you have managed to complete a deck of Furies! Congratulations!', '', '', '', '', '', 31907, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31858, 0, 0, 0, 1, 0, 0, 0, 909, 0, 0, 0, 0, 350, 0, 0, 0, 0, 0, 3300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1); 
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(14847, 10940);
-- Drake Dealer Hurlunk
DELETE FROM `creature_template` WHERE (`entry`=23489);
INSERT INTO `creature_template` (`entry`, `modelid_A`, `modelid_H`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `ScriptName`) VALUES (23489, 21375, 21375, 'Drake Dealer Hurlunk', '', 70, 70, 8500, 8500, 3155, 3155, 0, 1015, 1015, 4, '1.48', 0, 191, 333, 0, 1836, 1435, 1684, 0, 0, 0, 0, 0, 0, 0, '328.696', '458.231', 100, 7, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 1, 0, '');

DELETE FROM `creature` WHERE `id`=23489;
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(90518,23489,530,0,0,'-5099.16','618.187','85.9062','4.0385',25,0,0,'-5099.16','618.187','85.9062','4.0385',8500,3155,0,0,'');

-- Vendor items
DELETE FROM `npc_vendor` WHERE (`entry`=23489);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(23489, 32857, 0, 0),
(23489, 32858, 0, 0),
(23489, 32859, 0, 0),
(23489, 32860, 0, 0),
(23489, 32861, 0, 0),
(23489, 32862, 0, 0);

-- Required rep for the drakes
UPDATE `item_template` SET `RequiredReputationFaction` = '1015', `RequiredReputationRank` = '7' WHERE `entry` = '32857';
UPDATE `item_template` SET `RequiredReputationFaction` = '1015', `RequiredReputationRank` = '7' WHERE `entry` = '32858';
UPDATE `item_template` SET `RequiredReputationFaction` = '1015', `RequiredReputationRank` = '7' WHERE `entry` = '32859';
UPDATE `item_template` SET `RequiredReputationFaction` = '1015', `RequiredReputationRank` = '7' WHERE `entry` = '32860';
UPDATE `item_template` SET `RequiredReputationFaction` = '1015', `RequiredReputationRank` = '7' WHERE `entry` = '32861';
UPDATE `item_template` SET `RequiredReputationFaction` = '1015', `RequiredReputationRank` = '7' WHERE `entry` = '32862';
DELETE FROM `creature_questrelation` WHERE `quest` = 11076;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11076;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11076;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23149, 11076);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23149;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11076;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11076;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23149, 11076);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23149;
DELETE FROM `quest_template` WHERE `entry` = 11076;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11076, 3520, 70, 70, 0, 1791, 1, 1015, 3000, 0, 0, 0, 0, 1, 11075, 0, 0, 0, 0, 0, 0, 'Picking Up The Pieces...', 'Much of our hard work lies scattered about in these mines. Carts full of cargo are littered across every inch of this mine! We just can\'t get to any of it with the current infestation.$B$BThat\'s where you come in, $N. Your daily duty here at this mine is to collect the cargo left behind by the miners and deep mine workers.$B$BGather the nethermine cargo and return it to me or my sister.$B$BReport to the Mistress of the Mines. They await you at the mouth of the mines, southwest of here.ose to me.', 'The Mistress of the Mines at the Netherwing Mines in Shadowmoon Valley wants you to recover 15 Nethermine Cargo crates.$B', 'Well done, $N. Return tomorrow for another mission into the depths of the mine.', 'Have you gathered the cargo?', '', '', '', '', '', 32723, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 350, 0, 0, 0, 0, 8800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE `quest` = 11075;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11075;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11075;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11075);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11075;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11075;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23149, 11075);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23149;
DELETE FROM `quest_template` WHERE `entry` = 11075;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11075, 3520, 70, 70, 0, 1791, 1, 1015, 3000, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Mistress of the Mines', 'Your help is required at the Netherwing Mines, overseer $N.$B$BTwo days ago our mining operations came to a grinding halt when we made a grim discovery. A miner was working in the depths of the mine and struck his pick upon an unusual crystal formation. Unfortunately, this crystal formation was attached to a very angry nether dragon. The beast woke from its slumber and annihilated all of our workers.$B$BReport to the Mistress of the Mines. They await you at the mouth of the mines, southwest of here, close to me.', 'Seek out the Mistress of the Mines on Netherwing Ledge.$B', '', '', 'The miners are working hard but none dare step foot further into the mines. They choose death rather than being forced to mine deeper! It is going to be your job to carry out the duties and tasks that they failed to complete.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 4400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Overseeing and You: Making the Right Choices
DELETE FROM `creature_questrelation` WHERE `quest` = 11054;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11054;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11054;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23291, 11054);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23291;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11054;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11054;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23291, 11054);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23291;
DELETE FROM `quest_template` WHERE `entry` = 11054;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11054, 3520, 70, 70, 0, 1791, 1, 0, 0, 0, 0, 0, 0, 9, 0, 11055, 0, 11055, 0, 0, 0, 'Overseeing and You: Making the Right Choices', 'So you\'re the new overseer, eh? Well there\'s one thing any good overseer needs and that\'s the proper disciplinary weapon. Before you can go out there and knock some sense into these peons you need to have your piece. Each overseer has to gather the materials required to make their own piece and you\'ll be no different.$B$BI\'ll need knothide leather and the hardened hide of Tyrantus. You\'ll find Tyrantus in Eco-Dome Farfield, located in the northern reaches of Netherstorm. ', 'Chief Overseer Mudlump at the Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 10 pieces of Knothide Leather and 1 Hardened Hide of Tyrantus.$B', 'ARRR! You might make it as an overseer after all. That oversized lizard has been the bane of many an orc!$B$B<Chief Overseer Mudlump begins to fashion the weapon>.', '', '', '', '', '', '', 21887, 32666, 0, 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 11990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- The Booterang: A Cure For The Common Worthless Peon
DELETE FROM `creature_questrelation` WHERE `quest` = 11055;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11055;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11055;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23291, 11055);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23291;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11055;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11055;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23291, 11055);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23291;
DELETE FROM `quest_template` WHERE `entry` = 11055;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11055, 3520, 70, 70, 0, 1791, 1, 0, 0, 0, 0, 0, 0, 9, 11054, 0, 0, 0, 32680, 0, 0, 'The Booterang: A Cure For The Common Worthless Peon', 'This is your booterang. There are many like it but this one is yours.$B$BAs an overseer you will use this booterang to sow terror into the hearts of defiant peons. Proper use of the booterang will instill obedience and ensure subservience.$B$BVenture forth to the crystal fields and discipline any peons that you see slacking off. Show them the might of the booterang!', 'Chief Overseer Mudlump at the Dragonmaw Base Camp in Shadowmoon Valley wants you to discipline 20 lazy Dragonmaw Peons. You will also need to return your Booterang. $B', 'A hard day\'s work! It pays off, though, doesn\'t it? Warms your heart seeing those worthless runts slavering over those crystals... Anyhow, that\'s all for today. Come back tomorrow for another round of booterang discipline. ', 'It\'s all in the wrist, $N. ', '', 'Dragonmaw Peon Disciplined', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22252, 0, 0, 0, 20, 0, 0, 0, 40742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 350, 0, 0, 0, 0, 1109900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Bow to the Highlord
DELETE FROM `creature_questrelation` WHERE `quest` = 11107;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11107;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11107;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11107);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11107;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11107;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23139, 11107);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23139;
DELETE FROM `quest_template` WHERE `entry` = 11107;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11107, 3520, 70, 70, 0, 1791, 1, 1015, 21000, 0, 0, 0, 0, 4, 0, 11108, 0, 11108, 0, 0, 0, 'Bow to the Highlord', 'I am unworthy to even carry a message directed at you, sir. Please forgive me for this indulgence. Overlord Mor\'ghor has requested your presence in his chambers at once!', 'Speak with Overlord Mor\'ghor at Dragonmaw Base Camp in Shadowmoon Valley.$B', '', '', 'You are the first highlord of the Dragonmaw, $N. The master himself has chosen to come here to promote you.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Hail Commander
DELETE FROM `creature_questrelation` WHERE `quest` = 11092;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11092;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11092;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11092);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11092;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11092;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23139, 11092);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23139;
DELETE FROM `quest_template` WHERE `entry` = 11092;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11092, 3520, 70, 70, 0, 1791, 1, 1015, 12000, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Hail, Commander!', 'Captain $N!$B$B<Taskmaster Varkule salutes you.>$B$BOverlord Mor\'ghor has asked to see you in his chambers at once!', 'Speak with Overlord Mor\'ghor at Dragonmaw Base Camp in Shadowmoon Valley.$B', '', '', 'Lord Illidan himself has asked that I promote you to the rank of commander! This is unprecedented. You will be the first Dragonmaw to reach such a rank outside of the Black Temple.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Nethercite Ore
DELETE FROM `creature_questrelation` WHERE `quest` = 11018;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11018;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11018;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11018);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11018;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11018;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23140, 11018);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23140;
DELETE FROM `quest_template` WHERE `entry` = 11018;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11018, 3520, 70, 70, 0, 1791, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nethercite Ore [Mining]', 'A miner!$B$B<Varkule salutes.>$B$BAn orc after my own heart! That\'s how Varkule got his start - minin\'! There ain\'t nothin\' better than getting down and dirty in the mines, is there?$B$BNow get out there and find those nethercite deposits. Strip \'em for all their worth and bring me back the ore.', 'Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 40 Nethercite Ore.', 'You\'re done for today, kid. Come back tomorrow if you\'re still alive.', 'Gug over there is gonna use the ore to reinforce our weapons and armor.', '', '', '', '', '', 32464, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 44000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Netherdust Pollen
DELETE FROM `creature_questrelation` WHERE `quest` = 11017;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11017;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11017;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11017);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11017;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11017;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23140, 11017);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23140;
DELETE FROM `quest_template` WHERE `entry` = 11017;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11017, -24, 70, 70, 0, 1791, 250, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherdust Pollen [Herbalism]', 'No good at nothin\'? That\'s fine. Even lunkheads like you can be used around here. Just find creatures on the ledge and kill \'em. Sometimes they\'ll have nether crystals on their carcasses. Gather those and bring \'em back to me and I\'ll consider your work order for the day complete.$B$BA flower picker?! Hilarious... Unfortunately, our mages and shaman need your services. The netherdust bushes that grow on this ledge have special pollen that is apparently very useful in their magical dealings. Bring me that stuff and I\'ll consider your work order complete.', 'Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 40 Netherdust Pollen.', 'You\'re done for today, kid. Come back tomorrow if you\'re still alive.', 'Like I said, netherdust pollen is used by our spell casters.', '', '', '', '', '', 32468, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 44000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Nethermine Flayer Hide
DELETE FROM `creature_questrelation` WHERE `quest` = 11016;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11016;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11016;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11016);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11016;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11016;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23140, 11016);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23140;
DELETE FROM `quest_template` WHERE `entry` = 11016;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11016, 3520, 70, 70, 0, 1791, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nethermine Flayer Hide [Skinning]', 'A skinner, eh? Well you\'ll find plenty to skin here! You gotta search for flayers around crystal formations. Take \'em down and take their hides. Sometimes they\'ll have a hide worth keepin\'. Bring those to me.', 'Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 35 Nethermine Flayer Hides.', 'You\'re done for today, kid. Come back tomorrow if you\'re still alive.', 'We use the flayer hides for armor lining and structural tarps.', '', '', '', '', '', 32470, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 44000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Netherwing Crystals
DELETE FROM `creature_questrelation` WHERE `quest` = 11015;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11015;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11015;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11015);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11015;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11015;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23140, 11015);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23140;
DELETE FROM `quest_template` WHERE `entry` = 11015;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11015, 3520, 70, 70, 0, 1791, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherwing Crystals', 'No good at nothin\'? That\'s fine. Even lunkheads like you can be used around here. Just find creatures on the ledge and kill \'em. Sometimes they\'ll have nether crystals on their carcasses. Gather those and bring \'em back to me and I\'ll consider your work order for the day complete.', 'Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 40 Netherwing Crystals.', 'You\'re done for today, kid. Come back tomorrow if you\'re still alive.', 'Nether crystals are used for lots of things. Mainly makin\' weapons and armor...', '', '', '', '', '', 32427, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 44000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Rise, Overseer!
DELETE FROM `creature_questrelation` WHERE `quest` = 11053;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11053;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11053;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11053);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11053;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11053;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23139, 11053);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23139;
DELETE FROM `quest_template` WHERE `entry` = 11053;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11053, 3520, 70, 70, 0, 1791, 1, 1015, 3000, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Rise, Overseer!', 'Rare it is that a peon survives for as long as you have. Rarer still is when a peon rises from the dregs to attain a new rank.$B$B<Varkule claps.>$B$BThe Overlord has called for you, grunt. A new rank awaits, no doubt.', 'Speak with Overlord Mor\'ghor at Dragonmaw Base Camp in Shadowmoon Valley.', '', '', 'I have been following your activities closely, $N. You have proven to be an invaluable asset to Dragonmaw. With that said, I am going to promote you to Overseer. With that rank comes new responsibilities that you must fulfill.$B$BRise, Overseer $N! Rise and seek out those that need your assistance at the base camp.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32694, 0, 0, 0, 1, 0, 0, 0, 1015, 0, 0, 0, 0, 250, 0, 0, 0, 0, 4400, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Stand Tall, Captain!
DELETE FROM `creature_questrelation` WHERE `quest` = 11084;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11084;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11084;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (23140, 11084);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 23140;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11084;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11084;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23139, 11084);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=23139;
DELETE FROM `quest_template` WHERE `entry` = 11084;
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11084, 3520, 70, 70, 0, 1791, 1, 1015, 6000, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Stand Tall, Captain!', 'Well, well, well... still alive I see. That\'s good, because Mor\'ghor has requested your presence in his tower at once. Get a move on!', 'Speak with Overlord Mor\'ghor at Dragonmaw Base Camp in Shadowmoon Valley.$B', '', '', '<Mor\'ghor nods.>$B$BThat\'s right, I said captain. You\'ve earned another promotion, $N.$B$BYou certainly don\'t work like any fel orc I\'ve ever seen. Keep this up and you might make overlord some day.$B$BNow get out there and take command. I would suggest you try and earn your Skybreaker wings.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32695, 0, 0, 0, 1, 0, 0, 0, 1015, 0, 0, 0, 0, 500, 0, 0, 0, 0, 4400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Netherwing Ally
DELETE FROM `creature_template` WHERE (`entry`=23320);
INSERT INTO creature_template (entry, modelid_A, modelid_H, name, subname, minlevel, maxlevel, minhealth, maxhealth, minmana, maxmana, armor, faction_A, faction_H, npcflag, speed, rank, mindmg, maxdmg, dmgschool, attackpower, baseattacktime, rangeattacktime, flags, dynamicflags, family, trainer_type, trainer_spell, class, race, minrangedmg, maxrangedmg, rangedattackpower, type, civilian, flag1, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, mingold, maxgold, AIName, MovementType, InhabitType, RacialLeader, RegenHealth, equipment_id, ScriptName) VALUES (23320, 20138, 20138, "Netherwing Ally", "", 70, 70, 5400, 5400, 3080, 3080, 0, 32, 32, 0, 1.48, 0, 180, 250, 0, 557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47.931, 61.831, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25055, 0, 0, 0, 0, 0, "", 1, 3, 0, 1, 0, "");
UPDATE `creature_template` SET `faction_a` = '62', `faction_h` = '62' WHERE `entry` IN (23291, 23140, 23139, 23489);

UPDATE `gameobject_template` SET `name`='Arcane Container' WHERE `entry`=182198;
DELETE FROM gameobject WHERE id = 183511 and map = 552;
-- Many gameobject correction and translation
UPDATE `gameobject_template` SET `name`='Wanted Poster',`sound8`='1' WHERE `entry`=68;
UPDATE `gameobject_template` SET `name`='WANTED',`sound8`='1' WHERE `entry`=256;
UPDATE `gameobject_template` SET `name`='Guarded Thunder Ale Barrel' WHERE `entry`=269;
UPDATE `gameobject_template` SET `name`='Unguarded Thunder Ale Barrel' WHERE `entry`=270;
UPDATE `gameobject_template` SET `displayid`='17',`name`='Wanted!',`sound8`='1' WHERE `entry`=711;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=1557;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=1586;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1633;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1634;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1639;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1643;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1644;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1645;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=1662;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=1720;
UPDATE `gameobject_template` SET `sound0`='259' WHERE `entry`=1723;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=1739;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=1740;
UPDATE `gameobject_template` SET `sound1`='0' WHERE `entry`=1761;
UPDATE `gameobject_template` SET `name`='WANTED',`sound8`='1' WHERE `entry`=1763;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=1765;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=1766;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1801;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1803;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1804;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1805;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1806;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1817;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1818;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1819;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1820;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1821;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1859;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1864;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1866;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1867;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1869;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1871;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1877;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1880;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1881;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1882;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1892;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1894;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1901;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1902;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1903;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1904;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1905;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1906;
UPDATE `gameobject_template` SET `name`='Cooking Fire' WHERE `entry`=1915;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1930;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1931;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1932;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1957;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1958;
UPDATE `gameobject_template` SET `name`='Firepit' WHERE `entry`=1967;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1971;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1972;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1975;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1976;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1979;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=1984;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2003;
UPDATE `gameobject_template` SET `name`='Smoldering Fire' WHERE `entry`=2004;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=2008;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2033;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2034;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2035;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2036;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2037;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2038;
UPDATE `gameobject_template` SET `sound0`='39' WHERE `entry`=2054;
UPDATE `gameobject_template` SET `sound0`='38' WHERE `entry`=2055;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=2333;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2334;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2336;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=2554;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=2555;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=2560;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=2656;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2661;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2663;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2665;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=2666;
UPDATE `gameobject_template` SET `sound2`='1',`sound3`='0' WHERE `entry`=2707;
UPDATE `gameobject_template` SET `sound2`='1',`sound3`='0' WHERE `entry`=2709;
UPDATE `gameobject_template` SET `sound2`='1',`sound3`='0' WHERE `entry`=2710;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=2713;
UPDATE `gameobject_template` SET `type`='10',`name`='Runed Pedestal' WHERE `entry`=2715;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=2843;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=2845;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=2846;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=2852;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=2855;
UPDATE `gameobject_template` SET `sound0`='43' WHERE `entry`=2907;
UPDATE `gameobject_template` SET `name`='Wildmane Water Pump' WHERE `entry`=2909;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2970;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2977;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=2978;
UPDATE `gameobject_template` SET `sound1`='0',`sound2`='0' WHERE `entry`=3189;
UPDATE `gameobject_template` SET `sound1`='0',`sound2`='0' WHERE `entry`=3190;
UPDATE `gameobject_template` SET `sound1`='0',`sound2`='0' WHERE `entry`=3192;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=3196;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=3197;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=3222;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=3223;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=3225;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=3234;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=3239;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3246;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3254;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3256;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3258;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3262;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=3265;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3266;
UPDATE `gameobject_template` SET `name`='Roaring Fire' WHERE `entry`=3286;
UPDATE `gameobject_template` SET `name`='Scorching Fire' WHERE `entry`=3296;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3298;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3301;
UPDATE `gameobject_template` SET `name`='Warm Fire' WHERE `entry`=3303;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3306;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3307;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3310;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3311;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=3314;
UPDATE `gameobject_template` SET `type`='8' WHERE `entry`=3315;
UPDATE `gameobject_template` SET `type`='10' WHERE `entry`=3525;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3636;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3637;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3638;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3639;
UPDATE `gameobject_template` SET `sound1`='2575' WHERE `entry`=3694;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=3714;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=3715;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3716;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3717;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3718;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3723;
UPDATE `gameobject_template` SET `name`='Peacebloom' WHERE `entry`=3724;
UPDATE `gameobject_template` SET `name`='Silverleaf' WHERE `entry`=3725;
UPDATE `gameobject_template` SET `name`='Earthroot' WHERE `entry`=3726;
UPDATE `gameobject_template` SET `name`='Mageroyal' WHERE `entry`=3727;
UPDATE `gameobject_template` SET `name`='Briarthorn' WHERE `entry`=3729;
UPDATE `gameobject_template` SET `name`='Bruiseweed' WHERE `entry`=3730;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=3740;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3770;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3832;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3833;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3834;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3835;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3836;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3837;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=3838;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3839;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3840;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3841;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3842;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3843;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3844;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3845;
UPDATE `gameobject_template` SET `displayid`='408' WHERE `entry`=3847;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3912;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3913;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3914;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3915;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3916;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3917;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3918;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3919;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3920;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=3921;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3922;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3923;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3924;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3925;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3926;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3927;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3928;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3929;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3930;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3931;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3932;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3933;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=3934;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3963;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=3964;
UPDATE `gameobject_template` SET `name`='WANTED',`sound8`='1' WHERE `entry`=3972;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=4096;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=4149;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=5619;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=5620;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=5621;
UPDATE `gameobject_template` SET `name`='',`sound0`='4',`sound2`='2061' WHERE `entry`=6286;
UPDATE `gameobject_template` SET `name`='',`sound0`='4',`sound2`='2061' WHERE `entry`=6287;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=6288;
UPDATE `gameobject_template` SET `sound0`='43' WHERE `entry`=11714;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12897;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12898;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12899;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12901;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12902;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12904;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12907;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12908;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=12909;
UPDATE `gameobject_template` SET `name`='Azshara' WHERE `entry`=13358;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=17190;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=17191;
UPDATE `gameobject_template` SET `sound0`='43' WHERE `entry`=17282;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=17284;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=18043;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18047;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18048;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18049;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18050;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18051;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18052;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18053;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18054;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18055;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18056;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18057;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18058;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18059;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18060;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18061;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=18062;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=18063;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=18064;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=18084;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=18085;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=18340;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=18341;
UPDATE `gameobject_template` SET `name`='Crackling Campfire' WHERE `entry`=18596;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=18644;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=18645;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=18930;
UPDATE `gameobject_template` SET `name`='Box of Assorted Parts' WHERE `entry`=19020;
UPDATE `gameobject_template` SET `name`='Rusty Chest' WHERE `entry`=19021;
UPDATE `gameobject_template` SET `name`='Worn Chest' WHERE `entry`=19022;
UPDATE `gameobject_template` SET `name`='Scarlet Watch Post' WHERE `entry`=19028;
UPDATE `gameobject_template` SET `type`='10',`name`='Mound of Dirt' WHERE `entry`=19030;
UPDATE `gameobject_template` SET `name`='The Barrens' WHERE `entry`=19033;
UPDATE `gameobject_template` SET `name`='Compendium of the Fallen' WHERE `entry`=19283;
UPDATE `gameobject_template` SET `name`='Mythology of the Titans' WHERE `entry`=19284;
UPDATE `gameobject_template` SET `name`='Anton\'s Letter of Commendation' WHERE `entry`=19534;
UPDATE `gameobject_template` SET `name`='Serpentbloom' WHERE `entry`=19535;
UPDATE `gameobject_template` SET `name`='Crackling Campfire' WHERE `entry`=19536;
UPDATE `gameobject_template` SET `name`='Deepmoss Eggs' WHERE `entry`=19541;
UPDATE `gameobject_template` SET `name`='Deepmoss Eggs' WHERE `entry`=19542;
UPDATE `gameobject_template` SET `name`='Jin\'Zil\'s Smoke' WHERE `entry`=19544;
UPDATE `gameobject_template` SET `name`='The Oracle Glade' WHERE `entry`=19545;
UPDATE `gameobject_template` SET `name`='Dolanaar' WHERE `entry`=19546;
UPDATE `gameobject_template` SET `type`='0',`name`='Venture Co. Explosives Wagon' WHERE `entry`=19547;
UPDATE `gameobject_template` SET `displayid`='435' WHERE `entry`=19552;
UPDATE `gameobject_template` SET `name`='Greatwood Vale' WHERE `entry`=19553;
UPDATE `gameobject_template` SET `name`='Stonetalon Peak' WHERE `entry`=19554;
UPDATE `gameobject_template` SET `name`='Windshear Crag' WHERE `entry`=19555;
UPDATE `gameobject_template` SET `name`='The Charred Vale' WHERE `entry`=19556;
UPDATE `gameobject_template` SET `name`='Welcome' WHERE `entry`=19557;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19558;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19559;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19560;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19561;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19562;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19563;
UPDATE `gameobject_template` SET `name`='Greatwood Vale' WHERE `entry`=19564;
UPDATE `gameobject_template` SET `name`='Desolace' WHERE `entry`=19566;
UPDATE `gameobject_template` SET `name`='Stonetalon Peak' WHERE `entry`=19567;
UPDATE `gameobject_template` SET `name`='The Barrens' WHERE `entry`=19568;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19569;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19570;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19571;
UPDATE `gameobject_template` SET `name`='Desolace' WHERE `entry`=19572;
UPDATE `gameobject_template` SET `name`='Stonetalon Peak' WHERE `entry`=19573;
UPDATE `gameobject_template` SET `name`='Windshear Crag' WHERE `entry`=19574;
UPDATE `gameobject_template` SET `name`='Greatwood Vale' WHERE `entry`=19575;
UPDATE `gameobject_template` SET `name`='The Barrens' WHERE `entry`=19576;
UPDATE `gameobject_template` SET `name`='The Charred Vale' WHERE `entry`=19577;
UPDATE `gameobject_template` SET `name`='Sun Rock Retreat' WHERE `entry`=19583;
UPDATE `gameobject_template` SET `name`='Venture Co. Stonetalon Mtns. Project' WHERE `entry`=19585;
UPDATE `gameobject_template` SET `name`='The Toxic Fogger' WHERE `entry`=19586;
UPDATE `gameobject_template` SET `name`='Venture Co. Wagon Trap' WHERE `entry`=19590;
UPDATE `gameobject_template` SET `name`='Venture Co. Wagon (Blue)' WHERE `entry`=19591;
UPDATE `gameobject_template` SET `name`='Venture Co. Copter Pad' WHERE `entry`=19594;
UPDATE `gameobject_template` SET `name`='Gatekeeper\'s Hold' WHERE `entry`=19595;
UPDATE `gameobject_template` SET `name`='Sleepers\' Cache' WHERE `entry`=19596;
UPDATE `gameobject_template` SET `name`='Druids\' Cache' WHERE `entry`=19597;
UPDATE `gameobject_template` SET `name`='Barrow Cache' WHERE `entry`=19598;
UPDATE `gameobject_template` SET `name`='Talon Den Hoard',`sound0`='93',`sound1`='615' WHERE `entry`=19599;
UPDATE `gameobject_template` SET `name`='Venture Co. Wagon (Red)' WHERE `entry`=19600;
UPDATE `gameobject_template` SET `displayid`='440' WHERE `entry`=19602;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=19858;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20693;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=20725;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=20727;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=20738;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=20739;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20810;
UPDATE `gameobject_template` SET `name`='Crackling Campfire' WHERE `entry`=20850;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20873;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20874;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20875;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20876;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20879;
UPDATE `gameobject_template` SET `name`='Flickering Campfire' WHERE `entry`=20881;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20918;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=20923;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20926;
UPDATE `gameobject_template` SET `sound2`='2061' WHERE `entry`=20960;
UPDATE `gameobject_template` SET `sound2`='2061' WHERE `entry`=20961;
UPDATE `gameobject_template` SET `sound2`='2061' WHERE `entry`=20963;
UPDATE `gameobject_template` SET `type`='8' WHERE `entry`=20969;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=20983;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=21042;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=21127;
UPDATE `gameobject_template` SET `name`='Merchant Chair' WHERE `entry`=22248;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22250;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22251;
UPDATE `gameobject_template` SET `name`='Head Chair' WHERE `entry`=22253;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22254;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22255;
UPDATE `gameobject_template` SET `name`='War Room Chair' WHERE `entry`=22257;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22258;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22259;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22260;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22261;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22262;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22569;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22576;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22577;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22639;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22647;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22648;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22649;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22650;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22651;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22652;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22654;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22658;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22664;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22719;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22727;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22734;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22736;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=22737;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=22738;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22741;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22744;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22751;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=22753;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22754;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=22755;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=22911;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=22928;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=22929;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=23571;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=23573;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=23574;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=23879;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=23880;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=23881;
UPDATE `gameobject_template` SET `name`='Highback Chair' WHERE `entry`=24568;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=24723;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=24724;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=24725;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=24726;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=24728;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=24729;
UPDATE `gameobject_template` SET `displayid`='11' WHERE `entry`=24776;
UPDATE `gameobject_template` SET `name`='Basic Campfire' WHERE `entry`=29784;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=35594;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=35595;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=35596;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=35597;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=35598;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=35844;
UPDATE `gameobject_template` SET `sound2`='0' WHERE `entry`=36645;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37032;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37033;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37034;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37035;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37036;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37037;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=37038;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=37051;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37089;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37090;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37091;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37092;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37093;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37094;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37095;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=37096;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=38028;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=38029;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=40197;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=40301;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=41185;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=41187;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=41189;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=41192;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=41194;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48411;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48414;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48443;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48451;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48455;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48460;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48471;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48518;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48519;
UPDATE `gameobject_template` SET `name`='Dwarven Campfire' WHERE `entry`=48556;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=50831;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=50986;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=50989;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=51708;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=56809;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=56810;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59853;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59854;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59855;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59856;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59857;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59858;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59859;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59860;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59861;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59862;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59863;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59864;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=59865;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=59990;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61040;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61041;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61042;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61043;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61044;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61045;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61046;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61047;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61048;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61049;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61050;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61052;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61060;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61065;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61066;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61069;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61087;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61091;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=61092;
UPDATE `gameobject_template` SET `sound1`='952',`sound2`='2',`sound3`='0' WHERE `entry`=61934;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=65407;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69421;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69423;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69424;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69425;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69428;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69429;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69430;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69431;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69433;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69434;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69436;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69437;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=69438;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=74076;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=74443;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=74447;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=74448;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=75295;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=75296;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=75297;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=75299;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=75300;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=88496;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=88498;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=91672;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=91738;
UPDATE `gameobject_template` SET `name`='Grimand\'s Anvil' WHERE `entry`=92011;
UPDATE `gameobject_template` SET `sound2`='0' WHERE `entry`=92065;
UPDATE `gameobject_template` SET `sound2`='0' WHERE `entry`=92066;
UPDATE `gameobject_template` SET `sound2`='0' WHERE `entry`=92067;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=92098;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=92424;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=92458;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=94183;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=94184;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=94187;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=94188;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=94191;
UPDATE `gameobject_template` SET `name`='Fine Chair' WHERE `entry`=97801;
UPDATE `gameobject_template` SET `type`='10',`sound0`='0' WHERE `entry`=100028;
UPDATE `gameobject_template` SET `name`='Schamanenschrein' WHERE `entry`=101750;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101835;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101836;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101837;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101838;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101839;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101840;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101841;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101842;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101843;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101844;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101845;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101846;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101847;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101848;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=101849;
UPDATE `gameobject_template` SET `sound0`='38' WHERE `entry`=103713;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=103749;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=103750;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=103770;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=103771;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=103772;
UPDATE `gameobject_template` SET `name`='',`sound0`='4' WHERE `entry`=103773;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=103811;
UPDATE `gameobject_template` SET `sound0`='40' WHERE `entry`=105569;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=105570;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=105578;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=105579;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=105581;
UPDATE `gameobject_template` SET `name`='Wassersäuberungs-Aura' WHERE `entry`=106529;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=110231;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=110232;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=110234;
UPDATE `gameobject_template` SET `name`='Tattered Chest',`sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=111095;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=111149;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=111969;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112051;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112052;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112053;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112054;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112055;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112058;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112059;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112060;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=112061;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112062;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112065;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112066;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112070;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112071;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112072;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=112112;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=112192;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112194;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112195;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112196;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112197;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112198;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112199;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112202;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112216;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112217;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=112223;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=112881;
UPDATE `gameobject_template` SET `name`='Brightly Colored Egg' WHERE `entry`=113769;
UPDATE `gameobject_template` SET `name`='Brightly Colored Egg' WHERE `entry`=113771;
UPDATE `gameobject_template` SET `name`='Kohlenpfanne von Everfount',`sound1`='1630' WHERE `entry`=113791;
UPDATE `gameobject_template` SET `name`='Foundry Anvil' WHERE `entry`=123211;
UPDATE `gameobject_template` SET `type`='0' WHERE `entry`=124371;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=126337;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=126338;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=126339;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=126340;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=126341;
UPDATE `gameobject_template` SET `name`='',`sound0`='2061' WHERE `entry`=126342;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=126345;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=131978;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=131979;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136932;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136933;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136934;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136935;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=136936;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=136937;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=136938;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136939;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136940;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136941;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136942;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136943;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=136944;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=136947;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=136965;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=136966;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='31442' WHERE `entry`=140113;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=140211;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=140212;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=140357;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=140359;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=140360;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140373;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140374;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140375;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140376;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140378;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140379;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140380;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140381;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140382;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140383;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140384;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140385;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140386;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140387;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140388;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140389;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140390;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140391;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140392;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140393;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140394;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140395;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140396;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140397;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140398;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140399;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140400;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140401;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140402;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=140403;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=140439;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=141813;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=141840;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=141841;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=141843;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='31442' WHERE `entry`=141845;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=141871;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=141971;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=141972;
UPDATE `gameobject_template` SET `sound15`='1' WHERE `entry`=141979;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=141980;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142073;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=142077;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=142078;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142079;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=142090;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=142101;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142118;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='31442' WHERE `entry`=142121;
UPDATE `gameobject_template` SET `name`='Wanted Poster',`sound8`='1' WHERE `entry`=142122;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142123;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142124;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142131;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=142184;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142196;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142197;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142198;
UPDATE `gameobject_template` SET `name`='Gnome Face 01' WHERE `entry`=142211;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142342;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142343;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142345;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142475;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142476;
UPDATE `gameobject_template` SET `name`='Doodad_G_HologramTrogg01' WHERE `entry`=142488;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142690;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142691;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142695;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142696;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142703;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142704;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142705;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142708;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142709;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142710;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142711;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142712;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=142714;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=142965;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=142966;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=142967;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142968;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142969;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142976;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142977;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142978;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=142979;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=142980;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=143397;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=143398;
UPDATE `gameobject_template` SET `type`='10' WHERE `entry`=144070;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=144181;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=147065;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147436;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147437;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147438;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147439;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147440;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147441;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147442;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147443;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147444;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147445;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147446;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147447;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147448;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147449;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=147450;
UPDATE `gameobject_template` SET `sound0`='520' WHERE `entry`=148419;
UPDATE `gameobject_template` SET `sound0`='520' WHERE `entry`=148420;
UPDATE `gameobject_template` SET `sound0`='520' WHERE `entry`=148421;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148666;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148672;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148673;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148676;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148679;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148681;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148685;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148687;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148688;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148689;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148735;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148736;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148739;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148750;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148751;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148753;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148756;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148757;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148759;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148760;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148761;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=148763;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148771;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148772;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148781;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148782;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148790;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148795;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148796;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148801;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148807;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148811;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148812;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148813;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148814;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148815;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148816;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148817;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148818;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=148840;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=148841;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=148876;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=148877;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=148878;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=148879;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=148880;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148956;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148957;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148958;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=148959;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=148960;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=149049;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=149420;
UPDATE `gameobject_template` SET `name`='Wanted Poster',`sound8`='1' WHERE `entry`=150075;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=150713;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=152035;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=152043;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=152044;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=152045;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=152046;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=152097;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=152098;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=152324;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=152581;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=152582;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=152587;
UPDATE `gameobject_template` SET `sound0`='70' WHERE `entry`=152608;
UPDATE `gameobject_template` SET `sound0`='70' WHERE `entry`=152618;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=152619;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153350;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153399;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153400;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153402;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=153451;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=153453;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=153454;
UPDATE `gameobject_template` SET `sound15`='1' WHERE `entry`=153464;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=153468;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=153469;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153482;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153516;
UPDATE `gameobject_template` SET `type`='10' WHERE `entry`=153556;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153580;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153581;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153582;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=153584;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=157936;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158546;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158547;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158548;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158549;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158550;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158551;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158552;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158553;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158554;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158555;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158556;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158557;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158558;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158559;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158560;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158561;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158562;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158563;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158564;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158565;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158566;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158567;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158568;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158569;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158570;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158571;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158572;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158576;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158579;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158581;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158582;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158583;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158584;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158585;
UPDATE `gameobject_template` SET `sound0`='2' WHERE `entry`=158608;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158678;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158679;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=158680;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=160409;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=160410;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=160411;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=160418;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=160419;
UPDATE `gameobject_template` SET `sound0`='4' WHERE `entry`=160420;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=160445;
UPDATE `gameobject_template` SET `type`='8' WHERE `entry`=160839;
UPDATE `gameobject_template` SET `type`='0' WHERE `entry`=161460;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=161523;
UPDATE `gameobject_template` SET `name`='ArenaGate01' WHERE `entry`=161525;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=164689;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive01' WHERE `entry`=164726;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=164728;
UPDATE `gameobject_template` SET `type`='2',`sound8`='1' WHERE `entry`=164867;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=164868;
UPDATE `gameobject_template` SET `type`='10',`sound0`='259',`sound10`='15366' WHERE `entry`=164882;
UPDATE `gameobject_template` SET `sound0`='1714' WHERE `entry`=164888;
UPDATE `gameobject_template` SET `name`='Zeppelin Landing ' WHERE `entry`=165558;
UPDATE `gameobject_template` SET `name`='monastery chair' WHERE `entry`=165618;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=167284;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=167288;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=167289;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=169217;
UPDATE `gameobject_template` SET `displayid`='1387',`sound11`='1',`sound15`='1' WHERE `entry`=169243;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=169294;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=169996;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=169997;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=169998;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=169999;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170000;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170055;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170056;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170057;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170058;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170059;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170060;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170061;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170062;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170063;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170064;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170065;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=170066;
UPDATE `gameobject_template` SET `name`='Doodad_G_HologramDwarf01' WHERE `entry`=170353;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170440;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170441;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170442;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170443;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170444;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170445;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170446;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170447;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170448;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170449;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170450;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170451;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170452;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=170453;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170454;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170455;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170456;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170457;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170458;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170459;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170460;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170461;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170462;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170463;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170464;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170465;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170466;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170467;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170468;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170469;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170470;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170471;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170516;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170517;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170518;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170519;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170520;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170521;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=170522;
UPDATE `gameobject_template` SET `name`='Doodad_BurningGiantWheel01' WHERE `entry`=170555;
UPDATE `gameobject_template` SET `name`='Doodad_BlackRockDoors01' WHERE `entry`=170556;
UPDATE `gameobject_template` SET `name`='Doodad_BlackRockDoorSingle01' WHERE `entry`=170557;
UPDATE `gameobject_template` SET `name`='Doodad_BlackRockIronDoor02' WHERE `entry`=170572;
UPDATE `gameobject_template` SET `name`='Doodad_BlackRockDoors02' WHERE `entry`=170576;
UPDATE `gameobject_template` SET `name`='Doodad_BlackRockDoors03' WHERE `entry`=170577;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_A01' WHERE `entry`=170578;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_B01' WHERE `entry`=170579;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_C01' WHERE `entry`=170580;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_D01' WHERE `entry`=170581;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_E01' WHERE `entry`=170582;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_F01' WHERE `entry`=170583;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_G01' WHERE `entry`=170584;
UPDATE `gameobject_template` SET `name`='Potbelly Stove' WHERE `entry`=171742;
UPDATE `gameobject_template` SET `name`='Potbelly Stove' WHERE `entry`=171743;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173006;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173016;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173017;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173018;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173021;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173024;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173025;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173044;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173056;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173080;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173081;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173082;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173086;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173162;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173180;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173181;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173182;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173183;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173187;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173188;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173189;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173191;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173192;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173193;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=173196;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173202;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173203;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173216;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173217;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173219;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173220;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=173222;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15342' WHERE `entry`=173326;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174407;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174408;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174409;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174410;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174411;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174412;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174413;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174414;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174415;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174416;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174417;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174418;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174419;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174420;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174421;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174422;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174423;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174424;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174425;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174426;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174427;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174428;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174429;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174430;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174431;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174432;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174433;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174434;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174435;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174436;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174437;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174438;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174439;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174440;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174441;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174442;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174443;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174444;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174445;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174446;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174447;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174448;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174449;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174450;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174451;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174452;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174453;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174454;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174455;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174456;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174457;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174458;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174459;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174460;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174461;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174462;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174463;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174464;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174465;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174466;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174467;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174468;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174469;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174470;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174471;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174472;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174473;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174474;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174475;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174476;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174477;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174478;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174479;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174480;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174481;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174482;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174483;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174484;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174485;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174486;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174487;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174488;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174489;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174490;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174491;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174492;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174493;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174494;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174495;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174496;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174497;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174498;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174499;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174500;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174501;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174502;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174503;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174504;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174505;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174506;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174507;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174508;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174509;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174510;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174511;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174512;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174513;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174514;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174515;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174516;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174517;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174518;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174519;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174520;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174521;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174522;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174523;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174524;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174525;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174526;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174527;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174528;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174529;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174530;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174531;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174532;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174533;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174534;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174535;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174536;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174537;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174538;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174539;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174540;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174541;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174542;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174543;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174544;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174545;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174546;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174547;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174548;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174549;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174550;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174551;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174552;
UPDATE `gameobject_template` SET `sound0`='1714' WHERE `entry`=174596;
UPDATE `gameobject_template` SET `sound0`='1714' WHERE `entry`=174599;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=174602;
UPDATE `gameobject_template` SET `sound0`='1714' WHERE `entry`=174604;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15344' WHERE `entry`=174609;
UPDATE `gameobject_template` SET `type`='10',`sound0`='259',`sound10`='15366' WHERE `entry`=174610;
UPDATE `gameobject_template` SET `type`='10',`sound0`='43',`sound10`='15366' WHERE `entry`=174612;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15366' WHERE `entry`=174613;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15366' WHERE `entry`=174614;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15366' WHERE `entry`=174615;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15342' WHERE `entry`=174617;
UPDATE `gameobject_template` SET `type`='10',`sound0`='43',`sound10`='15342' WHERE `entry`=174618;
UPDATE `gameobject_template` SET `type`='10',`sound0`='43',`sound10`='15342' WHERE `entry`=174620;
UPDATE `gameobject_template` SET `type`='10',`sound0`='43',`sound10`='15342' WHERE `entry`=174621;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15343' WHERE `entry`=174622;
UPDATE `gameobject_template` SET `type`='10',`sound0`='43',`sound10`='15343' WHERE `entry`=174623;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15343' WHERE `entry`=174625;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=174682;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15343' WHERE `entry`=174687;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174699;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15342' WHERE `entry`=174710;
UPDATE `gameobject_template` SET `type`='10',`sound10`='15366' WHERE `entry`=174714;
UPDATE `gameobject_template` SET `type`='10',`sound0`='43',`sound10`='15366' WHERE `entry`=174715;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=174862;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=174863;
UPDATE `gameobject_template` SET `name`='Stove' WHERE `entry`=174872;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174875;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174876;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174877;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174878;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174879;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174880;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174882;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174883;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174884;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174885;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174886;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174887;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174888;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174889;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174890;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174891;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174892;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174893;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174894;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174895;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174896;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174897;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174898;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174899;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174900;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174901;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174902;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174903;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174904;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174905;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174906;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174907;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174908;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174909;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174910;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174911;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174932;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174933;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174934;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174935;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174936;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174937;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174938;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174939;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174940;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174941;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174942;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174943;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174944;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=174945;
UPDATE `gameobject_template` SET `name`='Burning Embers' WHERE `entry`=174953;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174956;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174957;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174958;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174959;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174960;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174961;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174962;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174963;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174964;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174965;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174966;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174967;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174976;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174977;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174978;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174979;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174980;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174981;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174982;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174983;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174984;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174985;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174986;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=174987;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175001;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175004;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175005;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175006;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175007;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175010;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175015;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175019;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175023;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175024;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175025;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175026;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175027;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175028;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175029;
UPDATE `gameobject_template` SET `name`='Wooden Chair' WHERE `entry`=175030;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175076;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175179;
UPDATE `gameobject_template` SET `name`='Doodad_Drake_Rider_portcullis' WHERE `entry`=175185;
UPDATE `gameobject_template` SET `name`='Doodad_Portcullis_TOBOSSROOMS' WHERE `entry`=175186;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_A01' WHERE `entry`=175187;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=175207;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=175265;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_A01' WHERE `entry`=175266;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_B01' WHERE `entry`=175267;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_c01' WHERE `entry`=175268;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_d01' WHERE `entry`=175269;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_e01' WHERE `entry`=175270;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_f01' WHERE `entry`=175271;
UPDATE `gameobject_template` SET `name`='Doodad_DarkIronDwarfRune_g01' WHERE `entry`=175272;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175286;
UPDATE `gameobject_template` SET `name`='Doodad_OrcSign_DarkfireEnclave' WHERE `entry`=175294;
UPDATE `gameobject_template` SET `name`='Doodad_OrcSign_theSlowBlade' WHERE `entry`=175302;
UPDATE `gameobject_template` SET `name`='Doodad_OrcSign_ShadowdeepReagents' WHERE `entry`=175307;
UPDATE `gameobject_template` SET `name`='Doodad_OrcSign_DarkEarth' WHERE `entry`=175308;
UPDATE `gameobject_template` SET `name`='Doodad_SmallPortcullis04' WHERE `entry`=175350;
UPDATE `gameobject_template` SET `name`='Doodad_SmallPortcullis03' WHERE `entry`=175351;
UPDATE `gameobject_template` SET `name`='Doodad_SmallPortcullis09' WHERE `entry`=175354;
UPDATE `gameobject_template` SET `name`='Doodad_SmallPortcullis08' WHERE `entry`=175355;
UPDATE `gameobject_template` SET `name`='Doodad_SmallPortcullis11' WHERE `entry`=175359;
UPDATE `gameobject_template` SET `name`='Doodad_SmallPortcullis05' WHERE `entry`=175370;
UPDATE `gameobject_template` SET `name`='Doodad_LargePortcullis04' WHERE `entry`=175372;
UPDATE `gameobject_template` SET `name`='Doodad_LargePortcullis05' WHERE `entry`=175373;
UPDATE `gameobject_template` SET `name`='Doodad_LargePortcullis06' WHERE `entry`=175374;
UPDATE `gameobject_template` SET `name`='Doodad_LargePortcullis01' WHERE `entry`=175375;
UPDATE `gameobject_template` SET `name`='Doodad_LargePortcullis02' WHERE `entry`=175376;
UPDATE `gameobject_template` SET `name`='Doodad_LargePortcullis03' WHERE `entry`=175377;
UPDATE `gameobject_template` SET `name`='Doodad_ZigguratDoor01' WHERE `entry`=175380;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=175382;
UPDATE `gameobject_template` SET `name`='Doodad_ZigguratDoor04' WHERE `entry`=175405;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=175432;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175436;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175437;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175439;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175441;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175442;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175443;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175445;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175447;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175450;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175454;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175455;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175457;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175458;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175460;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175463;
UPDATE `gameobject_template` SET `name`='Angelista\'s Boutique' WHERE `entry`=175470;
UPDATE `gameobject_template` SET `name`='Ogre Poo 1' WHERE `entry`=175491;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=175524;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=175534;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=175535;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=175536;
UPDATE `gameobject_template` SET `displayid`='335',`name`='Supply Crate',`sound11`='1' WHERE `entry`=175537;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=175587;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=175607;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=175608;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=175609;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175630;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175631;
UPDATE `gameobject_template` SET `name`='Doodad_RuinedSign06' WHERE `entry`=175654;
UPDATE `gameobject_template` SET `name`='Doodad_RuinedSign07' WHERE `entry`=175655;
UPDATE `gameobject_template` SET `name`='Doodad_WoodSignPointerNice10' WHERE `entry`=175656;
UPDATE `gameobject_template` SET `name`='Doodad_WoodSignPointerNice11' WHERE `entry`=175657;
UPDATE `gameobject_template` SET `name`='Doodad_GnomeSign_Engineer01' WHERE `entry`=175663;
UPDATE `gameobject_template` SET `name`='Doodad_DwarfSign_Fireworks01' WHERE `entry`=175665;
UPDATE `gameobject_template` SET `name`='Postbox' WHERE `entry`=175668;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=175704;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=175786;
UPDATE `gameobject_template` SET `name`='Doodad_ZigguratDoor05' WHERE `entry`=175796;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175799;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175811;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175824;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175825;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175857;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=175858;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175929;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175930;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175931;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=175932;
UPDATE `gameobject_template` SET `name`='Doodad_BOSSGATE01' WHERE `entry`=175946;
UPDATE `gameobject_template` SET `name`='Doodad_DwarvenTunnelPortcullis04' WHERE `entry`=175969;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176113;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=176115;
UPDATE `gameobject_template` SET `name`='the Corrupt Jaedenar Moon Well' WHERE `entry`=176184;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=176198;
UPDATE `gameobject_template` SET `sound0`='1039' WHERE `entry`=176217;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=176224;
UPDATE `gameobject_template` SET `name`='Proudmore\'s Treasure' WHERE `entry`=176231;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176267;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176268;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176269;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176270;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176271;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176273;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176275;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176276;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176277;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176278;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176279;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176282;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176291;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176293;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176294;
UPDATE `gameobject_template` SET `type`='10' WHERE `entry`=176306;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176318;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=176326;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=176344;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=176348;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=176392;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=176393;
UPDATE `gameobject_template` SET `name`='Doodad_GuildInstanceBLOCKER' WHERE `entry`=176424;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=176427;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176443;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176444;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176506;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176507;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176508;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=176509;
UPDATE `gameobject_template` SET `type`='10' WHERE `entry`=176544;
UPDATE `gameobject_template` SET `sound0`='441' WHERE `entry`=176636;
UPDATE `gameobject_template` SET `sound0`='444' WHERE `entry`=176637;
UPDATE `gameobject_template` SET `sound0`='1119' WHERE `entry`=176638;
UPDATE `gameobject_template` SET `sound0`='1120' WHERE `entry`=176639;
UPDATE `gameobject_template` SET `sound0`='1121' WHERE `entry`=176640;
UPDATE `gameobject_template` SET `sound0`='1122' WHERE `entry`=176641;
UPDATE `gameobject_template` SET `sound0`='440' WHERE `entry`=176642;
UPDATE `gameobject_template` SET `sound0`='400',`sound4`='2',`sound5`='3' WHERE `entry`=176643;
UPDATE `gameobject_template` SET `sound0`='379' WHERE `entry`=176645;
UPDATE `gameobject_template` SET `name`='Karazhan Side Entrance' WHERE `entry`=176694;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=176749;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176787;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176796;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176799;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176800;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176801;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176804;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176805;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176806;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176807;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176808;
UPDATE `gameobject_template` SET `name`='Doodad_OnyziasLairFallingRocks01' WHERE `entry`=176843;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176885;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176886;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176887;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176888;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176889;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176890;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176891;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176892;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=176896;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176899;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive02' WHERE `entry`=176901;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176904;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176906;
UPDATE `gameobject_template` SET `type`='3' WHERE `entry`=176944;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176958;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176966;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176971;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176972;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176978;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176979;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176980;
UPDATE `gameobject_template` SET `name`='Andorhal' WHERE `entry`=176982;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176983;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176984;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176986;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176992;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176993;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=176994;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176998;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=176999;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive05' WHERE `entry`=177047;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive06' WHERE `entry`=177048;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive07' WHERE `entry`=177049;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177104;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177107;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177108;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177110;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177111;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177113;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177114;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177115;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177120;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177121;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177122;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177123;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177124;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177125;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177126;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177127;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177128;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177129;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177130;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177134;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177136;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177137;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177138;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177139;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177141;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177142;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177143;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177144;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177146;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177147;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177148;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177149;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177150;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177151;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177152;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177153;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177154;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=177155;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177195;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177197;
UPDATE `gameobject_template` SET `name`='Door' WHERE `entry`=177211;
UPDATE `gameobject_template` SET `name`='Door' WHERE `entry`=177212;
UPDATE `gameobject_template` SET `name`='Door' WHERE `entry`=177213;
UPDATE `gameobject_template` SET `name`='Door' WHERE `entry`=177215;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=177225;
UPDATE `gameobject_template` SET `name`='Doodad_WroughtIronDoor02' WHERE `entry`=177246;
UPDATE `gameobject_template` SET `name`='Doodad_DireMaulCrystalGenerator01' WHERE `entry`=177259;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177262;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177263;
UPDATE `gameobject_template` SET `type`='5',`displayid`='4718',`name`='Bridge to Hunter Rise',`sound0`='1' WHERE `entry`=177270;
UPDATE `gameobject_template` SET `type`='10',`displayid`='4571',`name`='',`sound0`='0' WHERE `entry`=177271;
UPDATE `gameobject_template` SET `sound0`='883' WHERE `entry`=177273;
UPDATE `gameobject_template` SET `sound0`='883' WHERE `entry`=177275;
UPDATE `gameobject_template` SET `sound0`='883' WHERE `entry`=177276;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177288;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=177289;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177292;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177293;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177326;
UPDATE `gameobject_template` SET `sound0`='1239',`sound1`='5581',`sound3`='196608' WHERE `entry`=177366;
UPDATE `gameobject_template` SET `sound0`='1239',`sound1`='5581',`sound3`='196608' WHERE `entry`=177367;
UPDATE `gameobject_template` SET `sound0`='1239',`sound1`='5581',`sound3`='196608' WHERE `entry`=177368;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177405;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177406;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=177408;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177409;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177410;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177411;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177412;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=177413;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=177725;
UPDATE `gameobject_template` SET `type`='5',`name`='' WHERE `entry`=177746;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=177790;
UPDATE `gameobject_template` SET `type`='10',`sound10`='19869' WHERE `entry`=177808;
UPDATE `gameobject_template` SET `name`='Doodad_UndercityWorm01' WHERE `entry`=177884;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=177904;
UPDATE `gameobject_template` SET `type`='10' WHERE `entry`=177929;
UPDATE `gameobject_template` SET `name`='Doodad_OnyziasLairLavaTrap51' WHERE `entry`=177984;
UPDATE `gameobject_template` SET `name`='Doodad_OnyziasLairLavaTrapMirror20' WHERE `entry`=177985;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=178125;
UPDATE `gameobject_template` SET `sound7`='123355' WHERE `entry`=178245;
UPDATE `gameobject_template` SET `name`='Doodad_CentaurTeleporter01' WHERE `entry`=178386;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=178393;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=178444;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=178524;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=178526;
UPDATE `gameobject_template` SET `name`='Doodad_MaraudonStaffCreator01' WHERE `entry`=178560;
UPDATE `gameobject_template` SET `sound0`='56' WHERE `entry`=178826;
UPDATE `gameobject_template` SET `name`='Meeting Stone' WHERE `entry`=178827;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178927;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178932;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178947;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178948;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178955;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178956;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178957;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=178958;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=179065;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179104;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179105;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179106;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179107;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179108;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179110;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179111;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179112;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179113;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179114;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179118;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=179120;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=179121;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=179122;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179285;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179308;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179310;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179384;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179385;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179386;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179387;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179388;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179389;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179390;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179436;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179438;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179440;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179442;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179444;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179446;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179450;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179453;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179454;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=179458;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179466;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179481;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179482;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179484;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=179499;
UPDATE `gameobject_template` SET `name`='Doodad_CorruptedCrystalVine01' WHERE `entry`=179502;
UPDATE `gameobject_template` SET `name`='Doodad_DireMaulBossForceField01' WHERE `entry`=179503;
UPDATE `gameobject_template` SET `name`='Doodad_DiremaulMagicVortex01' WHERE `entry`=179506;
UPDATE `gameobject_template` SET `sound12`='1' WHERE `entry`=179548;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=179552;
UPDATE `gameobject_template` SET `sound5`='0' WHERE `entry`=179560;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=179562;
UPDATE `gameobject_template` SET `displayid`='6397' WHERE `entry`=179665;
UPDATE `gameobject_template` SET `displayid`='6333' WHERE `entry`=179666;
UPDATE `gameobject_template` SET `sound3`='1' WHERE `entry`=179697;
UPDATE `gameobject_template` SET `sound11`='1',`sound13`='1' WHERE `entry`=179703;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=179704;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179748;
UPDATE `gameobject_template` SET `name`='High Back Chair' WHERE `entry`=179757;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179758;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179759;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179760;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179761;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179762;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179763;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179764;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179765;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179766;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179768;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179769;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179770;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179771;
UPDATE `gameobject_template` SET `type`='2',`sound8`='1' WHERE `entry`=179827;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=179846;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=179863;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179864;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=179874;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=179875;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=179876;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=179877;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=179878;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=179879;
UPDATE `gameobject_template` SET `sound0`='3' WHERE `entry`=179886;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=179887;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=179888;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=179913;
UPDATE `gameobject_template` SET `name`='Doodad_RazorfenDoor01' WHERE `entry`=179916;
UPDATE `gameobject_template` SET `name`='Doodad_RazorfenDoor02' WHERE `entry`=179917;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive01' WHERE `entry`=179918;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive02' WHERE `entry`=179919;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive03' WHERE `entry`=179920;
UPDATE `gameobject_template` SET `name`='Doodad_PortcullisActive04' WHERE `entry`=179921;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=179945;
UPDATE `gameobject_template` SET `type`='5',`name`='Beer Keg 01',`sound1`='0',`sound3`='0' WHERE `entry`=179976;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=180025;
UPDATE `gameobject_template` SET `type`='2' WHERE `entry`=180056;
UPDATE `gameobject_template` SET `sound3`='196608' WHERE `entry`=180105;
UPDATE `gameobject_template` SET `name`='Sungrass' WHERE `entry`=180164;
UPDATE `gameobject_template` SET `name`='Purple Lotus' WHERE `entry`=180165;
UPDATE `gameobject_template` SET `name`='Mountain Silversage' WHERE `entry`=180166;
UPDATE `gameobject_template` SET `name`='Golden Sansam' WHERE `entry`=180167;
UPDATE `gameobject_template` SET `name`='Dreamfoil' WHERE `entry`=180168;
UPDATE `gameobject_template` SET `displayid`='3952' WHERE `entry`=180215;
UPDATE `gameobject_template` SET `sound0`='43' WHERE `entry`=180216;
UPDATE `gameobject_template` SET `sound12`='1' WHERE `entry`=180228;
UPDATE `gameobject_template` SET `sound12`='1' WHERE `entry`=180229;
UPDATE `gameobject_template` SET `sound1`='17280' WHERE `entry`=180248;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=180325;
UPDATE `gameobject_template` SET `sound0`='2785',`sound2`='3' WHERE `entry`=180367;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=180370;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=180371;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=180372;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=180373;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=180374;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=180421;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=180422;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=180423;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=180439;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=180440;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=180443;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2066' WHERE `entry`=180444;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=180448;
UPDATE `gameobject_template` SET `sound10`='24743' WHERE `entry`=180452;
UPDATE `gameobject_template` SET `sound3`='6559',`sound5`='1' WHERE `entry`=180455;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180473;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180474;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180475;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180476;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180477;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180478;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180479;
UPDATE `gameobject_template` SET `type`='5' WHERE `entry`=180480;
UPDATE `gameobject_template` SET `sound0`='0',`sound1`='0',`sound3`='0' WHERE `entry`=180516;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=180526;
UPDATE `gameobject_template` SET `sound3`='6540' WHERE `entry`=180549;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=180606;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=180607;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=180608;
UPDATE `gameobject_template` SET `sound0`='663' WHERE `entry`=180631;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=180634;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=180688;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=180689;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1' WHERE `entry`=180690;
UPDATE `gameobject_template` SET `sound0`='1623',`sound3`='65536' WHERE `entry`=180699;
UPDATE `gameobject_template` SET `name`='Firework, Show, Type 1 Blue BIG' WHERE `entry`=180722;
UPDATE `gameobject_template` SET `name`='Lantern' WHERE `entry`=180766;
UPDATE `gameobject_template` SET `name`='Lantern' WHERE `entry`=180768;
UPDATE `gameobject_template` SET `sound0`='93' WHERE `entry`=180905;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=180918;
UPDATE `gameobject_template` SET `name`='Flowers for Tony' WHERE `entry`=181063;
UPDATE `gameobject_template` SET `name`='Flowers for Tony' WHERE `entry`=181064;
UPDATE `gameobject_template` SET `name`='Flowers for Tony' WHERE `entry`=181065;
UPDATE `gameobject_template` SET `name`='Flowers for Tony' WHERE `entry`=181066;
UPDATE `gameobject_template` SET `sound2`='655360',`sound3`='0',`sound20`='0' WHERE `entry`=181071;
UPDATE `gameobject_template` SET `name`='Inigo\'s Chair' WHERE `entry`=181076;
UPDATE `gameobject_template` SET `name`='Marjhan\'s Chair' WHERE `entry`=181078;
UPDATE `gameobject_template` SET `name`='Eligor\'s Chair' WHERE `entry`=181079;
UPDATE `gameobject_template` SET `name`='Angela\'s Chair' WHERE `entry`=181080;
UPDATE `gameobject_template` SET `name`='Lightwell' WHERE `entry`=181102;
UPDATE `gameobject_template` SET `name`='Lightwell' WHERE `entry`=181105;
UPDATE `gameobject_template` SET `name`='Lightwell' WHERE `entry`=181106;
UPDATE `gameobject_template` SET `sound1`='17939' WHERE `entry`=181109;
UPDATE `gameobject_template` SET `name`='Thaddius Door' WHERE `entry`=181121;
UPDATE `gameobject_template` SET `sound12`='1' WHERE `entry`=181133;
UPDATE `gameobject_template` SET `sound12`='1' WHERE `entry`=181138;
UPDATE `gameobject_template` SET `sound3`='1',`sound12`='1' WHERE `entry`=181139;
UPDATE `gameobject_template` SET `sound12`='1' WHERE `entry`=181140;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=181147;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=181153;
UPDATE `gameobject_template` SET `sound10`='3',`sound11`='1',`sound12`='4' WHERE `entry`=181168;
UPDATE `gameobject_template` SET `sound10`='3',`sound11`='1',`sound12`='4' WHERE `entry`=181169;
UPDATE `gameobject_template` SET `sound0`='1364' WHERE `entry`=181206;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=181238;
UPDATE `gameobject_template` SET `sound10`='1',`sound14`='21400' WHERE `entry`=181239;
UPDATE `gameobject_template` SET `name`='Copper Vein' WHERE `entry`=181248;
UPDATE `gameobject_template` SET `name`='Tin Vein' WHERE `entry`=181249;
UPDATE `gameobject_template` SET `name`='Dreaming Glory' WHERE `entry`=181272;
UPDATE `gameobject_template` SET `name`='Netherbloom' WHERE `entry`=181282;
UPDATE `gameobject_template` SET `name`='Mana Thistle' WHERE `entry`=181284;
UPDATE `gameobject_template` SET `name`='Nightmare Vine' WHERE `entry`=181285;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=181324;
UPDATE `gameobject_template` SET `sound2`='2061' WHERE `entry`=181327;
UPDATE `gameobject_template` SET `displayid`='6755',`name`='Flame of the Undercity',`sound10`='29139' WHERE `entry`=181335;
UPDATE `gameobject_template` SET `displayid`='6755',`sound10`='29136' WHERE `entry`=181336;
UPDATE `gameobject_template` SET `displayid`='6755',`sound10`='29138' WHERE `entry`=181337;
UPDATE `gameobject_template` SET `sound0`='43',`sound10`='28859',`sound12`='181290' WHERE `entry`=181338;
UPDATE `gameobject_template` SET `sound0`='43',`sound10`='28859',`sound12`='181290' WHERE `entry`=181341;
UPDATE `gameobject_template` SET `displayid`='6756',`sound10`='28859',`sound12`='0' WHERE `entry`=181347;
UPDATE `gameobject_template` SET `displayid`='6756',`name`='Flame of Stratholme',`sound10`='28859' WHERE `entry`=181348;
UPDATE `gameobject_template` SET `sound2`='2061' WHERE `entry`=181352;
UPDATE `gameobject_template` SET `sound2`='2061' WHERE `entry`=181362;
UPDATE `gameobject_template` SET `name`='Ogre Firepit' WHERE `entry`=181427;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=181433;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181446;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=181450;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=181451;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=181452;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=181453;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=181455;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=181456;
UPDATE `gameobject_template` SET `sound0`='1' WHERE `entry`=181477;
UPDATE `gameobject_template` SET `sound1`='18361' WHERE `entry`=181569;
UPDATE `gameobject_template` SET `sound10`='28444',`sound11`='1',`sound12`='129' WHERE `entry`=181576;
UPDATE `gameobject_template` SET `sound10`='29395' WHERE `entry`=181582;
UPDATE `gameobject_template` SET `sound0`='1635',`sound10`='29518',`sound11`='1' WHERE `entry`=181597;
UPDATE `gameobject_template` SET `sound10`='29518',`sound11`='1' WHERE `entry`=181598;
UPDATE `gameobject_template` SET `name`='ToWoW - Flag Cap Counter, Alliance',`sound10`='1' WHERE `entry`=181618;
UPDATE `gameobject_template` SET `name`='ToWoW - Flag Cap Counter, Horde',`sound10`='1' WHERE `entry`=181619;
UPDATE `gameobject_template` SET `displayid`='7358' WHERE `entry`=181622;
UPDATE `gameobject_template` SET `sound1`='18404' WHERE `entry`=181629;
UPDATE `gameobject_template` SET `sound0`='4',`sound2`='2061' WHERE `entry`=181635;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=181638;
UPDATE `gameobject_template` SET `sound1`='7452' WHERE `entry`=181643;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=181644;
UPDATE `gameobject_template` SET `sound1`='7451' WHERE `entry`=181649;
UPDATE `gameobject_template` SET `displayid`='6815' WHERE `entry`=181653;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181656;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181657;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181658;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181659;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181660;
UPDATE `gameobject_template` SET `sound0`='1635',`sound10`='30238',`sound12`='180100' WHERE `entry`=181682;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=181767;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=181790;
UPDATE `gameobject_template` SET `name`='Heavy Fel Iron Chest' WHERE `entry`=181800;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=181889;
UPDATE `gameobject_template` SET `name`='Aquatic Stinkhorn' WHERE `entry`=181892;
UPDATE `gameobject_template` SET `sound10`='11151',`sound11`='11150',`sound12`='20',`sound13`='2428',`sound14`='1',`sound15`='5',`sound16`='480',`sound17`='1200',`sound18`='1' WHERE `entry`=181899;
UPDATE `gameobject_template` SET `sound10`='30238',`sound12`='180101' WHERE `entry`=181955;
UPDATE `gameobject_template` SET `name`='Falthrien Academy' WHERE `entry`=181968;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=181982;
UPDATE `gameobject_template` SET `sound0`='57' WHERE `entry`=182011;
UPDATE `gameobject_template` SET `name`='Dark Brazier' WHERE `entry`=182013;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=182028;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=182029;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182031;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182050;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182053;
UPDATE `gameobject_template` SET `sound0`='57',`sound1`='18699' WHERE `entry`=182063;
UPDATE `gameobject_template` SET `sound0`='1385' WHERE `entry`=182068;
UPDATE `gameobject_template` SET `sound10`='11155',`sound11`='11154',`sound12`='20',`sound13`='2428',`sound14`='1',`sound15`='5',`sound16`='480',`sound17`='1200',`sound18`='1' WHERE `entry`=182096;
UPDATE `gameobject_template` SET `sound10`='11149',`sound11`='11148',`sound12`='20',`sound13`='2428',`sound14`='1',`sound15`='5',`sound16`='480',`sound17`='1200',`sound18`='1' WHERE `entry`=182097;
UPDATE `gameobject_template` SET `sound1`='11515',`sound2`='2426',`sound3`='2427',`sound4`='10567',`sound5`='10564',`sound6`='10687',`sound7`='10688',`sound8`='10701',`sound9`='10700',`sound10`='11153',`sound11`='11152',`sound13`='2428',`sound16`='480',`sound17`='1200' WHERE `entry`=182098;
UPDATE `gameobject_template` SET `name`='(NEEDS GRAPHICS)Steam Pump Controls' WHERE `entry`=182107;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182128;
UPDATE `gameobject_template` SET `name`='Lower Shattrath' WHERE `entry`=182129;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182155;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182156;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182157;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182158;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182159;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182160;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182161;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=182162;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=182165;
UPDATE `gameobject_template` SET `name`='Hellfire Peninsula' WHERE `entry`=182168;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=182169;
UPDATE `gameobject_template` SET `name`='Shadowmoon Valley' WHERE `entry`=182170;
UPDATE `gameobject_template` SET `name`='Shattrath' WHERE `entry`=182171;
UPDATE `gameobject_template` SET `name`='Tuurem' WHERE `entry`=182172;
UPDATE `gameobject_template` SET `name`='Allerian Stronghold' WHERE `entry`=182177;
UPDATE `gameobject_template` SET `name`='Tuurem' WHERE `entry`=182178;
UPDATE `gameobject_template` SET `name`='Stonebreaker Hold' WHERE `entry`=182179;
UPDATE `gameobject_template` SET `name`='Shattrath' WHERE `entry`=182180;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=182181;
UPDATE `gameobject_template` SET `sound0`='1690',`sound1`='9832',`sound2`='14593',`sound3`='196608' WHERE `entry`=182197;
UPDATE `gameobject_template` SET `name`='Halaa Banner',`sound13`='2497',`sound14`='1',`sound15`='10',`sound16`='300',`sound17`='600',`sound18`='1' WHERE `entry`=182210;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=182216;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=182218;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=182219;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182222;
UPDATE `gameobject_template` SET `name`='Fire Bomb' WHERE `entry`=182223;
UPDATE `gameobject_template` SET `name`='The Vault of Lights' WHERE `entry`=182252;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182256;
UPDATE `gameobject_template` SET `name`='Mag\'har Rug' WHERE `entry`=182257;
UPDATE `gameobject_template` SET `name`='Third Burning Blade Pyre' WHERE `entry`=182262;
UPDATE `gameobject_template` SET `name`='Second Burning Blade Pyre' WHERE `entry`=182264;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182266;
UPDATE `gameobject_template` SET `sound10`='32059',`sound13`='1' WHERE `entry`=182267;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182272;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182273;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182274;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182275;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182276;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182277;
UPDATE `gameobject_template` SET `sound10`='32068',`sound13`='1' WHERE `entry`=182280;
UPDATE `gameobject_template` SET `sound10`='32075',`sound13`='1' WHERE `entry`=182281;
UPDATE `gameobject_template` SET `sound10`='32081',`sound13`='1' WHERE `entry`=182282;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182297;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182298;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182299;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182300;
UPDATE `gameobject_template` SET `name`='Wyvern Roost',`sound10`='32059',`sound13`='1' WHERE `entry`=182301;
UPDATE `gameobject_template` SET `sound10`='32068',`sound13`='1' WHERE `entry`=182302;
UPDATE `gameobject_template` SET `sound10`='32075',`sound13`='1' WHERE `entry`=182303;
UPDATE `gameobject_template` SET `name`='Wyvern Roost',`sound10`='32081',`sound13`='1' WHERE `entry`=182304;
UPDATE `gameobject_template` SET `name`='Bomb Wagon',`sound13`='1' WHERE `entry`=182305;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182306;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=182307;
UPDATE `gameobject_template` SET `name`='Bomb Wagon',`sound13`='1' WHERE `entry`=182308;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=182343;
UPDATE `gameobject_template` SET `name`='Corki\'s Prison' WHERE `entry`=182349;
UPDATE `gameobject_template` SET `name`='Corki\'s Prison' WHERE `entry`=182350;
UPDATE `gameobject_template` SET `name`='Warmaul Ogre Banner' WHERE `entry`=182353;
UPDATE `gameobject_template` SET `name`='Shadow Council Banner' WHERE `entry`=182354;
UPDATE `gameobject_template` SET `name`='Garadar Mailbox' WHERE `entry`=182391;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=182392;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=182393;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182484;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182486;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182487;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182488;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182497;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182498;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182500;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182501;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182502;
UPDATE `gameobject_template` SET `name`='Warmaul Prison' WHERE `entry`=182504;
UPDATE `gameobject_template` SET `name`='Corki\'s Prison' WHERE `entry`=182521;
UPDATE `gameobject_template` SET `sound10`='11808',`sound11`='11809',`sound12`='80',`sound13`='2529',`sound14`='1',`sound15`='5',`sound16`='300',`sound17`='600',`sound18`='1' WHERE `entry`=182522;
UPDATE `gameobject_template` SET `sound10`='11814',`sound11`='11815',`sound12`='80',`sound13`='2535',`sound14`='1',`sound15`='5',`sound16`='300',`sound17`='600',`sound18`='1' WHERE `entry`=182523;
UPDATE `gameobject_template` SET `name`='Arcane Aura' WHERE `entry`=182524;
UPDATE `gameobject_template` SET `sound10`='32433',`sound13`='1' WHERE `entry`=182527;
UPDATE `gameobject_template` SET `sound10`='32433',`sound13`='1' WHERE `entry`=182528;
UPDATE `gameobject_template` SET `type`='10',`sound12`='182564' WHERE `entry`=182563;
UPDATE `gameobject_template` SET `type`='10',`sound12`='182564' WHERE `entry`=182565;
UPDATE `gameobject_template` SET `type`='10',`sound12`='182564' WHERE `entry`=182566;
UPDATE `gameobject_template` SET `name`='Ogre Firepit' WHERE `entry`=182576;
UPDATE `gameobject_template` SET `name`='Ogre Firepit' WHERE `entry`=182580;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=182588;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=182592;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182599;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182600;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182601;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=182606;
UPDATE `gameobject_template` SET `sound0`='13',`sound1`='70',`sound2`='5',`sound3`='32786',`sound4`='1' WHERE `entry`=182607;
UPDATE `gameobject_template` SET `name`='Silvermoon Alchemy' WHERE `entry`=182737;
UPDATE `gameobject_template` SET `name`='Cooking Stove' WHERE `entry`=182828;
UPDATE `gameobject_template` SET `name`='Cooking Stove' WHERE `entry`=182829;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182862;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182863;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=182864;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=182865;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=182866;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182867;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182868;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182869;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182870;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182871;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182872;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182873;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182874;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182875;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182876;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182877;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182878;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182879;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182880;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182881;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182882;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182883;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182884;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182885;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182886;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182887;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182888;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182889;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182890;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182891;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182892;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182893;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182894;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182895;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182896;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182897;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182898;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182899;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182900;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182901;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182902;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182903;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182904;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182905;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182906;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182907;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182908;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182909;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182910;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182911;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182912;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182913;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182914;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182915;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182916;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182917;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182918;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182919;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182920;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182921;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182922;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182923;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182924;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182925;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182926;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182927;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182928;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182929;
UPDATE `gameobject_template` SET `sound0`='57' WHERE `entry`=182938;
UPDATE `gameobject_template` SET `name`='Feltail School' WHERE `entry`=182954;
UPDATE `gameobject_template` SET `name`='Mudfish School' WHERE `entry`=182958;
UPDATE `gameobject_template` SET `name`='Bluefish School' WHERE `entry`=182959;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182960;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182961;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182962;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182963;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182964;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182965;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=182966;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182967;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182968;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182969;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182970;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182971;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182972;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=182973;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=182994;
UPDATE `gameobject_template` SET `name`='Fire',`sound1`='8' WHERE `entry`=183005;
UPDATE `gameobject_template` SET `name`='Fire',`sound1`='8' WHERE `entry`=183006;
UPDATE `gameobject_template` SET `name`='Fire',`sound1`='8' WHERE `entry`=183007;
UPDATE `gameobject_template` SET `name`='Fire',`sound1`='8' WHERE `entry`=183008;
UPDATE `gameobject_template` SET `name`='Fire',`sound1`='8' WHERE `entry`=183009;
UPDATE `gameobject_template` SET `name`='Fire',`sound1`='8' WHERE `entry`=183010;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183022;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183023;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183024;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183025;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183026;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183027;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183028;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183029;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183030;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=183031;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183032;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183033;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=183034;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=183035;
UPDATE `gameobject_template` SET `name`='Ragveil' WHERE `entry`=183043;
UPDATE `gameobject_template` SET `name`='Felweed' WHERE `entry`=183044;
UPDATE `gameobject_template` SET `name`='Dreaming Glory' WHERE `entry`=183045;
UPDATE `gameobject_template` SET `name`='Blindweed' WHERE `entry`=183046;
UPDATE `gameobject_template` SET `sound3`='0' WHERE `entry`=183050;
UPDATE `gameobject_template` SET `name`='Sethekk Cage' WHERE `entry`=183051;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=183099;
UPDATE `gameobject_template` SET `sound10`='12228',`sound11`='12227',`sound12`='80',`sound13`='2624',`sound14`='1',`sound15`='10',`sound16`='60',`sound17`='120',`sound18`='1' WHERE `entry`=183104;
UPDATE `gameobject_template` SET `name`='Forge' WHERE `entry`=183148;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=183149;
UPDATE `gameobject_template` SET `name`='Fel Cannon Base' WHERE `entry`=183158;
UPDATE `gameobject_template` SET `name`='Prison Portcullis' WHERE `entry`=183170;
UPDATE `gameobject_template` SET `name`='Holoviewer' WHERE `entry`=183171;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=183180;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183189;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183190;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183191;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183192;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183193;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183194;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183195;
UPDATE `gameobject_template` SET `name`='Burning Brazier' WHERE `entry`=183196;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183197;
UPDATE `gameobject_template` SET `name`='Cooking Fire' WHERE `entry`=183198;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183204;
UPDATE `gameobject_template` SET `name`='Garadar' WHERE `entry`=183205;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183206;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183207;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183208;
UPDATE `gameobject_template` SET `name`='The Ring of Trials' WHERE `entry`=183209;
UPDATE `gameobject_template` SET `name`='Terokkar Forest' WHERE `entry`=183210;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183211;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183212;
UPDATE `gameobject_template` SET `name`='Aeris' WHERE `entry`=183213;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183214;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183215;
UPDATE `gameobject_template` SET `name`='Aeris' WHERE `entry`=183216;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=183218;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183231;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183232;
UPDATE `gameobject_template` SET `name`='Aeris' WHERE `entry`=183233;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183234;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183235;
UPDATE `gameobject_template` SET `name`='Terokkar Forest' WHERE `entry`=183236;
UPDATE `gameobject_template` SET `name`='Garadar' WHERE `entry`=183237;
UPDATE `gameobject_template` SET `name`='Aeris' WHERE `entry`=183238;
UPDATE `gameobject_template` SET `name`='Sunspring Post' WHERE `entry`=183239;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183240;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183241;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183242;
UPDATE `gameobject_template` SET `name`='Sunspring Post' WHERE `entry`=183243;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183244;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183245;
UPDATE `gameobject_template` SET `name`='Telaar' WHERE `entry`=183246;
UPDATE `gameobject_template` SET `name`='Aeris' WHERE `entry`=183247;
UPDATE `gameobject_template` SET `name`='Sunspring Post' WHERE `entry`=183248;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183249;
UPDATE `gameobject_template` SET `name`='Garadar' WHERE `entry`=183250;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183251;
UPDATE `gameobject_template` SET `name`='Aeris' WHERE `entry`=183252;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183257;
UPDATE `gameobject_template` SET `name`='Halaa' WHERE `entry`=183258;
UPDATE `gameobject_template` SET `name`='Garadar' WHERE `entry`=183259;
UPDATE `gameobject_template` SET `name`='The Ring of Trials' WHERE `entry`=183260;
UPDATE `gameobject_template` SET `name`='Terokkar Forest' WHERE `entry`=183261;
UPDATE `gameobject_template` SET `name`='Garadar' WHERE `entry`=183262;
UPDATE `gameobject_template` SET `name`='Zangarmarsh' WHERE `entry`=183263;
UPDATE `gameobject_template` SET `name`='The Ring of Trials' WHERE `entry`=183264;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183265;
UPDATE `gameobject_template` SET `name`='Weapon Rack' WHERE `entry`=183269;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=183271;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=183272;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=183273;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=183284;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Front01' WHERE `entry`=183286;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Interior01' WHERE `entry`=183287;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Front01' WHERE `entry`=183288;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Interior01' WHERE `entry`=183289;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183313;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Darnassus' WHERE `entry`=183317;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Exodar' WHERE `entry`=183321;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Ironforge' WHERE `entry`=183322;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Orgrimmar' WHERE `entry`=183323;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Silvermoon' WHERE `entry`=183324;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Stormwind' WHERE `entry`=183325;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Thunder Bluff' WHERE `entry`=183326;
UPDATE `gameobject_template` SET `name`='Shattrath Portal to Undercity' WHERE `entry`=183327;
UPDATE `gameobject_template` SET `name`='Fel Fire' WHERE `entry`=183344;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=183362;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=183363;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=183385;
UPDATE `gameobject_template` SET `name`='Doodad_Auchindoun_Door_Swinging01' WHERE `entry`=183398;
UPDATE `gameobject_template` SET `name`='Portcullis' WHERE `entry`=183401;
UPDATE `gameobject_template` SET `name`='Portcullis' WHERE `entry`=183402;
UPDATE `gameobject_template` SET `name`='Doodad_CF_elevatorPlatform01' WHERE `entry`=183407;
UPDATE `gameobject_template` SET `name`='Terokkar Banner' WHERE `entry`=183414;
UPDATE `gameobject_template` SET `name`='Ogre Firepit' WHERE `entry`=183415;
UPDATE `gameobject_template` SET `name`='Soul Mirror' WHERE `entry`=183441;
UPDATE `gameobject_template` SET `name`='The Circle of Blood' WHERE `entry`=183482;
UPDATE `gameobject_template` SET `name`='Doodad_CF_elevatorPlatform_small01' WHERE `entry`=183490;
UPDATE `gameobject_template` SET `displayid`='7359' WHERE `entry`=183510;
UPDATE `gameobject_template` SET `displayid`='7359' WHERE `entry`=183511;
UPDATE `gameobject_template` SET `name`='Lever' WHERE `entry`=183518;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=183767;
UPDATE `gameobject_template` SET `name`='Forge' WHERE `entry`=183782;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=183783;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=183787;
UPDATE `gameobject_template` SET `type`='10',`displayid`='7214' WHERE `entry`=183789;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=183795;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=183799;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=183811;
UPDATE `gameobject_template` SET `name`='Ethereal Technology',`sound14`='19676' WHERE `entry`=183813;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=183814;
UPDATE `gameobject_template` SET `sound12`='183929' WHERE `entry`=183816;
UPDATE `gameobject_template` SET `name`='Forge' WHERE `entry`=183818;
UPDATE `gameobject_template` SET `name`='Stewpot' WHERE `entry`=183821;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183824;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183828;
UPDATE `gameobject_template` SET `name`='Alchemy Lab' WHERE `entry`=183848;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=183864;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=183865;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=183866;
UPDATE `gameobject_template` SET `sound0`='0' WHERE `entry`=183867;
UPDATE `gameobject_template` SET `sound2`='0' WHERE `entry`=183879;
UPDATE `gameobject_template` SET `sound14`='19680' WHERE `entry`=183934;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=183935;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=183946;
UPDATE `gameobject_template` SET `name`='Stasis Pod Alpha' WHERE `entry`=183961;
UPDATE `gameobject_template` SET `name`='Stasis Pod Gamma' WHERE `entry`=183962;
UPDATE `gameobject_template` SET `name`='Stasis Pod Beta' WHERE `entry`=183963;
UPDATE `gameobject_template` SET `name`='Stasis Pod Delta' WHERE `entry`=183964;
UPDATE `gameobject_template` SET `name`='Stasis Pod Omega' WHERE `entry`=183965;
UPDATE `gameobject_template` SET `name`='Levixus Soul Calling Effect 01' WHERE `entry`=183968;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Front01' WHERE `entry`=183977;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Interior01' WHERE `entry`=183978;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Front01' WHERE `entry`=183979;
UPDATE `gameobject_template` SET `name`='Doodad_PVP_Orc_Door_Interior01' WHERE `entry`=183980;
UPDATE `gameobject_template` SET `name`='Weapon Rack' WHERE `entry`=183991;
UPDATE `gameobject_template` SET `name`='Amadi Scroll' WHERE `entry`=183996;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=184031;
UPDATE `gameobject_template` SET `name`='Bench' WHERE `entry`=184045;
UPDATE `gameobject_template` SET `name`='Bench' WHERE `entry`=184046;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=184114;
UPDATE `gameobject_template` SET `sound1`='22013' WHERE `entry`=184115;
UPDATE `gameobject_template` SET `sound1`='43' WHERE `entry`=184125;
UPDATE `gameobject_template` SET `sound1`='43' WHERE `entry`=184126;
UPDATE `gameobject_template` SET `name`='InstancePortal_03_Difficulty_0' WHERE `entry`=184181;
UPDATE `gameobject_template` SET `name`='InstancePortal_03_Difficulty_1' WHERE `entry`=184182;
UPDATE `gameobject_template` SET `name`='InstancePortal_04_Difficulty_0' WHERE `entry`=184183;
UPDATE `gameobject_template` SET `name`='InstancePortal_04_Difficulty_1' WHERE `entry`=184184;
UPDATE `gameobject_template` SET `name`='InstancePortal_01_Difficulty_1' WHERE `entry`=184187;
UPDATE `gameobject_template` SET `name`='InstancePortal_01_Difficulty_0' WHERE `entry`=184188;
UPDATE `gameobject_template` SET `name`='Instance_Portal_Difficulty_1' WHERE `entry`=184189;
UPDATE `gameobject_template` SET `name`='Instance_Portal_Difficulty_0' WHERE `entry`=184190;
UPDATE `gameobject_template` SET `name`='Instance_Portal_Difficulty_1' WHERE `entry`=184191;
UPDATE `gameobject_template` SET `name`='Instance_Portal_Difficulty_0' WHERE `entry`=184192;
UPDATE `gameobject_template` SET `name`='Heavy Iron Portcullis' WHERE `entry`=184246;
UPDATE `gameobject_template` SET `name`='Doodad_BlackRockCellDoor01' WHERE `entry`=184247;
UPDATE `gameobject_template` SET `name`='Anvil' WHERE `entry`=184285;
UPDATE `gameobject_template` SET `name`='Forge' WHERE `entry`=184286;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=184289;
UPDATE `gameobject_template` SET `displayid`='7382',`name`='' WHERE `entry`=184294;
UPDATE `gameobject_template` SET `name`='Blazing Fire' WHERE `entry`=184303;
UPDATE `gameobject_template` SET `sound0`='1620' WHERE `entry`=184304;
UPDATE `gameobject_template` SET `type`='2',`name`='Duro Control Console' WHERE `entry`=184311;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=184314;
UPDATE `gameobject_template` SET `name`='Stewpot' WHERE `entry`=184316;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=184317;
UPDATE `gameobject_template` SET `name`='Containment Core Security Field Alpha' WHERE `entry`=184318;
UPDATE `gameobject_template` SET `name`='Containment Core Security Field Beta' WHERE `entry`=184319;
UPDATE `gameobject_template` SET `displayid`='7382',`name`='' WHERE `entry`=184331;
UPDATE `gameobject_template` SET `sound3`='5898240',`sound4`='0' WHERE `entry`=184332;
UPDATE `gameobject_template` SET `sound1`='0' WHERE `entry`=184414;
UPDATE `gameobject_template` SET `sound1`='0' WHERE `entry`=184415;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=184416;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184423;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184425;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184426;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184427;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184428;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184429;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184430;
UPDATE `gameobject_template` SET `name`='Ethereum Prison' WHERE `entry`=184431;
UPDATE `gameobject_template` SET `name`='' WHERE `entry`=184461;
UPDATE `gameobject_template` SET `sound11`='1',`sound13`='1',`sound15`='1' WHERE `entry`=184465;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=184466;
UPDATE `gameobject_template` SET `name`='Salvaged Ethereum Prison' WHERE `entry`=184488;
UPDATE `gameobject_template` SET `sound10`='35376' WHERE `entry`=184502;
UPDATE `gameobject_template` SET `sound10`='35727' WHERE `entry`=184503;
UPDATE `gameobject_template` SET `name`='Molten metal',`sound0`='4',`sound2`='2066' WHERE `entry`=184554;
UPDATE `gameobject_template` SET `name`='Scryer Bank' WHERE `entry`=184555;
UPDATE `gameobject_template` SET `name`='Bank of the Aldor' WHERE `entry`=184556;
UPDATE `gameobject_template` SET `name`='Shattrath Infirmary' WHERE `entry`=184557;
UPDATE `gameobject_template` SET `name`='Lady Vashj Bridge Console' WHERE `entry`=184568;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=184591;
UPDATE `gameobject_template` SET `sound1`='1695',`sound2`='0',`sound3`='1',`sound20`='0' WHERE `entry`=184595;
UPDATE `gameobject_template` SET `name`='Zephyrium Capacitorium' WHERE `entry`=184628;
UPDATE `gameobject_template` SET `sound10`='36024' WHERE `entry`=184631;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=184648;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=184649;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=184650;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=184651;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=184660;
UPDATE `gameobject_template` SET `name`='Arcane Brazier' WHERE `entry`=184666;
UPDATE `gameobject_template` SET `name`='Arcane Brazier' WHERE `entry`=184667;
UPDATE `gameobject_template` SET `name`='Arcane Brazier' WHERE `entry`=184668;
UPDATE `gameobject_template` SET `name`='Arcane Brazier' WHERE `entry`=184669;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=184671;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=184672;
UPDATE `gameobject_template` SET `name`='Chair' WHERE `entry`=184673;
UPDATE `gameobject_template` SET `type`='10',`sound12`='184747' WHERE `entry`=184684;
UPDATE `gameobject_template` SET `sound10`='36377' WHERE `entry`=184685;
UPDATE `gameobject_template` SET `name`='Shadowmoon Tuber Mound' WHERE `entry`=184701;
UPDATE `gameobject_template` SET `sound11`='1' WHERE `entry`=184702;
UPDATE `gameobject_template` SET `name`='Ball and Chain' WHERE `entry`=184714;
UPDATE `gameobject_template` SET `sound12`='184718' WHERE `entry`=184715;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=184726;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=184727;
UPDATE `gameobject_template` SET `name`='Brightsong Wine' WHERE `entry`=184753;
UPDATE `gameobject_template` SET `name`='Rotten Arakkoa Egg' WHERE `entry`=184797;
UPDATE `gameobject_template` SET `name`='Rotten Arakkoa Egg Dummy' WHERE `entry`=184801;
UPDATE `gameobject_template` SET `name`='Warden\'s Shield' WHERE `entry`=184802;
UPDATE `gameobject_template` SET `name`='Sealed Coffin' WHERE `entry`=184809;
UPDATE `gameobject_template` SET `name`='Legion Communication Device' WHERE `entry`=184833;
UPDATE `gameobject_template` SET `name`='Infernal' WHERE `entry`=184835;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=184837;
UPDATE `gameobject_template` SET `sound1`='10' WHERE `entry`=184842;
UPDATE `gameobject_template` SET `name`='Baa\'ri Tablet Aura' WHERE `entry`=184868;
UPDATE `gameobject_template` SET `name`='Fel Reaver Parts Aura' WHERE `entry`=184871;
UPDATE `gameobject_template` SET `name`='Fel Reaver Parts Aura' WHERE `entry`=184872;
UPDATE `gameobject_template` SET `type`='10',`sound10`='37264',`sound12`='184910' WHERE `entry`=184906;
UPDATE `gameobject_template` SET `name`='Oscillating Frequency Scanner' WHERE `entry`=184926;
UPDATE `gameobject_template` SET `sound15`='1' WHERE `entry`=184931;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184932;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184933;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184934;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184935;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184936;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184937;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184938;
UPDATE `gameobject_template` SET `sound10`='1',`sound12`='1',`sound15`='1' WHERE `entry`=184939;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=184945;
UPDATE `gameobject_template` SET `name`='Felhound Poo',`sound14`='19680' WHERE `entry`=184980;
UPDATE `gameobject_template` SET `type`='10',`sound10`='37867' WHERE `entry`=185008;
UPDATE `gameobject_template` SET `type`='10',`sound10`='37892' WHERE `entry`=185009;
UPDATE `gameobject_template` SET `type`='10',`sound10`='37894' WHERE `entry`=185010;
UPDATE `gameobject_template` SET `type`='10',`sound10`='38002' WHERE `entry`=185034;
UPDATE `gameobject_template` SET `sound8`='1' WHERE `entry`=185035;
UPDATE `gameobject_template` SET `name`='Dark Brazier' WHERE `entry`=185038;
UPDATE `gameobject_template` SET `type`='10',`sound10`='38120' WHERE `entry`=185057;
UPDATE `gameobject_template` SET `type`='10',`sound10`='38122' WHERE `entry`=185058;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185065;
UPDATE `gameobject_template` SET `name`='Wildhammer Stronghold' WHERE `entry`=185066;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185067;
UPDATE `gameobject_template` SET `name`='Coilskar Point' WHERE `entry`=185068;
UPDATE `gameobject_template` SET `name`='Wildhammer Stronghold' WHERE `entry`=185069;
UPDATE `gameobject_template` SET `name`='The Deathforge' WHERE `entry`=185070;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185071;
UPDATE `gameobject_template` SET `name`='Coilskar Point' WHERE `entry`=185072;
UPDATE `gameobject_template` SET `name`='Coilskar Point' WHERE `entry`=185073;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185074;
UPDATE `gameobject_template` SET `name`='Altar of Sha\'tar' WHERE `entry`=185075;
UPDATE `gameobject_template` SET `name`='Altar of Sha\'tar' WHERE `entry`=185076;
UPDATE `gameobject_template` SET `name`='Sanctum of the Stars' WHERE `entry`=185077;
UPDATE `gameobject_template` SET `name`='Ruins of Baa\'ri' WHERE `entry`=185078;
UPDATE `gameobject_template` SET `name`='The Black Temple' WHERE `entry`=185079;
UPDATE `gameobject_template` SET `name`='Sanctum of the Stars' WHERE `entry`=185080;
UPDATE `gameobject_template` SET `name`='Altar of Sha\'tar' WHERE `entry`=185081;
UPDATE `gameobject_template` SET `name`='Sanctum of the Stars' WHERE `entry`=185082;
UPDATE `gameobject_template` SET `name`='Wildhammer Stronghold' WHERE `entry`=185083;
UPDATE `gameobject_template` SET `name`='The Black Temple' WHERE `entry`=185084;
UPDATE `gameobject_template` SET `name`='Eclipse Point' WHERE `entry`=185085;
UPDATE `gameobject_template` SET `name`='Wildhammer Stronghold' WHERE `entry`=185086;
UPDATE `gameobject_template` SET `name`='Sanctum of the Stars' WHERE `entry`=185087;
UPDATE `gameobject_template` SET `name`='Wildhammer Stronghold' WHERE `entry`=185088;
UPDATE `gameobject_template` SET `name`='Illidari Point' WHERE `entry`=185089;
UPDATE `gameobject_template` SET `name`='Eclipse Point' WHERE `entry`=185090;
UPDATE `gameobject_template` SET `name`='Illidari Point' WHERE `entry`=185091;
UPDATE `gameobject_template` SET `name`='Terokkar Forest' WHERE `entry`=185092;
UPDATE `gameobject_template` SET `name`='Wildhammer Stronghold' WHERE `entry`=185093;
UPDATE `gameobject_template` SET `name`='The Deathforge' WHERE `entry`=185094;
UPDATE `gameobject_template` SET `name`='Ruins of Baa\'ri' WHERE `entry`=185095;
UPDATE `gameobject_template` SET `name`='The Black Temple' WHERE `entry`=185096;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185097;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185098;
UPDATE `gameobject_template` SET `name`='Shadowmoon Village' WHERE `entry`=185099;
UPDATE `gameobject_template` SET `name`='The Deathforge' WHERE `entry`=185100;
UPDATE `gameobject_template` SET `name`='Dragonmaw Fortress' WHERE `entry`=185101;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=185104;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=185105;
UPDATE `gameobject_template` SET `type`='5',`sound0`='0',`sound1`='0' WHERE `entry`=185107;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=185115;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=185116;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=185117;
UPDATE `gameobject_template` SET `type`='1' WHERE `entry`=185118;
UPDATE `gameobject_template` SET `sound11`='1',`sound13`='1',`sound15`='1' WHERE `entry`=185119;
UPDATE `gameobject_template` SET `name`='Lever' WHERE `entry`=185123;
UPDATE `gameobject_template` SET `name`='Summoning Circle' WHERE `entry`=185127;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=185136;
UPDATE `gameobject_template` SET `name`='Rocknail Flayer Carcass' WHERE `entry`=185155;
UPDATE `gameobject_template` SET `sound6`='19700' WHERE `entry`=185165;
UPDATE `gameobject_template` SET `sound15`='1' WHERE `entry`=185168;
UPDATE `gameobject_template` SET `name`='Smoked Meat Rack' WHERE `entry`=185181;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=185182;
UPDATE `gameobject_template` SET `sound10`='38738' WHERE `entry`=185193;
UPDATE `gameobject_template` SET `sound10`='38738' WHERE `entry`=185195;
UPDATE `gameobject_template` SET `sound10`='38738' WHERE `entry`=185196;
UPDATE `gameobject_template` SET `sound10`='38738' WHERE `entry`=185197;
UPDATE `gameobject_template` SET `sound10`='38738' WHERE `entry`=185198;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=185224;
UPDATE `gameobject_template` SET `sound10`='1' WHERE `entry`=185225;
UPDATE `gameobject_template` SET `sound13`='1' WHERE `entry`=185296;
UPDATE `gameobject_template` SET `sound14`='19680' WHERE `entry`=185302;
UPDATE `gameobject_template` SET `type`='1',`displayid`='768',`sound0`='1',`sound1`='0',`sound3`='0' WHERE `entry`=185303;
UPDATE `gameobject_template` SET `sound2`='3428' WHERE `entry`=185322;
UPDATE `gameobject_template` SET `name`='ElfWallHanging09' WHERE `entry`=185459;
UPDATE `gameobject_template` SET `sound20`='0' WHERE `entry`=185460;
UPDATE `gameobject_template` SET `sound1`='1695',`sound2`='0',`sound3`='1' WHERE `entry`=185461;
UPDATE `gameobject_template` SET `sound1`='1695',`sound2`='0',`sound3`='1',`sound20`='0' WHERE `entry`=185462;
UPDATE `gameobject_template` SET `sound1`='1695',`sound2`='0',`sound3`='1',`sound20`='0' WHERE `entry`=185463;
UPDATE `gameobject_template` SET `sound1`='1695',`sound2`='0',`sound3`='1',`sound20`='0' WHERE `entry`=185464;
UPDATE `gameobject_template` SET `name`='Ethereum Stasis Chamber' WHERE `entry`=185465;
UPDATE `gameobject_template` SET `name`='Ethereum Stasis Chamber' WHERE `entry`=185466;
UPDATE `gameobject_template` SET `name`='Ethereum Stasis Chamber' WHERE `entry`=185467;
UPDATE `gameobject_template` SET `name`='Mailbox' WHERE `entry`=185477;
UPDATE `gameobject_template` SET `name`='Bogblossom' WHERE `entry`=185497;
UPDATE `gameobject_template` SET `name`='Bogblossom' WHERE `entry`=185499;
UPDATE `gameobject_template` SET `name`='Bogblossom' WHERE `entry`=185500;
UPDATE `gameobject_template` SET `name`='Bogblossom (harmless)' WHERE `entry`=185502;
UPDATE `gameobject_template` SET `name`='Baby_dw' WHERE `entry`=185505;
UPDATE `gameobject_template` SET `name`='Baby_Gn' WHERE `entry`=185506;
UPDATE `gameobject_template` SET `name`='Baby_Hu' WHERE `entry`=185507;
UPDATE `gameobject_template` SET `name`='Baby_Ne' WHERE `entry`=185508;
UPDATE `gameobject_template` SET `name`='Baby_Or' WHERE `entry`=185509;
UPDATE `gameobject_template` SET `name`='Baby_Ta' WHERE `entry`=185510;
UPDATE `gameobject_template` SET `name`='Baby_Tr' WHERE `entry`=185511;
UPDATE `gameobject_template` SET `sound1`='1729',`sound2`='0',`sound3`='1',`sound20`='0' WHERE `entry`=185512;
UPDATE `gameobject_template` SET `sound0`='1',`sound20`='0' WHERE `entry`=185521;
UPDATE `gameobject_template` SET `name`='Cookpot' WHERE `entry`=185528;
UPDATE `gameobject_template` SET `type`='10',`displayid`='7351',`sound0`='1691',`sound1`='10990',`sound3`='196608',`sound14`='21062' WHERE `entry`=185547;
UPDATE `gameobject_template` SET `sound2`='3959' WHERE `entry`=185550;
UPDATE `gameobject_template` SET `type`='10',`displayid`='7351',`sound0`='1691',`sound1`='10991',`sound3`='196608',`sound14`='21062' WHERE `entry`=185553;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185610;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185618;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185628;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185632;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185724;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185728;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185734;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185738;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185742;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185746;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185750;
UPDATE `gameobject_template` SET `name`='Simon Game Base Green Smalll' WHERE `entry`=185799;
UPDATE `gameobject_template` SET `name`='Fel Cannonball Stack' WHERE `entry`=185861;
UPDATE `gameobject_template` SET `name`='Nethercite Smoke Effect' WHERE `entry`=185878;
UPDATE `gameobject_template` SET `sound14`='19676' WHERE `entry`=185900;
UPDATE `gameobject_template` SET `type`='0',`displayid`='7390',`name`='Doodad_PVP_Lordaeron_Door02',`sound0`='0' WHERE `entry`=185917;
UPDATE `gameobject_template` SET `type`='0',`displayid`='7390',`name`='Doodad_PVP_Lordaeron_Door01',`sound0`='0' WHERE `entry`=185918;
UPDATE `gameobject_template` SET `sound0`='1690',`sound1`='0',`sound2`='0',`sound3`='8672',`sound5`='0',`sound6`='19700',`sound8`='0' WHERE `entry`=185920;
UPDATE `gameobject_template` SET `sound0`='1690',`sound1`='0',`sound2`='0',`sound3`='8677',`sound5`='0',`sound6`='19700',`sound8`='0' WHERE `entry`=185921;
UPDATE `gameobject_template` SET `sound3`='196608',`sound4`='0',`sound20`='0' WHERE `entry`=185922;
UPDATE `gameobject_template` SET `sound3`='196608',`sound4`='0' WHERE `entry`=185924;
UPDATE `gameobject_template` SET `name`='Fel Crystal Prism' WHERE `entry`=185927;
UPDATE `gameobject_template` SET `sound3`='5898240',`sound4`='0',`sound11`='1',`sound20`='0' WHERE `entry`=185952;
UPDATE `gameobject_template` SET `sound0`='1690',`sound1`='0',`sound2`='0',`sound3`='8707',`sound5`='0',`sound6`='19700',`sound8`='0' WHERE `entry`=185962;
UPDATE `gameobject_template` SET `sound0`='1690',`sound1`='0',`sound2`='0',`sound3`='8709',`sound5`='0',`sound6`='19700',`sound8`='0' WHERE `entry`=185964;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185967;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185968;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185969;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185970;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185972;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185973;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185974;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185975;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185978;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185979;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185980;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185981;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185982;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185983;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185984;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185985;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185986;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185987;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185988;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185989;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185990;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185991;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185992;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185993;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185994;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185997;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185998;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=185999;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186000;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186001;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186002;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186003;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186004;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186005;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186006;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186007;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186008;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186009;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186010;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186011;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186012;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186013;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186014;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186015;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186016;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186017;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186019;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186020;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=186023;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186028;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186029;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186031;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186032;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186033;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186036;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186037;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186038;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186039;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186040;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186041;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186042;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186043;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186044;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186045;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186046;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186047;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186048;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186049;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186050;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186051;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186052;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186053;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186054;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186055;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186056;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186057;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186058;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186059;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186060;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186061;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186062;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186063;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186064;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186065;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186066;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186067;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186068;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186069;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186071;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186072;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186073;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186074;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186075;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186076;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186077;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186078;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186079;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186080;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186081;
UPDATE `gameobject_template` SET `name`='Fire' WHERE `entry`=186082;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186083;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186084;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186085;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186086;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186087;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186088;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186089;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186090;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186091;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186092;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186093;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186094;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186095;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186096;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186097;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186098;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186099;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186100;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186101;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186102;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186103;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186104;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186105;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186106;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186107;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186108;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186109;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186110;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186111;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186112;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186113;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186114;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186115;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186116;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186117;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186118;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186119;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186124;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186125;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186126;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186127;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186128;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186129;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=186130;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=186131;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186134;
UPDATE `gameobject_template` SET `sound0`='4',`sound1`='10',`sound2`='2061',`sound3`='0',`sound20`='0' WHERE `entry`=186135;
UPDATE `gameobject_template` SET `sound0`='4',`sound1`='10',`sound2`='2061',`sound3`='0',`sound20`='0' WHERE `entry`=186136;
UPDATE `gameobject_template` SET `name`='Clay Oven' WHERE `entry`=186143;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186144;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186145;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186146;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186147;
UPDATE `gameobject_template` SET `name`='Brazier' WHERE `entry`=186148;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=186179;
UPDATE `gameobject_template` SET `name`='Bonfire' WHERE `entry`=186180;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=186181;
UPDATE `gameobject_template` SET `name`='Campfire' WHERE `entry`=186182;
UPDATE `gameobject_template` SET `sound0`='883' WHERE `entry`=186218;
UPDATE `gameobject_template` SET `sound0`='1',`sound1`='1',`sound3`='1',`sound20`='0' WHERE `entry`=186253;
UPDATE `gameobject_template` SET `sound0`='65536',`sound1`='65536' WHERE `entry`=190011;

-- Items: restore displayid 2.1.3
UPDATE `item_template` SET `displayid`='3509' WHERE `entry`='3335';
UPDATE `item_template` SET `displayid`='28853' WHERE `entry`='10175';
UPDATE `item_template` SET `displayid`='7743' WHERE `entry`='13507';
UPDATE `item_template` SET `displayid`='24221' WHERE `entry`='13545';
UPDATE `item_template` SET `displayid`='29724' WHERE `entry`='17696';
UPDATE `item_template` SET `displayid`='32958' WHERE `entry`='20561';
UPDATE `item_template` SET `displayid`='32959' WHERE `entry`='20562';
UPDATE `item_template` SET `displayid`='32961' WHERE `entry`='20563';
UPDATE `item_template` SET `displayid`='32963' WHERE `entry`='20564';
UPDATE `item_template` SET `displayid`='32971' WHERE `entry`='20571';
UPDATE `item_template` SET `displayid`='32972' WHERE `entry`='20573';
UPDATE `item_template` SET `displayid`='6270' WHERE `entry`='21900';
UPDATE `item_template` SET `displayid`='6270' WHERE `entry`='21901';
UPDATE `item_template` SET `displayid`='40558' WHERE `entry`='23822';
UPDATE `item_template` SET `displayid`='44561' WHERE `entry`='24545';
UPDATE `item_template` SET `displayid`='38349' WHERE `entry`='25130';
UPDATE `item_template` SET `displayid`='40810' WHERE `entry`='25254';
UPDATE `item_template` SET `displayid`='40812' WHERE `entry`='25268';
UPDATE `item_template` SET `displayid`='39433' WHERE `entry`='25276';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25474';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25475';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25476';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25477';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25531';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25532';
UPDATE `item_template` SET `displayid`='37427' WHERE `entry`='25533';
UPDATE `item_template` SET `displayid`='39340' WHERE `entry`='25535';
UPDATE `item_template` SET `displayid`='40147' WHERE `entry`='25561';
UPDATE `item_template` SET `displayid`='38105' WHERE `entry`='25886';
UPDATE `item_template` SET `displayid`='41535' WHERE `entry`='29044';
UPDATE `item_template` SET `displayid`='40465' WHERE `entry`='29045';
UPDATE `item_template` SET `displayid`='40467' WHERE `entry`='29046';
UPDATE `item_template` SET `displayid`='40643' WHERE `entry`='29047';
UPDATE `item_template` SET `displayid`='41382' WHERE `entry`='29048';
UPDATE `item_template` SET `displayid`='42418' WHERE `entry`='29246';
UPDATE `item_template` SET `displayid`='44571' WHERE `entry`='29247';
UPDATE `item_template` SET `displayid`='46073' WHERE `entry`='29983';
UPDATE `item_template` SET `displayid`='46217' WHERE `entry`='29990';
UPDATE `item_template` SET `displayid`='45656' WHERE `entry`='30034';
UPDATE `item_template` SET `displayid`='41905' WHERE `entry`='30036';
UPDATE `item_template` SET `displayid`='46084' WHERE `entry`='30053';
UPDATE `item_template` SET `displayid`='46111' WHERE `entry`='30055';
UPDATE `item_template` SET `displayid`='46083' WHERE `entry`='30084';
UPDATE `item_template` SET `displayid`='46098' WHERE `entry`='30085';
UPDATE `item_template` SET `displayid`='42631' WHERE `entry`='30144';
UPDATE `item_template` SET `displayid`='42632' WHERE `entry`='30145';
UPDATE `item_template` SET `displayid`='42765' WHERE `entry`='30146';
UPDATE `item_template` SET `displayid`='42634' WHERE `entry`='30148';
UPDATE `item_template` SET `displayid`='42635' WHERE `entry`='30149';
UPDATE `item_template` SET `displayid`='42878' WHERE `entry`='30152';
UPDATE `item_template` SET `displayid`='18173' WHERE `entry`='30360';
UPDATE `item_template` SET `displayid`='45968' WHERE `entry`='30488';
UPDATE `item_template` SET `displayid`='42763' WHERE `entry`='30757';
UPDATE `item_template` SET `displayid`='42768' WHERE `entry`='30758';
UPDATE `item_template` SET `displayid`='42770' WHERE `entry`='30759';
UPDATE `item_template` SET `displayid`='45220' WHERE `entry`='30903';
UPDATE `item_template` SET `displayid`='45226' WHERE `entry`='30904';
UPDATE `item_template` SET `displayid`='45223' WHERE `entry`='30905';
UPDATE `item_template` SET `displayid`='45221' WHERE `entry`='30907';
UPDATE `item_template` SET `displayid`='44737' WHERE `entry`='30970';
UPDATE `item_template` SET `displayid`='45685' WHERE `entry`='30983';
UPDATE `item_template` SET `displayid`='45684' WHERE `entry`='30988';
UPDATE `item_template` SET `displayid`='45683' WHERE `entry`='30990';
UPDATE `item_template` SET `displayid`='45687' WHERE `entry`='30997';
UPDATE `item_template` SET `displayid`='45046' WHERE `entry`='31017';
UPDATE `item_template` SET `displayid`='45021' WHERE `entry`='31020';
UPDATE `item_template` SET `displayid`='45162' WHERE `entry`='31051';
UPDATE `item_template` SET `displayid`='45511' WHERE `entry`='31052';
UPDATE `item_template` SET `displayid`='45125' WHERE `entry`='31053';
UPDATE `item_template` SET `displayid`='44969' WHERE `entry`='31063';
UPDATE `item_template` SET `displayid`='44968' WHERE `entry`='31068';
UPDATE `item_template` SET `displayid`='43716' WHERE `entry`='31214';
UPDATE `item_template` SET `displayid`='45995' WHERE `entry`='31969';
UPDATE `item_template` SET `displayid`='45995' WHERE `entry`='31989';
UPDATE `item_template` SET `displayid`='46011' WHERE `entry`='31997';
UPDATE `item_template` SET `displayid`='46025' WHERE `entry`='32011';
UPDATE `item_template` SET `displayid`='46031' WHERE `entry`='32016';
UPDATE `item_template` SET `displayid`='46011' WHERE `entry`='32022';
UPDATE `item_template` SET `displayid`='46026' WHERE `entry`='32031';
UPDATE `item_template` SET `displayid`='46036' WHERE `entry`='32034';
UPDATE `item_template` SET `displayid`='46031' WHERE `entry`='32035';
UPDATE `item_template` SET `displayid`='46011' WHERE `entry`='32041';
UPDATE `item_template` SET `displayid`='45995' WHERE `entry`='32058';
UPDATE `item_template` SET `displayid`='44713' WHERE `entry`='32088';
UPDATE `item_template` SET `displayid`='45719' WHERE `entry`='32278';
UPDATE `item_template` SET `displayid`='45340' WHERE `entry`='32337';
UPDATE `item_template` SET `displayid`='45320' WHERE `entry`='32341';
UPDATE `item_template` SET `displayid`='45725' WHERE `entry`='32377';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32486';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32487';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32488';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32489';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32490';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32491';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32492';
UPDATE `item_template` SET `displayid`='31843' WHERE `entry`='32493';
UPDATE `item_template` SET `displayid`='45710' WHERE `entry`='32521';
UPDATE `item_template` SET `displayid`='18448' WHERE `entry`='32578';
UPDATE `item_template` SET `displayid`='45726' WHERE `entry`='32590';
UPDATE `item_template` SET `displayid`='45184' WHERE `entry`='32655';
UPDATE `item_template` SET `displayid`='12309' WHERE `entry`='32833';
UPDATE `item_template` SET `displayid`='12309' WHERE `entry`='32836';
UPDATE `item_template` SET `displayid`='6359' WHERE `entry`='32839';
UPDATE `item_template` SET `displayid`='6359' WHERE `entry`='32849';
UPDATE `item_template` SET `displayid`='6359' WHERE `entry`='32850';
UPDATE `item_template` SET `displayid`='6359' WHERE `entry`='32851';
UPDATE `item_template` SET `displayid`='6359' WHERE `entry`='32852';
UPDATE `item_template` SET `displayid`='41367' WHERE `entry`='32962';
UPDATE `item_template` SET `displayid`='23422' WHERE `entry`='33122';

-- Items: restore of class=0 ones
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=118;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=858;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=929;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=954;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=955;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=1180;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=1181;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=1251;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=1477;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=1478;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=1710;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=1711;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=1712;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=2289;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=2290;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2454;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2455;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2456;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2457;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2458;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2459;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=2581;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2593;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=2686;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=3012;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=3013;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3382;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3383;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3384;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3385;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3386;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3387;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3388;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3389;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3390;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3391;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=3530;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=3531;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3823;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3825;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3826;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3827;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3828;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=3928;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=4419;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=4421;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=4422;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=4424;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=4425;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=4426;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=4596;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=4623;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=4953;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=5509;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=5510;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=5511;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=5512;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=5513;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=5514;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=5631;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=5633;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=5634;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=5996;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=5997;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6048;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6049;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6050;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6051;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6052;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6149;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6362;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6372;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6373;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=6450;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=6451;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6486;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=6662;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=7676;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=8007;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=8008;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=8529;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=8544;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=8545;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=8949;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=8951;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9030;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9036;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9144;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9154;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9155;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9172;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9179;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9187;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9197;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9206;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9224;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9233;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9260;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=9264;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=9421;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=10305;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=10306;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=10307;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=10308;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=10309;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=10310;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=10592;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=11325;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=12190;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13442;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13443;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13444;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13445;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13446;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13447;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13452;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13453;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13454;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13455;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13456;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13457;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13458;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13459;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13461;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13462;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13506;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13510;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13511;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13512;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13513;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13760;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13889;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=13932;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=14529;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=14530;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17048;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17348;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17349;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17351;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17352;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17402;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=17708;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=18253;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=18294;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=18839;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=18841;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19004;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19005;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19006;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19007;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19008;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19009;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19010;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19011;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19012;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=19013;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=19066;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=19067;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=19068;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=19307;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=20002;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=20004;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=20007;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=20008;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20065;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20066;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20067;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20232;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20234;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20235;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20237;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20243;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=20244;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=20471;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=20709;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=21114;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=21151;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=21546;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=21990;
UPDATE `item_template` SET `SubClass`=5 WHERE `entry`=21991;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22044;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22058;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=22103;
UPDATE `item_template` SET `SubClass`=6 WHERE `entry`=22104;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22192;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22193;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22779;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22823;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22824;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22825;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22826;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22827;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22828;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22829;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22830;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22831;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22832;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22833;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22834;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22835;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22836;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22837;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22838;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22839;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22840;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22841;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22842;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22844;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22845;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22846;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22847;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22848;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22849;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22850;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22851;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22853;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22854;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22861;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22866;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=22871;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=23586;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=23822;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=23823;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=23871;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=27498;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=27499;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=27500;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=27501;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=27502;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=27503;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=28100;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=28101;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=28102;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=28103;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=28104;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=29528;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=29529;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=29530;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=29531;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=29532;
UPDATE `item_template` SET `SubClass`=4 WHERE `entry`=30811;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=30858;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31676;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31677;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31679;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31838;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31839;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31840;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31841;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31852;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31853;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31854;
UPDATE `item_template` SET `SubClass`=3 WHERE `entry`=31855;

-- minor other fixes
UPDATE gameobject_template SET size=1 WHERE entry=180655;
UPDATE `creature` SET `equipment_id`=0;
UPDATE `creature_template` SET `armor` = 1600 WHERE `entry` = 4887;
UPDATE `creature_template` SET `faction_A` = 85, `faction_H` = 85 WHERE `entry` = 12788;
update `item_template` set `spellppmRate_1`=3 where `entry`='30090';
-- All frenzies found so far
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` in (905, 1193, 2173, 2174, 6033, 8236, 11374, 14356, 15505, 16404, 16405, 18212, 20465, 20667, 21508, 21689, 21943);
-- also Lake Frenzy was type NOT SPECIFIED
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 6033;

-- all sharks
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` in (5185, 5186, 5434, 5435, 12123, 12124, 12125, 15661);

-- Rippa, Deep Pool Threshf1n
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` in (14490, 4827);

-- Darkshore Tresher, Elder Darkshore Thresher, Murk Thresher, Younger Murk Thresher, Elder Murk Thresher, Lake Thresher
-- All other Threshers are on land, afaik
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` in (2185, 2187, 4388, 4389, 4390, 14357);

-- Umbrafen Eel, Shimerscale Eel, Lagoon Eel
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` in (18138, 18750, 20290);

-- Stinkhorn Striker (fish in draenei starting area
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` = 17673;

-- Nessy
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` = 10942;

-- Gesharahan
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` = 3398;

-- Deviate Lurker
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` = 3641;

-- Rotgrip
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` = 13596;

-- The Lurker Below (don't think he is walking on land)
UPDATE `creature_template` SET `InhabitType` = 2 where `entry` = 21217;

-- Maws (summoned mob for AQ opening quest), also wrong faction?
UPDATE `creature_template` SET `faction_A`= 14, `faction_H` = 14, `InhabitType` = 2 where `entry` = 15571;

DELETE FROM `creature` WHERE `guid` = 47648;
DELETE FROM gameobject WHERE guid=33294;

UPDATE `creature` SET `spawndist` = '0', `MovementType` = '1' WHERE `guid` =57656;
UPDATE `creature` SET `spawndist` = '0' WHERE `creature`.`guid` =57668 LIMIT 1 ;
UPDATE `creature` SET `spawndist` = '0' WHERE `creature`.`guid` =79033 LIMIT 1 ;
UPDATE creature_template SET faction_A=14, faction_H=14, flags=0, dynamicflags=0 WHERE entry=16120;

-- Blackhand Veterans were skinnable... poor Orc *sob*
UPDATE `creature_template` SET `skinloot` = 0 WHERE `entry` = 9819;
DELETE FROM `skinning_loot_template` WHERE (`entry`=9819);

-- Fire Elemental Totem trainer fix
delete from `npc_trainer` where spell=3410;
insert into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values
('3032','3410','63900','0','0','68'),
('23127','3410','63900','0','0','68'),
('17204','3410','63900','0','0','68'),
('20407','3410','63900','0','0','68'),
('17520','3410','63900','0','0','68'),
('986','3410','63900','0','0','68'),
('17519','3410','63900','0','0','68'),
('3344','3410','63900','0','0','68'),
('3066','3410','63900','0','0','68'),
('13417','3410','63900','0','0','68'),
('3403','3410','63900','0','0','68'),
('3030','3410','63900','0','0','68'),
('17219','3410','63900','0','0','68'),
('3173','3410','63900','0','0','68'),
('3031','3410','63900','0','0','68'),
('17212','3410','63900','0','0','68');

-- The Arena Master is missing in the chest in Stranglethorn
UPDATE `gameobject_loot_template` SET `ChanceOrRef`='100' WHERE (`entry`='179697') AND (`item`='18706');

-- Hawkbane, removed in 2.1
DELETE FROM creature WHERE guid=84899;
DELETE FROM creature_addon WHERE guid=84899;
DELETE FROM npc_gossip WHERE npc_guid=84899;
DELETE FROM creature_movement WHERE id=84899;

-- Guroc the Usurper, wrong faction
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 18182;

-- Seth
UPDATE creature SET map=530, position_x=-1612.66, position_y=5315.41, position_z=-40.2089, orientation=6.04818, spawndist=0, currentwaypoint=0, spawn_position_x=-1612.66, spawn_position_y=5315.41, spawn_position_z=-40.2089, spawn_orientation=6.04818 WHERE guid=66909;

-- temporary fake GO until we have his real entry
INSERT IGNORE INTO gameobject_template (entry, type, displayId, name, faction, flags, size, sound0, sound1, sound2, sound3, sound4, sound5, sound6, sound7, sound8, sound9, sound10, sound11, sound12, sound13, sound14, sound15, sound16, sound17, sound18, sound19, sound20, sound21, sound22, sound23, ScriptName) VALUES
    (1434, 8, 0, "Vekh'nir Circle", 0, 0, 1, 1434, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "");
INSERT IGNORE INTO gameobject (guid,id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, loot, spawntimesecs, animprogress, dynflags) VALUES
    (49999,1431, 530, "1708.55", "4624.57", "144.298", "2.94476", 0, 0, "0.995161", "0.0982575", 0, 25, 0, 0);

-- Need to ensure removed items in 317 are not sold anymore
DELETE FROM `npc_vendor` WHERE `item` IN (100,192,913,964,997,1024,1026,1027,1029,1041,1057,1133,1134,1146,1162,1166,1167,1189,1193);
DELETE FROM `npc_vendor` WHERE `item` IN (1255,1258,1298,1324,1386,1623,1914,2016,2128,2133,2377,2410,2413,2415,2441,2442,2443,2444);
DELETE FROM `npc_vendor` WHERE `item` IN (2460,2481,2482,2483,2484,2485,2486,2487,2496,2497,2498,6343,6589,6648,6649,7466,7467,7497);
DELETE FROM `npc_vendor` WHERE `item` IN (7548,17982,31802);

-- Item workaround Normal class is 12=quest (Lesser Bloodstone Ore)
UPDATE `gameobject_loot_template` SET `ChanceOrRef` = '100', `QuestChanceOrGroup` = 0 WHERE `entry` = 2653 and `item` = 4278;
UPDATE `item_template` SET `class` = '15' WHERE `entry` = 4278;

-- Sunfury Bowman loot template
DELETE FROM `creature_loot_template` WHERE `entry`=20207 and `item` = 23808;
INSERT INTO `creature_loot_template` VALUES (20207, 23808, 0.4, 0, 1, 1, 1);

-- Returnin of the quest id 11007
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11007;
INSERT INTO `creature_involvedrelation` VALUES ('18481','11007');

-- Add loot in inscribed scrollcase
DELETE FROM `item_loot_template` WHERE `entry` = 27511;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) VALUES
    (27511, 27501, 18, 0, 1, 3, 0),
    (27511, 27503, 16, 0, 1, 3, 0),
    (27511, 27498, 17, 0, 1, 3, 0),
    (27511, 27502, 17, 0, 1, 3, 0),
    (27511, 27500, 16, 0, 1, 3, 0),
    (27511, 27499, 16, 0, 1, 3, 0);

-- Quest 9066 is missing ReqSpellCast1 = 27907 or you cant hit him and quest is not finishable 
UPDATE `quest_template` SET `ReqSpellCast1` = 27907 WHERE `entry` = 9066;

-- Artisan fishing quest should not have pre-req's
UPDATE `quest_template` SET `MinLevel` = 35, `NextQuestId` = 0 WHERE `entry` IN (6608, 6609);

-- Quests fixes by fluff reviewed by MuuGi
-- -----------
-- The Tome of Divinity (Human Paladin)
UPDATE `quest_template` SET `PrevQuestId`='1642' WHERE (`entry`='1643'); -- probly that 1642 is not needed for 1643
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES ('6171','2998');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='2998');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1642');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1643');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1644');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1780');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1781');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1786');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1787');
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1788');
-- An Ambassador of Evil
UPDATE `quest_template` SET `NextQuestInChain`='1139' WHERE (`entry`='762');
-- The Lost Tablets of Will
UPDATE `quest_template` SET `PrevQuestId`='762' WHERE (`entry`='1139');
-- I Know a Guy
UPDATE `quest_template` SET `NextQuestInChain`='6610' WHERE (`entry`='6612');
-- Clamlette Surprise
UPDATE `quest_template` SET `PrevQuestId`='6612' WHERE (`entry`='6610');
-- Sweet Serenity
UPDATE `quest_template` SET `MinLevel`='60' WHERE (`entry`='8869');
-- The Alliance Needs Your Help!
-- UPDATE `quest_template` SET `MinLevel`='56' WHERE (`entry`='8795'); -- why not current 49?
-- The Hero of the Day
UPDATE `quest_template` SET `QuestLevel`='70' WHERE (`entry`='8763');
UPDATE `quest_template` SET `QuestLevel`='70' WHERE (`entry`='8799');
-- Metzen the Reindeer
-- UPDATE `quest_template` SET `MinLevel`='60' WHERE (`entry`='8746');
-- UPDATE `quest_template` SET `MinLevel`='60' WHERE (`entry`='8762'); -- current 40 is better
-- In Favor of the Light (Human Priest)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='5623');
-- In Favor of the Light (Dwarf Priest)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='5626');
-- Garments of the Light (Human Priest)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='5624');
-- Garments of the Light (Dwarf Priest)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='5625');
-- Westfall Stew
UPDATE `quest_template` SET `NextQuestInChain`='38' WHERE (`entry`='36');
UPDATE `quest_template` SET `PrevQuestId`='36' WHERE (`entry`='38');
-- Muren Stormpike
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='1679');
-- Vejrek
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='1678');
-- Tormus Deepforge
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='1680');
-- Ironband's Compound
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='1681');
UPDATE `quest_template` SET `NextQuestInChain`='1682' WHERE (`entry`='1681');
-- Grey Iron Weapons
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='1682'); -- why only for dwarves if gnomes can do the previous ones? 4 -> 68
-- Road to Salvation
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='2218');
-- Simple Subterfugin'
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='2238');
-- Onin's Report
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='2239');
-- To Hulfdan!
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='2299');
-- Kingly Shakedown
UPDATE `quest_template` SET `RequiredRaces`='68' WHERE (`entry`='2298');
-- Seek Out SI:7
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='2205');
-- Snatch and Grab
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='2206');
-- Speak with Jennea
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1860');
-- Mirror Lake
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1861');
-- The Day After
UPDATE `quest_template` SET `NextQuestInChain`='2926' WHERE (`entry`='2927');
-- Gnogaine
UPDATE `quest_template` SET `NextQuestInChain`='2962' WHERE (`entry`='2926');
-- A Warrior's Training
-- UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1638');
-- Bartleby the Drunk
-- UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1639');
-- Beat Bartleby
-- UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='1640'); -- isn't this for all allies except for draeneis...?
-- Simple Letter (Human Warrior)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='3100');
-- Consecrated Letter (Human Paladin)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='3101');
-- Encrypted Letter (Human Rogue)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='3102');
-- Hallowed Letter (Human Priest)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='3103');
-- Glyphic Letter (Human Mage)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='3104');
-- Tainted Letter (Human Warlock)
UPDATE `quest_template` SET `RequiredRaces`='1' WHERE (`entry`='3105');
-- Simple Rune (Dwarf Warrior)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='3106');
-- Consecrated Rune (Dwarf Paladin)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='3107');
-- Etched Rune (Dwarf Hunter)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='3108');
-- Encrypted Rune (Dwarf Rogue)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='3109');
-- Hallowed Rune (Dwarf Priest)
UPDATE `quest_template` SET `RequiredRaces`='4' WHERE (`entry`='3110');
-- Simple Memorandum (Gnome Warrior)
UPDATE `quest_template` SET `RequiredRaces`='64' WHERE (`entry`='3112');
-- Encrypted Memorandum (Gnome Rogue)
UPDATE `quest_template` SET `RequiredRaces`='64' WHERE (`entry`='3113');
-- Glyphic Memorandum (Gnome Mage)
UPDATE `quest_template` SET `RequiredRaces`='64' WHERE (`entry`='3114');
-- Tainted Memorandum (Gnome Warlock)
UPDATE `quest_template` SET `RequiredRaces`='64' WHERE (`entry`='3115');
-- The Tome of Nobility
UPDATE `quest_template` SET `ReqSpellCast1`='0' WHERE (`entry`='1661'); -- no idea
-- The Tome of Valor
UPDATE `quest_template` SET `ReqSpellCast1`='0' WHERE (`entry`='1652'); -- no idea
-- Wait for Sirra to Finish
UPDATE `quest_template` SET `MinLevel`='20' WHERE (`entry`='401'); -- why not 23 or 22?
-- Sirra is Busy
UPDATE `quest_template` SET `MinLevel`='20' WHERE (`entry`='402');
-- Vime's Report
UPDATE `quest_template` SET `QuestLevel`='33' WHERE (`entry`='1289');
-- Stormwind Library
UPDATE `quest_template` SET `QuestLevel`='5' WHERE (`entry`='579');
-- Examine the Vessel
UPDATE `quest_template` SET `MinLevel`='59',`QuestLevel`='60' WHERE (`entry`='7522'); -- minlvl 59?
-- Thunderaan the Windseeker
UPDATE `quest_template` SET `MinLevel`='60',`QuestLevel`='60' WHERE (`entry`='7521');
-- A Festive Gift
UPDATE `quest_template` SET `MinLevel`='10' WHERE (`entry`='8803');
-- Call of Water
UPDATE `quest_template` SET `MinLevel`='20' WHERE (`entry`='2986');

-- Some critters loot/skin/health update
UPDATE `creature_template` SET `minhealth`=40,`maxhealth`=40,`maxdmg`=3 WHERE `entry`=13321;
UPDATE `creature_template` SET `minhealth`=100,`maxhealth`=100 WHERE `entry`=10780;
UPDATE `creature_template` SET `lootid`=3444 WHERE `entry`=3444;
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrRef`,`QuestChanceOrGroup`,`mincount`,`maxcount`,`quest_freeforall`) VALUES
    (3444,5051,96.0,-1,1,1,0),
    (3444,5052,4.0,-1,1,1,0);
UPDATE `creature_template` SET `skinloot`=12297 WHERE `entry`=12297;
UPDATE `creature_template` SET `skinloot`=10780 WHERE `entry`=10780;
DELETE FROM `skinning_loot_template` WHERE `entry` IN (12297);
INSERT IGNORE INTO `skinning_loot_template` (`entry`,`item`,`ChanceOrRef`,`QuestChanceOrGroup`,`mincount`,`maxcount`,`quest_freeforall`) VALUES
    (12297,2934,94.0,-1,1,1,1),
    (12297,2318,6.0,-1,1,1,1);

-- ejiki2
INSERT IGNORE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) VALUES (33, 19805, 0.3, 0, 1, 1, 1);
INSERT IGNORE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) VALUES (33, 19803, 0.3, 0, 1, 1, 1);
INSERT IGNORE INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) VALUES (33, 19806, 0.3, 0, 1, 1, 1);

INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(90517,15077,0,0,50360174,'-14437.3','473.092','15.3244','0.622028',25,0,0,'-14437.3','473.092','15.3244',0,3700,0,0,0,'');
DELETE FROM `creature_questrelation` WHERE `quest` = 8225;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8225;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8225;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15079, 8225);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15079;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8225;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8225;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15079, 8225);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15079;
REPLACE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (8225, -101, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 'Rare Fish - Brownell\'s Blue Striped Racer', '*Whir* *Click*  I seek rare fish for Fishmaster Bluegill to catalogue.   If you bring me a Brownell\'s Blue Striped Racer, I will provide you with this fine reward. *Zzzap* *Whir*', 'catch Brownell\'s Blue Striped Racer and deliver this tj Fishbot.5000 in Booty bay', '*Whir* Identification of Brownell\'s Racer complete. Your Reward is now available. *click* *click* *Bzzzz*', '', '', '', '', '', '', 19803, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19969, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature_questrelation` WHERE `quest` = 8221;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8221;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8221;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15079, 8221);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15079;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8221;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8221;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15079, 8221);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15079;
REPLACE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (8221, -101, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 'Rare Fish - Keefer\'s Angelfish', '*Whir* *Click*$B$B I seek rare fish for Fishmaster Bluegill to catalogue.   If you bring me a Keefer\'s Angelfish, I will provide you with this fine reward. $B$B*Zzzap* *Whir*', 'Cath Keefe\'s Angelfish and deliver this to Fishbot-5000 in Booty Bay', '', '', 'Whir* $B$BIdentification of Keefer\'s Angelfish complete. $B$BYour Reward is now available. $B$B*click-click* *Bzzzz*', '', '', '', '', 19805, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19972, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature_questrelation` WHERE `quest` = 8224;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8224;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8224;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15079, 8224);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15079;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8224;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8224;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15079, 8224);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15079;
REPLACE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (8224, -101, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 'Rare Fish - Dezian Queenfish', '*Whir* *Click*$B$B I seek rare fish for Fishmaster Bluegill to catalogue.   If you bring me a Dezian Queenfish, I will provide you with this fine reward. $B$B*Zzzap* *Whir*', 'Catch Dezian Queenfish and deliver it to Fishbot.5000 in Booty Bay', '', '', '*Whir* $B$BIdentification of Dezian Queenfish complete. $B$BYour Reward is now available. $B$B*click.click* *Bzzzz*', '', '', '', '', 19806, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19971, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 8193;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8193;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8193;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15077, 8193);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15077;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8193;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8193;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15077, 8193);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15077;
REPLACE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (8193, -101, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 7200, 17, 0, 0, 0, 0, 0, 0, 0, 'Master Angler', 'Today  we have a contest to determine who the greatest angler of them all is!   Just be the  PERSON to bring me 40 Tastyfish fished from the Tastyfish schools found along the coast of Stranglethorn before anyone else does and you will be declared the Master Angler! $B$BOh, and don\'t delay, Tastyfish go bad quickly!', 'Catch 40 Speckled Tastyfish and bring it to Riggle Bassbait in Booty Bay', '', '', 'Hurry up and turn those in if you want to be declared the Master Angler!  I have been standing around here for HOURS with nothing to eat!   Hand those suckers over!', '', '', '', '', 19807, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19970, 19979, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `creature_template` WHERE (`entry`=24004);
INSERT INTO `creature_template` (`entry`, `modelid_a`, `modelid_h`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_a`, `faction_h`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `ScriptName`) VALUES (24004, 21973, 21974, 'Swift Spectral Tiger', '', 1, 2, 380, 14000, 53, 53, 1, 35, 35, 0, '1.36', 0, 1, 2, 100, 2000, 2200, 0, 0, 0, 0, 0, 0, 0, '1.03448', '1.33448', 100, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, 3, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=24003);
INSERT INTO `creature_template` (`entry`, `modelid_a`, `modelid_h`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_a`, `faction_h`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `ScriptName`) VALUES (24003, 21973, 21974, 'Spectral Tiger', '', 1, 2, 380, 14000, 53, 53, 1, 35, 35, 0, '1.36', 0, 1, 2, 100, 2000, 2200, 0, 0, 0, 0, 0, 0, 0, '1.03448', '1.33448', 100, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, '', 0, 3, 0, '');

UPDATE item_template SET Quality='4' WHERE entry = '33225';

-- Pet food diets
-- ---------------
-- Meat count: 112
-- Fish Count: 89
-- Cheese count: 13
-- Bread Count: 25
-- Fungus Count: 10
-- Fruit Count: 16
-- Raw meat: 0
-- Raw fish: 0
-- ----------------
-- 265
-- Clear old data if exists
UPDATE `item_template` SET FoodType = 0;
-- MEAT
UPDATE `item_template` SET FoodType = 1 WHERE `entry` IN (
    7097,  -- Leg Meat
    19304, -- Spiced Beef Jerky
    19305, -- Pickled Kodo Foot
    19306, -- Crunchy Frog
    19223, -- Darkmoon Dog
    20424, -- Sandworm Meat
    20074, -- Heavy Crocolisk Stew
    21023, -- Dirge's Kickin' Chimaerok Chops
    23495, -- Springpaw Appetizer
    27635, -- Lynx Steak
    27636, -- Bat Bites
    22645, -- Crunchy Spider Surprise
    24105, -- Roasted Moongraze Tenderloin.
    23676, -- Moongraze Stag Tenderloin.
    29292, -- Helboar Bacon
    27658, -- Roasted Clefthoof
    27659, -- Warp Burger
    27651, -- Buzzard Bites
    27660, -- Talbuk Steak
    27657, -- Blackened Basilisk
    27854, -- Smoked Talbuk Venison
    29451, -- Clefthoof Ribs
    21235, -- Winter Veil Roast
    19995, -- Harvest Boar (seasonal food)
    4457,  -- Barbecued Buzzard Wing
    2888,  -- Beer Basted Boar Ribs
    3726,  -- Big Bear Steak
    3220,  -- Blood Sausage
    12213, -- Carrion Surprise
    2679,  -- Charred Wolf Meat
    2684,  -- Coyote Steak
    12224, -- Crispy Bat Wing
    5479,  -- Crispy Lizard Tail
    3662,  -- Crocolisk Steak
    4599,  -- Cured Ham Steak
    17119, -- Deeprun Rat Kabob
    5478,  -- Dig Rat Stew
    12217, -- Dragonbreath Chili
    2687,  -- Dry Pork Ribs
    9681,  -- Grilled King Crawler Legs
    2287,  -- Haunch of Meat
    3727,  -- Hot Lion Chops
    13851, -- Hot Wolf Ribs
    12212, -- Jungle Stew
    5472,  -- Kaldorei Spider Kabob
    5480,  -- Lean Venison
    12209, -- Lean Wolf Steak
    12223, -- Meaty Bat Wing
    3770,  -- Mutton Chop
    12184, -- Raptor Flesh
    12210, -- Roast Raptor
    2681,  -- Roasted Boar Meat
    5474,  -- Roasted Kodo Meat
    8952,  -- Roasted Quail
    1017,  -- Seasoned Wolf Kabob
    5465,  -- Small Spider Leg
    6890,  -- Smoked Bear Meat
    3729,  -- Soothing Turtle Bisque
    2680,  -- Spiced Wolf Meat
    17222, -- Spider Sausage
    5477,  -- Strider Stew
    2685,  -- Succulent Pork Ribs
    3728,  -- Tasty Lion Steak
    117,   -- Tough Jerky
    3771,  -- Wild Hog Shank
    729,   -- Stringy Vulture Meat
    2886,  -- Crag Boar Rib
    27668, -- Lynx Meat
    27669, -- Bat Flesh
    22644, -- Crunchy Spider Leg
    27677, -- Chunk o' Basilisk
    27678, -- Clefthoof Meat
    27674, -- Ravager Flesh
    27681, -- Warped Flesh
    27671, -- Buzzard Meat
    27682, -- Talbuk Venison
    3173,  -- Bear Meat
    3730,  -- Big Bear Meat
    3404,  -- Buzzard Wing
    769,   -- Chunk of Boar Meat
    2673,  -- Coyote Meat
    2677,  -- Boar Ribs
    1081,  -- Crisp Spider Meat
    5051,  -- Dig Rat
    2924,  -- Crocolisk Meat
    12204, -- Heavy Kodo Meat
    5467,  -- Kodo Meat
    1015,  -- Lean Wolf Flank
    3731,  -- Lion Meat
    12037, -- Mystery Meat
    4739,  -- Plainstrider Meat
    12203, -- Red Wolf Meat
    5471,  -- Stag Meat
    5469,  -- Strider Meat
    2672,  -- Stringy Wolf Meat
    3667,  -- Tender Crocolisk Meat
    12208, -- Tender Wolf Meat
    18045, -- Tender Wolf Steak
    5470,  -- Thunder Lizard Tail
    12202, -- Tiger Meat
    3712,  -- Turtle Meat
    12205, -- White Spider Meat
    11444, -- Grim Guzzler Boar
    30610, -- Smoked Black Bear Meat
    19224, -- Red Hot Wings
    12215, -- Heavy Kodo Stew
    3664,  -- Crocolisk Gumbo
    723,   -- Goretusk Liver
    731,   -- Goretusk Snout
    724,   -- Goretusk Liver Pie
    27655, -- Ravager Dog
    31673  -- Crunchy Serpent
    -- 2.2.x content (not in our database yet)
    -- 33254, -- Afrazi Forest Strider Drumstick
    -- 34063, -- Dried Sausage
    -- 33024, -- Pickled Sausage
    -- 33023, -- Savory Sausage
    -- 33025, -- Spicy Sausage
    -- 33026, -- The Golden Link
    -- 34064, -- Succulent Sausage
);
-- FISH
-- one ID from the original list is not in our database
UPDATE `item_template` SET FoodType = 2 WHERE `entry` IN (
    5527,  -- Goblin Deviled Clams
    6316,  -- Loch Frenzy Delight
    16766, -- Undermine Clam Chowder
    21552, -- Striped Yellowtail
    27665, -- Poached Bluefish
    27667, -- Spicy Crawdad
    27664, -- Grilled Mudfish
    27663, -- Blackened Sporefish
    27662, -- Feltail Delight
    27422, -- Barbed Gill Trout
    30155, -- Clam Bar
    27858, -- Sunspring Carp
    2682,  -- Cooked Crab Claw
    13889, -- Raw Whitescale Salmon
    19996, -- Harvest Fish
    13933, -- Lobster Stew
    13935, -- Baked Salmon
    6290,  -- Brilliant Smallfish
    4593,  -- Bristle Whisker Catfish
    16971, -- Clamlette Surprise
    13927, -- Cooked Glossy Mightfish
    13930, -- Filet of Redgill
    5476,  -- Fillet of Frenzy
    6038,  -- Giant Clam Scorcho
    13928, -- Grilled Squid
    13929, -- Hot Smoked Bass
    4592,  -- Longjaw Mud Snapper
    8364,  -- Mithril Head Trout
    13932, -- Poached Sunscale Salmon
    5095,  -- Rainbow Fin Albacore
    13760, -- Raw Sunscale Salmon
    4594,  -- Rockscale Cod
    787,   -- Slitherskin Mackerel
    5468,  -- Soft Frenzy Flesh
    15924, -- Soft-shelled Clam Meat
    12216, -- Spiced Chili Crab
    8957,  -- Spinefin Halibut
    6887,  -- Spotted Yellowtail
    5504,  -- Tangy Clam Meat
    33048, -- Stewed Trout
    33052, -- Hot Buttered Trout
    33053, -- Fisherman's Feast
    12238, -- Darkshore Grouper
    13759, -- Raw Nightfin Snapper
    21071, -- Raw Sagefish
    21153, -- Raw Greater Sagefish
    27437, -- Icefin Bluefish
    27439, -- Furious Crawdad
    27438, -- Golden Darter
    27435, -- Figluster's Mudfish
    27429, -- Zangarian Sporefish
    27425, -- Spotted Feltail
    27661, -- Blackened Trout
    24477, -- Jaggal Clam Meat
    29452, -- Zangar Trout
    13888, -- Darkclaw Lobster
    13546, -- Bloodbelly Fish
    5503, -- Clam Meat
    2675, -- Crawler Claw
    4655, -- Giant Clam Meat
    13893, -- Large Raw Mightfish
    6291, -- Raw Brilliant Smallfish
    6308, -- Raw Bristle Whisker Catfish
    13754, -- Raw Glossy Mightfish
    6317, -- Raw Loch Frenzy
    6289, -- Raw Longjaw Mud Snapper
    8365, -- Raw Mithril Head Trout
    6361, -- Raw Rainbow Fin Albacore
    13758, -- Raw Redgill
    6362, -- Raw Rockscale Cod
    6303, -- Raw Slitherskin Mackerel
    8959, -- Raw Spinefin Halibut
    4603, -- Raw Spotted Yellowtail
    13756, -- Raw Summer Bass
    12206, -- Tender Crab Meat
    13755, -- Winter Squid
    7974, -- Zesty Clam Meat
    13931, -- Nightfin Soup
    6038,  -- Giant Clam Scorcho
    4655,  -- Giant Clam Meat
    6458,  -- Oil Covered Fish
    -- 6299, -- Sickly Looking Fish - not in database
    1326,  -- Sauteed Sunfish
    27666, -- Golden Fish Sticks
    13934, -- Mightfish Steak
    21217, -- Sagefish Delight
    21072, -- Smoked Sagefish
    5525,  -- Boiled Clams
    5526   -- Clam Chowder
);
-- CHEESE
UPDATE `item_template` SET FoodType = 3 WHERE `entry` IN (
    3665,  -- Curiously Tasty Omelet
    12218, -- Monster Omelet
    17406, -- Holiday Cheesewheel
    30458, -- Stromgarde Muenster
    29448, -- Mag'har Mild Cheese
    27857, -- Garadar Sharp
    8932,  -- Alterac Swiss
    414,   -- Dalaran Sharp
    2070,  -- Darnassian Bleu
    422,   -- Dwarven Mild
    3927,  -- Fine Aged Cheddar
    1707   -- Stormwind Brie
    -- 34065, -- Spiced Onion Cheese 2.2.x content (not in our database yet)
);
-- BREAD
UPDATE `item_template` SET FoodType = 4 WHERE `entry` IN (
    1113,  -- Conjured Bread
    5349,  -- Conjured Muffin.
    1487,  -- Conjured Pumpernickel
    1114,  -- Conjured Rye
    8075,  -- Conjured Sourdough
    8076,  -- Conjured Sweet Roll
    22895, -- Conjured Cinnamon Roll
    22019, -- Conjured Croissant
    23160, -- Friendship Bread
    30817, -- Spice Bread
    29394, -- Lyribread
    28486, -- Moser's Magnificent Muffin.
    27855, -- Mag'har Grainbread
    29449, -- Bladespire Bagel
    19696, -- Harvest Bread
    21254, -- Winter Veil Cookie
    2683,  -- Crab Cake
    4541,  -- Freshly Baked Bread
    17197, -- Gingerbread Cookie
    3666,  -- Gooey Spider Cake
    8950,  -- Homemade Cherry Pie
    4542,  -- Moist Cornbread
    4544,  -- Mulgore Spice Bread
    4601,  -- Soft Banana Bread
    4540,  -- Tough Hunk of Bread
    16169, -- Wild Ricecake
    20857  -- Honey Bread
);
-- FUNGUS
UPDATE `item_template` SET FoodType = 5 WHERE `entry` IN (
    28112, -- Underspore Pod
    24539, -- Marsh Lichen
    27859, -- Zangar Caps
    4607,  -- Delicious Cave Mold
    8948,  -- Dried King Bolete
    4604,  -- Forest Mushroom Cap
    4608,  -- Raw Black Truffle
    4605,  -- Red-speckled Mushroom
    3448,  -- Senggin Root
    4606   -- Spongy Morel
);
-- FRUIT
UPDATE `item_template` SET FoodType = 6 WHERE `entry` IN (
    4656,  -- Small Pumpkin.
    21030, -- Darnassus Kimchi Pie
    21031, -- Cabbage Kimchi
    21033, -- Radish Kimchi
    29393, -- Diamond Berries
    27856, -- Skethyl Berries
    29450, -- Telaari Grapes
    19994, -- Harvest Fruit
    8953,  -- Deep Fried Plantains
    4539,  -- Goldenbark Apple
    16168, -- Heaven Peach
    4602,  -- Moon Harvest Pumpkin.
    4536,  -- Shiny Red Apple
    4538,  -- Snapvine Watermelon
    4537,  -- Tel'Abim Banana
    11950, -- Windblossom Berries
    24072, -- Sand Pear Pie
    5057   -- Ripe Watermelon
);

-- Items ppm values
-- ----------------
-- 2h maces
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=5815;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=12528;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=9423;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=15418;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=12969;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=10626;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=17766;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=13393;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=12796;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=14531;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=11803;
UPDATE item_template SET spellppmrate_1=0.18 WHERE `entry`=11608;
UPDATE item_template SET spellppmrate_1=1.875 WHERE `entry`=7730;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=3194;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=30090;
UPDATE item_template SET spellppmrate_2=1 WHERE `entry`=19323;
UPDATE item_template SET spellppmrate_1=2.5 WHERE `entry`=31322;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=2915;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=17193;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=28442;
UPDATE item_template SET spellppmrate_1=3 WHERE `entry`=19918;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=17073;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=28441;
UPDATE item_template SET spellppmrate_2=1 WHERE `entry`=17182;
-- 1h maces
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=12792;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=9651;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=9419;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=10804;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=13183;
UPDATE item_template SET spellppmrate_1=0.5 WHERE `entry`=7954;
UPDATE item_template SET spellppmrate_1=1.1 WHERE `entry`=9639;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=13401;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=6472;
UPDATE item_template SET spellppmrate_1=0.75 WHERE `entry`=2256;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=12781;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=4090;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=12794;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=17733;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=17943;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=9386;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=14487;
UPDATE item_template SET spellppmrate_1=1.9 WHERE `entry`=27901;
UPDATE item_template SET spellppmrate_1=2.1 WHERE `entry`=13204;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=18671;
UPDATE item_template SET spellppmrate_2=1 WHERE `entry`=32262;
UPDATE item_template SET spellppmrate_1=6 WHERE `entry`=29996;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=11684;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=2243;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=810;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=17112;
UPDATE item_template SET spellppmrate_1=1.1 WHERE `entry`=19170;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=28437;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=28439;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=28438;
-- staves:
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=880;
-- polearms
UPDATE item_template SET spellppmrate_1=1.7 WHERE `entry`=13060;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=12243;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=1726;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=13054;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=11809;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=9475;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=12802;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=13148;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=13057;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=7959;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=12583;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=17223;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=17074;
UPDATE item_template SET spellppmrate_1=1.6 WHERE `entry`=28774;
-- daggerz
UPDATE item_template SET spellppmrate_2=2 WHERE `entry`=30312;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=5752;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=899;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=4449;
UPDATE item_template SET spellppmrate_1=1 WHERE `entry`=9467;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=9453;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=8006;
UPDATE item_template SET spellppmrate_1=3 WHERE `entry`=10625;
UPDATE item_template SET spellppmrate_1=1.7 WHERE `entry`=5756;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=12531;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=17752;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=6220;
UPDATE item_template SET spellppmrate_1=1.8 WHERE `entry`=12582;
UPDATE item_template SET spellppmrate_1=2.6 WHERE `entry`=6660;
UPDATE item_template SET spellppmrate_1=1.6 WHERE `entry`=6331;
UPDATE item_template SET spellppmrate_1=1.8 WHERE `entry`=11635;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=5616;
UPDATE item_template SET spellppmrate_1=1.8 WHERE `entry`=19099;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=14024;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=13218;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=19100;
UPDATE item_template SET spellppmrate_1=1.9 WHERE `entry`=13984;
UPDATE item_template SET spellppmrate_1=3.3 WHERE `entry`=10761;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=2912;
UPDATE item_template SET spellppmrate_1=4.2 WHERE `entry`=31193;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=4446;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=6831;
UPDATE item_template SET spellppmrate_1=2.2 WHERE `entry`=6904;
UPDATE item_template SET spellppmrate_1=1.5 WHERE `entry`=12791;
UPDATE item_template SET spellppmrate_1=2.4 WHERE `entry`=31331;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=19324;
UPDATE item_template SET spellppmrate_1=0.5 WHERE `entry`=32471;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=2163;
UPDATE item_template SET spellppmrate_1=2 WHERE `entry`=29182;
UPDATE item_template SET spellppmrate_1=2.2 WHERE `entry`=18816;
UPDATE item_template SET spellppmrate_1=2.2 WHERE `entry`=29962;
UPDATE item_template SET spellppmrate_1=2.2 WHERE `entry`=17071;
UPDATE item_template SET spellppmrate_1=1.8 WHERE `entry`=2164;
UPDATE item_template SET spellppmrate_1=1.7 WHERE `entry`=12590;
UPDATE item_template SET spellppmrate_1=2.3 WHERE `entry`=20578;
UPDATE item_template SET spellppmrate_1=3 WHERE `entry`=14555;

-- Summoned pet (Entry: 510) not have pet stats data in DB
DELETE FROM pet_levelstats WHERE `creature_entry`=510;
INSERT INTO pet_levelstats VALUES (510,1,60,60,0,20,16,20,13,8),(510,2,73,73,0,21,17,21,14,10),
    (510,3,87,87,0,22,18,22,15,12),(510,4,101,101,0,23,19,23,16,14),(510,5,115,115,0,24,20,24,17,16),
    (510,6,129,129,0,25,21,25,18,18),(510,7,152,152,0,26,22,26,19,20),(510,8,156,156,0,27,23,27,20,22),
    (510,9,170,170,0,28,24,28,21,24),(510,10,184,184,0,29,25,29,22,26),(510,11,198,198,0,30,25,32,22,28),
    (510,12,225,225,0,31,26,36,24,31),(510,13,254,254,0,32,28,43,26,32),(510,14,284,254,0,33,28,44,25,35),
    (510,15,313,313,0,34,30,48,26,37),(510,16,343,343,0,36,30,52,27,39),(510,17,375,375,0,38,31,55,28,42),
    (510,18,392,392,0,39,33,59,28,44),(510,19,438,438,0,40,33,63,30,46),(510,20,471,471,0,42,35,67,31,49),
    (510,21,500,500,0,44,36,80,31,51),(510,22,528,528,0,46,36,84,32,53),(510,23,558,558,0,47,38,89,33,55),
    (510,24,595,595,0,49,39,83,34,58),(510,25,630,630,0,50,40,87,35,61),(510,26,678,678,0,52,41,91,36,62),
    (510,27,705,705,0,53,42,95,37,65),(510,28,740,740,0,55,43,99,38,67),(510,29,775,775,0,56,44,103,39,70),
    (510,30,800,800,0,58,46,107,40,72),(510,31,856,856,0,59,47,111,40,74),(510,32,921,921,0,61,48,115,41,77),
    (510,33,987,987,0,62,49,119,42,79),(510,34,1047,1047,0,63,51,123,43,82),(510,35,1107,1107,0,65,52,127,44,84),
    (510,36,1167,1167,0,66,53,131,45,87),(510,37,1227,1227,0,68,53,135,46,89),(510,38,1288,1288,0,70,55,139,47,91),
    (510,39,1348,1348,0,72,56,143,48,94),(510,40,1408,1408,0,74,58,148,49,97),(510,41,1468,1468,0,76,59,152,50,99),
    (510,42,1528,1528,0,81,59,156,51,102),(510,43,1588,1588,0,86,61,160,52,104),(510,44,1648,1648,0,89,62,164,53,107),
    (510,45,1708,1708,0,91,64,169,54,109),(510,46,1768,1768,0,94,65,173,55,112),(510,47,1828,1828,0,96,66,178,56,115),
    (510,48,1889,1889,0,99,68,182,57,117),(510,49,1950,1950,0,101,69,186,58,120),(510,50,2003,2003,0,104,71,191,59,123),
    (510,51,2055,2055,0,107,72,195,61,126),(510,52,2108,2108,0,109,73,199,62,128),(510,53,2161,2161,0,112,75,204,63,131),
    (510,54,2213,2213,0,114,76,208,64,134),(510,55,2266,2266,0,117,77,213,65,136),(510,56,2318,2318,0,119,79,217,66,139),
    (510,57,2371,2371,0,122,80,221,67,142),(510,58,2424,2425,0,124,82,226,68,144),(510,59,2476,2476,0,127,83,230,69,147),
    (510,60,2529,1874,0,129,85,234,70,150),(510,61,2582,2682,0,130,86,238,71,153),(510,62,2635,2735,0,131,87,242,72,156),
    (510,63,2688,2788,0,132,88,246,73,159),(510,64,2741,2841,0,133,89,250,74,162),(510,65,2794,2894,0,134,90,254,75,165),
    (510,66,2847,2947,0,135,91,258,76,168),(510,67,2900,3000,0,136,92,262,77,171),(510,68,2953,3053,0,137,93,266,78,174),
    (510,69,3006,3100,0,138,94,280,79,177),(510,70,3059,3212,0,139,95,284,80,180);

-- Some quests fixes
UPDATE `quest_template` SET SpecialFlags=4232 WHERE `entry`=10106;
UPDATE `quest_template` SET SpecialFlags=4232 WHERE `entry`=10110;
UPDATE `quest_template` SET SpecialFlags=4234 WHERE `entry`=11080;
INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewXpOrMoney`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`, `Repeatable`) VALUES (11007,3845,70,70,0,0,0,0,0,0,0,0,0,1,0,0,0,0,32405,1,0,'Kael\'thas and the Verdant Sphere','The air around you hums - a gentle hum. The naaru are aware of your victory. Perhaps they are the reason you were compelled to pick up this sphere from the still-twitching remains of Kael\'thas Sunstrider. What secrets could it hold?$B$BPerhaps A\'dal in Shattrath City could make sense of the item.','Take the Verdant Sphere to A\'dal in Shattrath City.','<A\'dal\'s thoughts intermingle with your own.>$B$BThe sphere... Strange. Did you know that he lived? Yes. It is here - in the sphere itself. Maimed for certain. He calls to a higher power now. No, not Illidan.$B$BHigher.$B$BKil\'jaeden the Deceiver comes...$B$BNot here...$B$B<A\'dal points your mind elsewhere.>$B$BAzeroth. Unknown.$B$BRest. Your brothers and sisters will retake Tempest Keep now.$B$B<A\'dal hums a song of battle.>$B$B','You heard my call? Yes...','','','','','',32405,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30015,30007,30018,30017,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT IGNORE INTO `quest_template` (entry, ZoneOrSort, MinLevel, QuestLevel, Type, RequiredRaces, SuggestedPlayers, RequiredSkillValue, RequiredMinRepFaction, RequiredMinRepValue, LimitTime, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqSourceRef1, ReqSourceRef2, ReqSourceRef3, ReqSourceRef4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewXpOrMoney, RewSpell, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, StartScript, CompleteScript, Repeatable) VALUES (11108, 3520, 65, 70, 0, 0, 0, 1, 0, 0, 0, 130, 0, 0, 0, 0, 0, 0, 0, "Lord Illidan Stormrage", "Come, highlord $N. Illidan himself awaits us!", "Meet Illidan Stormrage. Seek out Barthamus in the Lower City of Shattrath should you survive.", "NULL", "NULL", "Meeting with Illidan Stormrage", "", "", "", "", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132000, 114000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0);
UPDATE `quest_template` SET `SpecialFlags`=4233 WHERE `entry`=11076;
UPDATE `quest_template` SET `SpecialFlags`=136 WHERE `entry`=11075;
UPDATE `quest_template` SET `SpecialFlags`=131 WHERE `entry`=11054;
UPDATE `quest_template` SET `SpecialFlags`=4224 WHERE `entry`=11055;
UPDATE `quest_template` SET `SpecialFlags`=128 WHERE `entry`=11107;
UPDATE `quest_template` SET `SpecialFlags`=128 WHERE `entry`=11092;
UPDATE `quest_template` SET `SpecialFlags`=4225 WHERE `entry`=11018;
UPDATE `quest_template` SET `SpecialFlags`=4225 WHERE `entry`=11017;
UPDATE `quest_template` SET `SpecialFlags`=4225 WHERE `entry`=11016;
UPDATE `quest_template` SET `SpecialFlags`=4225 WHERE `entry`=11015;
UPDATE `quest_template` SET `SpecialFlags`=136 WHERE `entry`=11053;
UPDATE `quest_template` SET `SpecialFlags`=136 WHERE `entry`=11084;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|8 WHERE `entry`=11055;

-- One more 'Traget 38 entry
INSERT IGNORE INTO `spell_script_target` VALUES (38439,1,21648);

-- 4593 output error corrections
UPDATE `quest_template` SET `SrcItemCount`=1 WHERE `SrcItemCount`=0 AND `SrcItemId`<>0;
UPDATE `quest_template` SET `SrcItemCount`=0 WHERE `SrcItemId`=0;
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`=0 WHERE `ReqCreatureOrGOId1`=0;
UPDATE `quest_template` SET `ReqCreatureOrGOCount2`=0 WHERE `ReqCreatureOrGOId2`=0;
UPDATE `quest_template` SET `ReqCreatureOrGOCount3`=0 WHERE `ReqCreatureOrGOId3`=0;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=0 WHERE `entry`=2360;
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`=1 WHERE entry=9593;
UPDATE `quest_template` SET `ReqItemCount1`=0 WHERE `entry`=9346;
UPDATE `quest_template` SET `ReqItemId1`=8087,`ReqItemCount1`=1 WHERE `entry`=2480;
UPDATE `quest_template` SET `srcItemCount`=0,`ReqItemCount1`=0,`ReqItemCount2`=0 WHERE `entry`=994;
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`=1 WHERE `entry`=10980;
UPDATE `quest_template` SET `ReqItemId1`=32380,`SpecialFlags`=`SpecialFlags`|1 WHERE `entry` = 10996;
UPDATE `quest_template` SET `ReqItemCount1`=0 WHERE `entry`=10820;
UPDATE `quest_template` SET `ReqItemId1`=32382,`SpecialFlags`=`SpecialFlags`|1 WHERE `entry`=10997;
UPDATE `quest_template` SET `ReqItemCount1`=0 WHERE `entry`=10752;
UPDATE `quest_template` SET `ReqItemCount1`=0 WHERE `entry`=726;
UPDATE `quest_template` SET `ReqItemCount2`=0 WHERE `entry`=8232;
UPDATE `quest_template` SET `ReqItemCount1`=0 WHERE `entry`=995;
UPDATE `quest_template` SET `srcItemCount`=0,`ReqItemCount1`=0 WHERE `entry`=991;
UPDATE `quest_template` SET `srcItemId`=0,`srcItemCount`=0,`ReqItemCount1`=0 WHERE `entry`=10821;
UPDATE `quest_template` SET `srcItemCount`=0,`ReqItemCount1`=0 WHERE `entry`=10753;
UPDATE `quest_template` SET `RewRepFaction1`=54,`RewRepValue1`=500 WHERE `entry`=2361;
UPDATE `quest_template` SET `ReqItemId1`=32379,`SpecialFlags`=`SpecialFlags`|1 WHERE `entry`=10995;

-- And finaly db_version update
DELETE FROM `db_version`;
INSERT INTO `db_version` VALUES ('UDB 0.7.5 (319) with SD2 calls rev.141');

-- END
