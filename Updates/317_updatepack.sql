## Cleaning of map 529
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `map`=529);
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `map`=529);
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `map`=529);
DELETE FROM `creature` WHERE `map`=529;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `map`=529);
DELETE FROM `gameobject` WHERE `map`=529;
## Delete wrong script
delete from `spell_scripts` where `id` = 25649;
## Missing modelid from Hungarfen encounter, needed for scripts
UPDATE creature_template SET modelid_A=11686, modelid_H=11686 WHERE entry=17990;
## Attunement to the Core quest id 7487 was repeatable
UPDATE `quest_template` SET `Repeatable` = 0 where `entry` = 7487;
## Vendor was selling incorrect items
DELETE FROM `npc_vendor` WHERE (`entry`=21655);
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(21655, 30832, 0, 0),
(21655, 30834, 0, 0),
(21655, 30830, 0, 0),
(21655, 24175, 0, 0),
(21655, 24179, 0, 0),
(21655, 30836, 0, 0),
(21655, 30841, 0, 0),
(21655, 30835, 0, 0),
(21655, 23138, 0, 0),
(21655, 29199, 0, 0),
(21655, 30846, 0, 0),
(21655, 22910, 0, 0),
(21655, 31357, 0, 0),
(21655, 30633, 0, 0),
(21655, 31778, 0, 0),
(21655, 30833, 0, 0);
## Proenitis had two quests for "replenishing the healing crystals" twice
update `quest_template` set `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9279;
update `quest_template` set `RequiredRaces` = 1024, `PrevQuestId` = 9279, `NextQuestId` = 9409, `ExclusiveGroup` = 0, `NextQuestInChain` = 9409 where `entry` = 9280;
update `quest_template` set `RequiredRaces` = 77, `PrevQuestId` = 9279, `NextQuestId` = 9409, `ExclusiveGroup` = 0, `NextQuestInChain` = 9409 where `entry` = 9369;
update `quest_template` set `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9283 where `entry` = 9409;
update `quest_template` set `RequiredRaces` = 0, `PrevQuestId` = 9409, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9283;
## Set quest to Horde only Throught the Dark Portal
update quest_template set RequiredRaces=690 where entry=9407;
## fix Hyjal spawn/respawn
update creature set spawn_position_x = position_x, spawn_position_y = position_y,
spawn_position_z = position_z, spawn_orientation = orientation where map = 534;
update creature set spawntimesecs = 43200 where id in (select entry from creature_template where rank = 3 ) and map = 534;
## Fast Spawn Times for Defias Miners
UPDATE `creature` set `spawntimesecs`='360' where `id`='598' and `map`='0';
## item_template req_skill and req_rank reversed
UPDATE `item_template` SET `RequiredSkill` = `RequiredSkillRank`, `RequiredSkillRank` = 375 WHERE `RequiredSkill` = 375;
## stratholme missing GO
DELETE FROM `gameobject` WHERE `id`=175368;
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`loot`,`spawntimesecs`,
`animprogress`,`dynflags`) VALUES
(35874,175368,0,'3185.8','-4039.09','107.991','6.27141',0,0,'0.00588977','-0.999983',0,25,0,0);
## Portals at Hyjal Instance
UPDATE areatrigger_template SET target_position_x=4259.608,target_position_y=-4233.765,target_position_z=868.199,target_orientation=2.53 WHERE id=4319;
UPDATE areatrigger_template SET name='Hyjal Summit, Exit',target_map=1,target_position_x=-8177.5,target_position_y=-4183,target_position_z=-168,target_orientation=4.5 WHERE id=4323;
UPDATE areatrigger_template SET name='Hyjal Summit, Exit',target_map=1,target_position_x=-8177.5,target_position_y=-4183,target_position_z=-168,target_orientation=4.5 WHERE id=4487;
UPDATE areatrigger_template SET name='Hyjal Summit, Alliance Base',target_map=534,target_position_x=4954,target_position_y=-1886.2,target_position_z=1326,target_orientation=0.13 WHERE id=4311;
UPDATE areatrigger_template SET name='Hyjal Summit, Horde Base',target_map=534,target_position_x=5497.33,target_position_y=-2971.136,target_position_z=1537.63,target_orientation=2.832 WHERE id=4312;
UPDATE areatrigger_template SET name='Hyjal Summit, Night Elf Base',target_map=534,target_position_x=5152.33,target_position_y=-3364.4,target_position_z=1644.74,target_orientation=6.2 WHERE id=4313; 
## Tier 0-0.5 questchain
update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8905;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8906;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8907;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8908;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8909;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8910;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8911;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8912;
update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8913;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8914;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8915;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8916;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8917;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8918;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8919;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8920;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8922, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10492;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8923, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10493;

update `quest_template` set `ZoneOrSort` = 440, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8921, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8922;
update `quest_template` set `ZoneOrSort` = 440, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8921, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8923;
update `quest_template` set `ZoneOrSort` = 440, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8924 where `entry` = 8921;
update `quest_template` set `ZoneOrSort` = 440, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8921, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8925 where `entry` = 8924;
update `quest_template` set `ZoneOrSort` = 440, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8924, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8928 where `entry` = 8925;
update `quest_template` set `ZoneOrSort` = 440, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8925, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8928;

update `quest_template` set `ZoneOrSort` = 1537, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8928, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8977;
update `quest_template` set `ZoneOrSort` = 1637, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8928, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8978;


update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8926;
update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8927;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8931;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8932;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8933;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8934;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8935;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8936;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 8937;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8938;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8939;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8940;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8941;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8942;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8943;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 8944;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8977, `NextQuestId` = 8929, `ExclusiveGroup` = 0, `NextQuestInChain` = 8929 where `entry` = 10494;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8978, `NextQuestId` = 8930, `ExclusiveGroup` = 0, `NextQuestInChain` = 8930 where `entry` = 10495;

update `quest_template` set `ZoneOrSort` = 139, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8945, `ExclusiveGroup` = 0, `NextQuestInChain` = 8945 where `entry` = 8929;
update `quest_template` set `ZoneOrSort` = 139, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8945, `ExclusiveGroup` = 0, `NextQuestInChain` = 8945 where `entry` = 8930;
update `quest_template` set `ZoneOrSort` = 2017, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8946 where `entry` = 8945;
update `quest_template` set `ZoneOrSort` = 139, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8945, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8947 where `entry` = 8946;
update `quest_template` set `ZoneOrSort` = 139, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8946, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8948 where `entry` = 8947;
update `quest_template` set `ZoneOrSort` = 2557, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8947, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8949 where `entry` = 8948;
update `quest_template` set `ZoneOrSort` = 2557, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8948, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8950 where `entry` = 8949;
update `quest_template` set `ZoneOrSort` = 2557, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8949, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8950;

update `quest_template` set `ZoneOrSort` = 1584, `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8950, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9015;


update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8951;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8952;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8953;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8954;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8955;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8956;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 8957;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8958;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 8959;
update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9016;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9017;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9018;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9019;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9020;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9021;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 9022;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 9015, `NextQuestId` = 8960, `ExclusiveGroup` = 0, `NextQuestInChain` = 8960 where `entry` = 10496;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 9015, `NextQuestId` = 9032, `ExclusiveGroup` = 0, `NextQuestInChain` = 9032 where `entry` = 10497;

update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 8961, `ExclusiveGroup` = 0, `NextQuestInChain` = 8961 where `entry` = 8960;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 8961, `ExclusiveGroup` = 0, `NextQuestInChain` = 8961 where `entry` = 9032;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8961;


update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8961, `NextQuestId` = 8987, `ExclusiveGroup` = 8962, `NextQuestInChain` = 8966 where `entry` = 8962;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8961, `NextQuestId` = 8988, `ExclusiveGroup` = 8962, `NextQuestInChain` = 8967 where `entry` = 8963;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8961, `NextQuestId` = 8985, `ExclusiveGroup` = 8962, `NextQuestInChain` = 8968 where `entry` = 8964;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8961, `NextQuestId` = 8986, `ExclusiveGroup` = 8962, `NextQuestInChain` = 8969 where `entry` = 8965;

update `quest_template` set `ZoneOrSort` = 1583, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8962, `NextQuestId` = 8970, `ExclusiveGroup` = 0, `NextQuestInChain` = 8970 where `entry` = 8966;
update `quest_template` set `ZoneOrSort` = 2557, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8963, `NextQuestId` = 8970, `ExclusiveGroup` = 0, `NextQuestInChain` = 8970 where `entry` = 8967;
update `quest_template` set `ZoneOrSort` = 2017, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8964, `NextQuestId` = 8970, `ExclusiveGroup` = 0, `NextQuestInChain` = 8970 where `entry` = 8968;
update `quest_template` set `ZoneOrSort` = 2057, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8965, `NextQuestId` = 8970, `ExclusiveGroup` = 0, `NextQuestInChain` = 8970 where `entry` = 8969;

update `quest_template` set `ZoneOrSort` = 2079, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8970;


update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8970, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8990 where `entry` = 8985;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8970, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8989 where `entry` = 8986;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8970, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8991 where `entry` = 8987;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8970, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8992 where `entry` = 8988;

update `quest_template` set `ZoneOrSort` = 1583, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8986, `NextQuestId` = 8994, `ExclusiveGroup` = 0, `NextQuestInChain` = 8994 where `entry` = 8989;
update `quest_template` set `ZoneOrSort` = 2557, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8985, `NextQuestId` = 8994, `ExclusiveGroup` = 0, `NextQuestInChain` = 8994 where `entry` = 8990;
update `quest_template` set `ZoneOrSort` = 2017, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8987, `NextQuestId` = 8994, `ExclusiveGroup` = 0, `NextQuestInChain` = 8994 where `entry` = 8991;
update `quest_template` set `ZoneOrSort` = 2057, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8988, `NextQuestId` = 8994, `ExclusiveGroup` = 0, `NextQuestInChain` = 8994 where `entry` = 8992;

update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8995 where `entry` = 8994;
update `quest_template` set `ZoneOrSort` = 1583, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8994, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8996 where `entry` = 8995;
update `quest_template` set `ZoneOrSort` = 25, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8995, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8996;


update `quest_template` set `ZoneOrSort` = 1537, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8996, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8997;
update `quest_template` set `ZoneOrSort` = 1637, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8996, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8998;

update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8999;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9000;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9001;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9002;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9003;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9004;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9005;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9006;
update `quest_template` set `ZoneOrSort` = -263, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9007;
update `quest_template` set `ZoneOrSort` = -261, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9008;
update `quest_template` set `ZoneOrSort` = -262, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9009;
update `quest_template` set `ZoneOrSort` = -162, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9010;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9011;
update `quest_template` set `ZoneOrSort` = -61, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9012;
update `quest_template` set `ZoneOrSort` = -81, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9013;
update `quest_template` set `ZoneOrSort` = -161, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9014;
update `quest_template` set `ZoneOrSort` = -82, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 8997, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10498;
update `quest_template` set `ZoneOrSort` = -141, `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 8998, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10499;
## Multiple Mailboxes Spawned outside Tavern
DELETE from gameobject where guid = '15765';
DELETE from gameobject where guid = '31120';
INSERT IGNORE INTO `gameobject` VALUES ( 15765, 142075, 0, -9248.41, -2144.23, 63.9334, 3.14159, 0, 0, 0.999122, 0.0419032, 0, 25, 0, 0);
## Flightmaster levels
UPDATE `creature_template` SET `maxlevel`=65,`minlevel`=65 WHERE `npcflag` & 8 = 8 and entry not in (353,1574,1575,20905);
## Wrong Location For Scout Riell In Westfall
UPDATE `creature` SET `spawn_position_x` = '-10508.000000', `spawn_position_y` = '1033.596558', `spawn_position_z` = '60.521530', `spawn_orientation` = '5.537262',`position_x` = '-10508.000000', `position_y` = '1033.596558', `position_z` = '60.521530', `orientation` = '5.537262' WHERE `id` = '820';

## Safety Is Job One
## Someone Else's Hard Work Pays Off
update `quest_template` set `MinLevel` = 64, `QuestLevel` = 66, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10216;
update `quest_template` set `MinLevel` = 64, `QuestLevel` = 66, `RequiredRaces` = 0, `PrevQuestId` = 10216, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10218;

## 
## Medivh's Journal
## In Good Hands
## Kamsis
## The Shade of Aran
## The Master's Terrace
## Digging Up the Past
## A Colleague's Aid
## Kalynna's Request
## Nightbane
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9638 where `entry` = 9630;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9630, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9639 where `entry` = 9638;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9640, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9640 where `entry` = 9639;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9639, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9645 where `entry` = 9640;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9640, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9680 where `entry` = 9645;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9645, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9631 where `entry` = 9680;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9680, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9637 where `entry` = 9631;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9631, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9644 where `entry` = 9637;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9637, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9644;


## Medivh's Journal
## In Good Hands
## Kamsis
## The Shade of Aran
## The Master's Terrace
## Digging Up the Past
## A Colleague's Aid
## Kalynna's Request
## Nightbane

## Path of the Violet Assassin Path of the Violet Mage
## Path of the Violet Protector
## Path of the Violet Restorer
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9630;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9638;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9639;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9640;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9645;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9680;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9631;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9637;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 9644;

update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 10731;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 10729;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 10732;
update `quest_template` set `RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000, `RequiredMaxRepFaction` = 0, `RequiredMaxRepValue` = 0 where `entry` = 10730;


## 
## Arcane Disturbances
## Restless Activity
## Contact from Dalaran Khadgar
## Entry Into Karazhan The Second and Third Fragments
## The Master's Touch
## Return to Khadgar
## The Violet Eye
## Assessing the Situation
## Keanna's Log
## A Demonic Presence
## The New Directive
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 9826, `ExclusiveGroup` = -9824, `NextQuestInChain` = 9826 where `entry` = 9824;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 9826, `ExclusiveGroup` = -9824, `NextQuestInChain` = 0 where `entry` = 9825;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9829 where `entry` = 9826;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9826, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9831 where `entry` = 9829;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9829, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9832 where `entry` = 9831;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9831, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9836 where `entry` = 9832;
update `quest_template` set `MinLevel` = 69, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9832, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9837 where `entry` = 9836;
update `quest_template` set `MinLevel` = 69, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9836, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9838 where `entry` = 9837;
update `quest_template` set `MinLevel` = 69, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9837, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9840 where `entry` = 9838;
update `quest_template` set `MinLevel` = 69, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9838, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9843 where `entry` = 9840;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9840, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9844 where `entry` = 9843;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9843, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9860 where `entry` = 9844;
update `quest_template` set `MinLevel` = 70, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 9844, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9860;



## To The Master's Lair
## The Caverns of Time
## Old Hillsbrad
## Taretha's Diversion
## Escape from Durnholde Return to Andormu
## The Black Morass
## The Opening of the Dark Portal
## Hero of the Brood
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 66, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10277 where `entry` = 10279;
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 66, `RequiredRaces` = 0, `PrevQuestId` = 10279, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10277;

update `quest_template` set `MinLevel` = 66, `QuestLevel` = 68, `RequiredRaces` = 0, `PrevQuestId` = 10277, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10283 where `entry` = 10282;
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 68, `RequiredRaces` = 0, `PrevQuestId` = 10282, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10284 where `entry` = 10283;
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 68, `RequiredRaces` = 0, `PrevQuestId` = 10283, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10285 where `entry` = 10284;
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 68, `RequiredRaces` = 0, `PrevQuestId` = 10284, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10285;

update `quest_template` set `MinLevel` = 66, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 10285, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10297 where `entry` = 10296;
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 10296, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10298 where `entry` = 10297;
update `quest_template` set `MinLevel` = 66, `QuestLevel` = 70, `RequiredRaces` = 0, `PrevQuestId` = 10297, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10298;


## You Survived!
## Replenishing the Healing Crystals
## Replenishing the Healing Crystals
## Urgent Delivery!
## Rescue the Survivors!
update `quest_template` set `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9279;
update `quest_template` set `RequiredRaces` = 1024, `PrevQuestId` = 9279, `NextQuestId` = 9409, `ExclusiveGroup` = 0, `NextQuestInChain` = 9409 where `entry` = 9280;
update `quest_template` set `RequiredRaces` = 77, `PrevQuestId` = 9279, `NextQuestId` = 9409, `ExclusiveGroup` = 0, `NextQuestInChain` = 9409 where `entry` = 9369;
update `quest_template` set `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9283 where `entry` = 9409;
update `quest_template` set `RequiredRaces` = 0, `PrevQuestId` = 9409, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9283;


## Poisoned Water
## Stormers and Rumblers
## Eye of the Emberseer
## The Molten Core
## Agent of Hydraxis
## Hands of the Enemy
## A Hero's Reward
update `quest_template` set `MinLevel` = 55, `QuestLevel` = 56, `RequiredRaces` = 0, `PrevQuestId` = 10296, `NextQuestId` = 6821, `ExclusiveGroup` = -6804, `NextQuestInChain` = 0 where `entry` = 6804;
update `quest_template` set `MinLevel` = 55, `QuestLevel` = 57, `RequiredRaces` = 0, `PrevQuestId` = 10297, `NextQuestId` = 6821, `ExclusiveGroup` = -6804, `NextQuestInChain` = 0 where `entry` = 6805;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 6822 where `entry` = 6821;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 6821, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 6823 where `entry` = 6822;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 6822, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 6824 where `entry` = 6823;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 6823, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 6824;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 6824, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 7486;

delete from `creature_questrelation` where `id` = 10637 and `quest` = 6821;
## Duplicate spawns
delete from `gameobject` where `guid`='15770';
delete from `gameobject` where `guid`='30382';
INSERT IGNORE INTO `gameobject` VALUES ( 15770, 142089, 0, -10546.5, -1157.32, 27.7834, -3.0466, 0, 0, 0.998848, -0.047978, 0, 25, 100, 0);
delete from `gameobject` where `id`='59';
INSERT IGNORE INTO `gameobject` VALUES ( 23, 59, 0, -11116, -513, 32.653, 1.781, 0, 0, 0.77738, 0.62903, 0, 120, 0, 0);
delete from `gameobject` where `guid`='5062';
## orientation messed up
update creature set orientation=(orientation + 6.283185308) where orientation < 0;
update creature set orientation=(orientation - 6.283185308) where orientation > 6.283185308;
update creature set spawn_orientation=(spawn_orientation + 6.283185308) where spawn_orientation < 0;
update creature set spawn_orientation=(spawn_orientation - 6.283185308) where spawn_orientation > 6.283185308;
## loot temp fix
update fishing_loot_template set `QuestChanceOrGroup`='-1' where `QuestChanceOrGroup`=0;
update disenchant_loot_template set `QuestChanceOrGroup`='-1' where `QuestChanceOrGroup`=0;
update skinning_loot_template set `QuestChanceOrGroup`='-1' where `QuestChanceOrGroup`=0;
## Non logical combinations
update creature set spawndist=0 where movementtype!=1;
update creature set movementtype=0 where spawndist=0 and movementtype=1;
## double spawned creature
delete from npc_gossip where npc_guid=87041;
delete from creature_addon where guid=87041;
delete from creature_movement where id=87041;
delete from creature where guid=87041;
## 2 item buycounts
UPDATE `item_template` SET `BuyCount` = 200 WHERE `entry` = 30611;
UPDATE `item_template` SET `BuyCount` = 200 WHERE `entry` = 30612;
## Test server creature, delete
delete from creature_addon where guid in (select guid from creature where id=23405);
delete from npc_gossip where npc_guid in (select guid from creature where id=23405);
delete from creature_movement where id in (select guid from creature where id=23405);
delete from creature where id=23405;
delete from creature_template where entry=23405;
## min/max gold
UPDATE `creature_template` SET `mingold`=912, `maxgold`=946 WHERE `entry`=16772;
UPDATE `creature_template` SET `mingold`=795, `maxgold`=929 WHERE `entry`=16810;
UPDATE `creature_template` SET `mingold`=897, `maxgold`=1084 WHERE `entry`=16769;
UPDATE `creature_template` SET `mingold`=957, `maxgold`=1288 WHERE `entry`=1410;
UPDATE `creature_template` SET `mingold`=952, `maxgold`=1177 WHERE `entry`=5355;
UPDATE `creature_template` SET `maxgold`=1000, `mingold`=869 WHERE `entry`=18548;
## double spawns
delete from creature_addon where guid in (87736,87734,87877,31749,28402);
delete from npc_gossip where npc_guid in (87736,87734,87877,31749,28402);
delete from creature_movement where id in (87736,87734,87877,31749,28402);
delete from creature where guid in (87736,87734,87877,12599,28402);
## Netherdrake ledge spawns
## Chief Overseer Mudlump
DELETE FROM `creature_template` WHERE (`entry`=23291);
INSERT IGNORE INTO `creature_template` (`entry`, `modelid_A`, `modelid_H`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `ScriptName`) VALUES (23291, 21403, 21403, 'Chief Overseer Mudlump', 'Beater of Peons', 70, 70, 6000, 6000, 0, 0, 20, 35, 35, 2, '1.48', 0, 1, 2, 0, 12, 1400, 1900, 0, 0, 0, 0, 0, 0, 0, '1.03448', '1.33448', 100, 7, 0, 2048, 23291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 1, 0, '');

DELETE FROM `creature` WHERE `id`=23291;

## Overlord Mor'ghor
DELETE FROM `creature_template` WHERE (`entry`=23139);
INSERT IGNORE INTO `creature_template` (`entry`, `modelid_A`, `modelid_H`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `ScriptName`) VALUES (23139, 20113, 20113, 'Overlord Mor\'ghor', '', 73, 73, 6100, 6100, 0, 0, 1, 1683, 1683, 2, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39704, 0, 0, 0, 2000, 2000, '', 0, 3, 0, 1, 1184, '');

DELETE FROM `creature` WHERE `id`=23139;

## Taskmaster Varkule Dragonbreath
DELETE FROM `creature_template` WHERE (`entry`=23140);
INSERT IGNORE INTO `creature_template` (`entry`, `modelid_A`, `modelid_H`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `ScriptName`) VALUES (23140, 20457, 20457, 'Taskmaster Varkule Dragonbreath', '', 73, 73, 5900, 5900, 0, 0, 1, 1683, 1683, 2, '1.71', 1, 250, 497, 0, 2616, 1435, 1684, 0, 0, 0, 0, 0, 0, 0, '398.087', '549.877', 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 1, 0, '');

DELETE FROM `creature` WHERE `id`=23140;

## Dragonmaw Tower Controller
DELETE FROM `creature_template` WHERE (`entry`=23370);
INSERT IGNORE INTO `creature_template` (`entry`, `modelid_A`, `modelid_H`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `ScriptName`) VALUES (23370, 21438, 21438, 'Dragonmaw Tower Controller', '', 71, 71, 3200, 3200, 0, 0, 0, 14, 14, 0, '1.48', 0, 191, 333, 0, 1836, 1435, 1684, 0, 0, 0, 0, 0, 0, 0, '328.696', '458.231', 100, 7, 0, 2048, 23370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 1, 0, '');

DELETE FROM `creature` WHERE `id`=23370;

DELETE FROM `creature` WHERE `id`=23370;

## Mistress of the Mines
DELETE FROM `creature_template` WHERE (`entry`=23149);
INSERT IGNORE INTO `creature_template` (`entry`, `modelid_A`, `modelid_H`, `name`, `subname`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `ScriptName`) VALUES (23149, 19588, 19588, 'Mistress of the Mines', '', 73, 73, 5900, 5900, 0, 0, 1, 1015, 1015, 2, '1.71', 1, 250, 497, 0, 2616, 1435, 1684, 0, 0, 0, 0, 0, 0, 0, '398.087', '549.877', 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 1, 0, '');
DELETE FROM `creature` WHERE `id`=23149;
## totem fixes
## Stoneskin Totems
UPDATE `creature_template` SET `modelid_A`='19073',`modelid_H`='4588' WHERE `entry` IN (5873,21994,5919,5920,7366,7367,7368,15470,15474);

## Strength of Earth
UPDATE `creature_template` SET `modelid_A`='19073',`modelid_H`='4588' WHERE `entry` IN (17987,5874,21992,5921,5922,7403,15464,15479);

## Earthbind Totems
UPDATE `creature_template` SET `modelid_A`='19073',`modelid_H`='4588' WHERE (`entry`='2630');

## Tremor Totems
UPDATE `creature_template` SET `modelid_A`='19073',`modelid_H`='4588' WHERE (`entry`='5913');

## Stoneclaw Totems
UPDATE `creature_template` SET `modelid_A`='19073',`modelid_H`='4588' WHERE `entry` IN (3579,3911,3912,3913,7398,7399,15478);

## Searing Totems
UPDATE `creature_template` SET `modelid_A`='19074',`modelid_H`='4589' WHERE `entry` IN (22209,2523,21995,3902,3903,3904,7400,7402,15480);

## Magma Totems
UPDATE `creature_template` SET `modelid_A`='19074',`modelid_H`='4589' WHERE `entry` IN (5929,7464,7465,7466,15484);

## Flametongue Totems
UPDATE `creature_template` SET `modelid_A`='19074',`modelid_H`='4589' WHERE `entry` IN (5950,6012,7423,10557,15485);

## Frost Resistance Totem
UPDATE `creature_template` SET `modelid_A`='19074',`modelid_H`='4589' WHERE `entry` IN (5926,7412,7413,15486);

## Grace of Air Totems
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (7486,7487,15463);

## Grounding Totems
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (5955);

## Windwall totems
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (9687,9688,9689,15492);

## Sentry Totem
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (3968);

## Windfury Totems
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (14666,6112,7483,7484,15496,15497);

## Nature Resistance Totems
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (7467,7468,7469,15490);

## Tranquil Air Totems
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (`entry`='15803');

## Wrath of Air
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE `entry` IN (`entry`='15447');

## Healing Stream
UPDATE `creature_template` SET `modelid_A`='19075',`modelid_H`='4587' WHERE `entry` IN (18235,14664,3527,3906,3907,3908,3909,15488);

## Mana Spring
UPDATE `creature_template` SET `modelid_A`='19075',`modelid_H`='4587' WHERE `entry` IN (15304,3573,7414,7415,7416,15489);

## Fire Resistance Totems
UPDATE `creature_template` SET `modelid_A`='19075',`modelid_H`='4587' WHERE `entry` IN (5927,7424,7425,15487);

## Disease Cleansing Totem
UPDATE `creature_template` SET `modelid_A`='19075',`modelid_H`='4587' WHERE (`entry`='5924');

## Poison Cleansing
UPDATE `creature_template` SET `modelid_A`='19075',`modelid_H`='4587' WHERE (`entry`='5923');
## Grounding Totem
UPDATE `creature_template` SET `modelid_A`='19071',`modelid_H`='4590' WHERE (`entry`='5925');

update creature_template set spell1 = 25538 where entry = 15482;
update creature_template set spell1 = 25539 where entry = 15483;
update creature_template set spell1 = 25562 where entry = 15487;
update creature_template set spell1 = 25551 where entry = 15484;
update creature_template set spell1 = 25569 where entry = 15489;

update creature_template set spell1 = 3606 where entry = 21995;
update creature_template set spell1 = 25530 where entry = 15480;
update creature_template set spell1 = 25513 where entry = 15478;
update creature_template set spell1 = 25507 where entry = 15474;

update creature_template set spell1 = 25569 where entry = 15489;
update creature_template set spell1 = 8076 where entry = 21992;
update creature_template set spell1 = 25527 where entry = 15479;
update creature_template set spell1 = 30708 where entry = 17539;

update creature_template set spell1 = 25909 where entry = 15803;
update creature_template set spell1 = 25581 where entry = 15496;
update creature_template set spell1 = 25582 where entry = 15497;
## misc creature spawn fixes
## Gorgannon was not spawned needed for quest: 9522

DELETE FROM creature WHERE creature.id = 17300;
## Kaylaan was not spawned needed for quest: 10431

DELETE FROM creature WHERE creature.id = 20780;
update creature set MovementType=0 where id=18713;
## Salvageable Metal, Object missed loot
UPDATE `gameobject` SET loot= 182938 WHERE id=182937;
UPDATE `gameobject` SET loot= 182938 WHERE `guid` IN (
23770,
23771,
23772,
23773,
23774,
23775,
23776,
23777,
23778,
23779,
23780,
23781,
23782);
## fixed NPC id 3037 Sheza Wildmane wrong npc flag
UPDATE `creature_template` SET npcflag='0' where entry='3037';
## update speed to shaman npc, too fast
UPDATE `creature_template` SET speed='1.08' where entry='17520';
UPDATE `creature_template` SET speed='1.08' where entry='17519';
## random missing quest reward textes

UPDATE `quest_template` SET OfferRewardText='You\'ve certainly begun to prove yourself to us, $N. As a reward, please take this care package! Inside it you\'ll find rations and bandages that are usable only inside Warsong Gulch. $B$BAs you continue to prove yourself inside the Gulch, you\'ll find that these items will become available to you for purchase. Rations become available when you are Friendly with us, and bandages when you are Honored.' where entry='7868';
UPDATE `quest_template` SET OfferRewardText='You\'ve certainly begun to prove yourself to us, $N. As a reward, please take this care package! Inside it you\'ll find rations and bandages that are usable only inside Warsong Gulch. $B$BAs you continue to prove yourself inside the Gulch, you\'ll find that these items will become available to you for purchase. Rations become available when you are Friendly with us, and bandages when you are Honored.' where entry='7867';
UPDATE `quest_template` SET OfferRewardText='You\'ve certainly begun to prove yourself to us, $N. As a reward, please take this care package! Inside it you\'ll find rations and bandages that are usable only inside Warsong Gulch. $B$BAs you continue to prove yourself inside the Gulch, you\'ll find that these items will become available to you for purchase. Rations become available when you are Friendly with us, and bandages when you are Honored.' where entry='7866';
UPDATE `quest_template` SET OfferRewardText='You\'ve certainly begun to prove yourself to us, $N. As a reward, please take this care package! Inside it you\'ll find rations and bandages that are usable only inside Warsong Gulch. $B$BAs you continue to prove yourself inside the Gulch, you\'ll find that these items will become available to you for purchase. Rations become available when you are Friendly with us, and bandages when you are Honored.' where entry='7865';
UPDATE `quest_template` SET OfferRewardText='You\'ve certainly begun to prove yourself to us, $N. As a reward, please take this care package! Inside it you\'ll find rations and bandages that are usable only inside Warsong Gulch. $B$BAs you continue to prove yourself inside the Gulch, you\'ll find that these items will become available to you for purchase. Rations become available when you are Friendly with us, and bandages when you are Honored.' where entry='7864';
UPDATE `quest_template` SET OfferRewardText='You\'ve certainly begun to prove yourself to us, $N. As a reward, please take this care package! Inside it you\'ll find rations and bandages that are usable only inside Warsong Gulch. $B$BAs you continue to prove yourself inside the Gulch, you\'ll find that these items will become available to you for purchase. Rations become available when you are Friendly with us, and bandages when you are Honored.' where entry='7863';
## loot in quest
Update `quest_template` SET ReqSourceRef1='1' where entry='1442';
## fixed missing loot in the quest The Mark of Quality
Update `quest_template` SET ReqSourceRef1='1' where entry='2822';
## hellfire penisula chain q's redone and beta quests renamed
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10120 where `entry` = 10119;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10119, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10140 where `entry` = 10288;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10288, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10254 where `entry` = 10140;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 10140, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10254;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10482 where `entry` = 10160;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 58, `RequiredRaces` = 1101, `PrevQuestId` = 10160, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10483 where `entry` = 10482;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 58, `RequiredRaces` = 1101, `PrevQuestId` = 10482, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10483;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 58, `RequiredRaces` = 1101, `PrevQuestId` = 10483, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10485 where `entry` = 10484;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 10484, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10903 where `entry` = 10485;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10485, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10909 where `entry` = 10903;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10903, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10909;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10903, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10916;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10903, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10919;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10909, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10936 where `entry` = 10935;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10935, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10937 where `entry` = 10936;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 10936, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10937;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10142 where `entry` = 10141;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10141, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10143 where `entry` = 10142;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10142, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10144 where `entry` = 10143;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 10143, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10144;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 10144, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10340 where `entry` = 10146;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 10146, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10344 where `entry` = 10340;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 10340, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10344;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 10344, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10163;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 10163, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10346;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10163, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10394 where `entry` = 10382;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10382, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10396 where `entry` = 10394;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10394, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10397 where `entry` = 10396;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10396, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10397;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10399 where `entry` = 10395;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10395, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10399;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 10395, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10400;

update `quest_template` set `MinLevel` = 59, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 10142, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9607 where `entry` = 9575;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10142, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9355;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10142, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10099 where `entry` = 10079;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10079, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10099;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10057 where `entry` = 10050;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10050, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10057;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 10078, `ExclusiveGroup` = 0, `NextQuestInChain` = 10078 where `entry` = 10055;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 10055, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10078;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10093 where `entry` = 10047;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 10047, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10093;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9423 where `entry` = 9390;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 9390, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9423;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 9423, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9424;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 9424, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9430 where `entry` = 9543;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 9543, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9545 where `entry` = 9430;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 9430, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9545;


update `quest_template` set `MinLevel` = 59, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9587;

update `quest_template` set `MinLevel` = 59, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 9587, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9589;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9398;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9399;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9417 where `entry` = 9558;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 1101, `PrevQuestId` = 9558, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9417;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10058;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10120 where `entry` = 9407;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 9407, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10140 where `entry` = 10120;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10120, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10291 where `entry` = 10289;
update `quest_template` set `MinLevel` = 55, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 10289, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10121 where `entry` = 10291;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10291, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10123 where `entry` = 10121;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10121, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10124 where `entry` = 10123;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10123, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10208 where `entry` = 10124;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10124, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10129 where `entry` = 10208;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10208, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10162 where `entry` = 10129;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10129, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10162;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10162, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10347;

update `quest_template` set `MinLevel` = 59, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10124, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9572;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10162, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10390 where `entry` = 10388;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10388, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10391 where `entry` = 10390;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10390, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10392 where `entry` = 10391;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10391, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10392;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 10392, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10136;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10087 where `entry` = 10086;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10086, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10087;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10449 where `entry` = 10450;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 10450, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10449;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 10449, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10242;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 10242, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10835 where `entry` = 10538;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10835, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10864 where `entry` = 10835;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10835, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10838 where `entry` = 10864;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10864, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10875 where `entry` = 10838;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10838, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10876 where `entry` = 10875;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 10875, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10876;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10809;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10809, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10792;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10809, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10834 where `entry` = 10813;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10813, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10834;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9370 where `entry` = 9366;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9366, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9370;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 10389, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10393;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10392, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10389;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10286 where `entry` = 9374;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9374, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10287 where `entry` = 10286;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10286, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9472 where `entry` = 10287;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10287, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9472;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = -9472, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9483;

update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10220;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10230 where `entry` = 10229;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10229, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10250 where `entry` = 10230;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10230, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10258 where `entry` = 10250;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10250, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10258;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 10388, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9401 where `entry` = 9400;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9400, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9405 where `entry` = 9401;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9401, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9410 where `entry` = 9405;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9405, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9406 where `entry` = 9410;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9410, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9438 where `entry` = 9406;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9406, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9438;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 9438, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9441;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 9441, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9447 where `entry` = 9442;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 9442, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9447;


update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9376 where `entry` = 9375;
update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 9375, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9376;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 178, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9340 where `entry` = 9498;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 512, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9340 where `entry` = 9499;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9391 where `entry` = 9340;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 9340, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9391;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9466;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10294 where `entry` = 10278;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 10278, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10295 where `entry` = 10294;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 10294, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10295;


update `quest_template` set `MinLevel` = 59, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9588;

update `quest_template` set `MinLevel` = 59, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 9588, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9590;

update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9396;

update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9381;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 63, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9418;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10238 where `entry` = 10236;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 0, `PrevQuestId` = 10236, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10629 where `entry` = 10238;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 0, `PrevQuestId` = 10238, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10630 where `entry` = 10629;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 61, `RequiredRaces` = 0, `PrevQuestId` = 10629, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10630;


update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10367 where `entry` = 10403;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 0, `PrevQuestId` = 10403, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10368 where `entry` = 10367;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 0, `PrevQuestId` = 10367, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10369 where `entry` = 10368;
update `quest_template` set `MinLevel` = 60, `QuestLevel` = 62, `RequiredRaces` = 0, `PrevQuestId` = 10368, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10369;


update `quest_template` set `MinLevel` = 61, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10103;


update `quest_template` set `MinLevel` = 61, `QuestLevel` = 61, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9372 where `entry` = 10442;
update `quest_template` set `MinLevel` = 61, `QuestLevel` = 61, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9372 where `entry` = 10443;
update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10255 where `entry` = 9372;
update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 0, `PrevQuestId` = 9372, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10255;


update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10349 where `entry` = 10134;
update `quest_template` set `MinLevel` = 61, `QuestLevel` = 63, `RequiredRaces` = 0, `PrevQuestId` = 10134, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10349;
update `quest_template` set `MinLevel` = 61, `QuestLevel` = 64, `RequiredRaces` = 0, `PrevQuestId` = 10349, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10351;


update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10106;
update `quest_template` set `MinLevel` = 58, `QuestLevel` = 60, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10110;


update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10756 where `entry` = 10755;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 690, `PrevQuestId` = 10755, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10757 where `entry` = 10756;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 690, `PrevQuestId` = 10756, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10758 where `entry` = 10757;
update `quest_template` set `MinLevel` = 68, `QuestLevel` = 70, `RequiredRaces` = 690, `PrevQuestId` = 10757, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10758;


## rename the ones we know are beta quests, never made any final release and/or replaced by other quests so that they won't cause any misundestandings in the future
update `quest_template` set `Title` = 'BETA A Hasty Departure' where `entry` = 9344;
update `quest_template` set `Title` = 'BETA Preparing the Salve' where `entry` = 9345;
update `quest_template` set `Title` = 'BETA Investigate the Crash' where `entry` = 10213;
update `quest_template` set `Title` = 'BETA Under Whose Orders?' where `entry` = 10156;
update `quest_template` set `Title` = 'BETA Bleeding Hollow Supplies' where `entry` = 10056;
update `quest_template` set `Title` = 'BETA Marauding Crust Bursters' where `entry` = 9342;
update `quest_template` set `Title` = 'BETA When This Mine\'s a-Rockin\'' where `entry` = 10088;
update `quest_template` set `Title` = 'BETA The Mastermind' where `entry` = 10100;
update `quest_template` set `Title` = 'BETA Dispatching the Commander' where `entry` = 10157;
update `quest_template` set `Title` = 'BETA When This Mine\'s a-Rockin\'' where `entry` = 10214;
update `quest_template` set `Title` = 'BETA Saving Private Imarion' where `entry` = 10128;
update `quest_template` set `Title` = 'BETA Dispatching the Commander' where `entry` = 10139;
update `quest_template` set `Title` = 'BETA Dealing with Zeth\'Gor' where `entry` = 10053;
update `quest_template` set `Title` = 'BETA Impending Doom' where `entry` = 10054;
update `quest_template` set `Title` = 'BETA Dealing With Zeth\'Gor' where `entry` = 10059;
update `quest_template` set `Title` = 'BETA The Citadel\'s Reach' where `entry` = 10122;
update `quest_template` set `Title` = 'BETA The Western Flank' where `entry` = 10130;
update `quest_template` set `Title` = 'BETA Under Whose Orders?' where `entry` = 10138;
update `quest_template` set `Title` = 'BETA The Citadel\'s Reach' where `entry` = 10150;
update `quest_template` set `Title` = 'BETA The Western Flank' where `entry` = 10152;
update `quest_template` set `Title` = 'BETA The Fate of the Clefthoof' where `entry` = 9382;
update `quest_template` set `Title` = 'BETA When Helboars Fly' where `entry` = 9346;
update `quest_template` set `Title` = 'BETA Hounded for More' where `entry` = 9380;
update `quest_template` set `Title` = 'BETA Forgotten Heroes' where `entry` = 9408;
update `quest_template` set `Title` = 'BETA Bristlehide Clefthoof Hides' where `entry` = 9510;
update `quest_template` set `Title` = 'BETA Kargath\'s Battle Plans' where `entry` = 9511;
update `quest_template` set `Title` = 'BETA Through the Dark Portal' where `entry` = 10046;
update `quest_template` set `Title` = 'BETA The Unyielding' where `entry` = 10061;
update `quest_template` set `Title` = 'BETA Looking to the Leadership' where `entry` = 10062;
update `quest_template` set `Title` = 'BETA Assault on Mageddon' where `entry` = 10084;
update `quest_template` set `Title` = 'BETA Forge Camps of the Legion' where `entry` = 10089;
update `quest_template` set `Title` = 'BETA The Legion\'s Plans' where `entry` = 10090;
update `quest_template` set `Title` = 'BETA Assault on Mageddon' where `entry` = 10092;
update `quest_template` set `Title` = 'BETA Mission: Disrupt Communications' where `entry` = 10125;
update `quest_template` set `Title` = 'BETA Warboss Nekrogg\'s Orders' where `entry` = 10126;
update `quest_template` set `Title` = 'BETA Mission: Sever the Tie' where `entry` = 10127;
update `quest_template` set `Title` = 'BETA Planning the Escape' where `entry` = 10131;
update `quest_template` set `Title` = 'BETA Mission: Kill the Messenger' where `entry` = 10133;
update `quest_template` set `Title` = 'BETA Mission: Be the Messenger' where `entry` = 10135;
update `quest_template` set `Title` = 'BETA Provoking the Warboss' where `entry` = 10137;
update `quest_template` set `Title` = 'BETA Mission: Sever the Tie UNUSED' where `entry` = 10145;
update `quest_template` set `Title` = 'BETA Mission: Kill the Messenger' where `entry` = 10147;
update `quest_template` set `Title` = 'BETA Mission: Be the Messenger' where `entry` = 10148;
update `quest_template` set `Title` = 'BETA Mission: End All, Be All' where `entry` = 10149;
update `quest_template` set `Title` = 'BETA Warboss Nekrogg\'s Orders' where `entry` = 10151;
update `quest_template` set `Title` = 'BETA Saving Scout Makha' where `entry` = 10153;
update `quest_template` set `Title` = 'BETA Planning the Escape' where `entry` = 10154;
update `quest_template` set `Title` = 'BETA Provoking the Warboss' where `entry` = 10155;
update `quest_template` set `Title` = 'BETA Bleeding Hollow Supplies' where `entry` = 10158;
update `quest_template` set `Title` = 'BETA Forward Base: Reaver\'s Fall REUSE' where `entry` = 10207;
update `quest_template` set `Title` = 'BETA Nazgrel\'s Command <TXT>' where `entry` = 10370;
update `quest_template` set `Title` = 'BETA Return to Honor Hold' where `entry` = 10398;
update `quest_template` set `Title` = 'BETA Mission: End All, Be All' where `entry` = 10401;
update `quest_template` set `Title` = 'BETA Impending Doom' where `entry` = 10060;


## delete any of the beta quests from npc's
delete from `creature_involvedrelation` where `quest` in (9344,9345,10213,10156,10056,9342,10088,10100,10157,10214,10128,10139,10053,1005
,10059,10122,10130,10138,10150,10152,9382,9346,9380,9408,9510,9511,10046,10061,1062,10084,10089,10090,10092,10125,10126,10127,10131,10133,10135,10137,10145,1014
,10148,10149,10151,10153,10154,10155,10158,10207,10370,10398,10401,10060);
delete from `creature_questrelation` where `quest` in (9344,9345,10213,10156,10056,9342,10088,10100,10157,10214,10128,10139,10053,1005
,10059,10122,10130,10138,10150,10152,9382,9346,9380,9408,9510,9511,10046,10061,1062,10084,10089,10090,10092,10125,10126,10127,10131,10133,10135,10137,10145,1014
,10148,10149,10151,10153,10154,10155,10158,10207,10370,10398,10401,10060);
## misc fixes 
## Jannok Breezesong <Rogue Trainer> not a "Searing Totem" learner and is learned by quest
delete from `npc_trainer` where `spell` = 2075;
## undead quest not trainer - Devouring Plague
delete from `npc_trainer` where `spell` = 2946;

## As of patch 2.0.5 (iirc) you no longer get your mount from a quest, but from your local trainer, for the price of 90s//1g. So no more whining for free mount for Warlocks!
delete from `npc_trainer` where spell in (5785);
INSERT IGNORE INTO `npc_trainer` (`entry` , `spell` , `spellcost` , `reqskill` , `reqskillvalue` , `reqlevel`) values (461,5785,10000,0,0,40),(906,5785,10000,0,0,40),(988,5785,10000,0,0,40),(2127,5785,10000,0,0,40),(3172,5785,10000,0,0,40),(3324,5785,10000,0,0,40),(3325,5785,10000,0,0,40),(3326,5785,10000,0,0,40),(4563,5785,10000,0,0,40),(4564,5785,10000,0,0,40),(4565,5785,10000,0,0,40),(5171,5785,10000,0,0,40),(5172,5785,10000,0,0,40),(5173,5785,10000,0,0,40),(5495,5785,10000,0,0,40),(5496,5785,10000,0,0,40),(5612,5785,10000,0,0,40),(6251,5785,10000,0,0,40),(16266,5785,10000,0,0,40),(16646,5785,10000,0,0,40),(16647,5785,10000,0,0,40),(16648,5785,10000,0,0,40),(23534,5785,10000,0,0,40);


## This spell is now trainable at the mage class trainers (since the new 2.0 pre-expansion patch on 12/5/06)
delete from `npc_trainer` where spell in (10143);
INSERT IGNORE INTO `npc_trainer` (`entry` , `spell` , `spellcost` , `reqskill` , `reqskillvalue` , `reqlevel`) values (328,10143,42000,0,0,60),(331,10143,42000,0,0,60),(1228,10143,42000,0,0,60),(2128,10143,42000,0,0,60),(3047,10143,42000,0,0,60),(3048,10143,42000,0,0,60),(3049,10143,42000,0,0,60),(4566,10143,42000,0,0,60),(4567,10143,42000,0,0,60),(4568,10143,42000,0,0,60),(5144,10143,42000,0,0,60),(5145,10143,42000,0,0,60),(5497,10143,42000,0,0,60),(5498,10143,42000,0,0,60),(5880,10143,42000,0,0,60),(5882,10143,42000,0,0,60),(5883,10143,42000,0,0,60),(5885,10143,42000,0,0,60),(7311,10143,42000,0,0,60),(7312,10143,42000,0,0,60),(16269,10143,42000,0,0,60),(16651,10143,42000,0,0,60),(16652,10143,42000,0,0,60),(16653,10143,42000,0,0,60),(16749,10143,42000,0,0,60),(17513,10143,42000,0,0,60),(17514,10143,42000,0,0,60);

## This is not even a quest anymore. All Paladins have to do is train for it.
delete from `npc_trainer` where spell in (13820);
INSERT IGNORE INTO `npc_trainer` (`entry` , `spell` , `spellcost` , `reqskill` , `reqskillvalue` , `reqlevel`) values (927,13820,100,0,0,40),(928,13820,100,0,0,40),(1232,13820,100,0,0,40),(5147,13820,100,0,0,40),(5148,13820,100,0,0,40),(5149,13820,100,0,0,40),(5491,13820,100,0,0,40),(5492,13820,100,0,0,40),(16275,13820,100,0,0,40),(16679,13820,100,0,0,40),(16680,13820,100,0,0,40),(16681,13820,100,0,0,40),(16761,13820,100,0,0,40),(17121,13820,100,0,0,40),(17509,13820,100,0,0,40),(17844,13820,100,0,0,40),(20406,13820,100,0,0,40),(23128,13820,100,0,0,40);

## Touch of Weakness undead,bloodelves - quest
delete from `npc_trainer` where spell in (19318);

## shadowguard troll - quest
delete from `npc_trainer` where spell in (19331);

## Consume Magic is learned at level 20 via trainer (no quest like the original priest racials). Just to clarify what it does
delete from `npc_trainer` where spell in (32757);
INSERT IGNORE INTO `npc_trainer` (`entry` , `spell` , `spellcost` , `reqskill` , `reqskillvalue` , `reqlevel`) values (16276,32757,100,0,0,20),(16658,32757,100,0,0,20),(16659,32757,100,0,0,20),(16660,32757,100,0,0,20);

## Symbol of Hope - Draenei
delete from `npc_trainer` where spell in (32758);
INSERT IGNORE INTO `npc_trainer` (`entry` , `spell` , `spellcost` , `reqskill` , `reqskillvalue` , `reqlevel`) values (17482,32758,100,0,0,10); 
## critters dropping high lvl items
## lowlevel critters wich should not have any loot_template or lootid

DELETE FROM `creature_loot_template` WHERE `entry` in (620, 721, 883, 890, 1412, 1420, 1933, 2098, 2110, 2442, 2620, 2914, 3300, 3444, 3835, 4075, 4076, 4166, 5951, 6145, 6271, 6368, 6653, 9600, 9699, 9700, 10016, 10017, 10685, 10779, 10780, 12296, 12298, 13321, 16068, 17467, 22480);

UPDATE `creature_template` SET `lootid` = 0 where `entry` in (620, 721, 883, 890, 1412, 1420, 1933, 2098, 2110, 2442, 2620, 2914, 3300, 3444, 3835, 4075, 4076, 4166, 5951, 6145, 6271, 6368, 6653, 9600, 9699, 9700, 10016, 10017, 10685, 10779, 10780, 12296, 12298, 13321, 16068, 17467, 22480);
## npc vendor fix
DELETE FROM npc_vendor WHERE entry = 13218;
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(13218, 19325, 0, 0),
(13218, 21563, 0, 0),
(13218, 19029, 0, 0),
(13218, 19312, 0, 0),
(13218, 19321, 0, 0),
(13218, 19324, 0, 0),
(13218, 19323, 0, 0),
(13218, 19315, 0, 0),
(13218, 19308, 0, 0),
(13218, 19311, 0, 0),
(13218, 19309, 0, 0),
(13218, 19310, 0, 0),
(13218, 19103, 0, 0),
(13218, 19085, 0, 0),
(13218, 19096, 0, 0),
(13218, 19046, 0, 0),
(13218, 19090, 0, 0),
(13218, 19089, 0, 0),
(13218, 19083, 0, 0),
(13218, 19095, 0, 0),
(13218, 19088, 0, 0),
(13218, 19087, 0, 0),
(13218, 19099, 0, 0),
(13218, 19320, 0, 0),
(13218, 19319, 0, 0),
(13218, 19101, 0, 0),
(13218, 19316, 0, 0),
(13218, 19317, 0, 0),
(13218, 19307, 0, 0),
(13218, 19301, 0, 0),
(13218, 19318, 0, 0),
(13218, 19031, 0, 0),
(13218, 17348, 0, 0),
(13218, 17351, 0, 0),
(13218, 17349, 0, 0),
(13218, 17352, 0, 0);
DELETE FROM npc_vendor WHERE entry = 13216;
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(13216, 19325, 0, 0),
(13216, 21563, 0, 0),
(13216, 19312, 0, 0),
(13216, 19030, 0, 0),
(13216, 19321, 0, 0),
(13216, 19324, 0, 0),
(13216, 19323, 0, 0),
(13216, 19315, 0, 0),
(13216, 19308, 0, 0),
(13216, 19311, 0, 0),
(13216, 19309, 0, 0),
(13216, 19310, 0, 0),
(13216, 19102, 0, 0),
(13216, 19100, 0, 0),
(13216, 19320, 0, 0),
(13216, 19319, 0, 0),
(13216, 19045, 0, 0),
(13216, 19094, 0, 0),
(13216, 19093, 0, 0),
(13216, 19092, 0, 0),
(13216, 19091, 0, 0),
(13216, 19086, 0, 0),
(13216, 19098, 0, 0),
(13216, 19084, 0, 0),
(13216, 19097, 0, 0),
(13216, 19104, 0, 0),
(13216, 19316, 0, 0),
(13216, 19317, 0, 0),
(13216, 19307, 0, 0),
(13216, 19301, 0, 0),
(13216, 19318, 0, 0),
(13216, 17348, 0, 0),
(13216, 17351, 0, 0),
(13216, 19032, 0, 0),
(13216, 17349, 0, 0),
(13216, 17352, 0, 0);
## pattern and design fixes
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000, `RequiredSkill` = 755, `RequiredSkillRank` = 375 WHERE `RequiredSkillRank` > 375;
UPDATE `item_template` SET `RequiredSkill` = `RequiredSkillRank`, `RequiredSkillRank` = 375 WHERE `RequiredSkill` = 375;
UPDATE `item_template` SET `BuyPrice` = 80000, `SellPrice` = 20000 WHERE `entry` IN (32441, 32442, 32443, 32444, 32429, 32430, 32431, 32432, 32433, 32434, 32435, 32436);
UPDATE `item_template` SET `BuyPrice` = 50000, `SellPrice` = 12500 WHERE `entry` IN (32745, 32746, 32748, 32749, 32750, 32751);
## few creature fix
## Parasitic Fleshling
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 21265;
## Darkwater Crocolisk
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, minlevel=67, maxlevel=70, minhealth=5800, maxhealth=9600, mindmg=350, maxdmg=600 WHERE `entry` = 20075;
update creature_template set attackpower = round((maxdmg + mindmg) / 4 * 7) WHERE `entry` = 20075;
update creature_template set mindmg = round(mindmg - attackpower / 7) WHERE `entry` = 20075;
update creature_template set maxdmg = round(maxdmg - attackpower / 7) WHERE `entry` = 20075;
update creature_template set mindmg = 1 where mindmg < 1 AND `entry` = 20075;
## misc creature fixes
## name = 'Young Furbolg Shaman' quite scary ....dead moving body
update `creature` set `movementType` = 0 where `id` = 17542;

## double spawn Sangrias Stillblade
delete from creature where id = 17716 and guid = 86731;

## Female Kaliri Hatchling
delete from creature where id = 17034;
update `creature` set `spawndist` = '0' where id = '17542';
## spawned bad names.. on objects
update `gameobject_template` set `name` = 'Bleeding Hollow Supply Crate' where `entry` = 182265;
update `gameobject_template` set `name` = 'Shadow Council Armaments' where `entry` = 182355;
update `gameobject_template` set `name` = 'Telaari Frond' where `entry` = 182599;
update `gameobject_template` set `name` = 'Olemba Root' where `entry` = 182601;
update `gameobject_template` set `name` = 'Sealed Coffin' where `entry` = 184810;
update `gameobject_template` set `name` = 'Sealed Coffin' where `entry` = 184811;
update `gameobject_template` set `name` = 'Sealed Coffin' where `entry` = 184811;
update `gameobject_template` set `name` = 'Sealed Coffin' where `entry` = 184813;
update `gameobject_template` set `name` = 'Ever-burning Ash' where `entry` = 184948;
update `gameobject_template` set `name` = 'Massive Treasure Chest' where `entry` = 185220;
update `gameobject_template` set `name` = 'Grulloc\'s Dragon Skull' where `entry` = 185567;
update `gameobject_template` set `name` = 'Maggoc\'s Treasure Chest' where `entry` = 185569;
update `gameobject_template` set `name` = 'Slaag\'s Standard' where `entry` = 185574;

## some more no name go's
update `gameobject_template` set `name` = 'Dung' where `entry` = 182128;
update `gameobject_template` set `name` = 'Destroyed Wyvern Roost' where `entry` = 182297;
update `gameobject_template` set `name` = 'Destroyed Wyvern Roost' where `entry` = 182298;
update `gameobject_template` set `name` = 'Destroyed Wyvern Roost' where `entry` = 182299;
update `gameobject_template` set `name` = 'Destroyed Wyvern Roost' where `entry` = 182300;
update `gameobject_template` set `name` = 'Garadar Bulletin Board' where `entry` = 182392;
update `gameobject_template` set `name` = 'Fel Orc Plans' where `entry` = 182549;
update `gameobject_template` set `name` = 'Dented Footlocker' where `entry` = 184741;
update `gameobject_template` set `name` = 'Sealed Coffin' where `entry` = 184812;
update `gameobject_template` set `name` = 'Auchenai Coffin' where `entry` = 184999;
update `gameobject_template` set `name` = 'Sketh\'lon Feather' where `entry` = 185130;
update `gameobject_template` set `name` = 'Cursed Egg' where `entry` = 185210;
## Crown of the Earth
## added one to Coordinates 63, 58

update gameobject set position_x=9859.71, position_y=588.17, position_z=1300.66 where guid=13479;
delete from gameobject where guid in (13485, 13486, 13487);
## Retrieving the Goods
## spawning Dome Generator Segment because it isnt spawned anywhere


## Gizmorium Shipping Crate
## spawned now on the right place before the spawn was wrong

DELETE FROM gameobject WHERE gameobject.id = 20727;
INSERT IGNORE INTO gameobject
  (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, loot, spawntimesecs, animprogress, dynflags)
VALUES
  (28518, 20727, 1, -3985.29, -3814.31, 34.957, 0.675443, 0, 0, 0.331338, 0.943512, 20727, 180, 0, 0);

## shaman class trainer flag fix
UPDATE creature_template SET class='7' WHERE entry = '23127';
## Wrong gameobject-type: Pirate's Treasure should end quest
UPDATE `gameobject_template` SET `type` = '2' WHERE `gameobject_template`.`entry` =142194;
## faction fixes
## Ghaz'an
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 18105;

## Bog Giant
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 17723;

## Fen Ray
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 17731;

## Swamplord Musel'ek
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 17826;

## Claw
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 17827;

## The Black Stalker
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 17882;
## Earthbinder Rayge
UPDATE creature_template SET faction_A=1659, faction_H=1659, flags=0, dynamicflags=0 WHERE entry=17885;

## Windcaller Claw
UPDATE creature_template SET faction_A=1659, faction_H=1659 WHERE entry=17894;
## Naturalist Bite
UPDATE creature_template SET faction_A=1659, faction_H=1659 WHERE entry=17893;
## double spawned GO
delete from gameobject where guid=14540 and id=58369;
## Fix Portal Grimh
update gameobject_template set sound1=4294967295, sound13=1 where entry=184414;

## Fix Portal Kaalez
## edited by Coldblooded (thx to CH3LO)
update gameobject_template set name="Portal Kaalez", sound1=4294967295, sound13=1 where entry=184415;

## Remove required creature kill that is not part of quest.
update quest_template set ReqCreatureOrGOId3=0, ReqCreatureOrGOCount3=0 where entry=10144;

delete from gameobject_involvedrelation where quest=10144;
INSERT IGNORE INTO gameobject_involvedrelation (id, quest) values (184414, 10144);
INSERT IGNORE INTO gameobject_involvedrelation (id, quest) values (184415, 10144);
## Updating object from table 'quest_template'
## ID: 10913  An Improper Burial
## + startitem 31769_Sha'tari Torch

UPDATE quest_template SET SrcItemCount = '1', SrcItemId = '31769' WHERE entry = '10913';
## Updating object from table 'quest_template'
## ID: 10877 The Dread Relic
## + startitem 31705_Derelict Caravan Chest

UPDATE quest_template SET SrcItemCount = '1', SrcItemId = '31705' WHERE entry = '10877';
## apples q fix.. 
update quest_template set nextquestid=0 where entry=787;
## Basin of Holy Water
DELETE FROM `gameobject` WHERE `id`=182063;

DELETE FROM `gameobject_loot_template` WHERE (`entry`=182063);
INSERT IGNORE INTO `gameobject_loot_template` VALUES
(182063, 24284, 0, 100, 1, 1, 1);
## Shadowforge Citizen Spawn
DELETE FROM creature WHERE id=8902;
## I've got a plant Quest
UPDATE quest_template SET MinLevel = 6 where entry = 9530;
## Loot for Bogblossom
DELETE FROM `gameobject_loot_template` WHERE `entry`=185497;
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) values
(185497, 31950, 0, 100, 1, 1, 1);
## Add GO Southfury Moonstone with spell 39886
delete from gameobject_template where entry=185566;
INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `sound0`, `sound1`, `sound2`, `sound3`, `sound4`, `sound5`, `sound6`, `sound7`, `sound8`, `sound9`, `sound10`, `sound11`, `sound12`, `sound13`, `sound14`, `sound15`, `sound16`, `sound17`, `sound18`, `sound19`, `sound20`, `sound21`, `sound22`, `sound23`, `ScriptName`) values
('185566','22','6750','Southfury Moonstone','0','0','1','39886','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');

## Spawn GO Southfury Moonstone
delete from gameobject where id=185566;
## Rotten Arakkoa Egg Spawn
delete from `gameobject` where id=184795;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `loot`, `spawntimesecs`, `animprogress`, `dynflags`) values
('25623','184795','530','-4091.07','1892.19','75.4612','-2.60054','0','0','0.96363','-0.267238','184795','180','100','0');
## Grimtotem Spying
delete from gameobject where id=176344;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `loot`, `spawntimesecs`, `animprogress`, `dynflags`) values
('18865','176344','1','-4922','-1831','80.82','4.2832','0','0','-0.87462','0.48481','176344','120','0','0'),
('18866','176344','1','-5140','-1934','89.187','6.269','0','0','0','0','176345','120','0','0'),
('18867','176344','1','-5183.96','-2164.5','94.6344','1.63267','0','0','0.688354','0.725375','176347','120','0','0');

delete from gameobject_loot_template where entry IN (176344, 176345, 176347);
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) values
(176344, 12765, 0, 100, 1, 1, 1),
(176345, 12766, 0, 100, 1, 1, 1),
(176347, 12768, 0, 100, 1, 1, 1);
## draenaei broken quest chain 209
update `quest_template` set `prevquestid` = 9757 where `entry` = 9591;
## Blackscale health
UPDATE creature_template set minhealth=14000 where entry=21497;
UPDATE creature_template set maxhealth=14000 where entry=21497;
UPDATE creature set spawntimesecs=180 where spawntimesecs=25;
## Viper Template
UPDATE `creature_template` set maxhealth=6900 where entry='19921';
## Venomous Snake Template
UPDATE `creature_template` set maxhealth=7800 where entry='19833';
## Marauding Crust Burster Template
UPDATE `creature_template` set flags='32768' where entry='16857';
UPDATE `creature_template` set minhealth=4100 where entry='16857';
UPDATE `creature_template` set maxhealth=4900 where entry='16857';
## Dire Pinfeather Loot
delete from creature_loot_template where item=31517;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `quest_freeforall`) values
('21042','31517','70','0','1','1','1');
## Greater Crust Burster Template
update creature_template set flags=32768 where entry=21380;
update creature_template set minhealth=7000 where entry=21380;
update creature_template set maxhealth=7000 where entry=21380;
## Bladespire Brute Template
update creature_template set minhealth=5800 where entry=19995;
update creature_template set maxhealth=6000 where entry=19995;
## This should be trainable from level one not from level 10.
UPDATE `npc_trainer` SET `reqlevel`='1' WHERE (`spell`='1547');
## Quest: More Heads Full of Ivory - drop must be non-quest
update `creature_loot_template` set `ChanceOrRef`='100', `QuestChanceOrGroup`='0' where `item`='25463'; 
## Vendor: Dealer Tariq <Shady Dealer>, Dealer Najeeb <Spare Parts> - correction of amount of some limited supply items (Mote of ...).
update npc_vendor set maxcount=3 where item in (22572, 22573, 22574, 22575, 22576, 22577, 22578) and entry in (20981, 20986);
## Missing loot for Magtheridon's Head
delete from `creature_loot_template` where `item` in ('32385', '32386');
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `chanceorref`, `questchanceorgroup`, `mincount`, `maxcount`,`quest_freeforall`) values
('17257', '32385', '100', '0', '1', '1', '0');
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `chanceorref`, `questchanceorgroup`, `mincount`, `maxcount`,`quest_freeforall`) values
('17257', '32386', '100', '0', '1', '1', '0');
DELETE FROM `gameobject_template` WHERE `entry`=183407;
DELETE FROM `gameobject` WHERE `id`=183407;
DELETE FROM `gameobject_template` WHERE `entry`=183490;
DELETE FROM `gameobject` WHERE `id`=183490;
INSERT IGNORE INTO gameobject_template
(entry, type, displayId, name, faction, flags, size, sound0, sound1, sound2, sound3, sound4, sound5, sound6, sound7, sound8, sound9, sound10, sound11, sound12, sound13, sound14, sound15, sound16, sound17, sound18, sound19, sound20, sound21, sound22, sound23, ScriptName)
VALUES
(183407, 11, 7043, "CoilfangReservoirLiftBig", 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "");

INSERT IGNORE INTO gameobject_template
(entry, type, displayId, name, faction, flags, size, sound0, sound1, sound2, sound3, sound4, sound5, sound6, sound7, sound8, sound9, sound10, sound11, sound12, sound13, sound14, sound15, sound16, sound17, sound18, sound19, sound20, sound21, sound22, sound23, ScriptName)
VALUES
(183490, 11, 7060, "CoilfangReservoirLiftLittle", 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "");

## missing spawn of maghe
## Missing spawn of Magtheridon
UPDATE `item_template` SET `BuyPrice`='240000', `SellPrice`='60000' WHERE `BuyPrice`='60000' AND `SellPrice`='240000';
## "http://www.wowhead.com/?npc=8524"
UPDATE `creature_template` SET `minmana` = 4896, `maxmana` = 5013 WHERE `entry` = 8524;
## "http://www.wowhead.com/?npc=1229"
UPDATE `creature_template` SET `minhealth` = 120, `maxhealth` = 200 WHERE `entry` = 1229;
## "http://www.wowhead.com/?npc=2523"
UPDATE `creature_template` SET `minhealth` = 5, `maxhealth` = 5 WHERE `entry` = 2523;
## "http://www.wowhead.com/?npc=20424"
UPDATE `creature_template` SET `minhealth` = 4500, `maxhealth` = 6300 WHERE `entry` = 20424;
## Shadowfang
UPDATE `areatrigger_template` SET required_level=10 WHERE target_map=33 OR trigger_map=33;
## Stockade
UPDATE `areatrigger_template` SET required_level=15 WHERE target_map=34 OR trigger_map=34;
## Deadmines
UPDATE `areatrigger_template` SET required_level=10 WHERE target_map=36 OR trigger_map=36;
## Wailing Caverns
UPDATE `areatrigger_template` SET required_level=10 WHERE target_map=43 OR trigger_map=43;
## Razorfen Kraul
UPDATE `areatrigger_template` SET required_level=17 WHERE target_map=47 OR trigger_map=47;
## Blackfathom
UPDATE `areatrigger_template` SET required_level=19 WHERE target_map=48 OR trigger_map=48;
## Uldaman
UPDATE `areatrigger_template` SET required_level=30 WHERE target_map=70 OR trigger_map=70;
## Gnomeregan
UPDATE `areatrigger_template` SET required_level=15 WHERE target_map=90 OR trigger_map=90;
## Sunken Temple
UPDATE `areatrigger_template` SET required_level=35 WHERE target_map=109 OR trigger_map=109;
## Razorfen Downs
UPDATE `areatrigger_template` SET required_level=25 WHERE target_map=129 OR trigger_map=129;
## Scarlet Monastery
UPDATE `areatrigger_template` SET required_level=20 WHERE target_map=189 OR trigger_map=189;
## Zul Farrak
UPDATE `areatrigger_template` SET required_level=35 WHERE target_map=209 OR trigger_map=209;
## BRS
UPDATE `areatrigger_template` SET required_level=52 WHERE target_map=229 OR trigger_map=229;
## BRD
UPDATE `areatrigger_template` SET required_level=40 WHERE target_map=230 OR trigger_map=230;
## Onyxia
UPDATE `areatrigger_template` SET required_level=55 WHERE target_map=249 OR trigger_map=249;
## Scholomance
UPDATE `areatrigger_template` SET required_level=45 WHERE target_map=289 OR trigger_map=289;
## Zul Gurub
UPDATE `areatrigger_template` SET required_level=50 WHERE target_map=309 OR trigger_map=309;
## Stratholme
UPDATE `areatrigger_template` SET required_level=45 WHERE target_map=329 OR trigger_map=329;
## Maraudon
UPDATE `areatrigger_template` SET required_level=30 WHERE target_map=349 OR trigger_map=349;
## rfc
UPDATE `areatrigger_template` SET required_level=8 WHERE target_map=389 OR trigger_map=389;
## Molten Core
UPDATE `areatrigger_template` SET required_level=50 WHERE target_map=409 OR trigger_map=409;
## Dire Maul
UPDATE `areatrigger_template` SET required_level=45 WHERE target_map=429 OR trigger_map=429;
## BWL
UPDATE `areatrigger_template` SET required_level=60 WHERE target_map=469 OR trigger_map=469;
## AQ
UPDATE `areatrigger_template` SET required_level=50 WHERE target_map=509 OR trigger_map=509;
UPDATE `areatrigger_template` SET required_level=50 WHERE target_map=531 OR trigger_map=531;
## Naxx
UPDATE `areatrigger_template` SET required_level=51 WHERE target_map=533 OR trigger_map=533;
## Fixes all Bloodscale mobs factions to Naga
UPDATE `creature_template` SET `faction_A`= '74', `faction_H`= '74' WHERE `entry` in (20791, 20792, 20122);
## Quest: The Fall of Magtheridon (for Ally and Horde)
delete from `creature_involvedrelation` where quest in (11002, 11003);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) values (16819, 11002), (3230, 11003);
UPDATE `creature_loot_template` SET `maxcount`=`mincount` WHERE `maxcount`<`mincount`;

UPDATE `creature_loot_template` SET `mincount` = 2, `maxcount` = 3 WHERE (`entry` = 17671 AND `item` = 21877);
update `creature_onkill_reputation` set `RewOnKillRepValue1` = 10, `RewOnKillRepValue2` = 10 where `creature_id` in (17134, 17135, 17136, 17137, 17138, 17146, 17147, 17148, 18037, 18064, 18202, 18203, 18207, 18211, 18238, 18260, 18352, 18397, 18399, 18402, 18440, 18658, 18065);
update `creature_onkill_reputation` set `RewOnKillRepValue1` = 2, `RewOnKillRepValue2` = 2 where `creature_id` = 18207;
update `quest_template` set `CompleteScript` = 9565 where `entry` = 9565;

delete from `quest_end_scripts` where `id` = 9565;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(9565,2,10,17189,180000,'','-3128.49','-12540.21','-2.54','1.5'),
(9565,2,10,17189,180000,'','-3105.36','-12549.24','-1.28','4.6');
update `quest_template` set `CompleteScript` = 10289 where `entry` = 10289;

delete from `quest_end_scripts` where `id` = 10289;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
(10289,0,0,0,0,'How many more of you grunts do I need to send back to mommy and daddy in a body bag before you grow a brain and realize that runnin\' head first into a Legion kill squad is suicide? And don\'t nod your thick skulls at me as if you know what I\'m talkin\' about!',0,0,0,0);
update gameobject set loot=id where loot=0 and id in (select entry from gameobject_loot_template);
## Many insert moved here after guid added
INSERT IGNORE INTO `gameobject` (`guid`,`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `loot`, `spawntimesecs`, `animprogress`, `dynflags`) values
('28477','185566','1','3723.72','-3997.93','94.9719','1.84389','0','0','0.796778','0.604272','0','1800','0','0');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(12599,23291,530,0,0,'-5105.19','547.715','85.6929','0.512041',25,0,0,'-5105.19','547.715','85.6929','0.512041',6000,0,0,0,'');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(28402,23139,530,0,0,-5085,'578.657','86.6483','2.36871',25,0,0,-5085,'578.657','86.6483','2.36871',6100,0,0,0,'');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(51876,23140,530,0,0,'-5104.5','585.088','85.7091','2.45118',25,0,0,'-5104.5','585.088','85.7091','2.45118',5900,0,0,0,'');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(88897,23370,530,0,0,'-5104.59','683.584','104.502','5.79777',25,0,0,'-5104.59','683.584','104.502','5.79777',3200,0,0,0,'');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(88898,23149,530,0,0,'-5252.84','626.438','49.1725','2.50697',25,0,0,'-5252.84','626.438','49.1725','2.50697',5900,0,0,0,'');
INSERT IGNORE INTO creature
  (guid,id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, spawn_position_x, spawn_position_y, spawn_position_z, spawn_orientation, curhealth, curmana, DeathState, MovementType, auras)
VALUES
  (88899,17300, 1, 0, 2147483647, 1711.49, -3459.94, 144.085, 2.08724, 900, 0, 0, 1711.49, -3459.94, 144.085, 0, 1100, 935, 0, 0, "");
INSERT IGNORE INTO creature
  (guid,id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, spawn_position_x, spawn_position_y, spawn_position_z, spawn_orientation, curhealth, curmana, DeathState, MovementType, auras)
VALUES
  (88900,20780, 530, 0, 408, 4036.13, 3547.31, 121.384, 5.81718, 25, 0, 0, 4036.13, 3547.31, 121.384, 0, 4900, 0, 0, 1, "");
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `auras`) VALUES
  (88901,17034,530,0,0,-1198.93,4091.59,62.6129,4.74139,180,5,0,-1198.93,4091.59,62.6129,0,6900,0,0,1,''),
  (88912,17034,530,0,1298374801,-1079.73,4174.07,40.2354,5.78172,180,5,0,-1079.73,4174.07,40.2354,0,6900,0,0,1,''),
  (88913,17034,530,0,0,-1320.75,4071.97,115.737,6.01,180,5,0,-1320.75,4071.97,115.737,0,6900,0,0,1,'');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `auras`) values
('88902','17893', '547', '-196.55', '-794.26', '43.8', '1.12', '1000000', '0', '0', '-196.55', '-794.26', '43.8', '1.12', '10000', '2705', '0', '1', null);
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `auras`) values
('88903','8902','230','0','0','853.153','-266.266','-49.9374','1.33111','430','5','0','853.153','-266.266','-49.9374','1.33111','2300','2041','0','1',''),
('88904','8902','230','0','0','634.092','-233.731','-35.5753','2.44654','430','5','0','634.092','-233.731','-35.5753','2.44654','2300','2041','0','1',''),
('88905','8902','230','0','0','864.602','-156.959','-49.7559','0.679155','430','5','0','864.602','-156.959','-49.7559','0.679155','2300','2041','0','1',''),
('88906','8902','230','0','0','539.564','-218.207','-34.1878','0.475179','430','5','0','539.564','-218.207','-34.1878','0.475179','2300','2041','0','1',''),
('88907','8902','230','0','0','858.259','-216.655','-43.7037','1.08755','430','5','0','858.259','-216.655','-43.7037','1.08755','2300','2041','0','1',''),
('88908','8902','230','0','0','841.353','-225.025','-71.9495','5.53693','430','5','0','841.353','-225.025','-71.9495','5.53693','2300','2041','0','1',''),
('88909','8902','230','0','0','645.895','-219.861','-35.1778','2.90207','430','5','0','645.895','-219.861','-35.1778','2.90207','2300','2041','0','1','');
INSERT IGNORE INTO `creature` (`guid`,`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `auras`) values
('88910','17257','544','0','0','-22.9763','1.94569','-0.338434','3.17225','7200','0','0','-22.9763','1.94569','-0.338434','3.17225','4600000','0','0','0',NULL);
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
(88911,23370,530,0,0,'-5104.59','683.584','104.502','5.79777',25,0,0,'-5104.59','683.584','104.502','5.79777',3200,0,0,0,'');
INSERT IGNORE INTO gameobject
  (guid,id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, loot, spawntimesecs, animprogress, dynflags)
VALUES
  (5062,184607, 530, 5154.44, 2970.65, 74.7005, 3.58587, 0, 0, 0.975429, -0.220316, 184607, 300, 0, 0);
INSERT IGNORE INTO gameobject
  (guid,id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, loot, spawntimesecs, animprogress, dynflags)
VALUES
  (13485,184607, 530, 5006.55, 2917.85, 100.512, 3.27956, 0, 0, 0.997621, -0.0689306, 184607, 180, 0, 0);
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`,`position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `loot`, `spawntimesecs`, `animprogress`, `dynflags`) VALUES
(13486,182063,0,'1796.33','-5422.08','83.4886','3.46989',0,0,'0.986558','-0.163411',182063,1200,0,0);
INSERT IGNORE INTO gameobject
(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, loot, spawntimesecs, animprogress, dynflags)
VALUES
(13487,183407, 548, 50, '-0.0071', '820.2', '3.15', 0, 0, '1.005', '0.001', 0, 500, 100, 0);
INSERT IGNORE INTO gameobject
(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, loot, spawntimesecs, animprogress, dynflags)
VALUES
(14540,183490, 548, '-58.9', '-98.7', '-52.79', '3.13366', 0, 0, '0.999992', '0.0039683', 0, 500, 100, 0);
## Items fixes
DELETE FROM `item_template` WHERE `entry` IN (100,192,913,964,997,1024,1026,1027,1029,1041,1057,1133,1134,1146,1162,1166,1167,1189,1193);
DELETE FROM `item_template` WHERE `entry` IN (1255,1258,1298,1324,1386,1623,1914,2016,2128,2133,2377,2410,2413,2415,2441,2442,2443,2444); ## 1217 (Unknown Reward) ?
DELETE FROM `item_template` WHERE `entry` IN (2460,2481,2482,2483,2484,2485,2486,2487,2496,2497,2498,6343,6589,6648,6649,7466,7467,7497);
DELETE FROM `item_template` WHERE `entry` IN (7548,17982,31802);
DELETE FROM `creature_loot_template` WHERE `item` IN (1189,1193,17982);
INSERT IGNORE INTO `item_enchantment_template` VALUES
    (181,63,18),(181,61,18),(181,65,10),(181,64,42),(181,62,12),(201,39,26.8),(201,37,15.7),(201,38,27.6),(201,36,29.9),(202,40,17.3),
    (202,41,24.8),(202,42,36.1),(202,39,21.8),(203,40,15),(203,44,25.5),(203,39,25),(203,43,34.5),(221,54,11.4),(221,56,9.7),
    (221,52,10.6),(221,49,11.8),(221,50,10.6),(221,51,11.2),(221,55,12.4),(221,57,12.5),(221,53,9.8),(222,40,20.7),(222,41,24.5),
    (222,45,20.8),(222,43,34),(4313,15,50),(4313,25,50); ## this last is not known, so ramdomly chosen by me
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=118;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=128;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=858;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=929;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=954;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=955;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1180;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1181;
UPDATE `item_template` SET `BuyPrice`='2091',`SellPrice`='418',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=1190;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='34',`SellPrice`='8' WHERE `entry`=1251;
UPDATE `item_template` SET `dmg_type2`='5' WHERE `entry`=1318;
UPDATE `item_template` SET `BuyPrice`='10399',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=1406;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1477;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1478;
UPDATE `item_template` SET `dmg_type2`='5' WHERE `entry`=1482;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1710;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1711;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=1712;
UPDATE `item_template` SET `BuyPrice`='364684',`SellPrice`='72936',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=1728;
UPDATE `item_template` SET `dmg_type2`='4' WHERE `entry`=1959;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=1991;
UPDATE `item_template` SET `InventoryType`='13' WHERE `entry`=2044;
UPDATE `item_template` SET `BuyPrice`='4055',`SellPrice`='811',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2166;
UPDATE `item_template` SET `BuyPrice`='1696',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2167;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2289;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2290;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2454;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2455;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2456;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2457;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2458;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2459;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2581;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2593;
UPDATE `item_template` SET `BuyPrice`='17773',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2623;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=2686;
UPDATE `item_template` SET `BuyPrice`='12',`SellPrice`='2',`AllowableClass`='-1',`dmg_min1`='1.0',`dmg_max1`='2.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2715;
UPDATE `item_template` SET `BuyPrice`='454890',`SellPrice`='90978',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2801;
UPDATE `item_template` SET `BuyPrice`='81',`SellPrice`='16' WHERE `entry`=2901;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Balanced Throwing Dagger',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2946;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Small Throwing Knife',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=2947;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3012;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3013;
UPDATE `item_template` SET `BuyPrice`='6037',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3072;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3076;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Keen Throwing Knife',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3107;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Heavy Throwing Dagger',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3108;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Crude Throwing Axe',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3111;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Weighted Throwing Axe',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3131;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Sharp Throwing Axe',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3135;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Deadly Throwing Axe',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3137;
UPDATE `item_template` SET `dmg_type2`='5' WHERE `entry`=3194;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3293;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3294;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3295;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3296;
UPDATE `item_template` SET `displayid`='46808' WHERE `entry`=3335;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3382;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3383;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3384;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3385;
UPDATE `item_template` SET `subclass`='0',`name`='Potion of Curing',`stackable`='20',`spellcategorycooldown_1`='120000' WHERE `entry`=3386;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3387;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3388;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3389;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3390;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3391;
UPDATE `item_template` SET `name`='Recipe: Potion of Curing' WHERE `entry`=3394;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Silver Star',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`RequiredDisenchantSkill`='-1' WHERE `entry`=3463;
UPDATE `item_template` SET `BuyPrice`='109053',`SellPrice`='21810',`armor`='57',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=3475;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='100',`SellPrice`='25' WHERE `entry`=3530;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3531;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`description`='NYI - THIS ITEM WILL SPAWN A QUEST' WHERE `entry`=3744;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3823;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3825;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3826;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3827;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3828;
UPDATE `item_template` SET `stackable`='25' WHERE `entry`=3916;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=3928;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=4399;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=4400;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=4401;
UPDATE `item_template` SET `Quality`='2',`Flags`='32832' WHERE `entry`=4407;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='202',`RequiredSkillRank`='160',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=4413;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4419;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4421;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4422;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4424;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4425;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4426;
UPDATE `item_template` SET `dmg_type2`='5' WHERE `entry`=4446;
UPDATE `item_template` SET `BuyPrice`='38' WHERE `entry`=4470;
UPDATE `item_template` SET `Flags`='0' WHERE `entry`=4536;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4596;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=4622;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4623;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=4767;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=4953;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=5092;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=5198;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=5243;
UPDATE `item_template` SET `class`='15',`subclass`='0',`name`='Broken Boot Knife',`InventoryType`='0',`dmg_min1`='0.0',`dmg_max1`='0.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=5379;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=5418;
UPDATE `item_template` SET `bonding`='4' WHERE `entry`=5462;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5509;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5510;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5511;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5512;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5513;
UPDATE `item_template` SET `class`='4',`subclass`='0' WHERE `entry`=5514;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=5604;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5631;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5633;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5634;
UPDATE `item_template` SET `dmg_type1`='3' WHERE `entry`=5818;
UPDATE `item_template` SET `bonding`='4' WHERE `entry`=5826;
UPDATE `item_template` SET `BuyPrice`='18',`SellPrice`='3' WHERE `entry`=5956;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5996;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=5997;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6048;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6049;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6050;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6051;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6052;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6086;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6089;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6149;
UPDATE `item_template` SET `BuyPrice`='124',`SellPrice`='24' WHERE `entry`=6217;
UPDATE `item_template` SET `BuyPrice`='23',`SellPrice`='4' WHERE `entry`=6256;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6360;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6362;
UPDATE `item_template` SET `BuyPrice`='902',`SellPrice`='180' WHERE `entry`=6365;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6372;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6373;
UPDATE `item_template` SET `stat_value3`='-10',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6440;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='680',`SellPrice`='170' WHERE `entry`=6450;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6451;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6455;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6458;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6486;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6488;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6643;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=6645;
UPDATE `item_template` SET `AllowableClass`='-1' WHERE `entry`=6647;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6651;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=6662;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=6677;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6766;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6833;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=6835;
UPDATE `item_template` SET `BuyPrice`='82',`SellPrice`='16' WHERE `entry`=7005;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=7117;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=7549;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=7676;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='185',`RequiredSkillRank`='60',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=7678;
UPDATE `item_template` SET `dmg_type2`='2' WHERE `entry`=7682;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=7708;
UPDATE `item_template` SET `dmg_type2`='4' WHERE `entry`=7730;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=7806;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=7807;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=7808;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=7810;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=7813;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=7982;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=8007;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=8008;
UPDATE `item_template` SET `AllowableRace`='32767' WHERE `entry`=8050;
UPDATE `item_template` SET `AllowableClass`='-1' WHERE `entry`=8366;
UPDATE `item_template` SET `Material`='-1' WHERE `entry`=8383;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8485;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8486;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8487;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8488;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8489;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8490;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8491;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8492;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8494;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8495;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8496;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8497;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8498;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8499;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8500;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=8501;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=8508;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=8529;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='1360',`SellPrice`='340' WHERE `entry`=8544;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='3200',`SellPrice`='800' WHERE `entry`=8545;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=8624;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=8625;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=8626;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=8949;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=8951;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9030;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9036;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9144;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9154;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9155;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9172;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9179;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9187;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9197;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9206;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=9214;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9224;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9233;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9260;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9264;
UPDATE `item_template` SET `spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=9315;
UPDATE `item_template` SET `spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=9317;
UPDATE `item_template` SET `dmg_type1`='3' WHERE `entry`=9381;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=9421;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=9436;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=9483;
UPDATE `item_template` SET `spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=9489;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=9550;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=9556;
UPDATE `item_template` SET `BuyPrice`='134822',`SellPrice`='26964',`spellcooldown_1`='90000',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=10158;
UPDATE `item_template` SET `displayid`='44717' WHERE `entry`=10175;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10305;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10306;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10307;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10308;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10309;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10310;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10360;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10361;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10392;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10393;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10394;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10398;
UPDATE `item_template` SET `spellcooldown_1`='30000' WHERE `entry`=10518;
UPDATE `item_template` SET `dmg_type1`='4' WHERE `entry`=10572;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=10592;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=10605;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=10647;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=10648;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=10664;
UPDATE `item_template` SET `AllowableRace`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=10683;
UPDATE `item_template` SET `spellcategorycooldown_2`='0' WHERE `entry`=10698;
UPDATE `item_template` SET `class`='4',`subclass`='0' WHERE `entry`=10727;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=10822;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=10831;
UPDATE `item_template` SET `dmg_type1`='3' WHERE `entry`=10836;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11023;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11026;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11027;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11110;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=11325;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=11414;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=11422;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=11471;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11474;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=11507;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=11622;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=11642;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1' WHERE `entry`=11643;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=11644;
UPDATE `item_template` SET `spellcharges_1`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`Material`='-1' WHERE `entry`=11645;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1' WHERE `entry`=11646;
UPDATE `item_template` SET `spellcharges_1`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`Material`='-1' WHERE `entry`=11647;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1' WHERE `entry`=11648;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1' WHERE `entry`=11649;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=11743;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=11748;
UPDATE `item_template` SET `BagFamily`='0' WHERE `entry`=11818;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11825;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=11826;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='202',`RequiredSkillRank`='205',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`BagFamily`='8' WHERE `entry`=11827;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='202',`RequiredSkillRank`='205',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`BagFamily`='8' WHERE `entry`=11828;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12033;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=12185;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=12190;
UPDATE `item_template` SET `Material`='2' WHERE `entry`=12225;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=12241;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=12264;
UPDATE `item_template` SET `spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=12287;
UPDATE `item_template` SET `Quality`='4',`spellcooldown_1`='0',`spellcategorycooldown_1`='3000',`Material`='-1' WHERE `entry`=12302;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12437;
UPDATE `item_template` SET `BuyPrice`='96',`dmg_min1`='7.0',`dmg_max1`='14.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12446;
UPDATE `item_template` SET `BuyPrice`='97',`dmg_min1`='6.0',`dmg_max1`='12.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12447;
UPDATE `item_template` SET `BuyPrice`='97',`dmg_min1`='7.0',`dmg_max1`='14.0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12449;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=12529;
UPDATE `item_template` SET `ArmorDamageModifier`='150.0' WHERE `entry`=12544;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=12565;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=12605;
UPDATE `item_template` SET `ArmorDamageModifier`='100.0' WHERE `entry`=12610;
UPDATE `item_template` SET `ArmorDamageModifier`='100.0' WHERE `entry`=12611;
UPDATE `item_template` SET `ArmorDamageModifier`='150.0' WHERE `entry`=12612;
UPDATE `item_template` SET `ArmorDamageModifier`='150.0' WHERE `entry`=12613;
UPDATE `item_template` SET `ArmorDamageModifier`='150.0' WHERE `entry`=12614;
UPDATE `item_template` SET `requiredspell`='0' WHERE `entry`=12699;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='164',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12706;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='164',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12707;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='164',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12714;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='164',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12718;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='164',`RequiredSkillRank`='300',`requiredspell`='0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=12725;
UPDATE `item_template` SET `BuyPrice`='302402',`SellPrice`='60480',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13148;
UPDATE `item_template` SET `Flags`='1088' WHERE `entry`=13157;
UPDATE `item_template` SET `ArmorDamageModifier`='90.0' WHERE `entry`=13252;
UPDATE `item_template` SET `ArmorDamageModifier`='100.0' WHERE `entry`=13258;
UPDATE `item_template` SET `Quality`='1' WHERE `entry`=13347;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13367;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=13396;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13442;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13443;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13444;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13445;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13446;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13447;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13452;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13453;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13454;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13455;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13456;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13457;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13458;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13459;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13461;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13462;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13506;
UPDATE `item_template` SET `displayid`='7744' WHERE `entry`=13507;
UPDATE `item_template` SET `spellcharges_1`='3' WHERE `entry`=13508;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13510;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13511;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13512;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13513;
UPDATE `item_template` SET `dmg_type1`='4' WHERE `entry`=13534;
UPDATE `item_template` SET `displayid`='45815' WHERE `entry`=13545;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=13582;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=13583;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=13584;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13760;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13889;
UPDATE `item_template` SET `AllowableClass`='-1' WHERE `entry`=13891;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13895;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcharges_1`='-1',`spellcategorycooldown_1`='1000',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13911;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcharges_1`='-1',`spellcategorycooldown_1`='1000',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13912;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcharges_1`='-1',`spellcategorycooldown_1`='1000',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13913;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=13932;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=13938;
UPDATE `item_template` SET `dmg_type2`='4' WHERE `entry`=13952;
UPDATE `item_template` SET `BuyPrice`='314236',`SellPrice`='62847',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=13982;
UPDATE `item_template` SET `BuyPrice`='82846',`SellPrice`='16569',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14318;
UPDATE `item_template` SET `BuyPrice`='90205',`SellPrice`='18041',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14334;
UPDATE `item_template` SET `BuyPrice`='67894',`SellPrice`='13578',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14335;
UPDATE `item_template` SET `BuyPrice`='90444',`SellPrice`='18088',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14464;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='1700',`SellPrice`='425' WHERE `entry`=14529;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=14530;
UPDATE `item_template` SET `name`='Slayer\'s Shoulderguards' WHERE `entry`=14758;
UPDATE `item_template` SET `BuyPrice`='129133',`spellcooldown_1`='90000',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14800;
UPDATE `item_template` SET `BuyPrice`='94527',`SellPrice`='18905',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14809;
UPDATE `item_template` SET `BuyPrice`='97176',`SellPrice`='19435',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14814;
UPDATE `item_template` SET `BuyPrice`='64151',`SellPrice`='12830',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14815;
UPDATE `item_template` SET `BuyPrice`='144436',`SellPrice`='28887',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14862;
UPDATE `item_template` SET `BuyPrice`='151328',`SellPrice`='30265',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=14931;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=15204;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=15283;
UPDATE `item_template` SET `ArmorDamageModifier`='150.0' WHERE `entry`=15413;
UPDATE `item_template` SET `BuyPrice`='81903',`SellPrice`='16380',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15435;
UPDATE `item_template` SET `BuyPrice`='55196',`SellPrice`='11039',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15438;
UPDATE `item_template` SET `BuyPrice`='84208',`SellPrice`='16841',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15439;
UPDATE `item_template` SET `BuyPrice`='97627',`SellPrice`='19525',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15678;
UPDATE `item_template` SET `BuyPrice`='100676',`SellPrice`='20135',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15684;
UPDATE `item_template` SET `BuyPrice`='136195',`SellPrice`='27239',`AllowableClass`='-1',`spellcooldown_1`='90000',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15687;
UPDATE `item_template` SET `BuyPrice`='37605',`SellPrice`='7521',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15791;
UPDATE `item_template` SET `BuyPrice`='137907',`SellPrice`='27581',`spellcooldown_1`='90000',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=15887;
UPDATE `item_template` SET `spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=15988;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=15996;
UPDATE `item_template` SET `class`='4',`subclass`='0',`RequiredDisenchantSkill`='200' WHERE `entry`=16022;
UPDATE `item_template` SET `dmg_type2`='6' WHERE `entry`=16039;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=16057;
UPDATE `item_template` SET `BuyPrice`='91079',`SellPrice`='18215',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`ExtendedCost`='1152',`RequiredDisenchantSkill`='-1' WHERE `entry`=16430;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=16993;
UPDATE `item_template` SET `stackable`='10' WHERE `entry`=17030;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=17048;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=17077;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=17224;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=17348;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=17349;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=17351;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=17352;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=17364;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=17402;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=17442;
UPDATE `item_template` SET `displayid`='45599' WHERE `entry`=17696;
UPDATE `item_template` SET `subclass`='0',`stackable`='20' WHERE `entry`=17708;
UPDATE `item_template` SET `dmg_type1`='3' WHERE `entry`=17745;
UPDATE `item_template` SET `stackable`='20' WHERE `entry`=17771;
UPDATE `item_template` SET `AllowableClass`='-1',`spelltrigger_1`='1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=17982;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='165',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=18252;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=18253;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=18265;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=18294;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=18301;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=18338;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=18346;
UPDATE `item_template` SET `dmg_type1`='4' WHERE `entry`=18483;
UPDATE `item_template` SET `Quality`='1' WHERE `entry`=18492;
UPDATE `item_template` SET `ArmorDamageModifier`='80.0' WHERE `entry`=18535;
UPDATE `item_template` SET `name`='Essence of the Firelord DEPRECATED',`Quality`='1',`Flags`='2064',`RequiredLevel`='100',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=18566;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=18597;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=18598;
UPDATE `item_template` SET `BuyPrice`='100000',`SellPrice`='25000',`RequiredDisenchantSkill`='200' WHERE `entry`=18602;
UPDATE `item_template` SET `maxcount`='0',`stackable`='4' WHERE `entry`=18640;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=18642;
UPDATE `item_template` SET `spellcharges_1`='-1' WHERE `entry`=18662;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=18761;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=18839;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=18841;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=19002;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19004;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19005;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19006;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19007;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19008;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19009;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19010;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19011;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19012;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19013;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19066;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19067;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19068;
UPDATE `item_template` SET `BuyPrice`='0',`SellPrice`='0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`ExtendedCost`='530' WHERE `entry`=19105;
UPDATE `item_template` SET `BuyPrice`='88251',`SellPrice`='17650',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=19112;
UPDATE `item_template` SET `BuyPrice`='62918',`SellPrice`='12583',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=19113;
UPDATE `item_template` SET `dmg_type1`='4' WHERE `entry`=19130;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=19307;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=19367;
UPDATE `item_template` SET `ArmorDamageModifier`='170.0' WHERE `entry`=19405;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=19435;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=19450;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=19803;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=19805;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=19807;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=19861;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=19911;
UPDATE `item_template` SET `dmg_type1`='3' WHERE `entry`=19927;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=19960;
UPDATE `item_template` SET `BuyPrice`='265400',`SellPrice`='53080',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=19961;
UPDATE `item_template` SET `ArmorDamageModifier`='-4.0' WHERE `entry`=19964;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=19967;
UPDATE `item_template` SET `Material`='1' WHERE `entry`=19970;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20002;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20004;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20007;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20008;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20018;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20021;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20065;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20066;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20067;
UPDATE `item_template` SET `dmg_type2`='5' WHERE `entry`=20086;
UPDATE `item_template` SET `name`='Highlander\'s Padded Girdle' WHERE `entry`=20090;
UPDATE `item_template` SET `name`='Highlander\'s Padded Greaves' WHERE `entry`=20093;
UPDATE `item_template` SET `ArmorDamageModifier`='40.0' WHERE `entry`=20100;
UPDATE `item_template` SET `ArmorDamageModifier`='50.0' WHERE `entry`=20103;
UPDATE `item_template` SET `ArmorDamageModifier`='30.0' WHERE `entry`=20105;
UPDATE `item_template` SET `name`='Highlander\'s Mail Girdle' WHERE `entry`=20126;
UPDATE `item_template` SET `name`='Highlander\'s Mail Greaves' WHERE `entry`=20129;
UPDATE `item_template` SET `ArmorDamageModifier`='30.0' WHERE `entry`=20172;
UPDATE `item_template` SET `ArmorDamageModifier`='40.0' WHERE `entry`=20173;
UPDATE `item_template` SET `name`='Defiler\'s Padded Girdle' WHERE `entry`=20197;
UPDATE `item_template` SET `name`='Defiler\'s Mail Girdle' WHERE `entry`=20207;
UPDATE `item_template` SET `name`='Defiler\'s Mail Greaves' WHERE `entry`=20210;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20232;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20234;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20235;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20237;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20243;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20244;
UPDATE `item_template` SET `ArmorDamageModifier`='60.0' WHERE `entry`=20259;
UPDATE `item_template` SET `Quality`='3',`Flags`='32768',`spellcooldown_1`='1500' WHERE `entry`=20371;
UPDATE `item_template` SET `Quality`='1',`Flags`='2048',`description`='' WHERE `entry`=20383;
UPDATE `item_template` SET `bonding`='4' WHERE `entry`=20453;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20463;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20471;
UPDATE `item_template` SET `displayid`='41728',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20561;
UPDATE `item_template` SET `displayid`='41720',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20562;
UPDATE `item_template` SET `displayid`='41723',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20563;
UPDATE `item_template` SET `displayid`='41731',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20564;
UPDATE `item_template` SET `displayid`='41725',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20571;
UPDATE `item_template` SET `displayid`='41735',`AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20573;
UPDATE `item_template` SET `dmg_type1`='3' WHERE `entry`=20672;
UPDATE `item_template` SET `BuyPrice`='144996',`SellPrice`='28999',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20683;
UPDATE `item_template` SET `BuyPrice`='83320',`SellPrice`='16664',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20684;
UPDATE `item_template` SET `BuyPrice`='101412',`SellPrice`='20282',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=20687;
UPDATE `item_template` SET `ArmorDamageModifier`='60.0' WHERE `entry`=20693;
UPDATE `item_template` SET `ArmorDamageModifier`='-4.0' WHERE `entry`=20698;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=20709;
UPDATE `item_template` SET `ArmorDamageModifier`='60.0' WHERE `entry`=20710;
UPDATE `item_template` SET `ArmorDamageModifier`='-1.0' WHERE `entry`=20720;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='333',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Map`='0' WHERE `entry`=20726;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='333',`RequiredSkillRank`='300',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Map`='0' WHERE `entry`=20729;
UPDATE `item_template` SET `Map`=0 WHERE `entry`=20735;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=20769;
UPDATE `item_template` SET `subclass`='1',`armor`='39',`MaxDurability`='50' WHERE `entry`=20832;
UPDATE `item_template` SET `subclass`='1',`AllowableClass`='262143',`AllowableRace`='8388607',`armor`='53',`MaxDurability`='50' WHERE `entry`=20969;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=21028;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=21114;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=21136;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=21151;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=21227;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=21277;
UPDATE `item_template` SET `AllowableClass`='8' WHERE `entry`=21359;
UPDATE `item_template` SET `AllowableClass`='8' WHERE `entry`=21364;
UPDATE `item_template` SET `BuyPrice`='400246',`SellPrice`='80049',`AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`ArmorDamageModifier`='-16.0' WHERE `entry`=21523;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=21528;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=21546;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=21603;
UPDATE `item_template` SET `BuyPrice`='191108',`SellPrice`='38221',`AllowableClass`='32767',`armor`='413',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=21684;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='202',`RequiredSkillRank`='125',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`BagFamily`='8' WHERE `entry`=21724;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='202',`RequiredSkillRank`='125',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`BagFamily`='8' WHERE `entry`=21725;
UPDATE `item_template` SET `AllowableClass`='-1',`RequiredSkill`='202',`RequiredSkillRank`='125',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`BagFamily`='8' WHERE `entry`=21726;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=21733;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=21734;
UPDATE `item_template` SET `BagFamily`='8' WHERE `entry`=21735;
UPDATE `item_template` SET `spellcooldown_2`='1200000' WHERE `entry`=21756;
UPDATE `item_template` SET `subclass`='1',`MaxDurability`='50' WHERE `entry`=21774;
UPDATE `item_template` SET `name`='Captain Kelisendra\'s Lost Rutters' WHERE `entry`=21776;
UPDATE `item_template` SET `ArmorDamageModifier`='-3.5' WHERE `entry`=21802;
UPDATE `item_template` SET `name`='Spellfire Robe' WHERE `entry`=21848;
UPDATE `item_template` SET `name`='Frozen Shadoweave Robe' WHERE `entry`=21871;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=21890;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21892;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21893;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21894;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21895;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21896;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21897;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21898;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21899;
UPDATE `item_template` SET `displayid`='2571',`Quality`='1',`RequiredReputationRank`='6' WHERE `entry`=21900;
UPDATE `item_template` SET `displayid`='2571',`Quality`='1',`RequiredReputationRank`='6' WHERE `entry`=21901;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21902;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21903;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21904;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21905;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21906;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21907;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21908;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21909;
UPDATE `item_template` SET `name`='Pattern: Spellfire Robe' WHERE `entry`=21910;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21911;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21912;
UPDATE `item_template` SET `name`='Pattern: Frozen Shadoweave Robe',`RequiredReputationRank`='6' WHERE `entry`=21913;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21914;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21915;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21916;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21917;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21918;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=21919;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=21980;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='5100',`SellPrice`='1275' WHERE `entry`=21990;
UPDATE `item_template` SET `subclass`='0',`BuyPrice`='12000',`SellPrice`='3000' WHERE `entry`=21991;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22044;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22058;
UPDATE `item_template` SET `bonding`='1',`Material`='-1' WHERE `entry`=22059;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22103;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22104;
UPDATE `item_template` SET `Quality`='3',`Flags`='32768',`spellcooldown_1`='1500' WHERE `entry`=22114;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22155;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22156;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22157;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22160;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22164;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22168;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22170;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22177;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22178;
UPDATE `item_template` SET `subclass`='0',`stackable`='20' WHERE `entry`=22192;
UPDATE `item_template` SET `subclass`='0',`stackable`='20' WHERE `entry`=22193;
UPDATE `item_template` SET `spellcooldown_1`='1000' WHERE `entry`=22235;
UPDATE `item_template` SET `dmg_type1`='1' WHERE `entry`=22254;
UPDATE `item_template` SET `ArmorDamageModifier`='130.0' WHERE `entry`=22302;
UPDATE `item_template` SET `ArmorDamageModifier`='90.0' WHERE `entry`=22304;
UPDATE `item_template` SET `ArmorDamageModifier`='90.0' WHERE `entry`=22306;
UPDATE `item_template` SET `ArmorDamageModifier`='70.0' WHERE `entry`=22313;
UPDATE `item_template` SET `ArmorDamageModifier`='-1.3' WHERE `entry`=22379;
UPDATE `item_template` SET `ArmorDamageModifier`='-1.3' WHERE `entry`=22380;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=22408;
UPDATE `item_template` SET `class`='3',`subclass`='8' WHERE `entry`=22460;
UPDATE `item_template` SET `RequiredSkillRank`='375' WHERE `entry`=22463;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=22531;
UPDATE `item_template` SET `AllowableRace`='32767' WHERE `entry`=22629;
UPDATE `item_template` SET `BuyPrice`='925791',`SellPrice`='185158',`AllowableClass`='-1',`dmg_min1`='130.17',`dmg_max1`='243.17',`delay`='2900',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellid_5`='31796',`spelltrigger_5`='1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`ArmorDamageModifier`='-32.7' WHERE `entry`=22630;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=22739;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22779;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=22820;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=22821;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22823;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22824;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22825;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22826;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22827;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22828;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22829;
UPDATE `item_template` SET `subclass`='0',`stackable`='20' WHERE `entry`=22830;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22831;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22832;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22833;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22834;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22835;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22836;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22837;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22838;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22839;
UPDATE `item_template` SET `subclass`='0',`stackable`='20' WHERE `entry`=22840;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22841;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22842;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22844;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22845;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22846;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22847;
UPDATE `item_template` SET `subclass`='0',`stackable`='20' WHERE `entry`=22848;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22849;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22850;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22851;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22853;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22854;
UPDATE `item_template` SET `subclass`='0',`name`='Flask of Blinding Light' WHERE `entry`=22861;
UPDATE `item_template` SET `subclass`='0',`name`='Flask of Pure Death' WHERE `entry`=22866;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=22871;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=22905;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=23002;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=23007;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=23009;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=23015;
UPDATE `item_template` SET `name`='Ring of the Cryptstalker' WHERE `entry`=23067;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=23083;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=23170;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=23177;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=23179;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=23180;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=23182;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=23183;
UPDATE `item_template` SET `AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=23184;
UPDATE `item_template` SET `RequiredLevel`='2',`ExtendedCost`='0' WHERE `entry`=23234;
UPDATE `item_template` SET `AllowableClass`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=23549;
UPDATE `item_template` SET `spellid_1`='15828' WHERE `entry`=23565;
UPDATE `item_template` SET `name`='Lesser Ward of Shielding' WHERE `entry`=23575;
UPDATE `item_template` SET `name`='Greater Ward of Shielding',`RequiredLevel`='60' WHERE `entry`=23576;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=23586;
UPDATE `item_template` SET `name`='Plans: Lesser Ward of Shielding' WHERE `entry`=23638;
UPDATE `item_template` SET `name`='Plans: Greater Ward of Shielding' WHERE `entry`=23639;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=23713;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=23714;
UPDATE `item_template` SET `description`='The necklace\'s charm is shaped as a small cage and can be used to retrieve a Fel Ember from one of the braziers to either side of the Grand Warlock\'s throne.' WHERE `entry`=23735;
UPDATE `item_template` SET `subclass`='0',`displayid`='45157',`RequiredSkillRank`='305',`description`='They just don\'t make \'em like this anymore...' WHERE `entry`=23822;
UPDATE `item_template` SET `subclass`='0',`description`='They just don\'t make \'em like this anymore...' WHERE `entry`=23823;
UPDATE `item_template` SET `stackable`='6' WHERE `entry`=23833;
UPDATE `item_template` SET `spellid_1`='40386' WHERE `entry`=23838;
UPDATE `item_template` SET `Quality`='0',`Material`='-1' WHERE `entry`=23847;
UPDATE `item_template` SET `BuyPrice`='6000',`SellPrice`='1500' WHERE `entry`=23858;
UPDATE `item_template` SET `Flags`='64',`ItemLevel`='70' WHERE `entry`=23862;
UPDATE `item_template` SET `BuyPrice`='6000',`SellPrice`='1500' WHERE `entry`=23866;
UPDATE `item_template` SET `BuyPrice`='6000',`SellPrice`='1500' WHERE `entry`=23867;
UPDATE `item_template` SET `BuyPrice`='6000',`SellPrice`='1500' WHERE `entry`=23868;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=23871;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=24000;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=24001;
UPDATE `item_template` SET `class`='3',`subclass`='0' WHERE `entry`=24029;
UPDATE `item_template` SET `class`='3',`subclass`='1' WHERE `entry`=24035;
UPDATE `item_template` SET `class`='3',`subclass`='0' WHERE `entry`=24036;
UPDATE `item_template` SET `class`='3',`subclass`='1' WHERE `entry`=24037;
UPDATE `item_template` SET `class`='3',`subclass`='1' WHERE `entry`=24039;
UPDATE `item_template` SET `subclass`='1',`armor`='138',`MaxDurability`='60' WHERE `entry`=24122;
UPDATE `item_template` SET `subclass`='1',`armor`='138',`MaxDurability`='60' WHERE `entry`=24123;
UPDATE `item_template` SET `name`='Design: Circlet of Arcane Might' WHERE `entry`=24173;
UPDATE `item_template` SET `Quality`='0' WHERE `entry`=24223;
UPDATE `item_template` SET `socketBonus`='3153' WHERE `entry`=24251;
UPDATE `item_template` SET `socketBonus`='2900' WHERE `entry`=24257;
UPDATE `item_template` SET `socketBonus`='2882' WHERE `entry`=24262;
UPDATE `item_template` SET `socketBonus`='2868' WHERE `entry`=24266;
UPDATE `item_template` SET `class`='15',`Quality`='0' WHERE `entry`=24277;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=24316;
UPDATE `item_template` SET `dmg_type1`='6' WHERE `entry`=24342;
UPDATE `item_template` SET `dmg_type1`='4' WHERE `entry`=24380;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=24408;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=24417;
UPDATE `item_template` SET `socketBonus`='2889' WHERE `entry`=24452;
UPDATE `item_template` SET `Quality`='0' WHERE `entry`=24475;
UPDATE `item_template` SET `ItemLevel`='60' WHERE `entry`=24477;
UPDATE `item_template` SET `class`='3',`subclass`='7' WHERE `entry`=24479;
UPDATE `item_template` SET `stackable`='10',`description`='A thick, scaly hide from a muckclaw thrasher' WHERE `entry`=24486;
UPDATE `item_template` SET `spellcategorycooldown_1`='1000',`bonding`='1' WHERE `entry`=24540;
UPDATE `item_template` SET `displayid`='47246' WHERE `entry`=24545;
UPDATE `item_template` SET `bonding`='4' WHERE `entry`=24560;
UPDATE `item_template` SET `name`='Umbrafen Cap' WHERE `entry`=24761;
UPDATE `item_template` SET `name`='Boneshredder Wristguards' WHERE `entry`=24780;
UPDATE `item_template` SET `name`='Amethyst Pendant' WHERE `entry`=25064;
UPDATE `item_template` SET `name`='Tanzanite Pendant' WHERE `entry`=25071;
UPDATE `item_template` SET `displayid`='44768' WHERE `entry`=25130;
UPDATE `item_template` SET `name`='Clefthoof Mace' WHERE `entry`=25135;
UPDATE `item_template` SET `displayid`='11247' WHERE `entry`=25254;
UPDATE `item_template` SET `displayid`='44662' WHERE `entry`=25268;
UPDATE `item_template` SET `displayid`='44665' WHERE `entry`=25276;
UPDATE `item_template` SET `ArmorDamageModifier`='-5.3' WHERE `entry`=25312;
UPDATE `item_template` SET `ArmorDamageModifier`='-10.5' WHERE `entry`=25316;
UPDATE `item_template` SET `ArmorDamageModifier`='-12.5' WHERE `entry`=25317;
UPDATE `item_template` SET `ArmorDamageModifier`='-14.5' WHERE `entry`=25318;
UPDATE `item_template` SET `ArmorDamageModifier`='-10.5' WHERE `entry`=25330;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=25422;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=25423;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=25473;
UPDATE `item_template` SET `displayid`='46206' WHERE `entry`=25474;
UPDATE `item_template` SET `displayid`='46206' WHERE `entry`=25475;
UPDATE `item_template` SET `displayid`='46206' WHERE `entry`=25476;
UPDATE `item_template` SET `displayid`='46206',`Quality`='4' WHERE `entry`=25477;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=25527;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=25528;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=25529;
UPDATE `item_template` SET `displayid`='46206',`Quality`='4' WHERE `entry`=25531;
UPDATE `item_template` SET `displayid`='46206',`Quality`='4' WHERE `entry`=25532;
UPDATE `item_template` SET `displayid`='46206',`Quality`='4' WHERE `entry`=25533;
UPDATE `item_template` SET `displayid`='45013',`spellcooldown_1`='1500' WHERE `entry`=25535;
UPDATE `item_template` SET `ArmorDamageModifier`='-15.3' WHERE `entry`=25536;
UPDATE `item_template` SET `spellcooldown_1`='0',`spellcategory_1`='1167',`spellcategorycooldown_1`='5000' WHERE `entry`=25552;
UPDATE `item_template` SET `stackable`='20' WHERE `entry`=25554;
UPDATE `item_template` SET `spellcooldown_1`='0',`spellcategory_1`='1167',`spellcategorycooldown_1`='5000' WHERE `entry`=25555;
UPDATE `item_template` SET `displayid`='45985' WHERE `entry`=25561;
UPDATE `item_template` SET `Material`='8' WHERE `entry`=25676;
UPDATE `item_template` SET `name`='Handguards of Precision' WHERE `entry`=25716;
UPDATE `item_template` SET `displayid`='34282',`BuyPrice`='1000',`SellPrice`='250' WHERE `entry`=25886;
UPDATE `item_template` SET `class`='3',`subclass`='6' WHERE `entry`=25890;
UPDATE `item_template` SET `class`='3',`subclass`='6' WHERE `entry`=25893;
UPDATE `item_template` SET `class`='3',`subclass`='6' WHERE `entry`=25898;
UPDATE `item_template` SET `class`='3',`subclass`='6' WHERE `entry`=25899;
UPDATE `item_template` SET `dmg_type1`='4' WHERE `entry`=25939;
UPDATE `item_template` SET `ArmorDamageModifier`='30.0' WHERE `entry`=26030;
UPDATE `item_template` SET `name`='Carved Crystalline Orb' WHERE `entry`=27398;
UPDATE `item_template` SET `name`='Broxigar\'s Ring of Valor' WHERE `entry`=27432;
UPDATE `item_template` SET `Quality`='0',`description`='A twisted fish that lives in fel pools and lava.   Do Not Eat!' WHERE `entry`=27441;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=27445;
UPDATE `item_template` SET `name`='Firebrand Battleaxe' WHERE `entry`=27490;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=27498;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=27499;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=27500;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=27501;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=27502;
UPDATE `item_template` SET `subclass`='0',`spellid_1`='33082' WHERE `entry`=27503;
UPDATE `item_template` SET `armor`='0',`ArmorDamageModifier`='-30.3' WHERE `entry`=27512;
UPDATE `item_template` SET `name`='Enormous Barbed Gill Trout' WHERE `entry`=27516;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=27540;
UPDATE `item_template` SET `name`='Slayer\'s Leggings' WHERE `entry`=27653;
UPDATE `item_template` SET `name`='Avenger\'s Legplates' WHERE `entry`=27654;
UPDATE `item_template` SET `description`='Don\'t ask what it\'s made of.' WHERE `entry`=27655;
UPDATE `item_template` SET `name`='Mask of Penance' WHERE `entry`=27790;
UPDATE `item_template` SET `socketBonus`='3153' WHERE `entry`=27830;
UPDATE `item_template` SET `socketBonus`='3153' WHERE `entry`=27834;
UPDATE `item_template` SET `ArmorDamageModifier`='-30.3' WHERE `entry`=27842;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=27885;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=27890;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=27911;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=27939;
UPDATE `item_template` SET `name`='Mask of Inner Fire' WHERE `entry`=27993;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`description`='These explosives are a great example of fel orc \'engineering\' in action. They could make even the most accomplished goblin engineer blush.' WHERE `entry`=28039;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=28100;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=28101;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=28102;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=28103;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=28104;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='225' WHERE `entry`=28108;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='225' WHERE `entry`=28109;
UPDATE `item_template` SET `spellcharges_1`='0' WHERE `entry`=28132;
UPDATE `item_template` SET `name`='Brooch of Heightened Potential' WHERE `entry`=28134;
UPDATE `item_template` SET `dmg_min1`='35.46',`dmg_max1`='113.46',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`ArmorDamageModifier`='-30.3' WHERE `entry`=28216;
UPDATE `item_template` SET `name`='Beast Lord Cuirass' WHERE `entry`=28228;
UPDATE `item_template` SET `name`='Gladiator\'s Touch of Defeat' WHERE `entry`=28320;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=28386;
UPDATE `item_template` SET `name`='Broken Silver Star' WHERE `entry`=28408;
UPDATE `item_template` SET `stat_value3`='37' WHERE `entry`=28441;
UPDATE `item_template` SET `dmg_min1`='47.0',`dmg_max1`='89.0' WHERE `entry`=28531;
UPDATE `item_template` SET `dmg_min1`='49.0',`dmg_max1`='91.0' WHERE `entry`=28532;
UPDATE `item_template` SET `dmg_min1`='57.0',`dmg_max1`='107.0' WHERE `entry`=28538;
UPDATE `item_template` SET `name`='Romulo\'s Poison Vial' WHERE `entry`=28579;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=28588;
UPDATE `item_template` SET `name`='Trial-Fire Trousers' WHERE `entry`=28594;
UPDATE `item_template` SET `spellcharges_1`='0' WHERE `entry`=28607;
UPDATE `item_template` SET `Flags`='2048' WHERE `entry`=28635;
UPDATE `item_template` SET `Flags`='2048' WHERE `entry`=28636;
UPDATE `item_template` SET `Flags`='2048' WHERE `entry`=28637;
UPDATE `item_template` SET `Quality`='0' WHERE `entry`=28664;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=28673;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=28783;
UPDATE `item_template` SET `ItemLevel`='125',`stat_value1`='19',`dmg_min1`='79.0',`dmg_max1`='120.0',`spellid_1`='15809' WHERE `entry`=28826;
UPDATE `item_template` SET `RequiredReputationFaction`='0',`RequiredReputationRank`='0' WHERE `entry`=28915;
UPDATE `item_template` SET `stat_value3`='12' WHERE `entry`=29002;
UPDATE `item_template` SET `displayid`='45810' WHERE `entry`=29044;
UPDATE `item_template` SET `displayid`='45812' WHERE `entry`=29045;
UPDATE `item_template` SET `displayid`='45814' WHERE `entry`=29046;
UPDATE `item_template` SET `displayid`='45811' WHERE `entry`=29047;
UPDATE `item_template` SET `displayid`='45813' WHERE `entry`=29048;
UPDATE `item_template` SET `BuyPrice`='4',`SellPrice`='1',`bonding`='0' WHERE `entry`=29110;
UPDATE `item_template` SET `BuyPrice`='4',`SellPrice`='1',`bonding`='0' WHERE `entry`=29111;
UPDATE `item_template` SET `dmg_type1`='2' WHERE `entry`=29149;
UPDATE `item_template` SET `dmg_min1`='99.0',`dmg_max1`='149.0' WHERE `entry`=29211;
UPDATE `item_template` SET `displayid`='46559' WHERE `entry`=29246;
UPDATE `item_template` SET `displayid`='46574' WHERE `entry`=29247;
UPDATE `item_template` SET `BuyPrice`='195815',`SellPrice`='39163',`ItemLevel`='110',`stat_value1`='37',`stat_value2`='22',`stat_value3`='24',`stat_type4`='15',`stat_value4`='16',`armor`='782',`spellid_1`='14799',`spellid_2`='0' WHERE `entry`=29253;
UPDATE `item_template` SET `Flags`='32768',`RequiredLevel`='0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='3' WHERE `entry`=29297;
UPDATE `item_template` SET `Flags`='32768',`RequiredLevel`='0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='3' WHERE `entry`=29301;
UPDATE `item_template` SET `Flags`='32768',`RequiredLevel`='0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='3' WHERE `entry`=29305;
UPDATE `item_template` SET `Flags`='32768',`RequiredLevel`='0',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='3' WHERE `entry`=29309;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29363;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29364;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='275' WHERE `entry`=29377;
UPDATE `item_template` SET `Flags`='0',`dmg_type1`='6',`RequiredDisenchantSkill`='275' WHERE `entry`=29378;
UPDATE `item_template` SET `name`='Ethereum Phase Blade',`Flags`='0',`RequiredDisenchantSkill`='275' WHERE `entry`=29380;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='275' WHERE `entry`=29391;
UPDATE `item_template` SET `spellcharges_1`='10' WHERE `entry`=29429;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=29528;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=29529;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=29530;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=29531;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=29532;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=29535;
UPDATE `item_template` SET `Quality`='4' WHERE `entry`=29536;
UPDATE `item_template` SET `name`='A Jack-o\'-Lantern' WHERE `entry`=29575;
UPDATE `item_template` SET `ExtendedCost`='733' WHERE `entry`=29606;
UPDATE `item_template` SET `ExtendedCost`='562' WHERE `entry`=29607;
UPDATE `item_template` SET `ExtendedCost`='559' WHERE `entry`=29608;
UPDATE `item_template` SET `ExtendedCost`='795' WHERE `entry`=29609;
UPDATE `item_template` SET `ExtendedCost`='811' WHERE `entry`=29610;
UPDATE `item_template` SET `ExtendedCost`='797' WHERE `entry`=29611;
UPDATE `item_template` SET `ExtendedCost`='546' WHERE `entry`=29612;
UPDATE `item_template` SET `ExtendedCost`='541' WHERE `entry`=29613;
UPDATE `item_template` SET `ExtendedCost`='740' WHERE `entry`=29614;
UPDATE `item_template` SET `ExtendedCost`='795' WHERE `entry`=29615;
UPDATE `item_template` SET `ExtendedCost`='805' WHERE `entry`=29616;
UPDATE `item_template` SET `ExtendedCost`='485' WHERE `entry`=29617;
UPDATE `item_template` SET `description`='The Scryers in the Seer\'s Library would be interested in this item.' WHERE `entry`=29739;
UPDATE `item_template` SET `description`='Only the Aldor in the Temple of Unending Light could cleanse the demonic taint that permeates this item.' WHERE `entry`=29740;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29753;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29754;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29755;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29756;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29757;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29758;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29759;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29760;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29761;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29762;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29763;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29764;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29765;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29766;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=29767;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29901;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29902;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29903;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29904;
UPDATE `item_template` SET `BuyPrice`='698441',`SellPrice`='139688',`ItemLevel`='134',`stat_value1`='25',`stat_value2`='21',`dmg_min1`='175.0',`dmg_max1`='327.0',`spellid_1`='14049' WHERE `entry`=29924;
UPDATE `item_template` SET `BuyPrice`='658642',`SellPrice`='131728',`ItemLevel`='134',`stat_value1`='21',`stat_value2`='30',`dmg_min1`='101.0',`dmg_max1`='189.0',`spellid_1`='14049' WHERE `entry`=29948;
UPDATE `item_template` SET `BuyPrice`='495803',`SellPrice`='99160',`ItemLevel`='134',`stat_value1`='20',`stat_value2`='19',`dmg_min1`='177.0',`dmg_max1`='329.0' WHERE `entry`=29949;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29953;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29956;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29957;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29958;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=29960;
UPDATE `item_template` SET `BuyPrice`='643667',`SellPrice`='128733',`ItemLevel`='134',`stat_value1`='20',`stat_value2`='30',`dmg_min1`='121.0',`dmg_max1`='226.0' WHERE `entry`=29962;
UPDATE `item_template` SET `BuyPrice`='801379',`SellPrice`='160275',`ItemLevel`='134',`stat_value1`='52',`stat_value2`='44',`stat_value3`='62',`dmg_min1`='144.04',`dmg_max1`='306.04',`ArmorDamageModifier`='-55.3' WHERE `entry`=29981;
UPDATE `item_template` SET `BuyPrice`='482699',`SellPrice`='96539',`ItemLevel`='134',`stat_value1`='11',`stat_value2`='14',`dmg_min1`='186.0',`dmg_max1`='346.0',`dmg_type1`='5',`spellid_1`='14047' WHERE `entry`=29982;
UPDATE `item_template` SET `displayid`='46577' WHERE `entry`=29983;
UPDATE `item_template` SET `name`='Cowl of the Grand Engineer' WHERE `entry`=29986;
UPDATE `item_template` SET `BuyPrice`='862632',`SellPrice`='172526',`ItemLevel`='141',`stat_value1`='76',`stat_value3`='51',`dmg_min1`='145.2',`dmg_max1`='312.2',`ArmorDamageModifier`='-59.0' WHERE `entry`=29988;
UPDATE `item_template` SET `displayid`='46506' WHERE `entry`=29990;
UPDATE `item_template` SET `BuyPrice`='902312',`SellPrice`='180462',`ItemLevel`='141',`stat_value1`='53',`stat_value2`='37',`dmg_min1`='375.0',`dmg_max1`='564.0',`spellid_1`='34751' WHERE `entry`=29993;
UPDATE `item_template` SET `BuyPrice`='729627',`SellPrice`='145925',`ItemLevel`='141',`dmg_min1`='189.0',`dmg_max1`='352.0',`spellid_2`='15812' WHERE `entry`=29996;
UPDATE `item_template` SET `name`='The Darkener\'s Grasp' WHERE `entry`=30007;
UPDATE `item_template` SET `BuyPrice`='801126',`SellPrice`='160225',`ItemLevel`='134',`stat_value1`='75',`stat_value2`='54',`dmg_max1`='286.1',`ArmorDamageModifier`='-55.3' WHERE `entry`=30021;
UPDATE `item_template` SET `ItemLevel`='134',`stat_value1`='14',`stat_value2`='12',`dmg_min1`='97.0',`dmg_max1`='146.0' WHERE `entry`=30025;
UPDATE `item_template` SET `displayid`='46072' WHERE `entry`=30034;
UPDATE `item_template` SET `displayid`='46115' WHERE `entry`=30036;
UPDATE `item_template` SET `displayid`='46348' WHERE `entry`=30053;
UPDATE `item_template` SET `displayid`='46353' WHERE `entry`=30055;
UPDATE `item_template` SET `BuyPrice`='651154',`SellPrice`='130230',`ItemLevel`='134',`stat_value1`='34',`stat_value2`='16',`dmg_min1`='115.0',`dmg_max1`='214.0' WHERE `entry`=30058;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='300' WHERE `entry`=30067;
UPDATE `item_template` SET `BuyPrice`='492008',`SellPrice`='98401',`ItemLevel`='134',`stat_value1`='14',`dmg_min1`='186.0',`dmg_max1`='346.0',`dmg_type1`='5',`spellid_1`='18029',`spellid_2`='21626' WHERE `entry`=30080;
UPDATE `item_template` SET `BuyPrice`='661003',`SellPrice`='132200',`ItemLevel`='134',`stat_value1`='15',`stat_value2`='20',`dmg_min1`='182.0',`dmg_max1`='339.0' WHERE `entry`=30082;
UPDATE `item_template` SET `displayid`='46349' WHERE `entry`=30084;
UPDATE `item_template` SET `displayid`='46355' WHERE `entry`=30085;
UPDATE `item_template` SET `BuyPrice`='873389',`SellPrice`='174677',`ItemLevel`='134',`stat_value1`='50',`stat_value2`='51',`dmg_min1`='371.0',`dmg_max1`='558.0' WHERE `entry`=30090;
UPDATE `item_template` SET `BuyPrice`='643599',`SellPrice`='128719',`ItemLevel`='134',`stat_value2`='20',`stat_value3`='21',`dmg_min1`='21.46',`dmg_max1`='126.46',`ArmorDamageModifier`='-55.3' WHERE `entry`=30095;
UPDATE `item_template` SET `BuyPrice`='695266',`SellPrice`='139053',`ItemLevel`='141',`dmg_min1`='144.0',`dmg_max1`='217.0',`spellid_1`='15814' WHERE `entry`=30103;
UPDATE `item_template` SET `BuyPrice`='539425',`SellPrice`='107885',`ItemLevel`='141',`stat_value1`='17',`stat_value2`='16',`dmg_min1`='217.0',`dmg_max1`='327.0' WHERE `entry`=30105;
UPDATE `item_template` SET `BuyPrice`='727011',`SellPrice`='145402',`ItemLevel`='141',`stat_value1`='20',`stat_value2`='28',`dmg_min1`='20.9',`dmg_max1`='135.9',`spellid_1`='42110',`spellid_2`='21366',`ArmorDamageModifier`='-59.0' WHERE `entry`=30108;
UPDATE `item_template` SET `socketBonus`='2885' WHERE `entry`=30121;
UPDATE `item_template` SET `displayid`='45017' WHERE `entry`=30144;
UPDATE `item_template` SET `displayid`='45016' WHERE `entry`=30145;
UPDATE `item_template` SET `displayid`='45018' WHERE `entry`=30146;
UPDATE `item_template` SET `displayid`='45019' WHERE `entry`=30148;
UPDATE `item_template` SET `displayid`='45020' WHERE `entry`=30149;
UPDATE `item_template` SET `displayid`='42879' WHERE `entry`=30152;
UPDATE `item_template` SET `spellid_1`='33063' WHERE `entry`=30188;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30236;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30237;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30238;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30239;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30240;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30241;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30242;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30243;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30244;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30245;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30246;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30247;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30248;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30249;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=30250;
UPDATE `item_template` SET `name`='Trep\'s Shoulderguards' WHERE `entry`=30262;
UPDATE `item_template` SET `BuyPrice`='120000',`SellPrice`='30000',`RequiredSkill`='197',`RequiredSkillRank`='375' WHERE `entry`=30280;
UPDATE `item_template` SET `BuyPrice`='120000',`SellPrice`='30000' WHERE `entry`=30281;
UPDATE `item_template` SET `name`='Otherworldly Pauldrons' WHERE `entry`=30286;
UPDATE `item_template` SET `displayid`='18051',`Quality`='3',`spellcooldown_1`='1500',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=30360;
UPDATE `item_template` SET `RequiredReputationRank`='6' WHERE `entry`=30483;
UPDATE `item_template` SET `displayid`='47247',`stat_type5`='31',`socketBonus`='2892' WHERE `entry`=30488;
UPDATE `item_template` SET `socketBonus`='2879' WHERE `entry`=30490;
UPDATE `item_template` SET `BuyPrice`='331207',`SellPrice`='66241',`ItemLevel`='110',`stat_value1`='32',`stat_value2`='26',`armor`='681',`spellid_1`='15817',`spellid_2`='21627' WHERE `entry`=30534;
UPDATE `item_template` SET `BuyPrice`='389287',`SellPrice`='77857',`ItemLevel`='110',`stat_value1`='26',`stat_value2`='30',`stat_value3`='27',`armor`='1216',`spellid_1`='14127',`spellid_2`='18378' WHERE `entry`=30536;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30549;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30550;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30551;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30555;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30556;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30558;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30559;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30560;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30563;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30572;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30573;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30574;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30575;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30582;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30586;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30587;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30588;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30589;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30590;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30591;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30600;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30601;
UPDATE `item_template` SET `class`='3',`subclass`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30603;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30606;
UPDATE `item_template` SET `class`='3',`subclass`='5',`Flags`='524288',`maxcount`='0' WHERE `entry`=30607;
UPDATE `item_template` SET `class`='3',`Flags`='524288',`maxcount`='0' WHERE `entry`=30608;
UPDATE `item_template` SET `name`='Grips of Deftness' WHERE `entry`=30644;
UPDATE `item_template` SET `name`='Ritssyn\'s Lost Pendant' WHERE `entry`=30666;
UPDATE `item_template` SET `Flags`='2048' WHERE `entry`=30706;
UPDATE `item_template` SET `displayid`='44885',`ammo_type`='2',`Material`='-1' WHERE `entry`=30757;
UPDATE `item_template` SET `unk0`='3',`displayid`='44723',`ammo_type`='3',`Material`='-1' WHERE `entry`=30758;
UPDATE `item_template` SET `displayid`='44724',`ammo_type`='2',`RangedModRange`='100.0',`Material`='-1' WHERE `entry`=30759;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=30811;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=30858;
UPDATE `item_template` SET `displayid`='46359' WHERE `entry`=30903;
UPDATE `item_template` SET `displayid`='46351' WHERE `entry`=30904;
UPDATE `item_template` SET `displayid`='46352' WHERE `entry`=30905;
UPDATE `item_template` SET `displayid`='46356',`BuyPrice`='432843',`AllowableClass`='32767',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spelltrigger_4`='1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=30907;
UPDATE `item_template` SET `displayid`='45659',`AllowableRace`='32767',`ItemLevel`='146',`stat_type1`='4',`stat_value1`='18',`stat_type2`='7',`stat_value2`='50',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`RequiredDisenchantSkill`='300' WHERE `entry`=30970;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_type1`='4',`stat_type2`='3',`stat_value2`='41',`stat_type3`='7',`stat_value3`='54',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`socketBonus`='2927',`RequiredDisenchantSkill`='300' WHERE `entry`=30972;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_type1`='4',`stat_value1`='53',`stat_type2`='3',`stat_value2`='34',`stat_type3`='7',`stat_value3`='54',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`RequiredDisenchantSkill`='300' WHERE `entry`=30975;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_type1`='4',`stat_value1`='62',`stat_type2`='3',`stat_value2`='41',`stat_type3`='7',`stat_value3`='55',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`RequiredDisenchantSkill`='300' WHERE `entry`=30977;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_type1`='3',`stat_value1`='24',`stat_type2`='7',`stat_value2`='78',`stat_type3`='12',`stat_value3`='40',`stat_type4`='14',`stat_value4`='41',`stat_type5`='0',`stat_value5`='0',`spellid_1`='39987',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`RequiredDisenchantSkill`='300' WHERE `entry`=30978;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_type1`='4',`stat_value1`='39',`stat_type2`='3',`stat_type3`='7',`stat_value3`='34',`spellid_1`='42094',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`RequiredDisenchantSkill`='300' WHERE `entry`=30979;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='1',`RequiredDisenchantSkill`='300' WHERE `entry`=30980;
UPDATE `item_template` SET `displayid`='46357' WHERE `entry`=30983;
UPDATE `item_template` SET `displayid`='46358' WHERE `entry`=30988;
UPDATE `item_template` SET `displayid`='46350' WHERE `entry`=30990;
UPDATE `item_template` SET `displayid`='45884' WHERE `entry`=30997;
UPDATE `item_template` SET `ArmorDamageModifier`='-25.8' WHERE `entry`=31009;
UPDATE `item_template` SET `displayid`='45668',`InventoryType`='20',`AllowableRace`='32767',`ItemLevel`='146',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`RequiredDisenchantSkill`='300' WHERE `entry`=31017;
UPDATE `item_template` SET `displayid`='45671',`AllowableRace`='32767',`ItemLevel`='146',`stat_value1`='40',`stat_value2`='42',`stat_value3`='29',`stat_value4`='20',`armor`='894',`spellid_1`='34760',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellid_2`='21366',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`socketColor_2`='0',`socketBonus`='3153',`RequiredDisenchantSkill`='300' WHERE `entry`=31020;
UPDATE `item_template` SET `ArmorDamageModifier`='252.0' WHERE `entry`=31034;
UPDATE `item_template` SET `ArmorDamageModifier`='238.0' WHERE `entry`=31039;
UPDATE `item_template` SET `ArmorDamageModifier`='322.0' WHERE `entry`=31042;
UPDATE `item_template` SET `ArmorDamageModifier`='336.0' WHERE `entry`=31044;
UPDATE `item_template` SET `ArmorDamageModifier`='140.0' WHERE `entry`=31048;
UPDATE `item_template` SET `displayid`='45674',`AllowableRace`='32767',`ItemLevel`='146',`spellid_1`='42076',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`socketBonus`='2889',`RequiredDisenchantSkill`='300' WHERE `entry`=31051;
UPDATE `item_template` SET `displayid`='45677',`InventoryType`='20',`AllowableRace`='32767',`ItemLevel`='146',`spellid_1`='42076',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`socketBonus`='2889',`RequiredDisenchantSkill`='300' WHERE `entry`=31052;
UPDATE `item_template` SET `displayid`='45675',`AllowableRace`='32767',`ItemLevel`='146',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spelltrigger_3`='1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`RequiredDisenchantSkill`='300' WHERE `entry`=31053;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spelltrigger_2`='1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`RequiredDisenchantSkill`='300' WHERE `entry`=31054;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_value1`='39',`stat_value2`='31',`stat_value3`='27',`armor`='153',`spellid_1`='36062',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellid_2`='21363',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`RequiredDisenchantSkill`='300' WHERE `entry`=31060;
UPDATE `item_template` SET `displayid`='45770',`AllowableRace`='32767',`ItemLevel`='146',`stat_value1`='36',`stat_value2`='32',`stat_value3`='33',`armor`='199',`spellid_1`='37952',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellid_2`='21629',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`socketBonus`='2872',`RequiredDisenchantSkill`='300' WHERE `entry`=31063;
UPDATE `item_template` SET `InventoryType`='20',`AllowableRace`='32767',`ItemLevel`='146',`stat_value1`='48',`stat_value2`='32',`stat_value3`='36',`armor`='244',`spellid_1`='37952',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellid_2`='21629',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`socketBonus`='2872',`RequiredDisenchantSkill`='300' WHERE `entry`=31066;
UPDATE `item_template` SET `displayid`='44976',`AllowableRace`='32767',`ItemLevel`='146',`stat_value1`='42',`stat_value2`='33',`stat_value3`='34',`armor`='214',`spellid_1`='37952',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellid_2`='21629',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`socketColor_2`='0',`socketBonus`='3151',`RequiredDisenchantSkill`='300' WHERE `entry`=31068;
UPDATE `item_template` SET `AllowableRace`='32767',`ItemLevel`='146',`stat_value1`='30',`stat_value2`='30',`stat_value3`='19',`armor`='183',`spellid_1`='36062',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellid_2`='21629',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='7',`RequiredDisenchantSkill`='300' WHERE `entry`=31069;
UPDATE `item_template` SET `Flags`='8388608' WHERE `entry`=31088;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31089;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31090;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31091;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31092;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31093;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31094;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31095;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31096;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31097;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31098;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31099;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31100;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31101;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31102;
UPDATE `item_template` SET `SellPrice`='50000' WHERE `entry`=31103;
UPDATE `item_template` SET `name`='Druidic Helmet of Second Sight' WHERE `entry`=31110;
UPDATE `item_template` SET `class`='3',`subclass`='3' WHERE `entry`=31116;
UPDATE `item_template` SET `class`='3',`subclass`='3' WHERE `entry`=31117;
UPDATE `item_template` SET `class`='3',`subclass`='3' WHERE `entry`=31118;
UPDATE `item_template` SET `name`='Demon Hide Spaulders' WHERE `entry`=31148;
UPDATE `item_template` SET `displayid`='33045',`BuyPrice`='191994',`SellPrice`='38398' WHERE `entry`=31214;
UPDATE `item_template` SET `name`='Abyssal Cloth Footwraps' WHERE `entry`=31216;
UPDATE `item_template` SET `name`='Elekk Hide Leggings' WHERE `entry`=31237;
UPDATE `item_template` SET `class`='12' WHERE `entry`=31239;
UPDATE `item_template` SET `class`='12' WHERE `entry`=31241;
UPDATE `item_template` SET `class`='12' WHERE `entry`=31245;
UPDATE `item_template` SET `class`='12' WHERE `entry`=31251;
UPDATE `item_template` SET `class`='12' WHERE `entry`=31252;
UPDATE `item_template` SET `name`='Band of Dominion' WHERE `entry`=31290;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='300' WHERE `entry`=31336;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=31356;
UPDATE `item_template` SET `BuyPrice`='0',`SellPrice`='0',`bonding`='4' WHERE `entry`=31366;
UPDATE `item_template` SET `ArmorDamageModifier`='-25.8' WHERE `entry`=31417;
UPDATE `item_template` SET `stat_value1`='23' WHERE `entry`=31436;
UPDATE `item_template` SET `InventoryType`='21',`ArmorDamageModifier`='-14.5' WHERE `entry`=31447;
UPDATE `item_template` SET `InventoryType`='21',`ArmorDamageModifier`='-14.5' WHERE `entry`=31475;
UPDATE `item_template` SET `stackable`='12' WHERE `entry`=31504;
UPDATE `item_template` SET `bonding`='4',`BagFamily`='9' WHERE `entry`=31536;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31676;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31677;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31679;
UPDATE `item_template` SET `Flags`='2048' WHERE `entry`=31706;
UPDATE `item_template` SET `BagFamily`='9' WHERE `entry`=31755;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=31760;
UPDATE `item_template` SET `name`='Sha\'tari Marksman\'s Gloves' WHERE `entry`=31796;
UPDATE `item_template` SET `bonding`='4' WHERE `entry`=31812;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=31815;
UPDATE `item_template` SET `BuyPrice`='11',`SellPrice`='2' WHERE `entry`=31824;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31838;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31839;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31840;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31841;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31852;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31853;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31854;
UPDATE `item_template` SET `subclass`='0' WHERE `entry`=31855;
UPDATE `item_template` SET `SellPrice`='2500' WHERE `entry`=31860;
UPDATE `item_template` SET `SellPrice`='2500' WHERE `entry`=31862;
UPDATE `item_template` SET `SellPrice`='2500' WHERE `entry`=31864;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=31880;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=31881;
UPDATE `item_template` SET `BuyPrice`='206800',`SellPrice`='51700' WHERE `entry`=31919;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=31949;
UPDATE `item_template` SET `displayid`='47129' WHERE `entry`=31969;
UPDATE `item_template` SET `spellid_1`='33063' WHERE `entry`=31981;
UPDATE `item_template` SET `displayid`='47129' WHERE `entry`=31989;
UPDATE `item_template` SET `displayid`='46224' WHERE `entry`=31997;
UPDATE `item_template` SET `stat_value3`='24' WHERE `entry`=32001;
UPDATE `item_template` SET `dmg_min1`='102.0',`dmg_max1`='191.0',`delay`='1500' WHERE `entry`=32003;
UPDATE `item_template` SET `displayid`='46507' WHERE `entry`=32011;
UPDATE `item_template` SET `displayid`='46188' WHERE `entry`=32016;
UPDATE `item_template` SET `stat_value2`='20' WHERE `entry`=32017;
UPDATE `item_template` SET `displayid`='46224' WHERE `entry`=32022;
UPDATE `item_template` SET `displayid`='46507' WHERE `entry`=32031;
UPDATE `item_template` SET `displayid`='46029' WHERE `entry`=32034;
UPDATE `item_template` SET `displayid`='46188' WHERE `entry`=32035;
UPDATE `item_template` SET `displayid`='46224' WHERE `entry`=32041;
UPDATE `item_template` SET `stat_value1`='46',`stat_value2`='15',`stat_value3`='23',`stat_value4`='14',`armor`='171',`spellid_1`='18053',`ArmorDamageModifier`='0.0' WHERE `entry`=32047;
UPDATE `item_template` SET `stat_value1`='52',`stat_value2`='26',`stat_value4`='33',`armor`='185',`spellid_1`='18058',`ArmorDamageModifier`='0.0' WHERE `entry`=32048;
UPDATE `item_template` SET `stat_value1`='46',`stat_value2`='20',`stat_value3`='19',`stat_value4`='23',`armor`='143',`spellid_2`='18053',`ArmorDamageModifier`='0.0' WHERE `entry`=32049;
UPDATE `item_template` SET `stat_value2`='21',`stat_value3`='30',`armor`='228',`ArmorDamageModifier`='0.0' WHERE `entry`=32050;
UPDATE `item_template` SET `stat_value1`='52',`stat_value2`='36',`stat_value4`='30',`armor`='200',`spellid_1`='28360',`ArmorDamageModifier`='0.0' WHERE `entry`=32051;
UPDATE `item_template` SET `displayid`='47129' WHERE `entry`=32058;
UPDATE `item_template` SET `displayid`='47180' WHERE `entry`=32088;
UPDATE `item_template` SET `unk0`='-1',`BuyPrice`='240000',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=32199;
UPDATE `item_template` SET `unk0`='-1',`BuyPrice`='240000',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=32221;
UPDATE `item_template` SET `unk0`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`RequiredDisenchantSkill`='300' WHERE `entry`=32235;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32274;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32277;
UPDATE `item_template` SET `displayid`='46487' WHERE `entry`=32278;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32281;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32282;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32283;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32284;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32286;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32287;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32288;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32290;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32291;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000',`spellcharges_1`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1' WHERE `entry`=32293;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32294;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32296;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=32297;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32298;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32299;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32300;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32301;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32302;
UPDATE `item_template` SET `unk0`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=32303;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32304;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32305;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32306;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32308;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32309;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32310;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32311;
UPDATE `item_template` SET `BuyPrice`='60000',`SellPrice`='15000' WHERE `entry`=32312;
UPDATE `item_template` SET `displayid`='46490' WHERE `entry`=32337;
UPDATE `item_template` SET `displayid`='46488' WHERE `entry`=32341;
UPDATE `item_template` SET `dmg_type1`='5',`spellid_1`='15715' WHERE `entry`=32343;
UPDATE `item_template` SET `BuyPrice`='535501',`SellPrice`='107100',`RangedModRange`='100.0' WHERE `entry`=32363;
UPDATE `item_template` SET `BuyPrice`='289758',`SellPrice`='57951' WHERE `entry`=32367;
UPDATE `item_template` SET `BuyPrice`='300000',`SellPrice`='75000' WHERE `entry`=32368;
UPDATE `item_template` SET `displayid`='45816' WHERE `entry`=32377;
UPDATE `item_template` SET `unk0`='-1',`spellcharges_1`='-1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='-1',`RequiredDisenchantSkill`='-1' WHERE `entry`=32381;
UPDATE `item_template` SET `BuyPrice`='251440',`SellPrice`='50288' WHERE `entry`=32389;
UPDATE `item_template` SET `BuyPrice`='190037',`SellPrice`='38007' WHERE `entry`=32391;
UPDATE `item_template` SET `BuyPrice`='159561',`SellPrice`='31912' WHERE `entry`=32393;
UPDATE `item_template` SET `name`='Redeemed Soul Moccasins',`BuyPrice`='240252',`SellPrice`='48050' WHERE `entry`=32394;
UPDATE `item_template` SET `BuyPrice`='160775',`SellPrice`='32155' WHERE `entry`=32395;
UPDATE `item_template` SET `BuyPrice`='322731',`SellPrice`='64546' WHERE `entry`=32396;
UPDATE `item_template` SET `BuyPrice`='194366',`SellPrice`='38873' WHERE `entry`=32397;
UPDATE `item_template` SET `BuyPrice`='293943',`SellPrice`='58788' WHERE `entry`=32398;
UPDATE `item_template` SET `BuyPrice`='195823',`SellPrice`='39164' WHERE `entry`=32399;
UPDATE `item_template` SET `BuyPrice`='393063',`SellPrice`='78612' WHERE `entry`=32400;
UPDATE `item_template` SET `BuyPrice`='345819',`SellPrice`='69163' WHERE `entry`=32402;
UPDATE `item_template` SET `BuyPrice`='477493',`SellPrice`='95498' WHERE `entry`=32404;
UPDATE `item_template` SET `BuyPrice`='201727',`SellPrice`='40345' WHERE `entry`=32420;
UPDATE `item_template` SET `name`='Pattern: Redeemed Soul Moccasins' WHERE `entry`=32433;
UPDATE `item_template` SET `BuyPrice`='80000',`SellPrice`='20000',`RequiredSkill`='197',`RequiredSkillRank`='375' WHERE `entry`=32437;
UPDATE `item_template` SET `BuyPrice`='80000',`SellPrice`='20000',`RequiredSkill`='197',`RequiredSkillRank`='375' WHERE `entry`=32439;
UPDATE `item_template` SET `BuyPrice`='80000',`SellPrice`='20000',`RequiredSkill`='197',`RequiredSkillRank`='375' WHERE `entry`=32447;
UPDATE `item_template` SET `spellcooldown_1`='5000' WHERE `entry`=32456;
UPDATE `item_template` SET `displayid`='45849' WHERE `entry`=32486;
UPDATE `item_template` SET `displayid`='45853' WHERE `entry`=32487;
UPDATE `item_template` SET `displayid`='45850' WHERE `entry`=32488;
UPDATE `item_template` SET `displayid`='35130' WHERE `entry`=32489;
UPDATE `item_template` SET `displayid`='45854' WHERE `entry`=32490;
UPDATE `item_template` SET `displayid`='45855' WHERE `entry`=32491;
UPDATE `item_template` SET `displayid`='45851' WHERE `entry`=32492;
UPDATE `item_template` SET `displayid`='45852' WHERE `entry`=32493;
UPDATE `item_template` SET `BuyPrice`='364641',`RequiredLevel`='70',`maxcount`='1',`stackable`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='120000',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`Material`='4',`RequiredDisenchantSkill`='300' WHERE `entry`=32496;
UPDATE `item_template` SET `name`='Wristguards of Determination' WHERE `entry`=32515;
UPDATE `item_template` SET `subclass`='2',`BuyPrice`='276659',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=32518;
UPDATE `item_template` SET `displayid`='46205',`Material`='1' WHERE `entry`=32521;
UPDATE `item_template` SET `spellid_1`='0' WHERE `entry`=32522;
UPDATE `item_template` SET `name`='Shroud of the Highborne' WHERE `entry`=32524;
UPDATE `item_template` SET `BuyPrice`='241024',`SellPrice`='60256' WHERE `entry`=32528;
UPDATE `item_template` SET `name`='Heretic\'s Gauntlets' WHERE `entry`=32529;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='300' WHERE `entry`=32540;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='300' WHERE `entry`=32541;
UPDATE `item_template` SET `RequiredLevel`='1',`delay`='0',`spellcharges_1`='-1',`spellcooldown_1`='0',`spellcategory_1`='11',`spellcategorycooldown_1`='1000',`bonding`='1',`Material`='-1' WHERE `entry`=32563;
UPDATE `item_template` SET `maxcount`='0' WHERE `entry`=32566;
UPDATE `item_template` SET `BuyPrice`='250457',`SellPrice`='50091' WHERE `entry`=32568;
UPDATE `item_template` SET `BuyPrice`='253195',`SellPrice`='50639' WHERE `entry`=32571;
UPDATE `item_template` SET `BuyPrice`='218124',`SellPrice`='43624' WHERE `entry`=32574;
UPDATE `item_template` SET `BuyPrice`='329823',`SellPrice`='65964' WHERE `entry`=32575;
UPDATE `item_template` SET `BuyPrice`='220457',`SellPrice`='44091' WHERE `entry`=32577;
UPDATE `item_template` SET `displayid`='6334' WHERE `entry`=32578;
UPDATE `item_template` SET `BuyPrice`='334521',`SellPrice`='66904' WHERE `entry`=32579;
UPDATE `item_template` SET `BuyPrice`='172667',`SellPrice`='34533' WHERE `entry`=32580;
UPDATE `item_template` SET `BuyPrice`='261918',`SellPrice`='52383' WHERE `entry`=32583;
UPDATE `item_template` SET `BuyPrice`='140198',`SellPrice`='28039' WHERE `entry`=32584;
UPDATE `item_template` SET `BuyPrice`='212652',`SellPrice`='42530' WHERE `entry`=32587;
UPDATE `item_template` SET `maxcount`='0',`spellcooldown_1`='1500' WHERE `entry`=32588;
UPDATE `item_template` SET `displayid`='46124' WHERE `entry`=32590;
UPDATE `item_template` SET `spellcooldown_1`='10000' WHERE `entry`=32616;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=32617;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=32622;
UPDATE `item_template` SET `subclass`='4',`description`='Matches a Blue or Yellow Socket.' WHERE `entry`=32639;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=32640;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=32641;
UPDATE `item_template` SET `dmg_type1`='5' WHERE `entry`=32650;
UPDATE `item_template` SET `displayid`='46204' WHERE `entry`=32655;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='275' WHERE `entry`=32660;
UPDATE `item_template` SET `Flags`='0',`RequiredDisenchantSkill`='275' WHERE `entry`=32662;
UPDATE `item_template` SET `ArmorDamageModifier`='-30.3' WHERE `entry`=32674;
UPDATE `item_template` SET `stat_type2`='21' WHERE `entry`=32676;
UPDATE `item_template` SET `ArmorDamageModifier`='-30.3' WHERE `entry`=32679;
UPDATE `item_template` SET `Flags`='8388672' WHERE `entry`=32680;
UPDATE `item_template` SET `description`='Used to summon Terokk at the Ancient Skull Pile in Terokk\'s Rest.' WHERE `entry`=32720;
UPDATE `item_template` SET `BuyPrice`='4000',`SellPrice`='200' WHERE `entry`=32722;
UPDATE `item_template` SET `unk0`='-1',`Flags`='524288',`BuyPrice`='120000',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=32735;
UPDATE `item_template` SET `bonding`='0' WHERE `entry`=32737;
UPDATE `item_template` SET `bonding`='0' WHERE `entry`=32739;
UPDATE `item_template` SET `subclass`='2',`BuyPrice`='50000',`SellPrice`='12500' WHERE `entry`=32752;
UPDATE `item_template` SET `subclass`='2' WHERE `entry`=32753;
UPDATE `item_template` SET `subclass`='2',`BuyPrice`='50000',`SellPrice`='12500' WHERE `entry`=32754;
UPDATE `item_template` SET `subclass`='2',`BuyPrice`='50000',`SellPrice`='12500' WHERE `entry`=32755;
UPDATE `item_template` SET `name`='Gyro-Balanced Khorium Destroyer' WHERE `entry`=32756;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=32757;
UPDATE `item_template` SET `BuyPrice`='0',`SellPrice`='8050' WHERE `entry`=32759;
UPDATE `item_template` SET `armor`='127',`ArmorDamageModifier`='0.0' WHERE `entry`=32776;
UPDATE `item_template` SET `stat_value4`='27' WHERE `entry`=32794;
UPDATE `item_template` SET `stat_value2`='27',`stat_value4`='27' WHERE `entry`=32806;
UPDATE `item_template` SET `Flags`='8388672' WHERE `entry`=32825;
UPDATE `item_template` SET `displayid`='46253' WHERE `entry`=32833;
UPDATE `item_template` SET `spellcooldown_1`='1500' WHERE `entry`=32834;
UPDATE `item_template` SET `displayid`='46252' WHERE `entry`=32836;
UPDATE `item_template` SET `stackable`='1',`spelltrigger_2`='1',`MaxDurability`='125' WHERE `entry`=32837;
UPDATE `item_template` SET `stackable`='1',`MaxDurability`='125' WHERE `entry`=32838;
UPDATE `item_template` SET `displayid`='46254' WHERE `entry`=32839;
UPDATE `item_template` SET `displayid`='46255' WHERE `entry`=32849;
UPDATE `item_template` SET `displayid`='46256' WHERE `entry`=32850;
UPDATE `item_template` SET `displayid`='46257' WHERE `entry`=32851;
UPDATE `item_template` SET `displayid`='46258' WHERE `entry`=32852;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=32882;
UPDATE `item_template` SET `bonding`='1' WHERE `entry`=32883;
UPDATE `item_template` SET `Quality`='2' WHERE `entry`=32897;
UPDATE `item_template` SET `stackable`='15' WHERE `entry`=32903;
UPDATE `item_template` SET `stackable`='15' WHERE `entry`=32904;
UPDATE `item_template` SET `BuyPrice`='390112',`SellPrice`='97528' WHERE `entry`=32941;
UPDATE `item_template` SET `BuyPrice`='390112',`SellPrice`='97528' WHERE `entry`=32942;
UPDATE `item_template` SET `BuyPrice`='671256',`SellPrice`='134251',`ItemLevel`='134',`stat_value2`='15',`dmg_min1`='182.0',`dmg_max1`='339.0',`spellid_1`='15812' WHERE `entry`=32944;
UPDATE `item_template` SET `displayid`='46606' WHERE `entry`=32962;
UPDATE `item_template` SET `BuyPrice`='4000' WHERE `entry`=33048;
UPDATE `item_template` SET `BuyPrice`='4000' WHERE `entry`=33052;
UPDATE `item_template` SET `BuyPrice`='4000' WHERE `entry`=33053;
UPDATE `item_template` SET `description`='From beneath you it devours.' WHERE `entry`=33054;
UPDATE `item_template` SET `unk0`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33079;
UPDATE `item_template` SET `displayid`='26202',`BuyPrice`='190146',`stat_type1`='7',`stat_value1`='25',`stat_type2`='19',`stat_value2`='24',`stat_type3`='4',`stat_value3`='23',`spelltrigger_1`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='2',`socketBonus`='2885' WHERE `entry`=33122;
UPDATE `item_template` SET `subclass`='1',`BuyPrice`='50000',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33124;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1',`description`='Matches a Red Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33131;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1' WHERE `entry`=33132;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1',`description`='Matches a Red Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33133;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1',`description`='Matches a Red Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33134;
UPDATE `item_template` SET `Flags`='524288',`bonding`='1',`description`='Matches a Blue Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33135;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1',`description`='Matches a Yellow Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33140;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1' WHERE `entry`=33141;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1' WHERE `entry`=33142;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1',`description`='Matches a Yellow Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33143;
UPDATE `item_template` SET `Flags`='524288',`maxcount`='0',`bonding`='1',`description`='Matches a Yellow Socket.  Socketing this gem causes the item to become Soulbound.' WHERE `entry`=33144;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33148;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33149;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33150;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33151;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33152;
UPDATE `item_template` SET `spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33153;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33155;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33156;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33157;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33158;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33159;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33160;
UPDATE `item_template` SET `unk0`='0',`name`='Goblin Gumbo',`Flags`='66',`RequiredLevel`='1',`maxcount`='1',`spellcooldown_1`='0',`spellcategory_1`='11',`spellcategorycooldown_1`='1000',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1' WHERE `entry`=33218;
UPDATE `item_template` SET `BuyPrice`='100000',`AllowableClass`='262143',`spellcategorycooldown_1`='3000' WHERE `entry`=33224;
UPDATE `item_template` SET `name`='Reins of the Swift Spectral Tiger',`Quality`='4',`BuyPrice`='1000000',`AllowableClass`='262143',`AllowableRace`='8388607',`spellcategorycooldown_1`='3000',`description`='' WHERE `entry`=33225;
UPDATE `item_template` SET `Quality`='1',`spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1',`spellid_1`='0' WHERE `entry`=33305;
UPDATE `item_template` SET `spellcooldown_1`='-1',`spellcategorycooldown_1`='-1',`spellcooldown_2`='-1',`spellcategorycooldown_2`='-1',`spellcooldown_3`='-1',`spellcategorycooldown_3`='-1',`spellcooldown_4`='-1',`spellcategorycooldown_4`='-1',`spellcooldown_5`='-1',`spellcategorycooldown_5`='-1',`bonding`='1' WHERE `entry`=33622;
update item_template set RandomSuffix=203 where entry=31568;
delete from item_template where entry in (23233, 23234, 23235, 27864);
delete from creature_loot_template where item in (23233, 23234, 23235, 27864);

## Command table changed to official one
DROP TABLE IF EXISTS `command`;
CREATE TABLE `command` (
  `name` varchar(50) NOT NULL default '',
  `security` tinyint(3) unsigned NOT NULL default '0',
  `help` longtext,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Chat System';
INSERT INTO `command` VALUES
('acct',0,'Syntax: .acct\r\n\r\nDisplay the access level of your account.'),
('addgo',2,'Syntax: .addgo #id <lootID> <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nlootID specifies the loot-template to be used and spawntimesecs sets the spawntime, both are optional.\r\n\r\nNote: this is a copy of .gameobject.'),
('additem',3,'Syntax: .additem #itemid/[#itemname]/#shift-click-item-link #itemcount\r\n\r\nAdds the specified number of items of id #itemid (or exact (!) name $itemname in brackets, or link created by shift-click at item in inventory or recipe) to your or selected character inventory. If #itemcount is omitted, only one item will be added.\r\n.'),
('additemset',3,'Syntax: .additemset #itemsetid\r\n\r\nAdd items from itemset of id #itemsetid to your or selected character inventory. Will add by one example each item from itemset.'),
('addmove',2,'Syntax: .addmove #creature_guid [#waittime]\r\n\r\nAdd your current location as a waypoint for creature with guid #creature_guid. And optional add wait time.'),
('addquest',3,'Syntax: .addquest #quest_id\r\n\r\nAdd to character quest log quest #quest_id. Quest started from item can\'t be added by this command but correct .additem call provided in command output.'),
('addtele',3,'Syntax: .addtele $name\r\n\r\nAdd current your position to .tele command target locations list with name $name.'),
('addspw',2,'Syntax: .addspw #creatureid\r\n\r\nSpawn a creature by the given template id of #creatureid.'),
('addweapon',3,'Not yet implemented.'),
('addvendoritem',2,'Syntax: .addvendoritem #itemId <#maxcount><#incrtime>\r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring.'),
('delvendoritem',2,'Syntax: .delvendoritem #itemId\r\n\r\nRemove item #itemid from item list of selected vendor.'),
('allowmove',3,'Syntax: .allowmove\r\n\r\nEnable or disable movement for the selected creature.'),
('anim',2,'Syntax: .anim #emoteid\r\n\r\nPlay emote #emoteid for your character.'),
('announce',1,'Syntax: .announce $MessageToBroadcast\r\n\r\nSend a global message to all players online in chat log.'),
('notify',1,'Syntax: .notify $MessageToBroadcast\r\n\r\nSend a global message to all players online in screen.'),
('aura',3,'Syntax: .aura #spellid\r\n\r\nAdd the aura from spell #spellid to the selected Unit.'),
('ban',3,'Syntax is: ban <account|ip|character> $NameOrIp $bantime $reason\r\nBan account or IP and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('unban',3,'Syntax is: unban <account|ip|character> $NameOrIp\r\nUnban account or IP.'),
('bank',3,'Syntax: .bank\r\n\r\nShow your bank inventory.'),
('changelevel',2,'Syntax: .changelevel #level\r\n\r\nChange the level of the selected creature to #level.\r\n\r\n#level may range from 1 to 63.'),
('commands',0,'Syntax: .commands\r\n\r\nDisplay a list of available commands for your account level.'),
('cooldown',3,'Syntax: .cooldown [#spell_id]\r\n\r\nRemove all (if spell_id not provided) or #spel_id spell cooldown from selected character or you (if no selection).'),
('createguild',3,'Syntax: .createguild $GuildLeaderName $GuildName\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName as leader.'),
('cshutdown',3,'Syntax: .cshutdown Cancels shutdown'),
('delete',2,'Syntax: .delete\r\n\r\nDelete the selected creature from the world.'),
('delobject',2,'Syntax: .delobject #go_guid\r\nDelete gameobject with guid #go_guid.'),
('deltele',3,'Syntax: .deltele $name\r\n\r\nRemove location with name $name for .tele command locations list.'),
('delticket',2,'Syntax: .delticket all\r\n        .delticket #num\r\n        .delticket $character_name\r\n\rall to dalete all tickets at server, $character_name to delete ticket of this character, #num to delete ticket #num.'),
('demorph',2,'Syntax: .demorph\r\n\r\nDemorph the selected player.'),
('die',3,'Syntax: .die\r\n\r\nKill the selected player. If no player is selected, it will kill you.'),
('dismount',0,'Syntax: .dismount\r\n\r\nDismount you, if you are mounted.'),
('setmodel',2,'Syntax: .setmodel #displayid\r\n\r\nChange the model id of the selected creature to #displayid.'),
('distance',3,'Syntax: .distance\r\n\r\nDisplay the distance from your character to the selected creature.'),
('playemote',3,'Syntax: .playemote #emoteid\r\n\r\nMake the selected creature emote with an emote of id #emoteid.'),
('textemote',3,'Syntax: .text #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.'),
('explorecheat',3,'Syntax: .explorecheat #flag\r\n\r\nReveal  or hide all maps for the selected player. If no player is selected, hide or reveal maps to you.\r\n\r\nUse a #flag of value 1 to reveal, use a #flag value of 0 to hide all maps.'),
('factionid',2,'Syntax: .factionid #factionid\r\n\r\nSet the faction of the selected creature to #factionid.'),
('gameobject',3,'Syntax: .gameobject #id <lootID> <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nlootID specifies the loot-template to be used and spawntimeSecs sets the spawntime, both are optional.'),
('getvalue',3,'Syntax: .getvalue #field #isInt\r\n\r\nGet the field #field of the selected creature. If no creature is selected, get the content of your field.\r\n\r\nUse a #isInt of value 1 if the expected field content is an integer.'),
('gm',1,'Syntax: .gm on/off\r\n\r\nEnable or Disable GM MODE'),
('gocreature',2,'Syntax: .gocreature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.'),
('gogrid',1,'Syntax: .gogrid #gridX #gridY [#mapId]\n\nTeleport the gm to center of grid with provided indexes at map #mapId (or current map if it not provided).'),
('goobject',1,'Syntax: .goobject #object_guid\r\nTeleport your character to gameobject with guid #object_guid'),
('goname',1,'Syntax: .goname $charactername\r\n\r\nTeleport to the given character. Either specify the character name or click on the character\'s portrait, e.g. when you are in a group.'),
('goxy',1,'Syntax: .goxy #x #y [#mapid]\r\n\r\nTeleport player to point with (#x,#y) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),
('goxyz',1,'Syntax: .goxyz #x #y #z [#mapid]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),
('gps',1,'Syntax: .gps\r\n\r\nDisplay the position information for a selected character or creature. Position information includes X, Y, Z, and orientation, map Id and zone Id'),
('groupgo',1,'Syntax: .groupgo $charactername\r\n\r\nTeleport the given character and his group to you.'),
('grouptele',1,'Syntax: .grouptele #location\r\n\r\nTeleport a selected player and his group members to a given location.'),
('guid',2,'Syntax: .guid\r\n\r\nDisplay the GUID for the selected character.'),
('help',0,'Syntax: .help $command\r\n\r\nDisplay usage instructions for the given $command.'),
('hidearea',3,'Syntax: .hidearea #areaid\r\n\r\nHide the area of #areaid to the selected character. If no character is selected, hide this area to you.'),
('honor',2,'Syntax: .honor $command [$value] Various honor related commands. Use .help honor $command to get help on specific parameter usage. Supported parameters include add, addkill, flushkills, update'),
('honor add',2,'Syntax: .honor add $amount\r\n\r\nAdd a certain amount of honor (gained today) to the selected player.'),
('honor addkill',2,'Syntax: .honor addkikll\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it\'s a racial leader or a player)'),
('honor flushkills',2,'Syntax: .honor flushkills\r\n\r\nClear today\'s kills from the player limit storage (immediately) and from the DB (on next save) for the selected player.'),
('honor update',2,'Syntax: .honor update\r\n\r\nForce the yesterday\'s honor fields to be updated with today\'s data, which will get reset for the selected player.'),
('hover',3,'Syntax: .hover #flag\r\n\r\nEnable or disable hover mode for your character.\r\n\r\nUse a #flag of value 1 to enable, use a #flag value of 0 to disable hover.'),
('idleshutdown',3,'Syntax: .idleshutdown #delay|cancel\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players) or cancel the shutdown if cancel value is used.'),
('info',0,'Syntax: .info\r\n\r\nDisplay the number of connected players.'),
('itemmove',2,'Syntax: .itemmove #sourceslotid #destinationslotid\r\n\r\nMove an item from slots #sourceslotid to #destinationslotid in your inventory\r\n\r\nNot yet implemented'),
('kick',2,'Syntax: .kick [$charactername]\r\n\r\nKick the given character name from the world. If no character name is provided then the selected player (except for yourself) will be kicked.'),
('learn',3,'Syntax: .learn #parameter\r\n\r\nSelected character learn a spell of id #parameter.'),
('learn all',3,'Syntax: .learn all\r\n\r\nLearn all big set different spell maybe useful for Administaror.'),
('learn all_crafts',2,'Syntax: .learn crafts\r\n\r\nLearn all professions and recipes.'),
('learn all_gm',2,'Syntax: .learn all_gm\r\n\r\nLearn all default spells for Game Masters.'),
('learn all_lang',1,'Syntax: .learn all_lang\r\n\r\nLearn all languages'),
('learn all_myclass',3,'Syntax: .learn all_myclass\r\n\r\nLearn all spells and talents available for his class.'),
('learn all_myspells',3,'Syntax: .learn all_myspells\r\n\r\nLearn all spells (except talents and spells with first rank learned as talent) available for his class.'),
('learn all_mytalents',3,'Syntax: .learn all_mytalents\r\n\r\nLearn all talents (and spells with first rank learned as talent) available for his class.'),
('setskill',3,'Syntax: .setskill #skill #level [#max]\r\n\r\nSet a skill of id #skill with a current skill value of #level and a maximum value of #max (or equal current maximum if not provide) for the selected character. If no character is selected, you learn the skill.'),
('levelup',3,'Syntax: .levelup [$playername] [#numberoflevels]\r\n\r\nIncrease/decrease the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent values recalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.'),
('linkgrave',3,'Syntax: .linkgrave #graveyard_id [alliance|horde]\r\n\r\nLink current zone to graveyard for any (or alliance/horde faction ghosts). This let character ghost from zone teleport to graveyard after die if graveyard is nearest from linked to zone and accept ghost of this faction. Add only single graveyard at another map and only if no graveyards linked (or planned linked at same map).'),
('listcreature',3,'Syntax: .listcreature #creature_id [#max_count]\r\n\r\nOutput creatures with creature id #creature_id found in world. Output creature guids and coordinates sorted by distance from character. Will be output maximum #max_count creatures. If #max_count not provided use 10 as default value.'),
('listgm',0,'Syntax: .listgm\r\n\r\nDisplay a list of available Game Masters.'),
('listitem',3,'Syntax: .listitem #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails and auctions. Output item guids, item owner guid, owner account and owner name. Will be output maximum #max_count items. If #max_count not provided use 10 as default value.'),
('listobject',3,'Syntax: .listobject #gameobject_id [#max_count]\r\n\r\nOutput gameobjects with gameobject id #gameobject_id found in world. Output gameobject guids and coordinates sorted by distance from character. Will be output maximum #max_count gameobject. If #max_count not provided use 10 as default value.'),
('loadscripts',3,'Syntax: .loadscripts $scriptlibraryname\r\n\r\nUnload current and load the script library $scriptlibraryname or reload current if $scriptlibraryname omitted, in case you changed it while the server was running.'),
('lockaccount',0,'Syntax: .lockaccount [on|off]\r\n\r\nAllow login from account only from current used IP or remove this requirement.'),
('lookupitem',3,'Syntax: .lookupitem $itemname\r\n\r\nLooks up an item by $itemname, and returns all matches with their Item ID\'s.'),
('lookupitemset',3,'Syntax: .lookupitemset $itemname\r\n\r\nLooks up an item set by $itemname, and returns all matches with their Item set ID\'s.'),
('lookupcreature',3,'Syntax: .lookupcreature $namepart\r\n\r\nLooks up a creature by $namepart, and returns all matches with their creature ID\'s.'),
('lookupobject',3,'Syntax: .lookupobject $objname\r\n\r\nLooks up an gameobject by $objname, and returns all matches with their Gameobject ID\'s.'),
('lookupquest',3,'Syntax: .lookupquest $namepart\r\n\r\nLooks up a quest by $namepart, and returns all matches with their quest ID\'s.'),
('lookupskill',3,'Syntax: .lookupskill $$namepart\r\n\r\nLooks up a skill by $namepart, and returns all matches with their skill ID\'s.'),
('lookupspell',3,'Syntax: .lookupspell $namepart\r\n\r\nLooks up a spell by $namepart, and returns all matches with their spell ID\'s.'),
('lookuptele',1,'Syntax: .lookuptele $substring\r\n\r\nSearch and output all .tele command locations with provide $substring in name.'),
('maxskill',3,'Syntax: .maxskill\r\nSets all skills of the targeted player to their maximum values for its current level.'),
('Mod32Value',3,'Syntax: .Mod32Value #field #value\r\n\r\nAdd #value to field #field of your character.'),
('modify',1,'Syntax: .modify $parameter $value\r\n\r\nModify the value of various parameters. Use .help modify $parameter to get help on specific parameter usage.\r\n\r\nSupported parameters include hp, mana, rage, energy, money, speed, swim, scale, bit, bwalk, aspeed, faction, spell, tp and honor.'),
('modify aspeed',1,'Syntax: .modify aspeed #rate\r\n\r\nModify all speeds -run,swim,run back,swim back- of the selected player to \"normalbase speed for this move type\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('modify bit',1,'Syntax: .modify bit #field #bit\r\n\r\nToggle the #bit bit of the #field field for the selected player. If no player is selected, modify your character.'),
('modify bwalk',1,'Syntax: .modify bwalk #rate\r\n\r\nModify the speed of the selected player while running backwards to \"normal walk back speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('modify energy',1,'Syntax: .modify energy #energy\r\n\r\nModify the energy of the selected player. If no player is selected, modify your energy.'),
('modify faction',1,'Syntax: .modify faction #factionid #flagid #npcflagid #dynamicflagid\r\n\r\nModify the faction and flags of the selected creature. Without arguments, display the faction and flags of the selected creature.'),
('modify money',1,'Syntax:\r\n.modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.'),
('modify mount',1,'Syntax:\r\n.modify mount #id #speed\r\nDisplay selected player as mounted at #id creature and set speed to #speed value.'),
('modify hp',1,'Syntax: .modify hp #newhp\r\n\r\nModify the hp of the selected player. If no player is selected, modify your hp.'),
('modify mana',1,'Syntax: .modify mana #newmana\r\n\r\nModify the mana of the selected player. If no player is selected, modify your mana.'),
('modify rage',1,'Syntax: .modify rage #newrage\r\n\r\nModify the rage of the selected player. If no player is selected, modify your rage.'),
('modify scale',1,''),
('modify speed',1,'Syntax:\r\n.modify speed #rate\r\n.speed #rate\r\n\r\nModify the running speed of the selected player to \"normal base run speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('modify spell',1,''),
('modify swim',1,'Syntax: .modify swim #rate\r\n\r\nModify the swim speed of the selected player to \"normal swim speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('modify titles',1,'Syntax:\n.modify titles #mask\n.titles #mask\n\nAllows user to use all titles from #mask.\n\n #mask=0 disables the title-choose-field'),
('modify honor',1,'Syntax: .modify honor $amount\r\n\r\nAdded $amount to the selected player\'s total honor points.'),
('money',1,'Syntax:\r\n.modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.'),
('morph',2,'Syntax: .morph #displayid\r\n\r\nChange your current model id to #displayid.'),
('movecreature',2,'Syntax: .movecreature [#creature_guid]\r\n\r\nMove the targeted creature spawn point to your coordinates.'),
('moveobject',2,'Syntax: .moveobject #goguid [#x #y #z]\r\n\r\nMove gameobject #goguid to character coordinates (or to (#x,#y,#z) coordinates if its provide).'),
('movegens',3,'Syntax: .movegens\r\n  Show movement generators stack for selected creature or player.'),
('mute',1,'Syntax: .mute $playerName $timeInMinutes\r\n\r\nDisible chat messaging for any character from account of character $playerName at $timeInMinutes minutes.'),
('unmute',1,'Syntax: .unmute $playerName\r\n\r\nRestore chat messaging for any character from account of character $playerName.'),
('name',2,'Syntax: .name $name\r\n\r\nChange the name of the selected creature or character to $name.\r\n\r\nCommand disabled.'),
('namego',1,'Syntax: .namego $charactername\r\n\r\nTeleport the given character to you.'),
('nametele',1,'Syntax: .nametele #playername #location\r\n\r\nTeleport a player to a given location.'),
('neargrave',3,'Syntax: .neargrave [alliance|horde]\r\n\r\nFind nearest graveyard linked to zone (or only nearest from accepts alliance or horde faction ghosts).'),
('npcflag',2,'Syntax: .npcflag #npcflag\r\n\r\nSet the NPC flags of creature template of the selected creature and selected creature to #npcflag. NPC flags will applied to all creatures of selected creature template after server restart or grid unload/load.'),
('npcinfo',3,'Syntax: .npcinfo\r\n\r\nDisplay a list of details for the selected creature.\r\n\r\nThe list includes:\r\n- GUID, Faction, NPC flags, Entry ID, Model ID,\r\n- Level,\r\n- Health (current/maximum),\n\r\n- Field flags, dynamic flags, faction template, \r\n- Position information,\r\n- and the creature type, e.g. if the creature is a vendor.'),
('npcinfoset',3,'Syntax: .npcinfoset\r\n\r\nTODO: Write me.'),
('password',0,'Syntax: .password $old_password $new_password $new_password\r\n\r\nChange your account password.'),
('pinfo',2,'Syntax: .pinfo [$player_name] [rep]\r\n\r\nOutput account information for selected player or player find by $player_name. If \"rep\" parameter provided show reputation information for player.'),
('plimit',3,'Syntax: .plimit [#num|-1|-2|-3|default|player|moderator|gamemaster|administrator]\r\n  Without arg show current player amount and security level limitations for login to server, with arg set player linit ($num > 0) or securiti limitation ($num < 0 or security leme name. With `default` arg set default for server player limit (100)'),
('playsound',1,'Syntax: .playsound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...'),
('recall',1,'Syntax: .recall [$playername]\r\n\r\nTeleport $playername or selected player to the place where he has been before last use of a teleportation command. If no $playername is entered and no player is selected, it will teleport you.'),
('reload',3,'Syntax: .reload table_name\r\n\r\nReload table `table_name` if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all',3,'Syntax: .reload all\r\n\r\nReload all tables with reload support added and that can be _safe_ reloaded.'),
('reload all_area',3,'Syntax: .reload all_area\r\n\r\nReload all `areatrigger_*` tables if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all_loot',3,'Syntax: .reload all_loot\r\n\r\nReload all `*_loot_template` tables. This can be slow operation with lags for server run.'),
('reload all_quest',3,'Syntax: .reload all_quest\r\n\r\nReload all quest related tables if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all_spell',3,'Syntax: .reload all\r\n\r\nReload all `spell_*` tables with reload support added and that can be _safe_ reloaded.'),
('removequest',3,'Syntax: .removequest #quest_id\r\n\r\nSet quest #quest_id state to not completed and not active (and remove from active quest list) for selected player.'),
('reset honor',3,'Syntax:\r\n.reset honor [Playername]\r\n  Reset all honor data for targeted character.'),
('reset level',3,'Syntax:\r\n.reset level [Playername]\r\n  Reset level to 1 including reset stats and talents.  Equipped items with greater level requirement can be lost.'),
('reset spells',3,'Syntax:\r\n.reset spells [Playername]\r\n  Removes all non-original spells from spellbook.\r\n. Playername can be name of offline character.'),
('reset stats',3,'Syntax:\r\n.reset stats [Playername]\r\n  Resets(recalculate) all stats of the targeted player to their original values at current level.'),
('reset talents',3,'Syntax:\r\n.reset talents [Playername]\r\n  Removes all talents of the targeted player. Playername can be name of offline character.'),
('resetall',3,'Syntax: .resetall spells\r\n\r\nSyntax: .resetall talents\r\n\r\nRequest reset spells or talents at next login each existed character.'),
('respawn',3,'Syntax: .respawn\r\n\r\nRespawn all nearest creatures and GO without waiting respawn time expiration.'),
('revive',3,'Syntax: .revive\r\n\r\nRevive the selected player. If no player is selected, it will revive you.'),
('save',0,'Syntax: .save\r\n\r\nSaves your character.'),
('saveall',1,'Syntax: .saveall\r\n\r\nSave all characters in game.'),
('security',3,'Syntax: .security $name #level\r\n\r\nSet the security level of player $name to a level of #level.\r\n\r\n#level may range from 0 to 5.'),
('sendmail',1,'Syntax: .sendmail #playername #subject #text\r\n\r\nSend a mail to a player. Note: subject may not contain spaces.'),
('setmovetype',2,'Syntax: .setmovetype [#creature_guid] stay/random/way [NODEL]\r\n\r\nSet for creature pointed by #creature_guid (or selected if #creature_guid not provided) movement type and move it to respawn position (if creature alive). Any existing waypoints for creature will be removed from the database if you do not use NODEL. If the creature is dead then movement type will applied at creature respawn.\r\nMake sure you use NODEL, if you want to keep the waypoints.'),
('setvalue',3,'Syntax: .setvalue #field #value #isInt\r\n\r\nSet the field #field of the selected creature with value #value. If no creature is selected, set the content of your field.\r\n\r\nUse a #isInt of value 1 if #value is an integer.'),
('showarea',3,'Syntax: .showarea #areaid\r\n\r\nReveal the area of #areaid to the selected character. If no character is selected, reveal this area to you.'),
('showhonor',0,'Syntax: .showhonor\r\n\r\nDisplay your honor ranking.'),
('shutdown',3,'Syntax: .shutdown seconds'),
('speed',1,'Syntax:\r\n.modify speed #rate\r\n.speed #rate\r\n\r\nModify the running speed of the selected player to \"normal base run speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('standstate',2,'Syntax: .standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.'),
('start',0,'Syntax: .start\r\n\r\nTeleport you to the starting area of your character.'),
('subname',2,'Syntax: .subname $Name\r\n\r\nChange the subname of the selected creature or player to $Name.\r\n\r\nCommand disabled.'),
('targetobject',2,'Syntax: .targetobject [#go_id|#go_name_part]\r\n\r\nLocate and show position nearest gameobject. If #go_id or #go_name_part provide then locate and show position of nearest gameobject with gameobject template id #go_id or name included #go_name_part as part.'),
('taxicheat',1,'Syntax: .taxicheat on/off\r\n\r\nTemporary grant access or remove to all taxi routes for the selected character. If no character is selected, hide or reveal all routes to you.\r\n\r\nVisited taxi nodes sill accessible after removing access.'),
('ticket',2,'Syntax: .ticket on\r\n        .ticket off\r\n        .ticket #num\r\n        .ticket $character_name\r\n\r\non/off for GMs to show or not a new ticket directly, $character_name to show ticket of this character, #num to show ticket #num.'),
('transport',3,'Not yet implemented.'),
('turnobject',2,'Syntax: .turnobject #goguid \r\n\r\nSet for gameobject #goguid orientation same as current character orientation.'),
('unaura',3,'Syntax: .unaura #spellid\r\n\r\nRemove aura due to spell #spellid from the selected Unit.'),
('baninfo',3,'Syntax is: baninfo <account|ip|character>\r\nWatch full information about a specific ban.'),
('banlist',3,'Syntax is: banlist <account|ip|character> $NameOrIp\r\nsearches the banlist for a pattern.'),
('unlearn',3,'Syntax: .unlearn #startspell #endspell\r\n\r\nUnlearn for selected player the range of spells between id #startspell and #endspell. If no #endspell is provided, just unlearn spell of id #startspell.'),
('update',3,'Syntax: .update #field #value\r\n\r\nUpdate the field #field of the selected character or creature with value #value.\r\n\r\nIf no #value is provided, display the content of field #field.'),
('visible',1,'Syntax: .visible on/off\r\n\r\nOutput current visibility state or make GM visible(on) and invisible(off) for other players.'),
('wchange',3,'Syntax: .wchange #weathertype #status\r\n\r\nSet current weather to #weathertype with an intensity of #status.\r\n\r\n#weathertype can be 1 for rain, 2 for snow, and 3 for sand. #status can be 0 for disabled, and 1 for enabled.'),
('whispers',1,'Syntax: .whispers on|off\r\nEnable/disable accepting whispers by GM from players. By default use mangosd.conf setting.'),
('spawndist',2,'Syntax: .spawndist #dist\r\n\r\nAdjust spawndistance of selected creature to dist.'),
('spawntime',2,'Syntax: .spawntime #time \r\n\r\nAdjust spawntime of selected creature to time.'),
('titles',1,'Syntax:\n.modify titles #mask\n.titles #mask\n\nAllows user to use all titles from #mask.\n\n #mask=0 disables the title-choose-field'),
('wp',2,'Using WP Command:\r\nEach Waypoint Command has it\'s own description!'),
('wp add',2,'Syntax: .wp add [#creature_guid or Select a Creature]'),
('wp modify',2,'Syntax: .wp modify [#creature_guid or Select a Creature]\r\nadd - Add a waypoint after the selected visual\r\nimport $filename for selected npc\r\nexport $filename for selected npc\r\nwaittime $time\r\nemote ID\r\nspell ID\r\ntext1| text2| text3| text4| text5 <text>\r\nmodel1 ID\r\nmodel2 ID\r\naiscript $Name\r\nmove(moves wp to player pos)\r\ndel (deletes the wp)\r\n\r\nOnly one parameter per time!'),
('wp show',2,'Syntax: .wp show [#creature_guid or Select a Creature]\r\non\r\nfirst\r\nlast\r\noff\r\ninfo\r\n\r\nFor using info you have to do first show on and than select a Visual-Waypoint and do the show info!'),
('npcwhisper',1,'Syntax: .npcwhisper #playerguid #text\r\nMake the selected npc whisper #text to  #playerguid.');

## SD2 fixes in rev 139
UPDATE `creature_template` SET `ScriptName` = 'npc_lokhtos_darkbargainer' WHERE `entry` = 12944;
UPDATE creature_template SET ScriptName='npc_lady_jaina_proudmoore' WHERE entry=4968;
UPDATE `creature_template` SET `ScriptName` = 'mobs_spitelashes' WHERE entry IN (6190,6193,6194,6195,6196,7885,7886,12204,12205);
UPDATE creature_template SET npcflag=1, ScriptName='npc_beaten_corpse' WHERE entry=10668;
UPDATE quest_template  SET SpecialFlags=8, ReqCreatureOrGOId1=10668, ReqCreatureOrGOCount1=1  WHERE entry=4921;
UPDATE creature_template SET ScriptName='boss_rokmar_the_crackler' WHERE entry=17991;
UPDATE creature_template SET ScriptName='boss_warlord_kalithresh' WHERE entry=17798;
UPDATE `creature_template` SET `ScriptName` = 'boss_midnight' WHERE `entry` = 16151;
UPDATE `creature_template` SET `ScriptName` = 'boss_attumen' WHERE `entry` = 15550;
UPDATE `creature_template` SET `ScriptName` = 'boss_moroes' WHERE `entry` = 15687;
UPDATE `creature_template` SET `ScriptName` = 'boss_maiden_of_virtue' WHERE `entry` = 16457;
UPDATE `creature_template` SET `ScriptName` = 'boss_curator' WHERE `entry` = 15691;
UPDATE `creature_template` SET `ScriptName` = 'boss_big_bad_wolf' WHERE `entry` = 17521;
UPDATE `creature_template` SET `ScriptName` = 'boss_julianne' WHERE `entry` = 17534;
UPDATE `creature_template` SET `ScriptName` = 'boss_romulo' WHERE `entry` = 17533;
UPDATE `creature_template` SET `ScriptName` = 'boss_dorothee' WHERE `entry` = 17535;
UPDATE `creature_template` SET `ScriptName` = 'boss_strawman' WHERE `entry` = 17543;
UPDATE `creature_template` SET `ScriptName` = 'boss_tinhead' WHERE `entry` = 17547;
UPDATE `creature_template` SET `ScriptName` = 'boss_tito' WHERE `entry` = 17548;
UPDATE `creature_template` SET `ScriptName` = 'boss_roar' WHERE `entry` = 17546;
UPDATE `creature_template` SET `ScriptName` = 'boss_crone' WHERE `entry` = 18168;
UPDATE `creature_template` SET `ScriptName` = 'boss_terestian_illhoof' WHERE `entry` = 15688;
UPDATE `creature_template` SET `ScriptName` = 'boss_shade_of_aran' WHERE `entry` = 16524;
UPDATE `creature_template` SET `ScriptName` = 'boss_netherspite' WHERE `entry` = 15689;
UPDATE `creature_template` SET `ScriptName` = 'boss_malchezaar' WHERE `entry` = 15690;
UPDATE `creature_template` SET `ScriptName` = 'boss_nightbane' WHERE `entry` = 17225;
UPDATE `creature_template` SET `ScriptName` = 'mob_homunculus' WHERE `entry` = 16539;
UPDATE `creature_template` SET `ScriptName` = 'mob_kilrek' WHERE `entry` = 17229;
UPDATE `creature_template` SET `ScriptName` = 'netherspite_infernal' WHERE `entry` = 17646;
## Quest Fixes by NoFantasy


## Fairbreeze Village
## Farstrider Retreat
## Soaked Pages
## Warning Fairbreeze Village
## Report to Aeldon Sunbrand
## Old Whitebark's Pendant
## Whitebark's Memory
## The Spearcrafter's Hammer
## Unexpected Results
## Ranger Sareyn
## Runewarden Deryan
## The Magister's Apprentice
update `quest_template` set `MinLevel` = 6, `QuestLevel` = 7, `RequiredRaces` = 690, `PrevQuestId` = 8483, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8892 where `entry` = 9256;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 10, `RequiredRaces` = 690, `PrevQuestId` = 8892, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8476 where `entry` = 9359;
update `quest_template` set `MinLevel` = 4, `QuestLevel` = 6, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9064 where `entry` = 9062;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 11, `RequiredRaces` = 690, `PrevQuestId` = 9360, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9363;
update `quest_template` set `MinLevel` = 2, `QuestLevel` = 5, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8463 where `entry` = 9357;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 10, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10166 where `entry` = 8474;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 10, `RequiredRaces` = 690, `PrevQuestId` = 8474, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10166;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 10, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8477;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 9, `RequiredRaces` = 690, `PrevQuestId` = 8487, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9255 where `entry` = 8488;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 9, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9252 where `entry` = 9358;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 10, `RequiredRaces` = 690, `PrevQuestId` = 9252, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8490 where `entry` = 9253;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 10, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8889 where `entry` = 8888;

## tag beta, out of date
update `quest_template` set `Title` = 'BETA Report to Aeldon Sunbrand' where `entry` = 9357;
update `quest_template` set `Title` = 'BETA An Intact Converter' where `entry` = 8489;
update `quest_template` set `Title` = 'BETA The Dwarven Spy' where `entry` = 8896;
update `quest_template` set `Title` = 'BETA Choose Your Weapon' where `entry` = 8478;

## Tallonkai's Jewel
DELETE FROM `item_loot_template` WHERE (`entry`=8049);
INSERT INTO `item_loot_template` VALUES
(8049, 8050, 100, 0, 1, 1, 1);

## GO Hillsbrad Proclamation
update `gameobject_template` set `sound1` = 532 where `entry` = 1761;


## Medicinal Purpose
## An Alternative Alternative
## The Prophecy of Velen
## A Small Start
## Stillpine Hold
## Beasts of the Apocalypse!
## Search Stillpine Hold
## The Kurken is Lurkin'
## Warn Your People
## Murlocs... Why Here? Why Now?
## Gurf's Dignity
## Chieftain Oomooroo
## The Great Moongraze Hunt
## The Great Moongraze Hunt
## Strange Findings
## A Hearty Thanks!
## Warlord Sriss'tiz
update `quest_template` set `MinLevel` = 4, `QuestLevel` = 6, `RequiredRaces` = 1024, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9463;
update `quest_template` set `MinLevel` = 5, `QuestLevel` = 8, `RequiredRaces` = 1024, `PrevQuestId` = 9463, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9473;
update `quest_template` set `MinLevel` = 5, `QuestLevel` = 8, `RequiredRaces` = 1024, `PrevQuestId` = 9473, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9506 where `entry` = 9505;
update `quest_template` set `MinLevel` = 5, `QuestLevel` = 7, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9530 where `entry` = 9506;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 10, `RequiredRaces` = 1101, `PrevQuestId` = 9544, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9559;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 10, `RequiredRaces` = 1101, `PrevQuestId` = 9559, `NextQuestId` = 9565, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9560;
update `quest_template` set `MinLevel` = 9, `QuestLevel` = 10, `RequiredRaces` = 1101, `PrevQuestId` = 9559, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9566 where `entry` = 9565;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 12, `RequiredRaces` = 1101, `PrevQuestId` = 9565, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9571 where `entry` = 9570;
update `quest_template` set `MinLevel` = 10, `QuestLevel` = 11, `RequiredRaces` = 1101, `PrevQuestId` = 9570, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9622;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 10, `RequiredRaces` = 1101, `PrevQuestId` = 9559, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9562;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 11, `RequiredRaces` = 1101, `PrevQuestId` = 9562, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9564;
update `quest_template` set `MinLevel` = 7, `QuestLevel` = 11, `RequiredRaces` = 1101, `PrevQuestId` = 9562, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9573;
update `quest_template` set `MinLevel` = 4, `QuestLevel` = 6, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 10324 where `entry` = 9454;
update `quest_template` set `MinLevel` = 4, `QuestLevel` = 8, `RequiredRaces` = 1101, `PrevQuestId` = 9454, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 10324;
update `quest_template` set `MinLevel` = 5, `QuestLevel` = 7, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 9456 where `entry` = 9455;
update `quest_template` set `MinLevel` = 8, `QuestLevel` = 8, `RequiredRaces` = 1024, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9612;
update `quest_template` set `MinLevel` = 6, `QuestLevel` = 10, `RequiredRaces` = 1101, `PrevQuestId` = 9514, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 9515;

delete from `creature_questrelation` where `quest` in (6065, 6066, 6067, 6068, 6069, 6070);
insert into `creature_questrelation` (`id`, `quest`) values
(3038, 6065), ## Kary Thunderhorn
(3061, 6066), ## Lanka Farshot
(3171, 6067), ## Thotar
(3154, 6068), ## Jen'shan
(3407, 6069), ## Sian'dur
(3065, 6070); ## Yaw Sharpmane

delete from `creature_involvedrelation` where `quest` in (6065, 6066, 6067, 6068, 6069, 6070);
insert into `creature_involvedrelation` (`id`, `quest`) values
(3065, 6065), ## Yaw Sharpmane
(3065, 6066),
(3065, 6067),
(3171, 6068), ## Thotar
(3171, 6069),
(3171, 6070);

## Remove non official portals to Shattarath
## portal to Shattarath in elwyn forest.
delete from gameobject where guid=32290;
## portal to Shattarath in ghostlands
delete from gameobject where guid=33294;

## And finaly db_version update
DELETE FROM `db_version`;
INSERT INTO `db_version` VALUES ('UDB 0.7.5 (317) with SD2 calls rev.141');

## END
