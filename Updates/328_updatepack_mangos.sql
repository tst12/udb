-- Start update pack 328
-- Fix practice locking picking
UPDATE `item_template` SET `flags` = '4' WHERE `entry` = '6712';
-- Correct gameobject loots after 4781
UPDATE `gameobject_template` SET `data1`='17938' WHERE `entry`=181108;
UPDATE `gameobject_template` SET `data1`='22342' WHERE `entry`=181800;
UPDATE `gameobject_template` SET `data1`='22342' WHERE `entry`=181802;
UPDATE `gameobject_template` SET `data1`='22984' WHERE `entry`=181804;
UPDATE `gameobject_template` SET `data1`='19264' WHERE `entry`=182258;
UPDATE `gameobject_template` SET `data1`='20530' WHERE `entry`=184849;
UPDATE `gameobject_template` SET `data1`='21764' WHERE `entry`=185169;
UPDATE `gameobject_template` SET `data1`='22035' WHERE `entry`=185541;
UPDATE `gameobject_loot_template` SET `entry`=22035 WHERE `entry`=185541;
-- Chairs fix for future core patch ;)
UPDATE `gameobject_template` SET `data0`=1 WHERE `data0`=0 AND `type`=7;
-- Re-add this door
INSERT IGNORE INTO `gameobject` VALUES (30084,150138,0,-6034.97,-2488.73,311.086,0.663225,0.002705,0.005546,0.325544,0.945507,180,100,0);
-- Nofantasy's part
-- texts
-- texts
-- texts

update `quest_template` set `OfferRewardText` = '<The custodian looks dismayed.>$B$BI can already see the next wave coming over the horizon. Culling them will work for the time being, but more permanent measures are needed.' where `entry` = 10185;

update `quest_template` set `RequestItemsText` = 'Did you find the remains of the weapon Kael\'thas used against the village?' where `entry` = 10343;
update `quest_template` set `OfferRewardText` = 'A mana bomb?$B$B<Morran turns the fragment over in his hands.>$B$BIt\'s nigh unthinkable! Even the best minds in Dalaran couldn\'t have conceived of a weapon like this. The sheer magnitude of the disturbance must\'ve torn a rift in the nether, giving these creatures access to our lands.' where `entry` = 10343;

update `quest_template` set `OfferRewardText` = 'What you\'ve done this day can never bring back the fallen, but perhaps it can help soothe their spirits. Although, truth be told, no amount of blood can quench my anger over the actions of Kael\'thas.' where `entry` = 10222;

update `quest_template` set `OfferRewardText` = '<You\'re not certain, but it seems as though Custodian Dieworth is on the verge of tears.>$B$BAt last, it is through. If I could will myself out of existence, I would, but the truth is I don\'t know how to let go. For the ones in the village, it is difficult but straightforward. I suppose this is the price we pay for retaining such strong ties to this place.' where `entry` = 10223;

update `quest_template` set `RequestItemsText` = 'You\'ve returned. You wish to speak to me?' where `entry` = 10471;
update `quest_template` set `OfferRewardText` = 'You are a worthy ally indeed. As you grow in power so does the band of eternity!' where `entry` = 10471;

update `quest_template` set `OfferRewardText` = 'Greetings, $C; I am glad you are interested in assisting our research. There is much to do, and I would be doing you a disservice if I informed you that the work this entails is not dangerous. Hopefully this will not scare you off... but from the looks of you, I take it that danger is something that you have dealt with before.' where `entry` in (3762, 3784);

update `quest_template` set `OfferRewardText` = 'Well now, $C... since you were informed that I was leading this research myself, you obviously came as quickly as you could.$B$BNow that you are here, be sure to pay attention the first time I tell you the details; I have no desire to repeat myself.' where `entry` in (3789, 3790);

update `quest_template` set `OfferRewardText` = 'Yes, I gathered that Gracina sent you to me. Your experience in fighting these beasties is priceless; no one to my knowledge has ever dealt with their kind before. As for Gracina\'s idea that Un\'Goro Crater is their heart... perhaps it is. Un\'Goro is a mysterious and dangerous jungle to the west of here. Perhaps it is also one step closer to figuring out what the silithid are all about.' where `entry` = 4493;

update `quest_template` set `RequestItemsText` = 'I wish they\'d make more flavors of ice cream other than strawberry, but I guess I\'m lucky that strawberry is my favorite!' where `entry` = 4822;
update `quest_template` set `OfferRewardText` = 'Mmmmmmmmm! I love their strawberry ice cream! If there\'s one thing Tigule and Foror know to do, it\'s make ice cream!$B$BThank you very much $N - this is the best treat ever!' where `entry` = 4822;

update `quest_template` set `OfferRewardText` = 'Welcome to the Plaguelands, hero. This is one of the most dangerous frontiers in Azeroth, with the looming threat of the Scourge to our east, and then even further still eastward from there. I am glad to hear that the call of duty and service to the Horde did not fall on deaf ears with you!$B$BIf you are ready to get your hands dirty, then there is plenty for willing and able heroes to do here on the edge of the Plaguelands.' where `entry` = 5093;

update `quest_template` set `OfferRewardText` = 'Does my appearance startle you? Do you know what I am?' where `entry` = 9982;

update `quest_template` set `RequestItemsText` = 'May time always be on your side, $N.' where `entry` in (10472, 10473, 10474, 10475);
update `quest_template` set `OfferRewardText` = 'You are one with time, $N. You are one with us.$B$BBehold! Power beyond mortal understanding is unleashed from even that small remnant of the Well of Eternity.$B$BAccept this gift so that all may know of your covenant with the Scale of the Sands.... so that all may know of your covenant with time itself!' where `entry` in (10472, 10473, 10474, 10475);

update `quest_template` set `RequestItemsText` = 'You\'ve returned. You wish to speak to me?' where `entry` in (10468, 10469, 10470);
update `quest_template` set `OfferRewardText` = 'You are a worthy ally indeed. As you grow in power so does the band of eternity!' where `entry` in (10468, 10469, 10470);

update `quest_template` set `RequestItemsText` = 'Is it done?' where `entry` = 9666;
update `quest_template` set `OfferRewardText` = 'I am sorry that you had to do that, $N. Heavy-handed violence is not the $R way, but sometimes it is the only way.$B$BThis is one of life\'s truths that many do not understand until it is too late. So it was for our people, when we were slaughtered at the hands of the orcs.$B$BBecoming a Hand of Argus is a process of rebirth. And with birth comes pain...' where `entry` = 9666;

update `quest_template` set `OfferRewardText` = 'A glowing orb sits atop a square-shaped pedestal. At first glance, it seems to be a repository for magical energy, but what kind of energy, and for whose use?' where `entry` = 10316;

update `quest_template` set `RequestItemsText` = 'Has Teribus the Cursed ben purged from the skies of Terokkar?' where `entry` = 10923;
update `quest_template` set `OfferRewardText` = 'A great evil has been cleansed from Terokkar. The Sha\'tar are in your debt.' where `entry` = 10923;

update `quest_template` set `RequestItemsText` = 'How fares the bolstering of the Living Grove\'s defenses?$B$BWith the intentions of the arakkoa at Veil Lessh unknown, and the Horde just on the other side of the ravine, I fear that if we do not move quickly we will find ourselves in a poor situation to protect our new home and our work in the grove.' where `entry` = 10457;
update `quest_template` set `OfferRewardText` = 'Now that you have strengthened the grove\'s defenses, I feel much safer.$B$BYou\'ve earned our thanks and appreciation, $N.$B$BOf course, it just occurred to me that there\'s something else that we need to take care of!' where `entry` = 10457;

update `quest_template` set `OfferRewardText` = 'You have my thanks, $N. We are keepers of the light and cannot forsake our responsibilities, even in the most difficult of times.' where `entry` = 10021;

update `quest_template` set `RequestItemsText` = 'Along with the druids, the Oracle Tree and the Arch Druid have been carefully monitoring the growth of Teldrassil. But though we have a new home, our immortal lives have not been restored.' where `entry` = 7383;
update `quest_template` set `OfferRewardText` = 'To be in the presence of the Oracle Tree... it is almost to feel wisdom take form. Let me continue the telling...$B$BWith Teldrassil grown, the Arch Druid approached the dragons for their blessings, as the dragons had placed upon Nordrassil in ancient times. But Nozdormu, Lord of Time, refused to give his blessing, chiding the druid for his arrogance. In agreement with Nozdormu, Alexstrasza also refused Staghelm, and without her blessing, Teldrassil\'s growth has been flawed and unpredictable...' where `entry` = 7383;

update `quest_template` set `OfferRewardText` = 'Finely executed, $N. Your attack on the Scarlet Crusade will buy us time. I have sent one of my best scouts out to watch over the camp and make sure that the Crusade forces that come to reinforce the position will take the bait.$B$BWith the pressure on us lessened, we should now finally be able to risk a mission into Andorhal itself, and an important one at that. I\'d very much like it if you\'d perform this one as well, based on your success to date.' where `entry` = 5096;

update `quest_template` set `OfferRewardText` = 'Excellent work, $C. May the Light continue to protect you.' where `entry` = 10816;

update `quest_template` set `OfferRewardText` = 'Does my appearance startle you? Do you know what I am?' where `entry` = 9983;

update `quest_template` set `OfferRewardText` = 'So what is your decision? Will it be war or will you lend your assistance?' where `entry` in (10107, 10108);

update `quest_template` set `OfferRewardText` = 'It is good that you came, $R. We have much work to do.' where `entry` = 10680;

update `quest_template` set `RequestItemsText` = 'Spleens! I need spleens!' where `entry` = 10661;
update `quest_template` set `OfferRewardText` = '<Gnomus hungrily grabs at the spleens.>$B$BHere\'s your coin as promised. I\'ll call for you if I need more spleens.$B$BSo delicious... I dare say that they are \'spleendid!\'' where `entry` = 10661;

update `quest_template` set `RequestItemsText` = 'Special of the day: Gizzard.' where `entry` = 10677;
update `quest_template` set `OfferRewardText` = 'This is fantastic but I just received some incredible news!' where `entry` = 10677;

update `quest_template` set `RequestItemsText` = 'Special of the day: Felspine\'s hide.' where `entry` = 10678;
update `quest_template` set `OfferRewardText` = 'I\'ll need some alone time now, $N. Thanks for all the help!' where `entry` = 10678;

update `quest_template` set `OfferRewardText` = 'Aye, good work! Here\'s some coin for your efforts. If we be needin\' more garbage taken out, I\'ll know who to call.' where `entry` = 10703;

update `quest_template` set `OfferRewardText` = 'Thank you for relieving my men, $N. With your help, and that of others, we may yet hold out. Unfortunately, merely holding out is not enough. We must go on the offensive.' where `entry` = 10562;

update `quest_template` set `Title` = 'OLD Crown of the Earth' where `entry` = 934;
update `quest_template` set `Title` = 'BETA Horns of Nez\'ra' where `entry` = 2358;

-- Req quest
-- Req quest
-- Req quest

-- Torching Sunfury Hold
update `quest_template` set `ReqSpellCast1` = 34526 where `entry` = 10233;
update `quest_template` set `ReqSpellCast2` = 34526 where `entry` = 10233;
update `quest_template` set `ReqSourceId1` = 28550, `ReqSourceCount1` = 1, `ReqSourceRef1` = 1 where `entry` = 10233;
update `quest_template` set `ReqSourceId2` = 28550, `ReqSourceCount2` = 1, `ReqSourceRef2` = 2 where `entry` = 10233;

-- Building a Perimeter
update `quest_template` set `ReqSpellCast1` = 34646 where `entry` = 10240;
update `quest_template` set `ReqSpellCast2` = 34646 where `entry` = 10240;
update `quest_template` set `ReqSpellCast3` = 34646 where `entry` = 10240;

-- Declaration of Power, revert orig flags + 8
update `quest_template` set `SpecialFlags` = 2186 where `entry` = 9666;
update `quest_template` set `ReqSpellCast1` = 0 where `entry` = 9666;
update `quest_template` set `ReqCreatureOrGOId2` = 0, `ReqCreatureOrGOCount2` = 0 where `entry` = 9666;

-- Evil Draws Near
update `quest_template` set `ReqSourceId3` = 31812, `ReqSourceCount3` = 20, `ReqSourceRef3` = 3 where `entry` = 10923;

-- Blessing of Incineratus
update `quest_template` set `ReqSpellCast1` = 31927 where `entry` = 9805;
update `quest_template` set `ReqSpellCast2` = 31927 where `entry` = 9805;
update `quest_template` set `ReqSpellCast3` = 31927 where `entry` = 9805;
update `quest_template` set `ReqSpellCast4` = 31927 where `entry` = 9805;

-- Stopping the Spread
update `quest_template` set `ReqSpellCast1` = 32146 where `entry` = 9874;

-- Disrupt Their Reinforcements
update `quest_template` set `ReqSourceCount1` = 4 where `entry` = 10208;
update `quest_template` set `ReqSourceId2` = 28513, `ReqSourceCount2` = 4, `ReqSourceRef2` = 2 where `entry` = 10208;
update `quest_template` set `ReqSourceCount1` = 4 where `entry` = 10144;
update `quest_template` set `ReqSourceId2` = 28513, `ReqSourceCount2` = 4, `ReqSourceRef2` = 2 where `entry` = 10144;

-- From the Ashes
update `quest_template` set `ReqSpellCast1` = 29773 where `entry` = 10771;
update `quest_template` set `ReqSpellCast2` = 29773 where `entry` = 10771;
update `quest_template` set `ReqSpellCast3` = 29773 where `entry` = 10771;

-- A Bundle of Hides++
update `quest_template` set `RequiredRaces` = 32 where `entry` in (6361, 6362, 6363, 6364);
-- Meats to Orgrimmar++
update `quest_template` set `RequiredRaces` = 130 where `entry` in (6365, 6384, 6385, 6386);
-- Supplying the Sepulcher++
update `quest_template` set `RequiredRaces` = 16 where `entry` in (6321, 6323, 6322, 6324);

-- Crown of the Earth
update `quest_template` set `PrevQuestId` = 933 where `entry` = 7383;
update `quest_template` set `PrevQuestId` = 7383 where `entry` = 935;

-- Sigil of Thoradin++
update `quest_template` set `RequiredRaces` = 690 where `entry` in (641, 643, 644, 645, 646);

-- Fel Embers
update quest_template set `ReqSourceId1` = 23735, `ReqSourceCount1` = 1, `ReqSourceRef1` = 1 where entry =9494;

-- Torgos!
update `quest_template` set `ReqSourceId2` = 30618, `ReqSourceCount2` = 1, `ReqSourceRef2` = 2 where `entry` in (10035, 10036);

-- lorax
update quest_template set `ZoneOrSort` = -121, `RequiredSkillValue` = 285 where entry = 5126;
update quest_template set `ZoneOrSort` = -121, `RequiredSkillValue` = 285, `PrevQuestId` = 5126 where entry = 5127;

-- Kirith
update quest_template set `PrevQuestId` = 2701 where entry = 2721;

-- Petty Squabbles && The Swamp Talker
update quest_template set `NextQuestId` = 2801 where entry in (2623, 2783);

-- Survey the Land
update quest_template set `SpecialFlags` = 130, `EndText` = 'Forge Camps Surveyed' where entry = 9991;



-- spell target
-- spell target
-- spell target

DELETE FROM `spell_script_target` WHERE `entry` IN (34646, 31927, 32146);
INSERT IGNORE INTO `spell_script_target` VALUES
(34646,1,19866), -- quest 10240
(34646,1,19867),
(34646,1,19868),
(31927,1,18110), -- quest 9805
(31927,1,18142),
(31927,1,18143),
(31927,1,18144),
(32146,1,18240); -- quest 9874


-- Gameobjects
-- Gameobjects
-- Gameobjects

-- RE-USE dual spawned Cozzle's Footlocker to spawn Gordunni Scroll
update `gameobject` set `id` = 143980, `map` = 1, `position_x` = '-3746.88', `position_y` = '220.084', `position_z` = '121.74', `orientation` = '6.24626', `rotation0` = 0, `rotation1` = 0, `rotation2` = '0.0184632', `rotation3` = '-0.99983', `spawntimesecs` = 120, `animprogress` = 100, `dynflags` = 0 where `guid` = 28646;

-- removing flags not supported by core where player need to interact directly
update `gameobject_template` set `flags` = 0 where `entry` in (20691, 180570, 181011, 184300, 182549, 185216, 185218, 182026, 183147, 182565, 182566, 181011);

-- Grove Seedling
update `gameobject_template` set `data5` = 1 where `entry` = 184631;

-- Northern Altar
update `gameobject` set `position_x` = -1596.28 where `guid` = 14023;

-- Signal Fires
update `gameobject_template` set `data1` = 10874 where `entry` in (185216, 185218);

-- loot
-- loot
-- loot

-- Zaxxis Insignia and Ethereum Prison Key
update `creature_loot_template` set `ChanceOrRef` = 50, `QuestChanceOrGroup` = 0 where `item` = 29209;
update `creature_loot_template` set `ChanceOrRef` = 3, `QuestChanceOrGroup` = 0 where `item` = 29460;
update `creature_loot_template` set `ChanceOrRef` = 90 where `item` = 29460 and `entry` = 23008;

-- Ominous Letter
update `creature_loot_template` set `ChanceOrRef` = 100, `QuestChanceOrGroup` = -1, `lootcondition` = 6, `condition_value1` = 469 where `item` = 23890 and `entry` = 17537;
update `creature_loot_template` set `ChanceOrRef` = 100, `QuestChanceOrGroup` = -2, `lootcondition` = 6, `condition_value1` = 67 where `item` = 23892 and `entry` = 17537;

-- wrong loot
delete from `gameobject_loot_template` where `item` = 1708 and `entry` = 20691;


-- item
-- item
-- item

-- not soulbound quest items
-- Sunfury Signet, Mark of Sargeras, Mark of Kil'jaeden, Firewing Signet
update `item_template` set `class` = 0 where `entry` in (30810, 30809, 29425, 29426);


-- quest relations
-- quest relations
-- quest relations

delete from `creature_questrelation` where `quest` in (934, 2358, 4493, 4494, 9982);
delete from `creature_involvedrelation` where `quest` in (934, 2358, 2879, 9982);
-- delete from `gameobject_questrelation` where `quest` in ();
delete from `gameobject_involvedrelation` where `quest` in (2879);

insert into `creature_questrelation` (`id`, `quest`) values
(7740, 4493),
(7010, 4494),
(18416, 9982);
insert into `creature_involvedrelation` (`id`, `quest`) values
(18417, 9982);
-- insert into `gameobject_questrelation` (`id`, `quest`) values

insert into `gameobject_involvedrelation` (`id`, `quest`) values
(144063, 2879);


-- creature
-- creature
-- creature

-- fix to prevent any crashes related to zero-hp
update `creature_template` set `minhealth` = 1, `maxhealth` = 1 where `minhealth` = 0 and `maxhealth` = 0;

-- Lord Xiz
delete from `creature` where `guid` = 63449;

-- no script on Flametongue Totem IV
update `creature_template` set `ScriptName` = '' where `entry` = 10557;

-- Captain Perrine
update `creature` set `position_z` = 48.98, `spawn_position_z` = 48.98 where `guid` = 10205;

-- has gossip
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` IN (384, 1261, 1460, 2357, 3362, 3685, 3836, 4730, 4731, 4885, 7952, 7955, 9563, 16264, 17584);

-- 
-- heroic loot, remove from normal bosses loot template
-- 
-- Hellfire Ramparts
-- Watchkeeper Gargolmar Heroic
update ignore `creature_loot_template` set `entry` = 18436 where `entry` = 17306 and `item` in (29434, 27447, 27448, 27449, 27450, 27451, 30592, 30593, 30594);
update `creature_template` set `lootid` = 18436 where `entry` = 18436;
-- Omor the Unscarred Heroic
update ignore `creature_loot_template` set `entry` = 18433 where `entry` = 17308 and `item` in (29434, 27462, 27463, 27464, 27465, 27466, 27467, 27476, 27477, 27478, 27539, 27895, 27906, 30592, 30593, 30594);
update `creature_template` set `lootid` = 18433 where `entry` = 18433;
-- Nazan Heroic
update ignore `creature_loot_template` set `entry` = 18432 where `entry` = 17536 and `item` in (27452, 27453, 27455, 27456, 27457, 27458, 27460, 27461, 29264, 29346, 30592, 32077);
update `creature_template` set `lootid` = 18432 where `entry` = 18432;

-- Blood Furnace
-- Keli'dan the Breaker Heroic
update ignore `creature_loot_template` set `entry` = 18607 where `entry` = 17377 and `item` in (27494, 27495, 27497, 27505, 27506, 27507, 27512, 27514, 27522, 27788, 28121, 28264, 29239, 29245, 29347, 29434, 30600, 30601, 30602, 32080);
update `creature_template` set `lootid` = 18607 where `entry` = 18607;
-- Broggok Heroic
update ignore `creature_loot_template` set `entry` = 18601 where `entry` = 17380 and `item` in (27489, 27490, 27491, 27492, 27848, 29434, 30600, 30601, 30602);
update `creature_template` set `lootid` = 18601 where `entry` = 18601;
-- The Maker Heroic
update ignore `creature_loot_template` set `entry` = 18621 where `entry` = 17381 and `item` in (27483, 27484, 27485, 27487, 27488, 29434, 30600, 30601, 30602);
update `creature_template` set `lootid` = 18621 where `entry` = 18621;

-- Shattred Halls
-- Grand Warlock Nethekurse Heroic
update ignore `creature_loot_template` set `entry` = 20568 where `entry` = 16807 and `item` in (25462, 29434, 30546, 30547, 30548);
update `creature_template` set `lootid` = 20568 where `entry` = 20568;
-- Warchief Kargath Bladefist Heroic
update ignore `creature_loot_template` set `entry` = 20597 where `entry` = 16808 and `item` in (29254, 29255, 29263, 29348, 29434, 30546, 30547, 30548);
update `creature_template` set `lootid` = 20597 where `entry` = 20597;
-- Warbringer O'mrogg Heroic
update ignore `creature_loot_template` set `entry` = 20596 where `entry` = 16809 and `item` in (29434, 30546, 30547, 30548);
update `creature_template` set `lootid` = 20596 where `entry` = 20596;


-- Auchenai Crypts
-- Shirrak the Dead Watcher Heroic
update ignore `creature_loot_template` set `entry` = 20318 where `entry` = 18371 and `item` in (27493, 27845, 27846, 27847, 27865, 27866, 29434, 30586, 30587, 30588);
update `creature_template` set `lootid` = 20318 where `entry` = 20318;
-- Exarch Maladaar Heroic
update ignore `creature_loot_template` set `entry` = 20306 where `entry` = 18373 and `item` in (27523, 27867, 27869, 27870, 27871, 27872, 29244, 29257, 29354, 29434, 30586, 30587, 30588);
update `creature_template` set `lootid` = 20306 where `entry` = 20306;
-- Avatar of the Martyred Heroic
update `creature_loot_template` set `entry` = 20303 where `entry` = 18478;
update `creature_template` set `lootid` = 20303 where `entry` = 20303;

-- Mana-Tombs
-- Pandemonius Heroic
update ignore `creature_loot_template` set `entry` = 20267 where `entry` = 18341 and `item` in (27813, 27814, 27815, 27816, 27817, 27818, 29434, 30583, 30584, 30585);
update `creature_template` set `lootid` = 20267 where `entry` = 20267;
-- Tavarok Heroic
update ignore `creature_loot_template` set `entry` = 20268 where `entry` = 18343 and `item` in (27821, 27822, 27823, 27824, 27825, 27826, 29434, 30583, 30584, 30585);
update `creature_template` set `lootid` = 20268 where `entry` = 20268;
-- Nexus-Prince Shaffar Heroic
update ignore `creature_loot_template` set `entry` = 20266 where `entry` = 18344 and `item` in (27798, 27828, 27829, 27831, 27835, 27840, 27842, 27843, 27844, 28400, 29240, 29252, 29352, 29434, 30535, 30583, 30584, 30585, 32082);
update `creature_template` set `lootid` = 20266 where `entry` = 20266;

-- Sethekk Halls
-- Darkweaver Syth Heroic
update ignore `creature_loot_template` set `entry` = 20690 where `entry` = 18472 and `item` in (25461, 29434, 30552, 30553, 30554);
update `creature_template` set `lootid` = 20690 where `entry` = 20690;
-- Talon King Ikiss Heroic
update ignore `creature_loot_template` set `entry` = 20706 where `entry` = 18473 and `item` in (29249, 29259, 29355, 29434, 30552, 30553, 30554, 32073);
update `creature_template` set `lootid` = 20706 where `entry` = 20706;


-- The Steamvault
-- Mekgineer Steamrigger Heroic
update ignore `creature_loot_template` set `entry` = 20630 where `entry` = 17796 and `item` in (29434, 30549, 30550, 30551);
update `creature_template` set `lootid` = 20630 where `entry` = 20630;
-- Hydromancer Thespia Heroic
update ignore `creature_loot_template` set `entry` = 20629 where `entry` = 17797 and `item` in (29434, 30549, 30550, 30551, 27788);
update `creature_template` set `lootid` = 20629 where `entry` = 20629;
-- Warlord Kalithresh Heroic
update ignore `creature_loot_template` set `entry` = 20633 where `entry` = 17798 and `item` in (29243, 29351, 29434, 29463, 30543, 30549, 30550, 30551);
update `creature_template` set `lootid` = 20633 where `entry` = 20633;

-- The Slave Pens
-- Mennu the Betrayer Heroic
update ignore `creature_loot_template` set `entry` = 19893 where `entry` = 17941 and `item` in (27541, 27542, 27543, 27544, 27545, 27546, 29434, 30603, 30604, 30605);
update `creature_template` set `lootid` = 19893 where `entry` = 19893;
-- Quagmirran Heroic
update ignore `creature_loot_template` set `entry` = 19894 where `entry` = 17942 and `item` in (27672, 27673, 27683, 27712, 27713, 27714, 27740, 27741, 27742, 27796, 27800, 28337, 29242, 29349, 29434, 30538, 30603, 30604, 30605, 32078);
update `creature_template` set `lootid` = 19894 where `entry` = 19894;
-- Rokmar the Crackler Heroic
update ignore `creature_loot_template` set `entry` = 19895 where `entry` = 17991 and `item` in (27547, 27548, 27549, 27550, 27551, 28124, 29434, 30603, 30604, 30605);
update `creature_template` set `lootid` = 19895 where `entry` = 19895;

-- The Underbog
-- Hungarfen Heroic
update ignore `creature_loot_template` set `entry` = 20169 where `entry` = 17770 and `item` in (27743, 27744, 27745, 27746, 27747, 27748, 29434, 30606, 30607, 30608);
update `creature_template` set `lootid` = 20169 where `entry` = 20169;
-- Swamplord Musel'ek Heroic
update ignore `creature_loot_template` set `entry` = 20183 where `entry` = 17826 and `item` in (27762, 27763, 27764, 27765, 27766, 27767, 29434, 30606, 30607, 30608);
update `creature_template` set `lootid` = 20183 where `entry` = 20183;
-- The Black Stalker Heroic
update ignore `creature_loot_template` set `entry` = 20184 where `entry` = 17882 and `item` in (27768, 27769, 27770, 27771, 27772, 27773, 27779, 27780, 27781, 27896, 27907, 27938, 29265, 29350, 29434, 30541, 30606, 30607, 30608, 32081);
update `creature_template` set `lootid` = 20184 where `entry` = 20184;
-- Ghaz'an Heroic
update ignore `creature_loot_template` set `entry` = 20168 where `entry` = 18105 and `item` in (27755, 27757, 27758, 27759, 27760, 27761, 29434, 30606, 30607, 30608);
update `creature_template` set `lootid` = 20168 where `entry` = 20168;


-- The Arcatraz
-- Zereketh the Unbound Heroic
update ignore `creature_loot_template` set `entry` = 21626 where `entry` = 20870 and `item` in (29434, 30575, 30581, 30582);
update `creature_template` set `lootid` = 21626 where `entry` = 21626;
-- Dalliah the Doomsayer Heroic
update ignore `creature_loot_template` set `entry` = 21590 where `entry` = 20885 and `item` in (29434, 30575, 30581, 30582);
update `creature_template` set `lootid` = 21590 where `entry` = 21590;
-- Wrath-Scryer Soccothrates Heroic
update ignore `creature_loot_template` set `entry` = 21624 where `entry` = 20886 and `item` in (29434, 30575, 30581, 30582);
update `creature_template` set `lootid` = 21624 where `entry` = 21624;
-- Harbinger Skyriss Heroic
update ignore `creature_loot_template` set `entry` = 21599 where `entry` = 20912 and `item` in (29434, 30575, 30581, 30582, 29241, 29254, 29252, 29248, 29360, 30534);
update `creature_template` set `lootid` = 21599 where `entry` = 21599;

-- The Botanica
-- Commander Sarannis Heroic
update ignore `creature_loot_template` set `entry` = 21551 where `entry` = 17976 and `item` in (29434, 30574, 30572, 30573);
update `creature_template` set `lootid` = 21551 where `entry` = 21551;
-- High Botanist Freywinn Heroic
update ignore `creature_loot_template` set `entry` = 21558 where `entry` = 17975 and `item` in (29434, 30574, 30572, 30573);
update `creature_template` set `lootid` = 21558 where `entry` = 21558;
-- Thorngrin the Tender Heroic
update ignore `creature_loot_template` set `entry` = 21581 where `entry` = 17978 and `item` in (29434, 30574, 30572, 30573);
update `creature_template` set `lootid` = 21581 where `entry` = 21581;
-- Laj Heroic
update ignore `creature_loot_template` set `entry` = 21559 where `entry` = 17980 and `item` in (29434, 30574, 30572, 30573);
update `creature_template` set `lootid` = 21559 where `entry` = 21559;
-- Warp Splinter Heroic
update ignore `creature_loot_template` set `entry` = 21582 where `entry` = 17977 and `item` in (29434, 29258, 29262, 30574, 29359, 32072, 30572, 30573);
update `creature_template` set `lootid` = 21582 where `entry` = 21582;

-- The Mechanar
-- Mechano-Lord Capacitus Heroic
update ignore `creature_loot_template` set `entry` = 21533 where `entry` = 19219 and `item` in (29434, 30564, 30565, 30566);
update `creature_template` set `lootid` = 21533 where `entry` = 21533;
-- Nethermancer Sepethrea Heroic
update ignore `creature_loot_template` set `entry` = 21536 where `entry` = 19221 and `item` in (29434, 30564, 30565, 30566);
update `creature_template` set `lootid` = 21536 where `entry` = 21536;
-- Pathaleon the Calculator Heroic
update ignore `creature_loot_template` set `entry` = 21537 where `entry` = 19220 and `item` in (30565, 29434, 29251, 30566, 32076, 30564, 29362, 30533);
update `creature_template` set `lootid` = 21537 where `entry` = 21537;

-- NoFantasy quest text start

update `quest_template` set `OfferRewardText` = 'The old footlocker creaks open. . . .' where `entry` = 67;
update `quest_template` set `OfferRewardText` = 'Stalvan? Sure sounds familiar.' where `entry` = 69;
update `quest_template` set `OfferRewardText` = 'Ah, Ghost Hair Thread is what you need, is it? I\'m afraid I have none in stock, but I can make some for you...if you can supply the ghost hair.' where `entry` = 148;
update `quest_template` set `OfferRewardText` = 'You have served the Kingdom well, $C. Thank you for assisting Corporal Keeshan with his escape from those dreaded Blackrock Orcs. You shall be rewarded for your brave acts this day.' where `entry` = 219;
update `quest_template` set `OfferRewardText` = 'Oh good. You thinned out that pack quite a bit, and without those wolves nipping out our heels, we can bind our minds to dealing with Morbent Fel.$B$BHere, take some of these Flash Bundles. They make them in town, and a lot have been donated to Sven to help with his cause.' where `entry` = 226;
update `quest_template` set `OfferRewardText` = 'Yes? My father...$B$B<Her eyes become downcast.>$B$BI wish... there was something I could have done for him... If only I had talked to him before he...' where `entry` = 229;
update `quest_template` set `OfferRewardText` = 'Welcome to the new frontier, $N. Ashenvale is a land of opportunity, one where a young $C like yourself is able to find boundless chances to prove their mettle. Look around the outpost here, and be sure to travel out to the Zoram Strand, as the Horde has another outpost there as well.$B$BYour presence here tells me that you\'ve come to learn more about the hunt. Listen close, and I will gladly share with you what you need to know.' where `entry` = 235;
update `quest_template` set `RequestItemsText` = 'You\'d best be careful when dealing with the spiders, I\'ve lost a few of my men to them, and trust me, it isn\'t a pleasant sight to see a man hanging upside down in their webs after the venom has started to soften them up.$B$BI wouldn\'t want to see one of the bugs having you for lunch.' where `entry` = 245;
update `quest_template` set `OfferRewardText` = 'Ah! You\'re back. And not too much worse for wear, it\'d seem. Of course, $N, the Night Watch is grateful for your work, and I did promise you a reward, so here.' where `entry` = 245;
update `quest_template` set `OfferRewardText` = '$N, you have slain all three beasts that comprise the Ashenvale Hunt. You have brought me adequate proof of their demise; there is no question of your strength and tenacity. The blood of a hunter streaks through your veins, and you should be commended!$B$BPlease, accept this bauble as a sign of congratulations on your mighty deeds done in Ashenvale for the Horde today. May your ancestors watch over you!' where `entry` = 247;
update `quest_template` set `RequestItemsText` = 'No luck? Don\'t feel too bad, $N...$B$BNot everyone can be me.' where `entry` = 257;
update `quest_template` set `OfferRewardText` = 'What? Success?$B$BTake it from me, $Nama, you don\'t let it get to your head. I mean, any unshaven boy with a bow could have killed such... small specimens. And I hope you don\'t enjoy killing the buzzards so much, yes? We wouldn\'t want them to become extinct.$B$BWell, err... Never let it be said that Daryl the Bold would not hold to his word.' where `entry` = 257;
update `quest_template` set `RequestItemsText` = 'It\'s only natural to feel sorry for yourself when shown up by someone so new to this world. You shouldn\'t feel bad, $N.$B$BHm? Did I get your name wrong?' where `entry` = 258;
update `quest_template` set `OfferRewardText` = 'You seem a bit worse for wear. No doubt the boars gave you some trouble, hm? No worries, I will be discreet about your struggle, I can imagine how hard it must be for you without the accusations of wagging tongues.$B$BOh! You managed to kill the boars? I... well, that is... that is to say, I\'m not surprised! Any child could have--bet?$B$BWhat bet?' where `entry` = 258;
update `quest_template` set `RequestItemsText` = 'The Scourge grows in power with the passing of each day. If you truly wish to halt its advances, then show me.' where `entry` = 261;
update `quest_template` set `OfferRewardText` = 'You have proven your resolve, and the Scarlet Crusade commends you.$B$BIf you do not shy from righteous slaughter, then perhaps your path lies with us...' where `entry` = 261;
update `quest_template` set `RequestItemsText` = 'Your task is still at hand, young $C.' where `entry` = 276;
update `quest_template` set `OfferRewardText` = 'By reducing the Gnolls\' number, you have tended to the health of the Wetlands. Although my faith in your people has been taxed in the past, $R, it may yet be restored.' where `entry` = 276;
update `quest_template` set `RequestItemsText` = 'Roggo has been unable to contact the reserve forces. We need offensive pressure on that Dark Iron encampment, $c. Now get back out there and serve your duty to King Magni!' where `entry` = 303;
update `quest_template` set `OfferRewardText` = 'You upheld your orders well, $C. You have proven yourself to be a valiant soldier and loyal servant to King Magni and for that I salute you! With the pressure you applied to the Dark Iron encampment, we now stand a chance of driving them off our lands for good. . .if only the damned reserve would show. . . .' where `entry` = 303;
update `quest_template` set `RequestItemsText` = 'Battle hard, $Nn. And do not despair, for despair is evil\'s greatest weapon.' where `entry` = 323;
update `quest_template` set `OfferRewardText` = 'Your skill in combat, $N, can not be doubted. Your resolve may yet see us through to the end of Morbent Fel!' where `entry` = 323;
update `quest_template` set `OfferRewardText` = 'Oh, yes I can check that for you. Let\'s see...last week it was...$B$B...why, it was Private Merle scheduled with Thorsen. They had the same patrol times all of last week.' where `entry` = 330;
update `quest_template` set `OfferRewardText` = 'It pains me to find out it was Merle who betrayed us. He has always been a brave soldier, and I had thought his heart was true. But it is a great relief to have found him out - with a spy like him among us...we would not last long against Colonel Kurzen.' where `entry` = 331;
update `quest_template` set `OfferRewardText` = 'Master says give gift to $N. Zggi wants to keep nice gift but Zggi knows better than to betray Master.' where `entry` = 397;
update `quest_template` set `OfferRewardText` = 'You fought like a true disciple of the Dark Lady, $N. With the council dead, perhaps we can gain control of this town once and for all and drive Arugal from Shadowfang Keep. I salute you!' where `entry` = 452;
update `quest_template` set `OfferRewardText` = 'The roots and ferns speak well of you, small one. Although I have many names, I answer to only a few. But you may call me Rethiel.$B$BAnd you must harken...for these lands weep from festered wounds, and I would charge you to heal them.' where `entry` = 463;
update `quest_template` set `OfferRewardText` = 'Hello $N. You\'re here about the task I have, eh? It\'s good to see a young $R like yourself whose blood burns at the prospect of adventure!' where `entry` = 467;
update `quest_template` set `RequestItemsText` = 'You have more Warmongers to slay, $N. You should be up on the mountains on your task, not down here with your weapon stowed.' where `entry` = 504;
update `quest_template` set `OfferRewardText` = 'Very good. Here is your reward.$B$BAnd when you were hunting those Warmongers, how did Alterac city look? It\'s in bad shape I would guess. Ogres are not known for their cleanliness.$B$BThankfully, your efforts will help keep them away from Southshore.' where `entry` = 504;
update `quest_template` set `RequestItemsText` = 'You have slain those Syndicate thugs, I trust?' where `entry` = 505;
update `quest_template` set `OfferRewardText` = 'Thank you, $N. Although they may still be lurking about, we hope that some of the thieves and footpads you slew were responsible for the last magistrate\'s death. But even if they weren\'t, the Syndicate is a taint on this land and a stain on the human race.$B$BTheir deaths are welcome to Southshore.' where `entry` = 505;
update `quest_template` set `RequestItemsText` = 'Did you find the lightforge iron you need?' where `entry` = 526;
update `quest_template` set `OfferRewardText` = 'Ah, you found them! Now let\'s get this lightforge iron hammered into something useful, eh?' where `entry` = 526;
update `quest_template` set `OfferRewardText` = 'Ah yes, I remember Milton. A bookworm, no doubt. Bless him.$B$BAnd he\'s right. The Ruins of Alterac still hold stores of knowledge in danger of being lost!$B$BOgres now dwell in Alterac, and they don\'t care much for higher learning.' where `entry` = 538;
update `quest_template` set `RequestItemsText` = 'Dun Garok proves to be too much of an obstacle for you, $C? And here I thought you had established yourself valiantly in Hillsbrad.$B$BIf you\'re not up to handle the mission assigned to you, I will find another who can produce better results. As for you, well, I am sure the Dark Lady could always use more grave diggers back in Tirisfal Glades.' where `entry` = 541;
update `quest_template` set `OfferRewardText` = 'Your actions on the battlefield are worthy of the highest praise.' where `entry` = 541;
update `quest_template` set `RequestItemsText` = 'Have you yet thinned the Dalaran patrols around their ruins?' where `entry` = 545;
update `quest_template` set `OfferRewardText` = 'Very good. Those ruins should now be safe enough to search, if one is careful.$B$BThank you, $N.' where `entry` = 545;
update `quest_template` set `RequestItemsText` = 'Someday, I wanna be a hero just like Jaina... well, a boy hero that is.' where `entry` = 558;
update `quest_template` set `OfferRewardText` = 'WOW! You got Lady Jaina\'s autograph for me! Thank you very much! And wow... she wrote a personal message on here - to me! I knew she\'d be totally cool, and maybe someday I\'ll thank her myself... when I become a hero of the Alliance!$B$BYou\'re the best, $N. Thank you for being so nice to me.' where `entry` = 558;
update `quest_template` set `RequestItemsText` = 'I\'ve a letter ready to go to Major Samuelson in Stormwind. All I need are the results.' where `entry` = 562;
update `quest_template` set `OfferRewardText` = 'With the naga put down in Southshore, I\'ll be a shoe-in to be reassigned. I\'ll get to see Stormwind again... get away from this Light-forsaken port.' where `entry` = 562;
update `quest_template` set `RequestItemsText` = 'Mountain Lions killin\' off our horses left and right and here you are wantin\' to jibber-jabber about the weather and what not.$B$BOught to go and find myself a real hero. More killin\' and less talkin\'.' where `entry` = 564;
update `quest_template` set `OfferRewardText` = 'Ain\'t that great news! Should-a gone and found me a regular ol\' war hero from day one to take care of them beasts. You\'d-a made your pappy proud, $N.' where `entry` = 564;
update `quest_template` set `RequestItemsText` = 'The trolls truly possessed some amazing magical objects, $N. And now, perhaps, I have the opportunity to add one to my extensive collection. Did you have any luck finding the source of the rumor?' where `entry` = 578;
update `quest_template` set `OfferRewardText` = 'So the stories were true! Incredible!$B$BHowever, we will need to figure out a way to defeat the curse of the Stone of the Tides, if we are to retrieve it. The curse is magical business, we\'ll need one of those wizards to help us out.' where `entry` = 578;
update `quest_template` set `OfferRewardText` = 'My dagger? What are you, some sort of comedian?$B$BWhat? Do you just want me to repeat the story of how I\'ve gone from the best knife fighter in Booty Bay to the laughing stock of piratedom!$B$BI lost a knife fight to one of the Bloodsail Buccaneers--bunch of right bastards they are!--and he took my blade as spoils.$B$BIt\'s not as though I can get by as a knife fighter with insults and a sharp tongue alone...' where `entry` = 603;
update `quest_template` set `OfferRewardText` = 'You search the tiny, dwarven corpse. Engraved into the helmet you can clearly read: Ebenezer Rustlocke.' where `entry` = 631;
update `quest_template` set `OfferRewardText` = 'If it brings Phin peace, I\'ll destroy every single one of the Forsaken personally. He\'s done so much for us since the plague. We never thought we\'d find friends or family again.$B$BWhen you\'re prepared, come let me know. We\'ll get started right away.' where `entry` = 657;
update `quest_template` set `OfferRewardText` = 'Try and stay as quiet as possible, traveler.$B$BOrcs don\'t take too well to being spied on, and there is more to this farm than meets the eye.' where `entry` = 659;
update `quest_template` set `OfferRewardText` = 'You\'ve done a great service for us, $N. Thank you.$B$BI hope Kin wasn\'t too much of a handful down there. She\'s very friendly, but can be just as deadly when you\'re her enemy.' where `entry` = 660;
update `quest_template` set `OfferRewardText` = 'So, the two troublemakers are all right after all? Haha, I\'m glad to hear it. I thank you for bringing me news of their whereabouts and status--it pleases me greatly that they are still alive; the two of them are irreplaceable as friends and traveling companions.$B$BBut... it\'s more important I thank you properly for your help. Here. Take this along with my group\'s thanks.$B$BWith any luck, we\'ll figure out what the Forsaken are up to, and put an end to it.' where `entry` = 661;
update `quest_template` set `OfferRewardText` = 'So King Magni Bronzebeard himself sent ye?$B$BMy, my! This must be important!' where `entry` = 686;
update `quest_template` set `OfferRewardText` = 'The granite seems but a small token compared to a great dwarf\'s life. But no dwarf shall last on this planet for eternity.$B$BLet us just hope that the memorial stands as a reminder to those who will trod the great Azeroth of the future. Lest we not forget it is for them that brave soldiers such as Sully Balloo so valiantly gave their lives.' where `entry` = 700;
update `quest_template` set `Title` = 'OLD The Black Box' where `entry` = 708;
update `quest_template` set `OfferRewardText` = 'Yes? Ah\'m sorry... <cough> Feel so weak. Can ye come closer, $C?$B$BRyedol sent ye? Muradin be praised, that boy\'s not as slow in the head as I once thought. <cough>' where `entry` = 721;
update `quest_template` set `OfferRewardText` = 'You\'re treating this matter with an urgency I\'d expect from the king himself, $N.$B$BAll right, then. I know what\'ll bring the Shadowforge down.$B$BTheir presence in Uldaman can be slowed if we strike them at their base of operations: Angor Fortress.' where `entry` = 726;
update `quest_template` set `OfferRewardText` = 'This skeleton must be the unfortunate remains of Agmond. His body is broken and battered, and his bones picked clean.' where `entry` = 738;
update `quest_template` set `RequestItemsText` = 'Do you have news of Agmond\'s fate? Did you find him?' where `entry` = 739;
update `quest_template` set `OfferRewardText` = 'This is sobering news, $N. But Agmond had a strong arm and a fierce hammer-swing, and his skull was as thick as they come! Although he was killed by those cursed troggs I\'m sure he took a lot of them down with him.' where `entry` = 739;
update `quest_template` set `RequestItemsText` = 'Can I help you?' where `entry` = 863;
update `quest_template` set `OfferRewardText` = 'Hopefully we\'ll be able to get something of value from the wrecked shredder prototype... my time\'s running out! I\'ll dispatch a salvage team to Wizzlecrank\'s location on the double.$B$BOh, let me give you something for your trouble, too.' where `entry` = 863;
update `quest_template` set `OfferRewardText` = 'My brother sent you, did he? Then you must have proven yourself to him. If you have earned the respect of Jorn, then you have my respect as well.$B$BAre you ready to tread farther down the hunter\'s path?' where `entry` = 874;
update `quest_template` set `RequestItemsText` = 'More information <snort> for the Horde when you\'ve killed the Bristleback\'s wise ones, undead. <snort> Not a moment earlier! Mangletooth is no fool.' where `entry` = 878;
update `quest_template` set `OfferRewardText` = 'Yes, yes... filled with joy because finally <snort> the Bristleback know my tribe\'s pain, $R. That is how I should feel, but that <snort> is not the case.$B$BYou aid your people and they honor you. Mangletooth aids his people, and what do they do? They turn their backs on him. They forget him and leave him to rot in cage!$B$BI aid them even from locked behind bars and they send no one to save me!' where `entry` = 878;
update `quest_template` set `RequestItemsText` = 'Yes?' where `entry` = 898;
update `quest_template` set `OfferRewardText` = 'And to think, we thought Firebough was long dead!$B$BYour heroics have earned you a place of honor with the Thalo\'dan Privateers, $N.' where `entry` = 898;
update `quest_template` set `OfferRewardText` = 'Greetings, $C; I am glad you are interested in assisting our research. There is much to do, and I would be doing you a disservice if I informed you that the work this entails is not dangerous. Hopefully this will not scare you off... but from the looks of you, I take it that danger is something that you have dealt with before.' where `entry` = 936;
update `quest_template` set `RequestItemsText` = 'In truth, $N, I am afraid... Afraid that your coming--all of this--is merely a figment of a deranged mind. Can you know the torture that this is? I... Please, you must go quickly.' where `entry` = 957;
update `quest_template` set `OfferRewardText` = 'I am freed, $N! I can now see with my own eyes the changes that have come to our world... Only bits and pieces have I known. To think that when I last walked freely, the Well still stood and the Highborne held court with Azshara, our beloved queen.$B$BI sense that my jailor, my former master, Athrikus, still lives... Already my feelings of hopelessness will give way into thoughts of vengeance.' where `entry` = 957;
update `quest_template` set `RequestItemsText` = 'The Sentinels have a great need for supplies to reinforce themselves in Darkshore.' where `entry` = 976;
update `quest_template` set `OfferRewardText` = 'You have done well today, $C. The items we sent to aid Auberdine will be of immediate use in dealing with the dark threats that infest the forest.$B$BTake these with my heartfelt thanks.' where `entry` = 976;
update `quest_template` set `OfferRewardText` = 'I knew you would be up to the task, $N.$B$BI sense great deeds before you, and that you will right many of the wrongs that plague our lands. Bear my blessings, $N, as well as this gift.' where `entry` = 981;
update `quest_template` set `OfferRewardText` = 'Ah, a $C from Darkshore. Selarin has done well to send you here so quickly, $N. I wish your trip here wasn\'t under such dire stress. Perhaps with your help we can improve matters.$B$BI would start my visit by speaking to the other citizens of Astranaar. Some could surely use your aid.' where `entry` = 990;

-- NoFantasy quest text end


-- Some fire GO added
INSERT IGNORE INTO `gameobject` VALUES 
    (427, 22774, 0, -842.98, -567.454, 11.6576, 4.03591, 0, 0, 0.90168, -0.432404, 25, 0, 0),
    (6186, 22774, 0, -842.961, -568.651, 11.6733, 4.87471, 0, 0, 0.647453, -0.762105, 25, 0, 0),
    (6200, 22774, 0, -843.425, -570.095, 11.6866, 2.09754, 0, 0, 0.866811, 0.498637, 25, 0, 0),
    (6271, 22774, 0, -842.203, -569.56, 11.6769, 5.91772, 0, 0, 0.181719, -0.98335, 25, 0, 0),
    (6293, 22775, 0, -852.413, -601.029, 12.1552, 4.6864, 0, 0, 0.716235, -0.69786, 25, 0, 0),
    (6381, 22775, 0, -853.726, -601.03, 12.1552, 3.33866, 0, 0, 0.995149, -0.098374, 25, 0, 0);

-- Gnomeran redone
delete from creature_addon where guid in (select guid from creature where map=90);
delete from creature_movement where id in (select guid from creature where map=90);
delete from npc_gossip where npc_guid in (select guid from creature where map=90);
delete from gameobject where map=90;
delete from creature where map=90;
INSERT INTO `creature` VALUES ('17971','6233','90','6978','0','-560.926','311.901','-213.461','1.2258','7200','3.0','0','-560.926','311.901','-213.461','1.2258','1','0','0','1','');
INSERT INTO `creature` VALUES ('19225','6233','90','6978','0','-474.707','281.476','-211.459','4.66003','7200','3.0','0','-474.707','281.476','-211.459','4.66003','1','0','0','1','');
INSERT INTO `creature` VALUES ('23963','6233','90','6978','0','-639.608','353.948','-255.521','1.41372','7200','3.0','0','-639.608','353.948','-255.521','1.41372','1','0','0','1','');
INSERT INTO `creature` VALUES ('30114','6233','90','6978','0','-445.739','235.804','-207.823','3.83972','7200','2.0','0','-445.739','235.804','-207.823','3.83972','1','0','0','1','');
INSERT INTO `creature` VALUES ('30115','6223','90','6981','0','-511.379','263.088','-207.823','4.86947','7200','2.0','0','-511.379','263.088','-207.823','4.86947','1','0','0','1','');
INSERT INTO `creature` VALUES ('30116','6223','90','6982','0','-617.462','370.696','-247.188','2.68781','7200','3.0','0','-617.462','370.696','-247.188','2.68781','1','0','0','1','');
INSERT INTO `creature` VALUES ('30117','6233','90','6978','0','-538.958','299.669','-213.308','4.88692','7200','3.0','0','-538.958','299.669','-213.308','4.88692','1','0','0','1','');
INSERT INTO `creature` VALUES ('30118','6233','90','6978','0','-517.389','262.573','-207.823','5.55015','7200','2.0','0','-517.389','262.573','-207.823','5.55015','1','0','0','1','');
INSERT INTO `creature` VALUES ('30119','6233','90','6978','0','-473.89','262.926','-207.823','0.645772','7200','3.0','0','-473.89','262.926','-207.823','0.645772','1','0','0','1','');
INSERT INTO `creature` VALUES ('30120','6233','90','6978','0','-451.578','254.518','-207.823','1.37881','7200','2.0','0','-451.578','254.518','-207.823','1.37881','1','0','0','1','');
INSERT INTO `creature` VALUES ('30121','6229','90','6774','0','-889.137','360.668','-272.513','6.24828','43200','6.0','0','-889.137','360.668','-272.513','6.24828','1','0','0','0','');
INSERT INTO `creature` VALUES ('30122','6224','90','6936','0','-592.17','675.474','-326.956','2.68781','7200','2.0','0','-592.17','675.474','-326.956','2.68781','1','0','0','1','');
INSERT INTO `creature` VALUES ('30123','6234','90','6979','0','-733.908','539.547','-291.06','6.05298','7200','2.0','0','-733.908','539.547','-291.06','6.05298','1','0','0','1','');
INSERT INTO `creature` VALUES ('30124','6212','90','3456','0','-743.592','584.593','-290.977','5.25344','7200','6.0','0','-743.592','584.593','-290.977','5.25344','1','0','0','0','');
INSERT INTO `creature` VALUES ('30125','6212','90','3456','0','-626.563','695.14','-326.978','1.39626','7200','3.0','0','-626.563','695.14','-326.978','1.39626','1','0','0','1','');
INSERT INTO `creature` VALUES ('30126','6234','90','6979','0','-751.043','599.917','-304.005','5.5676','7200','2.0','0','-751.043','599.917','-304.005','5.5676','1','0','0','1','');
INSERT INTO `creature` VALUES ('30127','6212','90','3456','0','-705.796','692.904','-317.977','2.26893','7200','6.0','0','-705.796','692.904','-317.977','2.26893','1','0','0','0','');
INSERT INTO `creature` VALUES ('30128','6234','90','6979','0','-672.532','539.306','-285.699','0.610865','7200','3.0','0','-672.532','539.306','-285.699','0.610865','1','0','0','1','');
INSERT INTO `creature` VALUES ('30129','6212','90','3456','0','-708.767','693.423','-317.977','5.5676','7200','6.0','0','-708.767','693.423','-317.977','5.5676','1','0','0','0','');
INSERT INTO `creature` VALUES ('30130','6234','90','6979','0','-591.665','689.392','-326.961','2.98451','7200','5.0','0','-591.665','689.392','-326.961','2.98451','1','0','0','1','');
INSERT INTO `creature` VALUES ('30131','6212','90','3456','0','-731.227','710.28','-317.977','2.42601','7200','2.0','0','-731.227','710.28','-317.977','2.42601','1','0','0','1','');
INSERT INTO `creature` VALUES ('30132','6212','90','3456','0','-718.106','565.242','-289.116','6.03311','7200','6.0','0','-718.106','565.242','-289.116','6.03311','1','0','0','0','');
INSERT INTO `creature` VALUES ('30133','6235','90','6915','0','-552.048','502.902','-216.727','5.75959','43200','5.0','0','-552.048','502.902','-216.727','5.75959','1','0','0','1','');
INSERT INTO `creature` VALUES ('30134','7897','90','6888','0','-560.593','147.863','-202.15','1.34477','7200','2.0','0','-560.593','147.863','-202.15','1.34477','1','0','0','2','');
INSERT INTO `creature` VALUES ('30135','7850','90','7132','0','-639.869','71.6499','-183.184','2.47837','7200','6.0','0','-639.869','71.6499','-183.184','2.47837','1','0','0','0','');
INSERT INTO `creature` VALUES ('30136','7998','90','7138','0','-514.935','-138.544','-152.399','1.65806','7200','6.0','0','-514.935','-138.544','-152.399','1.65806','1','0','0','0','');
INSERT INTO `creature` VALUES ('30137','7079','90','5497','0','-430.182','42.5239','-208.719','0.207327','43200','5.0','0','-430.182','42.5239','-208.719','0.207327','1','0','0','1','');
INSERT INTO `creature` VALUES ('30138','13876','90','11686','0','-617.377','715.521','-326.969','2.67035','7200','5.0','0','-617.377','715.521','-326.969','2.67035','1','0','0','1','');
INSERT INTO `creature` VALUES ('30139','7800','90','6980','0','-531.324','670.159','-325.185','2.9147','43200','6.0','0','-531.324','670.159','-325.185','2.9147','1','0','0','0','');
INSERT INTO `creature` VALUES ('30140','7849','90','6888','0','-446.134','224.381','-207.907','4.68705','7200','5.0','0','-446.134','224.381','-207.907','4.68705','1','0','0','1','');
INSERT INTO `creature` VALUES ('30141','7849','90','6888','0','-759.105','399.505','-272.578','4.93887','7200','5.0','0','-759.105','399.505','-272.578','4.93887','1','0','0','1','');
INSERT INTO `creature` VALUES ('30142','7849','90','6888','0','-428.066','223.896','-211.543','4.84694','7200','5.0','0','-428.066','223.896','-211.543','4.84694','1','0','0','1','');
INSERT INTO `creature` VALUES ('30143','7849','90','6888','0','-738.311','655.926','-321.81','3.69665','7200','5.0','0','-738.311','655.926','-321.81','3.69665','1','0','0','2','');
INSERT INTO `creature` VALUES ('30144','7849','90','6888','0','-804.261','531.519','-297.366','0.629426','7200','5.0','0','-804.261','531.519','-297.366','0.629426','1','0','0','1','');
INSERT INTO `creature` VALUES ('30145','6219','90','11137','0','-392.84','66.0599','-209.767','5.11381','7200','5.0','0','-392.84','66.0599','-209.767','5.11381','1','0','0','1','');
INSERT INTO `creature` VALUES ('30146','6218','90','358','0','-373.518','131.856','-208.89','3.52556','7200','5.0','0','-373.518','131.856','-208.89','3.52556','1','0','0','1','');
INSERT INTO `creature` VALUES ('30147','6220','90','4907','0','-472.186','67.6719','-208.471','4.62512','7200','5.0','0','-472.186','67.6719','-208.471','4.62512','1','0','0','1','');
INSERT INTO `creature` VALUES ('30148','6218','90','358','0','-456.826','92.256','-210.002','3.59538','7200','5.0','0','-456.826','92.256','-210.002','3.59538','1','0','0','1','');
INSERT INTO `creature` VALUES ('30149','6220','90','4907','0','-444.961','174.409','-208.732','3.26377','7200','5.0','0','-444.961','174.409','-208.732','3.26377','1','0','0','1','');
INSERT INTO `creature` VALUES ('30150','6219','90','11137','0','-409.443','73.7753','-211.022','5.75959','7200','5.0','0','-409.443','73.7753','-211.022','5.75959','1','0','0','1','');
INSERT INTO `creature` VALUES ('30151','6220','90','4907','0','-380.697','97.865','-210.394','3.05433','7200','5.0','0','-380.697','97.865','-210.394','3.05433','1','0','0','1','');
INSERT INTO `creature` VALUES ('30152','6218','90','358','0','-497.661','130.632','-209.168','3.9619','7200','5.0','0','-497.661','130.632','-209.168','3.9619','1','0','0','1','');
INSERT INTO `creature` VALUES ('30153','6219','90','11137','0','-472.893','49.6316','-207.855','0.282745','7200','3.0','0','-472.893','49.6316','-207.855','0.282745','1','0','0','1','');
INSERT INTO `creature` VALUES ('30154','6220','90','4907','0','-452.865','118.505','-210.293','4.93928','7200','5.0','0','-452.865','118.505','-210.293','4.93928','1','0','0','1','');
INSERT INTO `creature` VALUES ('30155','6206','90','830','0','-570.635','80.1587','-204.094','3.735','7200','5.0','0','-570.635','80.1587','-204.094','3.735','1','0','0','1','');
INSERT INTO `creature` VALUES ('30156','6206','90','830','0','-619.84','58.4296','-199.565','3.1765','7200','5.0','0','-619.84','58.4296','-199.565','3.1765','1','0','0','1','');
INSERT INTO `creature` VALUES ('30157','6329','90','976','0','-642.76','76.9467','-183.17','0.890118','7200','2.0','0','-642.76','76.9467','-183.17','0.890118','1','0','0','1','');
INSERT INTO `creature` VALUES ('30158','6211','90','10285','0','-598.314','201.79','-169.966','0.907571','7200','6.0','0','-598.314','201.79','-169.966','0.907571','1','0','0','0','');
INSERT INTO `creature` VALUES ('30159','6329','90','976','0','-588.034','18.7032','-179.596','5.51524','7200','3.0','0','-588.034','18.7032','-179.596','5.51524','1','0','0','1','');
INSERT INTO `creature` VALUES ('30160','6329','90','976','0','-550.351','137.763','-202.068','5.48033','7200','5.0','0','-550.351','137.763','-202.068','5.48033','1','0','0','1','');
INSERT INTO `creature` VALUES ('30161','6329','90','976','0','-634.547','73.0335','-195.492','5.06145','7200','3.0','0','-634.547','73.0335','-195.492','5.06145','1','0','0','1','');
INSERT INTO `creature` VALUES ('30162','6329','90','976','0','-636.738','135.03','-183.794','0.139626','7200','3.0','0','-636.738','135.03','-183.794','0.139626','1','0','0','1','');
INSERT INTO `creature` VALUES ('30163','6329','90','976','0','-540.361','33.9657','-196.964','0.122173','7200','2.0','0','-540.361','33.9657','-196.964','0.122173','1','0','0','1','');
INSERT INTO `creature` VALUES ('30164','6206','90','830','0','-573.965','77.0107','-203.874','5.88176','7200','5.0','0','-573.965','77.0107','-203.874','5.88176','1','0','0','1','');
INSERT INTO `creature` VALUES ('30165','6222','90','6933','0','-613.609','433.56','-230.601','4.0887','7200','2.0','0','-613.609','433.56','-230.601','4.0887','1','0','0','1','');
INSERT INTO `creature` VALUES ('30166','7603','90','6968','0','-474.927','443.173','-230.518','3.15905','7200','5.0','0','-474.927','443.173','-230.518','3.15905','1','0','0','1','');
INSERT INTO `creature` VALUES ('30167','7603','90','6968','0','-480.313','440.908','-230.518','1.76278','7200','2.0','0','-480.313','440.908','-230.518','1.76278','1','0','0','1','');
INSERT INTO `creature` VALUES ('30168','7603','90','6968','0','-481.016','430.803','-230.518','2.33874','7200','2.0','0','-481.016','430.803','-230.518','2.33874','1','0','0','1','');
INSERT INTO `creature` VALUES ('30169','7603','90','6967','0','-486.311','435.922','-230.518','0.0','7200','2.0','0','-486.311','435.922','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30170','6233','90','6978','0','-472.927','439.53','-230.518','1.11701','7200','2.0','0','-472.927','439.53','-230.518','1.11701','1','0','0','1','');
INSERT INTO `creature` VALUES ('30171','6225','90','5926','0','-539.224','556.1','-273.08','4.43745','7200','5.0','0','-539.224','556.1','-273.08','4.43745','1','0','0','1','');
INSERT INTO `creature` VALUES ('30172','6222','90','6932','0','-634.829','441.079','-273.063','0.601507','7200','6.0','0','-634.829','441.079','-273.063','0.601507','1','0','0','0','');
INSERT INTO `creature` VALUES ('30173','6222','90','6932','0','-586.3','596.17','-230.601','1.44707','7200','6.0','0','-586.3','596.17','-230.601','1.44707','1','0','0','0','');
INSERT INTO `creature` VALUES ('30174','6225','90','5926','0','-503.192','479.869','-273.08','5.01041','7200','5.0','0','-503.192','479.869','-273.08','5.01041','1','0','0','1','');
INSERT INTO `creature` VALUES ('30175','7603','90','6967','0','-464.858','487.472','-230.601','0.360909','7200','2.0','0','-464.858','487.472','-230.601','0.360909','1','0','0','1','');
INSERT INTO `creature` VALUES ('30176','7603','90','6967','0','-469.306','480.047','-230.602','3.47808','7200','2.0','0','-469.306','480.047','-230.602','3.47808','1','0','0','1','');
INSERT INTO `creature` VALUES ('30177','7603','90','6967','0','-473.96','471.998','-230.518','3.85718','7200','2.0','0','-473.96','471.998','-230.518','3.85718','1','0','0','1','');
INSERT INTO `creature` VALUES ('30178','7603','90','6967','0','-469.989','486.403','-230.602','5.99827','7200','2.0','0','-469.989','486.403','-230.602','5.99827','1','0','0','1','');
INSERT INTO `creature` VALUES ('30179','6233','90','6978','0','-466.97','475.331','-230.601','5.81475','7200','2.0','0','-466.97','475.331','-230.601','5.81475','1','0','0','1','');
INSERT INTO `creature` VALUES ('30180','7603','90','6967','0','-504.026','592.853','-230.518','4.5204','7200','2.0','0','-504.026','592.853','-230.518','4.5204','1','0','0','1','');
INSERT INTO `creature` VALUES ('30181','7603','90','6967','0','-503.62','588.685','-230.518','0.0','7200','5.0','0','-503.62','588.685','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30182','7603','90','6967','0','-498.561','589.783','-230.518','5.07891','7200','2.0','0','-498.561','589.783','-230.518','5.07891','1','0','0','1','');
INSERT INTO `creature` VALUES ('30183','7603','90','6968','0','-505.002','596.776','-230.601','3.60776','7200','2.0','0','-505.002','596.776','-230.601','3.60776','1','0','0','1','');
INSERT INTO `creature` VALUES ('30184','6222','90','6932','0','-493.585','591.612','-230.517','1.0821','7200','2.0','0','-493.585','591.612','-230.517','1.0821','1','0','0','1','');
INSERT INTO `creature` VALUES ('30185','6222','90','6933','0','-505.07','482.81','-273.08','6.21937','7200','2.0','0','-505.07','482.81','-273.08','6.21937','1','0','0','1','');
INSERT INTO `creature` VALUES ('30186','6230','90','8369','0','-503.135','582.624','-230.601','2.74118','7200','2.0','0','-503.135','582.624','-230.601','2.74118','1','0','0','1','');
INSERT INTO `creature` VALUES ('30187','7603','90','6968','0','-860.153','328.662','-316.413','1.86721','7200','3.0','0','-860.153','328.662','-316.413','1.86721','1','0','0','1','');
INSERT INTO `creature` VALUES ('30188','7603','90','6967','0','-860.844','330.92','-316.433','1.86691','7200','3.0','0','-860.844','330.92','-316.433','1.86691','1','0','0','1','');
INSERT INTO `creature` VALUES ('30189','7603','90','6968','0','-855.923','319.543','-316.408','5.21929','7200','3.0','0','-855.923','319.543','-316.408','5.21929','1','0','0','1','');
INSERT INTO `creature` VALUES ('30190','7603','90','6968','0','-858.642','320.32','-316.407','5.21926','7200','3.0','0','-858.642','320.32','-316.407','5.21926','1','0','0','1','');
INSERT INTO `creature` VALUES ('30191','6233','90','6978','0','-859.42','317.601','-316.407','5.21927','7200','5.0','0','-859.42','317.601','-316.407','5.21927','1','0','0','1','');
INSERT INTO `creature` VALUES ('30192','6224','90','6936','0','-768.453','349.162','-272.596','4.49674','7200','2.0','0','-768.453','349.162','-272.596','4.49674','1','0','0','1','');
INSERT INTO `creature` VALUES ('30193','6227','90','6891','0','-811.979','179.635','-273.079','1.09651','7200','3.0','0','-811.979','179.635','-273.079','1.09651','1','0','0','1','');
INSERT INTO `creature` VALUES ('30194','7603','90','6968','0','-816.426','101.189','-264.648','0.139626','7200','2.0','0','-816.426','101.189','-264.648','0.139626','1','0','0','1','');
INSERT INTO `creature` VALUES ('30195','7603','90','6967','0','-806.775','99.9191','-264.648','4.92183','7200','2.0','0','-806.775','99.9191','-264.648','4.92183','1','0','0','1','');
INSERT INTO `creature` VALUES ('30196','7603','90','6967','0','-810.912','95.8048','-264.648','3.85718','7200','2.0','0','-810.912','95.8048','-264.648','3.85718','1','0','0','1','');
INSERT INTO `creature` VALUES ('30197','7603','90','6968','0','-811.106','103.936','-264.648','1.41372','7200','2.0','0','-811.106','103.936','-264.648','1.41372','1','0','0','1','');
INSERT INTO `creature` VALUES ('30198','6224','90','6936','0','-811.597','100.217','-264.648','6.03884','7200','2.0','0','-811.597','100.217','-264.648','6.03884','1','0','0','1','');
INSERT INTO `creature` VALUES ('30199','7603','90','6968','0','-763.268','346.868','-272.596','5.02194','7200','2.0','0','-763.268','346.868','-272.596','5.02194','1','0','0','1','');
INSERT INTO `creature` VALUES ('30200','7603','90','6968','0','-761.55','355.004','-272.596','4.64483','7200','2.0','0','-761.55','355.004','-272.596','4.64483','1','0','0','1','');
INSERT INTO `creature` VALUES ('30201','7603','90','6967','0','-756.644','340.992','-272.596','1.35328','7200','2.0','0','-756.644','340.992','-272.596','1.35328','1','0','0','1','');
INSERT INTO `creature` VALUES ('30202','7603','90','6967','0','-761.42','345.627','-272.596','4.43788','7200','2.0','0','-761.42','345.627','-272.596','4.43788','1','0','0','1','');
INSERT INTO `creature` VALUES ('30203','6233','90','6978','0','-758.589','358.368','-272.513','0.0','7200','5.0','0','-758.589','358.368','-272.513','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30204','6224','90','6936','0','-768.508','347.22','-272.596','1.75239','7200','2.0','0','-768.508','347.22','-272.596','1.75239','1','0','0','1','');
INSERT INTO `creature` VALUES ('30205','6224','90','6936','0','-798.383','192.561','-273.081','3.77095','7200','5.0','0','-798.383','192.561','-273.081','3.77095','1','0','0','1','');
INSERT INTO `creature` VALUES ('30206','6233','90','6978','0','-766.442','53.0244','-256.694','4.72984','7200','2.0','0','-766.442','53.0244','-256.694','4.72984','1','0','0','1','');
INSERT INTO `creature` VALUES ('30207','6227','90','6891','0','-876.693','363.197','-316.433','4.18204','7200','3.0','0','-876.693','363.197','-316.433','4.18204','1','0','0','1','');
INSERT INTO `creature` VALUES ('30208','7603','90','6968','0','-824.891','419.662','-272.513','0.383972','7200','2.0','0','-824.891','419.662','-272.513','0.383972','1','0','0','1','');
INSERT INTO `creature` VALUES ('30209','7603','90','6967','0','-820.316','421.994','-272.513','0.0','7200','2.0','0','-820.316','421.994','-272.513','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30210','7603','90','6968','0','-833.532','415.708','-272.513','2.25148','7200','2.0','0','-833.532','415.708','-272.513','2.25148','1','0','0','1','');
INSERT INTO `creature` VALUES ('30211','7603','90','6968','0','-829.622','421.078','-272.513','4.90438','7200','2.0','0','-829.622','421.078','-272.513','4.90438','1','0','0','1','');
INSERT INTO `creature` VALUES ('30212','6233','90','6978','0','-834.252','423.218','-272.513','1.309','7200','3.0','0','-834.252','423.218','-272.513','1.309','1','0','0','1','');
INSERT INTO `creature` VALUES ('30213','6207','90','764','0','-367.842','79.4234','-154.728','4.66982','7200','5.0','0','-367.842','79.4234','-154.728','4.66982','1','0','0','1','');
INSERT INTO `creature` VALUES ('30214','6207','90','764','0','-546.168','216.54','-156.761','2.42968','7200','2.0','0','-546.168','216.54','-156.761','2.42968','1','0','0','1','');
INSERT INTO `creature` VALUES ('30215','6207','90','764','0','-606.302','124.539','-188.085','3.02382','7200','6.0','0','-606.302','124.539','-188.085','3.02382','1','0','0','0','');
INSERT INTO `creature` VALUES ('30216','6207','90','764','0','-509.529','100.519','-154.744','5.60004','7200','5.0','0','-509.529','100.519','-154.744','5.60004','1','0','0','2','');
INSERT INTO `creature` VALUES ('30217','6207','90','764','0','-508.743','36.3295','-156.485','0.787366','7200','5.0','0','-508.743','36.3295','-156.485','0.787366','1','0','0','1','');
INSERT INTO `creature` VALUES ('30218','6207','90','764','0','-583.11','82.3299','-202.996','4.52782','7200','5.0','0','-583.11','82.3299','-202.996','4.52782','1','0','0','1','');
INSERT INTO `creature` VALUES ('30219','6206','90','830','0','-455.935','178.529','-154.66','3.66519','7200','5.0','0','-455.935','178.529','-154.66','3.66519','1','0','0','1','');
INSERT INTO `creature` VALUES ('30220','6329','90','976','0','-558.493','172.266','-155.153','2.11185','7200','6.0','0','-558.493','172.266','-155.153','2.11185','1','0','0','0','');
INSERT INTO `creature` VALUES ('30221','6329','90','976','0','-507.402','78.9238','-154.669','2.1293','7200','5.0','0','-507.402','78.9238','-154.669','2.1293','1','0','0','1','');
INSERT INTO `creature` VALUES ('30222','6329','90','976','0','-463.033','110.822','-151.173','3.08923','7200','6.0','0','-463.033','110.822','-151.173','3.08923','1','0','0','0','');
INSERT INTO `creature` VALUES ('30223','6329','90','976','0','-468.348','177.182','-154.653','6.0912','7200','5.0','0','-468.348','177.182','-154.653','6.0912','1','0','0','1','');
INSERT INTO `creature` VALUES ('30224','6329','90','976','0','-554.399','169.332','-155.153','1.01229','7200','6.0','0','-554.399','169.332','-155.153','1.01229','1','0','0','0','');
INSERT INTO `creature` VALUES ('30225','6329','90','976','0','-436.441','122.539','-156.443','6.23082','7200','6.0','0','-436.441','122.539','-156.443','6.23082','1','0','0','0','');
INSERT INTO `creature` VALUES ('30226','6329','90','976','0','-532.052','164.641','-155.236','2.6529','7200','3.0','0','-532.052','164.641','-155.236','2.6529','1','0','0','2','');
INSERT INTO `creature` VALUES ('30227','6329','90','976','0','-367.322','126.659','-154.66','3.40339','7200','3.0','0','-367.322','126.659','-154.66','3.40339','1','0','0','1','');
INSERT INTO `creature` VALUES ('30228','6329','90','976','0','-524.084','17.8809','-156.404','2.87979','7200','3.0','0','-524.084','17.8809','-156.404','2.87979','1','0','0','1','');
INSERT INTO `creature` VALUES ('30229','9676','90','9027','0','-559.508','195.829','-193.647','5.93412','7200','6.0','0','-559.508','195.829','-193.647','5.93412','1','0','0','0','');
INSERT INTO `creature` VALUES ('30230','6407','90','6629','0','-492.279','195.693','-193.619','1.43117','7200','6.0','0','-492.279','195.693','-193.619','1.43117','1','0','0','0','');
INSERT INTO `creature` VALUES ('30231','6407','90','6629','0','-491.399','198.038','-193.618','4.08407','7200','6.0','0','-491.399','198.038','-193.618','4.08407','1','0','0','0','');
INSERT INTO `creature` VALUES ('30232','6392','90','6608','0','-563.7','183.698','-193.653','3.36848','7200','6.0','0','-563.7','183.698','-193.653','3.36848','1','0','0','0','');
INSERT INTO `creature` VALUES ('30233','6391','90','6610','0','-549.924','170.193','-193.654','4.45059','7200','6.0','0','-549.924','170.193','-193.654','4.45059','1','0','0','0','');
INSERT INTO `creature` VALUES ('30234','6392','90','6609','0','-517.134','178.266','-193.638','6.16101','7200','6.0','0','-517.134','178.266','-193.638','6.16101','1','0','0','0','');
INSERT INTO `creature` VALUES ('30235','6391','90','6611','0','-531.838','207.829','-193.631','0.645772','7200','6.0','0','-531.838','207.829','-193.631','0.645772','1','0','0','0','');
INSERT INTO `creature` VALUES ('30236','6392','90','6608','0','-566.097','182.016','-193.654','0.715585','7200','6.0','0','-566.097','182.016','-193.654','0.715585','1','0','0','0','');
INSERT INTO `creature` VALUES ('30237','6391','90','6611','0','-526.82','202.067','-193.631','0.907571','7200','6.0','0','-526.82','202.067','-193.631','0.907571','1','0','0','0','');
INSERT INTO `creature` VALUES ('30238','6407','90','6628','0','-565.122','184.7','-193.653','5.06145','7200','6.0','0','-565.122','184.7','-193.653','5.06145','1','0','0','0','');
INSERT INTO `creature` VALUES ('30239','6233','90','6978','0','-432.397','238.449','-211.538','4.7055','7200','2.0','0','-432.397','238.449','-211.538','4.7055','1','0','0','1','');
INSERT INTO `creature` VALUES ('30240','6233','90','6978','0','-516.385','281.052','-211.46','5.95157','7200','5.0','0','-516.385','281.052','-211.46','5.95157','1','0','0','1','');
INSERT INTO `creature` VALUES ('30241','6223','90','6981','0','-549.057','278.595','-207.931','4.79965','7200','2.0','0','-549.057','278.595','-207.931','4.79965','1','0','0','1','');
INSERT INTO `creature` VALUES ('30242','6223','90','6982','0','-490.481','272.661','-211.014','5.72468','7200','6.0','0','-490.481','272.661','-211.014','5.72468','1','0','0','0','');
INSERT INTO `creature` VALUES ('30243','6223','90','6982','0','-468.047','262.68','-207.823','4.2237','7200','2.0','0','-468.047','262.68','-207.823','4.2237','1','0','0','1','');
INSERT INTO `creature` VALUES ('30244','6233','90','6978','0','-545.239','274.565','-207.823','4.39823','7200','3.0','0','-545.239','274.565','-207.823','4.39823','1','0','0','1','');
INSERT INTO `creature` VALUES ('30245','6233','90','6978','0','-423.485','226.97','-211.55','4.7026','7200','2.0','0','-423.485','226.97','-211.55','4.7026','1','0','0','1','');
INSERT INTO `creature` VALUES ('30246','6233','90','6978','0','-455.033','257.621','-207.823','0.122173','7200','5.0','0','-455.033','257.621','-207.823','0.122173','1','0','0','1','');
INSERT INTO `creature` VALUES ('30247','6223','90','6982','0','-555.465','369.512','-231.596','5.51524','7200','5.0','0','-555.465','369.512','-231.596','5.51524','1','0','0','1','');
INSERT INTO `creature` VALUES ('30248','6233','90','6978','0','-446.372','233.008','-207.908','4.77612','7200','2.0','0','-446.372','233.008','-207.908','4.77612','1','0','0','1','');
INSERT INTO `creature` VALUES ('30249','6212','90','3456','0','-770.363','594.709','-290.977','2.68781','7200','2.0','0','-770.363','594.709','-290.977','2.68781','1','0','0','1','');
INSERT INTO `creature` VALUES ('30250','6212','90','3456','0','-739.926','655.718','-321.699','3.28122','7200','3.0','0','-739.926','655.718','-321.699','3.28122','1','0','0','1','');
INSERT INTO `creature` VALUES ('30251','6224','90','6936','0','-592.591','684.311','-326.979','2.87979','7200','2.0','0','-592.591','684.311','-326.979','2.87979','1','0','0','1','');
INSERT INTO `creature` VALUES ('30252','6212','90','3456','0','-643.658','531.464','-272.977','2.16421','7200','3.0','0','-643.658','531.464','-272.977','2.16421','1','0','0','1','');
INSERT INTO `creature` VALUES ('30253','6234','90','6979','0','-629.39','688.504','-326.973','0.314159','7200','6.0','0','-629.39','688.504','-326.973','0.314159','1','0','0','0','');
INSERT INTO `creature` VALUES ('30254','6232','90','6889','0','-735.933','556.045','-303.699','0.034907','7200','3.0','0','-735.933','556.045','-303.699','0.034907','1','0','0','1','');
INSERT INTO `creature` VALUES ('30255','6232','90','6889','0','-762.838','625.098','-299.977','2.86234','7200','2.0','0','-762.838','625.098','-299.977','2.86234','1','0','0','1','');
INSERT INTO `creature` VALUES ('30256','6232','90','6889','0','-626.68','702.281','-326.978','2.30383','7200','6.0','0','-626.68','702.281','-326.978','2.30383','1','0','0','0','');
INSERT INTO `creature` VALUES ('30257','6224','90','6936','0','-590.177','681.183','-326.956','2.82743','7200','2.0','0','-590.177','681.183','-326.956','2.82743','1','0','0','1','');
INSERT INTO `creature` VALUES ('30258','6234','90','6979','0','-753.224','655.041','-308.977','5.2709','7200','3.0','0','-753.224','655.041','-308.977','5.2709','1','0','0','1','');
INSERT INTO `creature` VALUES ('30259','6218','90','358','0','-409.037','107.892','-210.274','4.24115','7200','5.0','0','-409.037','107.892','-210.274','4.24115','1','0','0','1','');
INSERT INTO `creature` VALUES ('30260','6220','90','4907','0','-398.085','137.244','-210.625','5.39307','7200','5.0','0','-398.085','137.244','-210.625','5.39307','1','0','0','1','');
INSERT INTO `creature` VALUES ('30261','6218','90','358','0','-475.912','108.416','-210.486','2.47837','7200','5.0','0','-475.912','108.416','-210.486','2.47837','1','0','0','1','');
INSERT INTO `creature` VALUES ('30262','6220','90','4907','0','-477.542','165.387','-208.442','4.95674','7200','5.0','0','-477.542','165.387','-208.442','4.95674','1','0','0','1','');
INSERT INTO `creature` VALUES ('30263','6218','90','358','0','-407.507','159.097','-209.509','6.19592','7200','5.0','0','-407.507','159.097','-209.509','6.19592','1','0','0','1','');
INSERT INTO `creature` VALUES ('30264','6219','90','11137','0','-430.123','94.1727','-209.397','4.20624','7200','5.0','0','-430.123','94.1727','-209.397','4.20624','1','0','0','1','');
INSERT INTO `creature` VALUES ('30265','6219','90','11137','0','-491.239','82.373','-206.368','0.750492','7200','5.0','0','-491.239','82.373','-206.368','0.750492','1','0','0','1','');
INSERT INTO `creature` VALUES ('30266','6218','90','358','0','-401.565','51.417','-209.094','3.66783','7200','3.0','0','-401.565','51.417','-209.094','3.66783','1','0','0','1','');
INSERT INTO `creature` VALUES ('30267','6218','90','358','0','-429.852','137.976','-211.669','1.29154','7200','5.0','0','-429.852','137.976','-211.669','1.29154','1','0','0','1','');
INSERT INTO `creature` VALUES ('30268','6329','90','976','0','-601.919','197.694','-171.666','4.60767','7200','2.0','0','-601.919','197.694','-171.666','4.60767','1','0','0','1','');
INSERT INTO `creature` VALUES ('30269','6206','90','830','0','-632.206','125.874','-183.795','0.436332','7200','3.0','0','-632.206','125.874','-183.795','0.436332','1','0','0','1','');
INSERT INTO `creature` VALUES ('30270','6211','90','10285','0','-569.119','119.554','-201.877','4.15388','7200','5.0','0','-569.119','119.554','-201.877','4.15388','1','0','0','1','');
INSERT INTO `creature` VALUES ('30271','6211','90','10285','0','-534.307','121.363','-204.515','1.83548','7200','2.0','0','-534.307','121.363','-204.515','1.83548','1','0','0','1','');
INSERT INTO `creature` VALUES ('30272','6211','90','10285','0','-612.973','143.538','-199.573','0.820305','7200','5.0','0','-612.973','143.538','-199.573','0.820305','1','0','0','1','');
INSERT INTO `creature` VALUES ('30273','6211','90','10285','0','-542.011','44.5614','-200.109','0.174533','7200','2.0','0','-542.011','44.5614','-200.109','0.174533','1','0','0','1','');
INSERT INTO `creature` VALUES ('30274','6206','90','830','0','-571.131','114.998','-201.73','1.74533','7200','5.0','0','-571.131','114.998','-201.73','1.74533','1','0','0','1','');
INSERT INTO `creature` VALUES ('30275','6211','90','10285','0','-536.721','40.5053','-199.526','3.92699','7200','2.0','0','-536.721','40.5053','-199.526','3.92699','1','0','0','1','');
INSERT INTO `creature` VALUES ('30276','6211','90','10285','0','-591.135','25.0292','-179.599','1.06465','7200','3.0','0','-591.135','25.0292','-179.599','1.06465','1','0','0','1','');
INSERT INTO `creature` VALUES ('30277','6329','90','976','0','-556.832','96.8535','-201.481','2.21657','7200','2.0','0','-556.832','96.8535','-201.481','2.21657','1','0','0','1','');
INSERT INTO `creature` VALUES ('30278','6230','90','8369','0','-531.531','481.758','-273.068','0.901391','7200','5.0','0','-531.531','481.758','-273.068','0.901391','1','0','0','1','');
INSERT INTO `creature` VALUES ('30279','6230','90','8369','0','-587.104','508.355','-273.063','5.89842','7200','5.0','0','-587.104','508.355','-273.063','5.89842','1','0','0','1','');
INSERT INTO `creature` VALUES ('30280','7603','90','6967','0','-552.396','597.662','-230.601','5.71414','7200','2.0','0','-552.396','597.662','-230.601','5.71414','1','0','0','1','');
INSERT INTO `creature` VALUES ('30281','7603','90','6968','0','-554.885','600.666','-230.601','0.612689','7200','2.0','0','-554.885','600.666','-230.601','0.612689','1','0','0','1','');
INSERT INTO `creature` VALUES ('30282','7603','90','6967','0','-544.425','597.219','-230.518','0.0','7200','2.0','0','-544.425','597.219','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30283','7603','90','6967','0','-549.483','604.408','-230.601','1.01299','7200','2.0','0','-549.483','604.408','-230.601','1.01299','1','0','0','1','');
INSERT INTO `creature` VALUES ('30284','6233','90','6978','0','-547.883','600.839','-230.518','0.279253','7200','2.0','0','-547.883','600.839','-230.518','0.279253','1','0','0','1','');
INSERT INTO `creature` VALUES ('30285','6225','90','5926','0','-605.78','507.486','-273.063','2.93658','7200','6.0','0','-605.78','507.486','-273.063','2.93658','1','0','0','0','');
INSERT INTO `creature` VALUES ('30286','6225','90','5926','0','-538.906','449.608','-273.08','4.82357','7200','5.0','0','-538.906','449.608','-273.08','4.82357','1','0','0','1','');
INSERT INTO `creature` VALUES ('30287','6225','90','5926','0','-584.71','548.082','-273.078','1.99953','7200','5.0','0','-584.71','548.082','-273.078','1.99953','1','0','0','1','');
INSERT INTO `creature` VALUES ('30288','7603','90','6968','0','-596.179','418.708','-230.518','4.97419','7200','2.0','0','-596.179','418.708','-230.518','4.97419','1','0','0','1','');
INSERT INTO `creature` VALUES ('30289','7603','90','6968','0','-603.907','422.628','-230.518','3.42085','7200','2.0','0','-603.907','422.628','-230.518','3.42085','1','0','0','1','');
INSERT INTO `creature` VALUES ('30290','7603','90','6968','0','-595.935','423.398','-230.518','0.0','7200','2.0','0','-595.935','423.398','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30291','7603','90','6967','0','-601.673','418.79','-230.518','3.92699','7200','2.0','0','-601.673','418.79','-230.518','3.92699','1','0','0','1','');
INSERT INTO `creature` VALUES ('30292','6222','90','6935','0','-600.478','425.647','-230.518','5.3058','7200','2.0','0','-600.478','425.647','-230.518','5.3058','1','0','0','1','');
INSERT INTO `creature` VALUES ('30293','6225','90','5926','0','-586.658','464.285','-273.081','4.12239','7200','5.0','0','-586.658','464.285','-273.081','4.12239','1','0','0','1','');
INSERT INTO `creature` VALUES ('30294','6222','90','6932','0','-468.093','468.025','-230.601','5.24667','7200','2.0','0','-468.093','468.025','-230.601','5.24667','1','0','0','1','');
INSERT INTO `creature` VALUES ('30295','6222','90','6933','0','-502.385','483.743','-273.08','6.06902','7200','5.0','0','-502.385','483.743','-273.08','6.06902','1','0','0','1','');
INSERT INTO `creature` VALUES ('30296','6224','90','6936','0','-838.863','289.553','-272.606','3.08878','7200','2.0','0','-838.863','289.553','-272.606','3.08878','1','0','0','1','');
INSERT INTO `creature` VALUES ('30297','7603','90','6968','0','-812.808','161.384','-271.228','3.61283','7200','3.0','0','-812.808','161.384','-271.228','3.61283','1','0','0','1','');
INSERT INTO `creature` VALUES ('30298','7603','90','6967','0','-810.541','167.407','-272.674','0.418879','7200','3.0','0','-810.541','167.407','-272.674','0.418879','1','0','0','1','');
INSERT INTO `creature` VALUES ('30299','7603','90','6968','0','-814.707','172.722','-272.996','0.20944','7200','3.0','0','-814.707','172.722','-272.996','0.20944','1','0','0','1','');
INSERT INTO `creature` VALUES ('30300','7603','90','6967','0','-814.842','167.411','-272.673','6.12611','7200','3.0','0','-814.842','167.411','-272.673','6.12611','1','0','0','1','');
INSERT INTO `creature` VALUES ('30301','6224','90','6936','0','-817.881','161.435','-271.241','1.46608','7200','3.0','0','-817.881','161.435','-271.241','1.46608','1','0','0','1','');
INSERT INTO `creature` VALUES ('30302','6227','90','6891','0','-823.162','402.095','-316.433','0.206138','7200','3.0','0','-823.162','402.095','-316.433','0.206138','1','0','0','1','');
INSERT INTO `creature` VALUES ('30303','6224','90','6936','0','-760.483','56.4322','-257.402','4.5204','7200','6.0','0','-760.483','56.4322','-257.402','4.5204','1','0','0','0','');
INSERT INTO `creature` VALUES ('30304','6227','90','6891','0','-781.462','200.618','-273.081','5.06208','7200','5.0','0','-781.462','200.618','-273.081','5.06208','1','0','0','1','');
INSERT INTO `creature` VALUES ('30305','6227','90','6891','0','-795.208','283.37','-272.596','6.13951','7200','3.0','0','-795.208','283.37','-272.596','6.13951','1','0','0','1','');
INSERT INTO `creature` VALUES ('30306','6224','90','6936','0','-823.79','401.27','-316.433','6.02521','7200','2.0','0','-823.79','401.27','-316.433','6.02521','1','0','0','1','');
INSERT INTO `creature` VALUES ('30307','6227','90','6891','0','-767.642','346.271','-272.596','5.21228','7200','5.0','0','-767.642','346.271','-272.596','5.21228','1','0','0','1','');
INSERT INTO `creature` VALUES ('30308','6224','90','6936','0','-763.52','358.724','-272.596','1.43922','7200','2.0','0','-763.52','358.724','-272.596','1.43922','1','0','0','1','');
INSERT INTO `creature` VALUES ('30309','6226','90','6890','0','-758.346','52.8884','-256.668','4.72984','7200','2.0','0','-758.346','52.8884','-256.668','4.72984','1','0','0','1','');
INSERT INTO `creature` VALUES ('30310','6329','90','976','0','-500.517','145.52','-154.633','0.837758','7200','5.0','0','-500.517','145.52','-154.633','0.837758','1','0','0','1','');
INSERT INTO `creature` VALUES ('30311','6329','90','976','0','-555.872','176.441','-155.154','6.16101','7200','5.0','0','-555.872','176.441','-155.154','6.16101','1','0','0','1','');
INSERT INTO `creature` VALUES ('30312','6329','90','976','0','-506.921','119.416','-154.66','3.54302','7200','5.0','0','-506.921','119.416','-154.66','3.54302','1','0','0','1','');
INSERT INTO `creature` VALUES ('30313','6329','90','976','0','-434.69','84.9587','-151.747','5.93412','7200','6.0','0','-434.69','84.9587','-151.747','5.93412','1','0','0','0','');
INSERT INTO `creature` VALUES ('30314','6329','90','976','0','-465.155','179.25','-154.745','0.047407','7200','5.0','0','-465.155','179.25','-154.745','0.047407','1','0','0','1','');
INSERT INTO `creature` VALUES ('30315','6206','90','830','0','-425.096','111.061','-156.425','3.29867','7200','6.0','0','-425.096','111.061','-156.425','3.29867','1','0','0','0','');
INSERT INTO `creature` VALUES ('30316','6329','90','976','0','-497.042','67.753','-154.716','2.98451','7200','3.0','0','-497.042','67.753','-154.716','2.98451','1','0','0','1','');
INSERT INTO `creature` VALUES ('30317','6206','90','830','0','-528.462','205.603','-155.156','5.93412','7200','5.0','0','-528.462','205.603','-155.156','5.93412','1','0','0','1','');
INSERT INTO `creature` VALUES ('30318','6206','90','830','0','-522.26','44.992','-153.692','1.16937','7200','5.0','0','-522.26','44.992','-153.692','1.16937','1','0','0','1','');
INSERT INTO `creature` VALUES ('30319','6206','90','830','0','-451.295','40.3806','-154.66','0.890118','7200','3.0','0','-451.295','40.3806','-154.66','0.890118','1','0','0','1','');
INSERT INTO `creature` VALUES ('30320','6391','90','6610','0','-543.691','167.098','-193.654','4.17134','7200','6.0','0','-543.691','167.098','-193.654','4.17134','1','0','0','0','');
INSERT INTO `creature` VALUES ('30321','6391','90','6610','0','-500.113','223.078','-193.612','4.38078','7200','6.0','0','-500.113','223.078','-193.612','4.38078','1','0','0','0','');
INSERT INTO `creature` VALUES ('30322','6391','90','6611','0','-503.532','221.496','-193.613','2.84489','7200','6.0','0','-503.532','221.496','-193.613','2.84489','1','0','0','0','');
INSERT INTO `creature` VALUES ('30323','6392','90','6609','0','-501.96','222.333','-193.613','0.279253','7200','6.0','0','-501.96','222.333','-193.613','0.279253','1','0','0','0','');
INSERT INTO `creature` VALUES ('30324','6391','90','6610','0','-513.335','177.048','-193.637','2.61799','7200','6.0','0','-513.335','177.048','-193.637','2.61799','1','0','0','0','');
INSERT INTO `creature` VALUES ('30325','6233','90','6978','0','-538.47','370.845','-231.387','3.64774','7200','5.0','0','-538.47','370.845','-231.387','3.64774','1','0','0','1','');
INSERT INTO `creature` VALUES ('30326','6223','90','6982','0','-561.423','306.01','-212.839','1.79769','7200','2.0','0','-561.423','306.01','-212.839','1.79769','1','0','0','1','');
INSERT INTO `creature` VALUES ('30327','6223','90','6982','0','-440.169','267.683','-211.46','1.27409','7200','5.0','0','-440.169','267.683','-211.46','1.27409','1','0','0','1','');
INSERT INTO `creature` VALUES ('30328','6223','90','6981','0','-427.261','238.569','-211.461','3.29867','7200','2.0','0','-427.261','238.569','-211.461','3.29867','1','0','0','1','');
INSERT INTO `creature` VALUES ('30329','6233','90','6978','0','-653.546','420.784','-230.541','4.39823','7200','5.0','0','-653.546','420.784','-230.541','4.39823','1','0','0','1','');
INSERT INTO `creature` VALUES ('30330','6233','90','6978','0','-442.733','219.312','-207.906','2.23402','7200','2.0','0','-442.733','219.312','-207.906','2.23402','1','0','0','2','');
INSERT INTO `creature` VALUES ('30331','6233','90','6978','0','-639.68','402.122','-233.581','5.41393','7200','2.0','0','-639.68','402.122','-233.581','5.41393','1','0','0','1','');
INSERT INTO `creature` VALUES ('30332','6234','90','6979','0','-593.833','679.447','-326.956','2.84489','7200','5.0','0','-593.833','679.447','-326.956','2.84489','1','0','0','1','');
INSERT INTO `creature` VALUES ('30333','6212','90','3456','0','-754.458','657.834','-308.977','2.3911','7200','5.0','0','-754.458','657.834','-308.977','2.3911','1','0','0','1','');
INSERT INTO `creature` VALUES ('30334','6212','90','3456','0','-727.748','648.272','-308.977','0.226893','7200','6.0','0','-727.748','648.272','-308.977','0.226893','1','0','0','0','');
INSERT INTO `creature` VALUES ('30335','6234','90','6979','0','-701.913','547.059','-294.699','0.383972','7200','3.0','0','-701.913','547.059','-294.699','0.383972','1','0','0','1','');
INSERT INTO `creature` VALUES ('30336','6212','90','3456','0','-735.093','713.3','-317.977','5.67232','7200','2.0','0','-735.093','713.3','-317.977','5.67232','1','0','0','1','');
INSERT INTO `creature` VALUES ('30337','6234','90','6979','0','-664.285','697.697','-331.711','3.4383','7200','5.0','0','-664.285','697.697','-331.711','3.4383','1','0','0','1','');
INSERT INTO `creature` VALUES ('30338','6234','90','6979','0','-758.873','640.617','-304.039','4.48742','7200','1.0','0','-758.873','640.617','-304.039','4.48742','1','0','0','1','');
INSERT INTO `creature` VALUES ('30339','6212','90','3456','0','-743.108','622.601','-312.699','2.80998','7200','2.0','0','-743.108','622.601','-312.699','2.80998','1','0','0','1','');
INSERT INTO `creature` VALUES ('30340','6232','90','6889','0','-754.444','574.93','-303.699','5.3058','7200','5.0','0','-754.444','574.93','-303.699','5.3058','1','0','0','1','');
INSERT INTO `creature` VALUES ('30341','6212','90','3456','0','-712.112','550.954','-298.008','6.05503','7200','6.0','0','-712.112','550.954','-298.008','6.05503','1','0','0','0','');
INSERT INTO `creature` VALUES ('30342','6329','90','976','0','-641.7','101.709','-192.37','0.017453','7200','6.0','0','-641.7','101.709','-192.37','0.017453','1','0','0','0','');
INSERT INTO `creature` VALUES ('30343','6211','90','10285','0','-560.054','22.1415','-179.654','2.77507','7200','2.0','0','-560.054','22.1415','-179.654','2.77507','1','0','0','1','');
INSERT INTO `creature` VALUES ('30344','6206','90','830','0','-651.76','88.2629','-179.263','5.49779','7200','1.0','0','-651.76','88.2629','-179.263','5.49779','1','0','0','1','');
INSERT INTO `creature` VALUES ('30345','6329','90','976','0','-582.384','137.274','-202.052','5.58505','7200','3.0','0','-582.384','137.274','-202.052','5.58505','1','0','0','1','');
INSERT INTO `creature` VALUES ('30346','6329','90','976','0','-577.057','35.9964','-197.327','2.93215','7200','6.0','0','-577.057','35.9964','-197.327','2.93215','1','0','0','0','');
INSERT INTO `creature` VALUES ('30348','6329','90','976','0','-577.393','139.893','-202.054','5.2709','7200','5.0','0','-577.393','139.893','-202.054','5.2709','1','0','0','1','');
INSERT INTO `creature` VALUES ('30349','6329','90','976','0','-555.28','20.0494','-179.653','2.26893','7200','2.0','0','-555.28','20.0494','-179.653','2.26893','1','0','0','1','');
INSERT INTO `creature` VALUES ('30350','6211','90','10285','0','-635.808','89.3161','-183.187','4.50295','7200','5.0','0','-635.808','89.3161','-183.187','4.50295','1','0','0','1','');
INSERT INTO `creature` VALUES ('30351','6206','90','830','0','-547.073','78.8734','-201.248','3.38594','7200','5.0','0','-547.073','78.8734','-201.248','3.38594','1','0','0','1','');
INSERT INTO `creature` VALUES ('30352','6211','90','10285','0','-569.925','231.347','-159.345','1.88496','7200','2.0','0','-569.925','231.347','-159.345','1.88496','1','0','0','1','');
INSERT INTO `creature` VALUES ('30353','7603','90','6967','0','-640.209','514.683','-230.602','1.01504','7200','2.0','0','-640.209','514.683','-230.602','1.01504','1','0','0','1','');
INSERT INTO `creature` VALUES ('30354','7603','90','6967','0','-645.176','512.149','-230.601','3.99623','7200','2.0','0','-645.176','512.149','-230.601','3.99623','1','0','0','1','');
INSERT INTO `creature` VALUES ('30355','7603','90','6967','0','-641.537','508.083','-230.518','5.34071','7200','2.0','0','-641.537','508.083','-230.518','5.34071','1','0','0','1','');
INSERT INTO `creature` VALUES ('30356','7603','90','6967','0','-646.904','505.615','-230.601','2.21234','7200','2.0','0','-646.904','505.615','-230.601','2.21234','1','0','0','1','');
INSERT INTO `creature` VALUES ('30357','6233','90','6978','0','-637.756','516.192','-230.518','0.0','7200','2.0','0','-637.756','516.192','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30358','6222','90','6933','0','-635.625','513.175','-230.602','1.09437','7200','2.0','0','-635.625','513.175','-230.602','1.09437','1','0','0','1','');
INSERT INTO `creature` VALUES ('30360','7603','90','6968','0','-539.432','425.888','-230.519','0.0','7200','6.0','0','-539.432','425.888','-230.519','0.0','1','0','0','0','');
INSERT INTO `creature` VALUES ('30361','7603','90','6968','0','-532.556','421.27','-230.518','4.95674','7200','2.0','0','-532.556','421.27','-230.518','4.95674','1','0','0','1','');
INSERT INTO `creature` VALUES ('30362','7603','90','6967','0','-538.575','416.534','-230.518','2.82743','7200','2.0','0','-538.575','416.534','-230.518','2.82743','1','0','0','1','');
INSERT INTO `creature` VALUES ('30363','7603','90','6968','0','-544.422','421.018','-230.518','3.80482','7200','2.0','0','-544.422','421.018','-230.518','3.80482','1','0','0','1','');
INSERT INTO `creature` VALUES ('30364','6222','90','6934','0','-531.995','416.335','-230.518','0.349066','7200','2.0','0','-531.995','416.335','-230.518','0.349066','1','0','0','1','');
INSERT INTO `creature` VALUES ('30365','6222','90','6933','0','-615.486','440.103','-273.061','5.49537','7200','2.0','0','-615.486','440.103','-273.061','5.49537','1','0','0','1','');
INSERT INTO `creature` VALUES ('30366','6222','90','6932','0','-539.803','554.096','-273.079','3.99421','7200','2.0','0','-539.803','554.096','-273.079','3.99421','1','0','0','1','');
INSERT INTO `creature` VALUES ('30367','6222','90','6935','0','-585.701','464.577','-273.081','3.43791','7200','2.0','0','-585.701','464.577','-273.081','3.43791','1','0','0','1','');
INSERT INTO `creature` VALUES ('30368','7603','90','6967','0','-519.763','535.871','-273.074','5.12976','7200','2.0','0','-519.763','535.871','-273.074','5.12976','1','0','0','1','');
INSERT INTO `creature` VALUES ('30369','7603','90','6967','0','-520.59','537.735','-273.074','5.46984','7200','2.0','0','-520.59','537.735','-273.074','5.46984','1','0','0','1','');
INSERT INTO `creature` VALUES ('30370','7603','90','6967','0','-519.572','540.375','-273.075','5.7171','7200','2.0','0','-519.572','540.375','-273.075','5.7171','1','0','0','1','');
INSERT INTO `creature` VALUES ('30371','7603','90','6967','0','-522.211','541.392','-273.074','5.98327','7200','2.0','0','-522.211','541.392','-273.074','5.98327','1','0','0','1','');
INSERT INTO `creature` VALUES ('30372','6222','90','6933','0','-523.229','538.753','-273.073','5.75422','7200','2.0','0','-523.229','538.753','-273.073','5.75422','1','0','0','1','');
INSERT INTO `creature` VALUES ('30373','7603','90','6967','0','-456.864','466.615','-230.601','1.93866','7200','2.0','0','-456.864','466.615','-230.601','1.93866','1','0','0','1','');
INSERT INTO `creature` VALUES ('30374','7603','90','6967','0','-464.134','453.529','-230.518','1.22173','7200','2.0','0','-464.134','453.529','-230.518','1.22173','1','0','0','1','');
INSERT INTO `creature` VALUES ('30375','7603','90','6968','0','-467.127','458.6','-230.518','0.0','7200','2.0','0','-467.127','458.6','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30376','7603','90','6967','0','-460.763','451.258','-230.517','6.26573','7200','2.0','0','-460.763','451.258','-230.517','6.26573','1','0','0','1','');
INSERT INTO `creature` VALUES ('30377','6222','90','6932','0','-461.171','464.069','-230.601','0.802967','7200','2.0','0','-461.171','464.069','-230.601','0.802967','1','0','0','1','');
INSERT INTO `creature` VALUES ('30378','7603','90','6968','0','-591.288','583.902','-230.517','6.24828','7200','2.0','0','-591.288','583.902','-230.517','6.24828','1','0','0','1','');
INSERT INTO `creature` VALUES ('30379','7603','90','6967','0','-596.914','584.571','-230.601','4.46223','7200','2.0','0','-596.914','584.571','-230.601','4.46223','1','0','0','1','');
INSERT INTO `creature` VALUES ('30380','7603','90','6967','0','-593.291','589.403','-230.517','0.0','7200','2.0','0','-593.291','589.403','-230.517','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30381','7603','90','6968','0','-599.175','579.219','-230.602','0.809533','7200','2.0','0','-599.175','579.219','-230.602','0.809533','1','0','0','1','');
INSERT INTO `creature` VALUES ('30382','6222','90','6934','0','-592.991','578.047','-230.517','5.3058','7200','2.0','0','-592.991','578.047','-230.517','5.3058','1','0','0','1','');
INSERT INTO `creature` VALUES ('30383','6222','90','6934','0','-487.225','549.376','-230.602','2.94272','7200','6.0','0','-487.225','549.376','-230.602','2.94272','1','0','0','0','');
INSERT INTO `creature` VALUES ('30384','6226','90','6890','0','-837.74','291.732','-272.605','0.783807','7200','5.0','0','-837.74','291.732','-272.605','0.783807','1','0','0','1','');
INSERT INTO `creature` VALUES ('30385','6226','90','6890','0','-844.277','432.41','-312.281','0.644145','7200','2.0','0','-844.277','432.41','-312.281','0.644145','1','0','0','1','');
INSERT INTO `creature` VALUES ('30386','6226','90','6890','0','-858.712','391.157','-316.43','2.59422','7200','3.0','0','-858.712','391.157','-316.43','2.59422','1','0','0','1','');
INSERT INTO `creature` VALUES ('30387','6224','90','6936','0','-840.707','290.14','-272.607','5.71985','7200','2.0','0','-840.707','290.14','-272.607','5.71985','1','0','0','1','');
INSERT INTO `creature` VALUES ('30388','6227','90','6891','0','-822.527','425.77','-272.59','0.008276','7200','5.0','0','-822.527','425.77','-272.59','0.008276','1','0','0','1','');
INSERT INTO `creature` VALUES ('30389','6224','90','6936','0','-798.065','382.68','-316.433','1.66084','7200','2.0','0','-798.065','382.68','-316.433','1.66084','1','0','0','1','');
INSERT INTO `creature` VALUES ('30390','6227','90','6891','0','-743.622','238.119','-273.08','2.5883','7200','5.0','0','-743.622','238.119','-273.08','2.5883','1','0','0','1','');
INSERT INTO `creature` VALUES ('30391','6226','90','6890','0','-788.414','420.179','-272.578','3.00892','7200','3.0','0','-788.414','420.179','-272.578','3.00892','1','0','0','1','');
INSERT INTO `creature` VALUES ('30392','6226','90','6890','0','-797.69','538.168','-295.578','0.679326','7200','2.0','0','-797.69','538.168','-295.578','0.679326','1','0','0','1','');
INSERT INTO `creature` VALUES ('30393','6224','90','6936','0','-826.708','425.943','-272.592','6.18491','7200','2.0','0','-826.708','425.943','-272.592','6.18491','1','0','0','1','');
INSERT INTO `creature` VALUES ('30394','6329','90','976','0','-512.154','175.506','-155.153','2.53073','7200','3.0','0','-512.154','175.506','-155.153','2.53073','1','0','0','1','');
INSERT INTO `creature` VALUES ('30395','6329','90','976','0','-425.039','178.295','-154.66','5.74213','7200','5.0','0','-425.039','178.295','-154.66','5.74213','1','0','0','1','');
INSERT INTO `creature` VALUES ('30396','6206','90','830','0','-499.676','43.3165','-156.403','1.44862','7200','3.0','0','-499.676','43.3165','-156.403','1.44862','1','0','0','1','');
INSERT INTO `creature` VALUES ('30397','6329','90','976','0','-530.666','201.902','-155.156','4.45059','7200','5.0','0','-530.666','201.902','-155.156','4.45059','1','0','0','1','');
INSERT INTO `creature` VALUES ('30398','6329','90','976','0','-410.196','39.4883','-154.66','4.85202','7200','5.0','0','-410.196','39.4883','-154.66','4.85202','1','0','0','1','');
INSERT INTO `creature` VALUES ('30399','6329','90','976','0','-507.703','110.804','-154.66','4.10152','7200','5.0','0','-507.703','110.804','-154.66','4.10152','1','0','0','1','');
INSERT INTO `creature` VALUES ('30400','6206','90','830','0','-368.251','84.5512','-154.66','5.02655','7200','3.0','0','-368.251','84.5512','-154.66','5.02655','1','0','0','1','');
INSERT INTO `creature` VALUES ('31796','6329','90','976','0','-397.217','50.1614','-154.714','3.08923','7200','3.0','0','-397.217','50.1614','-154.714','3.08923','1','0','0','1','');
INSERT INTO `creature` VALUES ('31797','6206','90','830','0','-515.554','52.2393','-154.168','3.9968','7200','5.0','0','-515.554','52.2393','-154.168','3.9968','1','0','0','1','');
INSERT INTO `creature` VALUES ('31944','6329','90','976','0','-472.085','43.7858','-154.654','2.51327','7200','5.0','0','-472.085','43.7858','-154.654','2.51327','1','0','0','1','');
INSERT INTO `creature` VALUES ('31981','6212','90','3456','0','-748.046','624.546','-312.699','5.84685','7200','2.0','0','-748.046','624.546','-312.699','5.84685','1','0','0','1','');
INSERT INTO `creature` VALUES ('31982','6224','90','6936','0','-588.535','691.862','-326.979','3.08923','7200','2.0','0','-588.535','691.862','-326.979','3.08923','1','0','0','1','');
INSERT INTO `creature` VALUES ('31983','6212','90','3456','0','-726.655','651.998','-308.977','5.16617','7200','6.0','0','-726.655','651.998','-308.977','5.16617','1','0','0','0','');
INSERT INTO `creature` VALUES ('31984','6234','90','6979','0','-696.054','720.927','-317.977','5.44543','7200','3.0','0','-696.054','720.927','-317.977','5.44543','1','0','0','1','');
INSERT INTO `creature` VALUES ('31985','6212','90','3456','0','-733.927','709.049','-317.977','2.89725','7200','3.0','0','-733.927','709.049','-317.977','2.89725','1','0','0','1','');
INSERT INTO `creature` VALUES ('31986','6234','90','6979','0','-765.398','561.056','-290.977','4.93928','7200','3.0','0','-765.398','561.056','-290.977','4.93928','1','0','0','1','');
INSERT INTO `creature` VALUES ('31987','6234','90','6979','0','-745.388','625.978','-312.699','5.88176','7200','2.0','0','-745.388','625.978','-312.699','5.88176','1','0','0','1','');
INSERT INTO `creature` VALUES ('31988','6234','90','6979','0','-727.201','693.357','-330.699','0.10472','7200','3.0','0','-727.201','693.357','-330.699','0.10472','1','0','0','1','');
INSERT INTO `creature` VALUES ('31989','6212','90','3456','0','-703.428','694.964','-317.977','4.34587','7200','6.0','0','-703.428','694.964','-317.977','4.34587','1','0','0','0','');
INSERT INTO `creature` VALUES ('31990','6212','90','3456','0','-766.203','600.453','-290.977','2.98451','7200','6.0','0','-766.203','600.453','-290.977','2.98451','1','0','0','0','');
INSERT INTO `creature` VALUES ('31991','6211','90','10285','0','-550.133','18.5031','-179.652','5.21853','7200','2.0','0','-550.133','18.5031','-179.652','5.21853','1','0','0','1','');
INSERT INTO `creature` VALUES ('31992','6329','90','976','0','-633.396','113.62','-195.992','2.82743','7200','1.0','0','-633.396','113.62','-195.992','2.82743','1','0','0','1','');
INSERT INTO `creature` VALUES ('31993','6206','90','830','0','-600.52','24.6008','-179.598','1.0472','7200','3.0','0','-600.52','24.6008','-179.598','1.0472','1','0','0','1','');
INSERT INTO `creature` VALUES ('31994','6329','90','976','0','-555.172','102.537','-201.659','2.93215','7200','2.0','0','-555.172','102.537','-201.659','2.93215','1','0','0','1','');
INSERT INTO `creature` VALUES ('31995','6329','90','976','0','-565.925','233.393','-159.345','5.79449','7200','5.0','0','-565.925','233.393','-159.345','5.79449','1','0','0','1','');
INSERT INTO `creature` VALUES ('31996','6211','90','10285','0','-545.883','72.0569','-200.725','0.907571','7200','6.0','0','-545.883','72.0569','-200.725','0.907571','1','0','0','0','');
INSERT INTO `creature` VALUES ('31997','6206','90','830','0','-594.108','96.128','-199.458','0.925298','7200','6.0','0','-594.108','96.128','-199.458','0.925298','1','0','0','0','');
INSERT INTO `creature` VALUES ('31998','6329','90','976','0','-630.458','132.447','-183.796','3.82227','7200','3.0','0','-630.458','132.447','-183.796','3.82227','1','0','0','1','');
INSERT INTO `creature` VALUES ('31999','6329','90','976','0','-606.562','193.586','-172.299','6.02139','7200','2.0','0','-606.562','193.586','-172.299','6.02139','1','0','0','1','');
INSERT INTO `creature` VALUES ('32000','6211','90','10285','0','-633.632','101.509','-195.888','3.87463','7200','1.0','0','-633.632','101.509','-195.888','3.87463','1','0','0','1','');
INSERT INTO `creature` VALUES ('32001','7603','90','6968','0','-517.836','474.413','-273.074','0.027287','7200','2.0','0','-517.836','474.413','-273.074','0.027287','1','0','0','1','');
INSERT INTO `creature` VALUES ('32002','7603','90','6968','0','-516.484','474.45','-273.078','0.027284','7200','2.0','0','-516.484','474.45','-273.078','0.027284','1','0','0','1','');
INSERT INTO `creature` VALUES ('32003','7603','90','6968','0','-518.543','476.394','-273.077','0.027285','7200','2.0','0','-518.543','476.394','-273.077','0.027285','1','0','0','1','');
INSERT INTO `creature` VALUES ('32004','7603','90','6968','0','-520.488','474.34','-273.075','0.027286','7200','2.0','0','-520.488','474.34','-273.075','0.027286','1','0','0','1','');
INSERT INTO `creature` VALUES ('32005','6233','90','6978','0','-517.611','472.418','-273.077','0.027281','7200','5.0','0','-517.611','472.418','-273.077','0.027281','1','0','0','1','');
INSERT INTO `creature` VALUES ('32006','6222','90','6934','0','-603.687','507.389','-273.063','5.74002','7200','2.0','0','-603.687','507.389','-273.063','5.74002','1','0','0','1','');
INSERT INTO `creature` VALUES ('32007','6222','90','6935','0','-586.528','465.276','-273.081','4.58216','7200','2.0','0','-586.528','465.276','-273.081','4.58216','1','0','0','1','');
INSERT INTO `creature` VALUES ('32008','6225','90','5926','0','-503.215','527.958','-273.08','5.09596','7200','5.0','0','-503.215','527.958','-273.08','5.09596','1','0','0','1','');
INSERT INTO `creature` VALUES ('32013','6230','90','8369','0','-480.902','456.021','-230.602','3.55663','7200','2.0','0','-480.902','456.021','-230.602','3.55663','1','0','0','1','');
INSERT INTO `creature` VALUES ('32014','7603','90','6968','0','-479.445','548.944','-230.518','0.0','7200','2.0','0','-479.445','548.944','-230.518','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('32103','7603','90','6967','0','-484.079','561.437','-230.602','5.94259','7200','2.0','0','-484.079','561.437','-230.602','5.94259','1','0','0','1','');
INSERT INTO `creature` VALUES ('32104','7603','90','6967','0','-480.532','560.66','-230.601','2.62881','7200','2.0','0','-480.532','560.66','-230.601','2.62881','1','0','0','1','');
INSERT INTO `creature` VALUES ('33390','7603','90','6967','0','-489.812','559.961','-230.602','3.65961','7200','2.0','0','-489.812','559.961','-230.602','3.65961','1','0','0','1','');
INSERT INTO `creature` VALUES ('33395','6233','90','6978','0','-479.992','553.159','-230.602','3.59214','7200','2.0','0','-479.992','553.159','-230.602','3.59214','1','0','0','1','');
INSERT INTO `creature` VALUES ('33396','7603','90','6968','0','-466.408','527.329','-230.602','6.11885','7200','2.0','0','-466.408','527.329','-230.602','6.11885','1','0','0','1','');
INSERT INTO `creature` VALUES ('33397','7603','90','6967','0','-464.437','527.62','-230.601','0.364823','7200','2.0','0','-464.437','527.62','-230.601','0.364823','1','0','0','1','');
INSERT INTO `creature` VALUES ('33398','7603','90','6968','0','-467.899','517.033','-230.518','2.00713','7200','2.0','0','-467.899','517.033','-230.518','2.00713','1','0','0','1','');
INSERT INTO `creature` VALUES ('33399','7603','90','6967','0','-472.045','527.063','-230.602','0.923557','7200','2.0','0','-472.045','527.063','-230.602','0.923557','1','0','0','1','');
INSERT INTO `creature` VALUES ('33400','6222','90','6933','0','-464.458','518.547','-230.602','5.24279','7200','6.0','0','-464.458','518.547','-230.602','5.24279','1','0','0','0','');
INSERT INTO `creature` VALUES ('33401','6222','90','6932','0','-515.631','587.235','-230.602','6.02039','7200','2.0','0','-515.631','587.235','-230.602','6.02039','1','0','0','1','');
INSERT INTO `creature` VALUES ('33402','6222','90','6935','0','-539.798','558.085','-273.08','1.41736','7200','2.0','0','-539.798','558.085','-273.08','1.41736','1','0','0','1','');
INSERT INTO `creature` VALUES ('33403','7603','90','6967','0','-631.247','444.701','-272.979','0.925025','7200','3.0','0','-631.247','444.701','-272.979','0.925025','1','0','0','1','');
INSERT INTO `creature` VALUES ('33404','7603','90','6967','0','-626.295','448.169','-272.978','3.735','7200','2.0','0','-626.295','448.169','-272.978','3.735','1','0','0','1','');
INSERT INTO `creature` VALUES ('33405','7603','90','6967','0','-630.799','450.0','-272.979','0.0','7200','2.0','0','-630.799','450.0','-272.979','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('33421','7603','90','6968','0','-634.205','453.489','-273.063','2.70326','7200','2.0','0','-634.205','453.489','-273.063','2.70326','1','0','0','1','');
INSERT INTO `creature` VALUES ('33422','6222','90','6935','0','-633.882','447.407','-273.063','5.88472','7200','3.0','0','-633.882','447.407','-273.063','5.88472','1','0','0','1','');
INSERT INTO `creature` VALUES ('33423','7603','90','6968','0','-732.509','241.083','-272.997','1.65806','7200','2.0','0','-732.509','241.083','-272.997','1.65806','1','0','0','1','');
INSERT INTO `creature` VALUES ('33426','7603','90','6967','0','-734.406','234.689','-272.403','2.49582','7200','2.0','0','-734.406','234.689','-272.403','2.49582','1','0','0','1','');
INSERT INTO `creature` VALUES ('33427','7603','90','6967','0','-738.795','225.476','-272.997','5.49779','7200','2.0','0','-738.795','225.476','-272.997','5.49779','1','0','0','1','');
INSERT INTO `creature` VALUES ('33428','7603','90','6968','0','-740.041','235.315','-272.997','0.0','7200','2.0','0','-740.041','235.315','-272.997','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('33429','6233','90','6978','0','-738.034','230.835','-272.997','0.174533','7200','3.0','0','-738.034','230.835','-272.997','0.174533','1','0','0','1','');
INSERT INTO `creature` VALUES ('33430','6224','90','6936','0','-877.407','363.953','-316.433','1.62105','7200','3.0','0','-877.407','363.953','-316.433','1.62105','1','0','0','1','');
INSERT INTO `creature` VALUES ('33431','6224','90','6936','0','-858.925','389.898','-316.43','3.65923','7200','3.0','0','-858.925','389.898','-316.43','3.65923','1','0','0','1','');
INSERT INTO `creature` VALUES ('33432','6224','90','6936','0','-764.095','56.176','-257.347','4.92183','7200','2.0','0','-764.095','56.176','-257.347','4.92183','1','0','0','1','');
INSERT INTO `creature` VALUES ('33433','7603','90','6967','0','-847.354','289.447','-272.611','2.57274','7200','2.0','0','-847.354','289.447','-272.611','2.57274','1','0','0','1','');
INSERT INTO `creature` VALUES ('33434','7603','90','6967','0','-846.367','294.08','-272.513','5.044','7200','2.0','0','-846.367','294.08','-272.513','5.044','1','0','0','1','');
INSERT INTO `creature` VALUES ('33435','7603','90','6968','0','-847.694','284.091','-272.605','2.96448','7200','2.0','0','-847.694','284.091','-272.605','2.96448','1','0','0','1','');
INSERT INTO `creature` VALUES ('33436','7603','90','6968','0','-859.787','292.404','-272.513','5.32325','7200','2.0','0','-859.787','292.404','-272.513','5.32325','1','0','0','1','');
INSERT INTO `creature` VALUES ('33437','6233','90','6978','0','-852.587','290.918','-272.61','4.08323','7200','3.0','0','-852.587','290.918','-272.61','4.08323','1','0','0','1','');
INSERT INTO `creature` VALUES ('33438','7603','90','6967','0','-788.239','205.013','-272.999','3.61283','7200','3.0','0','-788.239','205.013','-272.999','3.61283','1','0','0','1','');
INSERT INTO `creature` VALUES ('33439','7603','90','6967','0','-797.803','205.898','-272.999','2.96706','7200','3.0','0','-797.803','205.898','-272.999','2.96706','1','0','0','1','');
INSERT INTO `creature` VALUES ('33440','7603','90','6968','0','-779.544','216.3','-272.999','0.0','7200','3.0','0','-779.544','216.3','-272.999','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('33441','7603','90','6967','0','-791.334','202.494','-273.082','3.34306','7200','3.0','0','-791.334','202.494','-273.082','3.34306','1','0','0','1','');
INSERT INTO `creature` VALUES ('33442','6224','90','6936','0','-784.163','210.624','-272.999','4.18879','7200','3.0','0','-784.163','210.624','-272.999','4.18879','1','0','0','1','');
INSERT INTO `creature` VALUES ('33443','6224','90','6936','0','-867.086','332.016','-316.431','2.58111','7200','3.0','0','-867.086','332.016','-316.431','2.58111','1','0','0','1','');
INSERT INTO `creature` VALUES ('33444','6224','90','6936','0','-742.334','235.533','-273.08','0.66947','7200','2.0','0','-742.334','235.533','-273.08','0.66947','1','0','0','1','');
INSERT INTO `creature` VALUES ('33445','6226','90','6890','0','-867.12','333.94','-316.433','1.04478','7200','5.0','0','-867.12','333.94','-316.433','1.04478','1','0','0','1','');
INSERT INTO `creature` VALUES ('33446','6224','90','6936','0','-876.962','365.196','-316.433','1.62033','7200','3.0','0','-876.962','365.196','-316.433','1.62033','1','0','0','1','');
INSERT INTO `creature` VALUES ('33447','6329','90','976','0','-486.77','159.007','-154.634','2.1293','7200','3.0','0','-486.77','159.007','-154.634','2.1293','1','0','0','1','');
INSERT INTO `creature` VALUES ('33448','6206','90','830','0','-367.079','101.611','-154.743','4.66665','7200','5.0','0','-367.079','101.611','-154.743','4.66665','1','0','0','1','');
INSERT INTO `creature` VALUES ('33449','6206','90','830','0','-507.797','105.502','-154.66','2.04204','7200','5.0','0','-507.797','105.502','-154.66','2.04204','1','0','0','1','');
INSERT INTO `creature` VALUES ('33450','6329','90','976','0','-506.575','182.598','-155.153','2.3911','7200','3.0','0','-506.575','182.598','-155.153','2.3911','1','0','0','1','');
INSERT INTO `creature` VALUES ('33451','6329','90','976','0','-455.021','38.1171','-154.66','0.506145','7200','5.0','0','-455.021','38.1171','-154.66','0.506145','1','0','0','1','');
INSERT INTO `creature` VALUES ('33452','6329','90','976','0','-429.105','180.0','-154.743','3.19489','7200','5.0','0','-429.105','180.0','-154.743','3.19489','1','0','0','1','');
INSERT INTO `creature` VALUES ('33453','6206','90','830','0','-531.673','160.769','-155.153','4.2586','7200','5.0','0','-531.673','160.769','-155.153','4.2586','1','0','0','1','');
INSERT INTO `creature` VALUES ('33454','6212','90','3456','0','-724.26','698.946','-330.699','3.89208','7200','5.0','0','-724.26','698.946','-330.699','3.89208','1','0','0','1','');
INSERT INTO `creature` VALUES ('33455','6212','90','3456','0','-746.574','542.956','-290.977','4.03171','7200','2.0','0','-746.574','542.956','-290.977','4.03171','1','0','0','1','');
INSERT INTO `creature` VALUES ('33456','6234','90','6979','0','-646.241','524.73','-272.977','2.32129','7200','3.0','0','-646.241','524.73','-272.977','2.32129','1','0','0','1','');
INSERT INTO `creature` VALUES ('33457','6212','90','3456','0','-768.671','568.882','-291.06','1.68938','7200','3.0','0','-768.671','568.882','-291.06','1.68938','1','0','0','1','');
INSERT INTO `creature` VALUES ('33458','6212','90','3456','0','-688.181','704.648','-330.699','3.89208','7200','5.0','0','-688.181','704.648','-330.699','3.89208','1','0','0','1','');
INSERT INTO `creature` VALUES ('33459','6212','90','3456','0','-706.772','549.348','-295.519','5.3058','7200','2.0','0','-706.772','549.348','-295.519','5.3058','1','0','0','1','');
INSERT INTO `creature` VALUES ('33460','6232','90','6889','0','-737.309','659.8','-323.456','2.79253','7200','2.0','0','-737.309','659.8','-323.456','2.79253','1','0','0','1','');
INSERT INTO `creature` VALUES ('33471','6212','90','3456','0','-742.329','579.152','-290.977','0.959931','7200','6.0','0','-742.329','579.152','-290.977','0.959931','1','0','0','0','');
INSERT INTO `creature` VALUES ('33472','6232','90','6889','0','-721.026','703.277','-330.699','3.21141','7200','3.0','0','-721.026','703.277','-330.699','3.21141','1','0','0','1','');
INSERT INTO `creature` VALUES ('33473','6212','90','3456','0','-740.86','558.484','-303.699','1.36136','7200','3.0','0','-740.86','558.484','-303.699','1.36136','1','0','0','1','');
INSERT INTO `creature` VALUES ('33474','6211','90','10285','0','-572.245','36.1417','-196.701','4.46804','7200','2.0','0','-572.245','36.1417','-196.701','4.46804','1','0','0','1','');
INSERT INTO `creature` VALUES ('33475','6211','90','10285','0','-640.63','60.9319','-192.837','6.05629','7200','1.0','0','-640.63','60.9319','-192.837','6.05629','1','0','0','1','');
INSERT INTO `creature` VALUES ('33476','6206','90','830','0','-579.958','98.1969','-202.035','5.93412','7200','5.0','0','-579.958','98.1969','-202.035','5.93412','1','0','0','1','');
INSERT INTO `creature` VALUES ('33477','6329','90','976','0','-575.288','46.7761','-200.157','4.88692','7200','3.0','0','-575.288','46.7761','-200.157','4.88692','1','0','0','1','');
INSERT INTO `creature` VALUES ('33478','6206','90','830','0','-641.052','113.123','-192.667','2.98451','7200','6.0','0','-641.052','113.123','-192.667','2.98451','1','0','0','0','');
INSERT INTO `creature` VALUES ('33479','6211','90','10285','0','-594.156','94.788','-199.414','3.29641','7200','6.0','0','-594.156','94.788','-199.414','3.29641','1','0','0','0','');
INSERT INTO `creature` VALUES ('33480','6329','90','976','0','-546.082','137.754','-202.068','4.81711','7200','5.0','0','-546.082','137.754','-202.068','4.81711','1','0','0','1','');
INSERT INTO `creature` VALUES ('33481','7603','90','6967','0','-666.094','421.115','-272.981','1.11701','7200','2.0','0','-666.094','421.115','-272.981','1.11701','1','0','0','1','');
INSERT INTO `creature` VALUES ('33482','7603','90','6967','0','-679.972','412.712','-273.064','4.5664','7200','2.0','0','-679.972','412.712','-273.064','4.5664','1','0','0','1','');
INSERT INTO `creature` VALUES ('33483','7603','90','6968','0','-670.493','423.687','-272.981','0.820305','7200','2.0','0','-670.493','423.687','-272.981','0.820305','1','0','0','1','');
INSERT INTO `creature` VALUES ('33484','7603','90','6968','0','-668.682','418.405','-272.981','0.0','7200','2.0','0','-668.682','418.405','-272.981','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('33485','6222','90','6934','0','-673.195','412.989','-273.064','0.950813','7200','2.0','0','-673.195','412.989','-273.064','0.950813','1','0','0','1','');
INSERT INTO `creature` VALUES ('33486','6224','90','6936','0','-823.78','425.54','-272.591','2.92918','7200','2.0','0','-823.78','425.54','-272.591','2.92918','1','0','0','1','');
INSERT INTO `creature` VALUES ('33487','6226','90','6890','0','-797.001','384.529','-316.433','1.96094','7200','3.0','0','-797.001','384.529','-316.433','1.96094','1','0','0','1','');
INSERT INTO `creature` VALUES ('33488','6224','90','6936','0','-781.707','204.067','-273.081','3.81134','7200','3.0','0','-781.707','204.067','-273.081','3.81134','1','0','0','1','');
INSERT INTO `creature` VALUES ('33489','6234','90','6979','0','-687.447','719.957','-317.977','2.87979','7200','3.0','0','-687.447','719.957','-317.977','2.87979','1','0','0','1','');
INSERT INTO `creature` VALUES ('33490','6212','90','3456','0','-725.086','648.683','-308.78','3.29867','7200','6.0','0','-725.086','648.683','-308.78','3.29867','1','0','0','0','');
INSERT INTO `creature` VALUES ('33491','6212','90','3456','0','-656.108','696.262','-334.045','2.85127','7200','5.0','0','-656.108','696.262','-334.045','2.85127','1','0','0','1','');
INSERT INTO `creature` VALUES ('33492','6234','90','6979','0','-741.779','541.255','-290.977','3.00197','7200','2.0','0','-741.779','541.255','-290.977','3.00197','1','0','0','1','');
INSERT INTO `creature` VALUES ('33493','6212','90','3456','0','-751.021','604.79','-306.048','2.60054','7200','6.0','0','-751.021','604.79','-306.048','2.60054','1','0','0','0','');
INSERT INTO `creature` VALUES ('33494','6212','90','3456','0','-755.573','580.21','-303.699','3.80482','7200','5.0','0','-755.573','580.21','-303.699','3.80482','1','0','0','1','');
INSERT INTO `creature` VALUES ('33495','6224','90','6936','0','-589.443','686.069','-327.001','2.94961','7200','2.0','0','-589.443','686.069','-327.001','2.94961','1','0','0','1','');
INSERT INTO `creature` VALUES ('33496','6232','90','6889','0','-738.366','705.214','-317.977','2.00713','7200','3.0','0','-738.366','705.214','-317.977','2.00713','1','0','0','1','');
INSERT INTO `creature` VALUES ('33497','6212','90','3456','0','-677.469','541.743','-285.982','2.49582','7200','2.0','0','-677.469','541.743','-285.982','2.49582','1','0','0','1','');
INSERT INTO `creature` VALUES ('33498','6212','90','3456','0','-738.731','663.921','-325.031','6.14356','7200','2.0','0','-738.731','663.921','-325.031','6.14356','1','0','0','1','');
INSERT INTO `creature` VALUES ('33499','6212','90','3456','0','-742.175','581.596','-290.977','3.61283','7200','6.0','0','-742.175','581.596','-290.977','3.61283','1','0','0','0','');
INSERT INTO `creature` VALUES ('33500','6212','90','3456','0','-771.775','601.896','-290.977','6.12611','7200','6.0','0','-771.775','601.896','-290.977','6.12611','1','0','0','0','');
INSERT INTO `creature_addon` VALUES ('17971','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('19225','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('23963','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30114','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30115','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30116','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30117','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30118','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30119','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30120','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30121','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30122','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30123','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30124','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30125','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30126','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30127','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30128','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30129','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30130','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30131','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30132','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30133','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30134','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30135','0','16777472','7','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30136','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30137','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30138','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30139','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30140','0','16908544','0','4097','0','8279','9','25','255','0');
INSERT INTO `creature_addon` VALUES ('30141','0','16908544','0','4097','0','8279','9','25','255','0');
INSERT INTO `creature_addon` VALUES ('30142','0','16908544','0','4097','0','8279','9','25','255','0');
INSERT INTO `creature_addon` VALUES ('30143','0','16908544','0','4097','0','8279','9','25','255','0');
INSERT INTO `creature_addon` VALUES ('30144','0','16908544','0','4097','0','8279','9','25','255','0');
INSERT INTO `creature_addon` VALUES ('30145','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30146','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30147','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30148','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30149','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30150','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30151','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30152','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30153','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30154','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30155','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30156','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30157','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30158','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30159','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30160','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30161','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30162','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30163','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30164','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30165','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30166','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30167','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30168','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30169','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30170','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30171','0','16908544','0','4097','0','0','0','7709','65535','0');
INSERT INTO `creature_addon` VALUES ('30172','0','16777472','0','4097','173','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30173','0','16777472','0','4097','173','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30174','0','16908544','0','4097','0','0','0','7709','65535','0');
INSERT INTO `creature_addon` VALUES ('30175','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30176','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30177','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30178','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30179','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30180','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30181','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30182','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30183','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30184','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30185','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30186','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30187','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30188','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30189','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30190','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30191','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30192','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30193','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30194','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30195','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30196','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30197','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30198','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30199','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30200','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30201','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30202','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30203','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30204','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30205','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30206','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30207','0','131584','0','4097','0','10348','11','7453','65535','0');
INSERT INTO `creature_addon` VALUES ('30208','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30209','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30210','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30211','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30212','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30213','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30214','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30215','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30216','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30217','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30218','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30219','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30220','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30221','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30222','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30223','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30224','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30225','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30226','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30227','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30228','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30229','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30230','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30231','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30232','0','512','0','4097','0','13864','9','29','255','0');
INSERT INTO `creature_addon` VALUES ('30233','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30234','0','66048','0','4097','0','13864','9','30','255','0');
INSERT INTO `creature_addon` VALUES ('30235','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30236','0','512','0','4097','0','13864','9','29','255','0');
INSERT INTO `creature_addon` VALUES ('30237','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30238','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30239','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30240','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30241','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30242','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30243','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30244','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30245','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30246','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30247','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30248','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30249','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30250','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30251','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30252','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30253','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30254','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30255','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30256','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30257','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30258','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30259','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30260','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30261','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30262','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30263','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30264','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30265','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30266','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30267','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30268','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30269','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30270','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30271','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30272','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30273','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30274','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30275','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30276','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30277','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30278','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30279','0','16908544','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('30280','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30281','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30282','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30283','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30284','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30285','0','16908544','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('30286','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30287','0','16908544','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('30288','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30289','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30290','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30291','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30292','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30293','0','16908544','0','4097','0','0','0','7709','65535','0');
INSERT INTO `creature_addon` VALUES ('30294','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30295','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30296','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30297','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30298','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30299','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30300','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30301','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30302','0','131584','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('30303','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30304','0','131584','0','4097','0','0','0','29','255','0');
INSERT INTO `creature_addon` VALUES ('30305','0','131584','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30306','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30307','0','131584','0','4097','0','0','0','7453','65535','0');
INSERT INTO `creature_addon` VALUES ('30308','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30309','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30310','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30311','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30312','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30313','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30314','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30315','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30316','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30317','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30318','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30319','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30320','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30321','0','16777472','7','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30322','0','16843008','7','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30323','0','66048','8','4097','0','13864','9','29','255','0');
INSERT INTO `creature_addon` VALUES ('30324','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30325','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30326','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30327','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30328','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30329','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30330','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30331','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30332','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30333','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30334','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30335','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30336','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30337','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30338','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30339','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30340','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30341','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30342','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30343','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30344','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30345','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30346','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30348','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30349','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30350','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30351','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30352','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30353','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30354','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30355','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30356','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30357','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30358','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30360','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30361','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30362','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30363','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30364','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30365','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30366','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30367','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30368','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30369','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30370','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30371','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30372','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30373','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30374','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30375','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30376','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30377','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30378','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30379','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30380','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30381','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30382','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30383','0','16777472','0','4097','173','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30384','0','16908544','0','4097','0','0','0','7710','65535','0');
INSERT INTO `creature_addon` VALUES ('30385','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30386','0','16908544','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('30387','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30388','0','131584','0','4097','0','10348','11','7709','65535','0');
INSERT INTO `creature_addon` VALUES ('30389','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30390','0','131584','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('30391','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30392','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30393','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30394','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30395','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30396','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30397','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30398','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30399','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30400','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31796','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31797','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31944','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31981','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31982','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31983','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31984','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31985','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31986','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31987','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31988','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31989','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31990','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31991','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31992','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31993','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31994','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31995','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31996','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31997','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31998','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('31999','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32000','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32001','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32002','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32003','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32004','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32005','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32006','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32007','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32008','0','16908544','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('32013','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32014','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32103','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('32104','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33390','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33395','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33396','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33397','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33398','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33399','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33400','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33401','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33402','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33403','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33404','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33405','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33421','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33422','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33423','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33426','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33427','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33428','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33429','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33430','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33431','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33432','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33433','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33434','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33435','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33436','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33437','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33438','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33439','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33440','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33441','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33442','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33443','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33444','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33445','0','16908544','0','4097','0','0','0','29','255','0');
INSERT INTO `creature_addon` VALUES ('33446','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33447','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33448','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33449','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33450','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33451','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33452','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33453','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33454','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33455','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33456','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33457','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33458','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33459','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33460','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33471','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33472','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33473','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33474','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33475','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33476','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33477','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33478','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33479','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33480','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33481','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33482','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33483','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33484','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33485','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33486','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33487','0','16908544','0','4097','0','0','0','30','255','0');
INSERT INTO `creature_addon` VALUES ('33488','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33489','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33490','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33491','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33492','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33493','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33494','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33495','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33496','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33497','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33498','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33499','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33500','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_movement` VALUES ('30134','1','-560.593','147.863','-202.15','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30134','2','-590.097','110.219','-202.126','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30134','3','-586.146','78.2422','-202.644','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30134','4','-590.097','110.219','-202.126','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30143','1','-738.311','655.926','-321.81','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30143','2','-733.438','675.642','-330.584','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30143','3','-718.991','704.119','-330.783','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30143','4','-700.181','707.052','-330.782','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30143','5','-718.991','704.119','-330.783','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30143','6','-733.438','675.642','-330.584','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30216','1','-509.529','100.519','-154.744','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30216','2','-501.695','65.7604','-154.8','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30216','3','-532.57','34.6277','-153.071','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30216','4','-501.695','65.7604','-154.8','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30226','1','-532.052','164.641','-155.236','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30226','2','-512.561','174.285','-155.236','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30226','3','-492.059','162.03','-154.697','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30226','4','-512.561','174.285','-155.236','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30330','1','-442.733','219.312','-207.906','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30330','2','-445.246','250.45','-207.906','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30330','3','-461.878','263.906','-207.906','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30330','4','-445.246','250.45','-207.906','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `gameobject` VALUES ('6388','142208','90','-486.665','647.652','-327.485','2.70526','0.0','0.0','0.976296','0.21644','3600','100','0');
INSERT INTO `gameobject` VALUES ('6447','146085','90','-505.096','-93.973','-147.814','-2.77507','0.0','0.0','0.983255','-0.182235','3600','100','0');
INSERT INTO `gameobject` VALUES ('6582','142214','90','-551.574','706.112','-325.738','0.662801','0.037235','-0.102301','0.323633','0.939899','3600','100','0');
INSERT INTO `gameobject` VALUES ('6726','142215','90','-515.979','708.01','-325.738','-0.236043','-0.010907','-0.108319','-0.116839','0.987166','3600','100','0');
INSERT INTO `gameobject` VALUES ('6748','142216','90','-492.593','681.819','-325.738','-1.13489','-0.056883','-0.092824','-0.534106','0.838379','3600','100','0');
INSERT INTO `gameobject` VALUES ('6755','142213','90','-521.022','621.549','-327.485','1.81514','0.0','0.0','0.78801','0.615662','3600','100','0');
INSERT INTO `gameobject` VALUES ('6910','142207','90','-618.608','691.118','-327.049','2.88852','0.0','0.0','0.992005','0.126199','3600','100','0');
INSERT INTO `gameobject` VALUES ('9265','142210','90','-518.904','718.472','-327.505','-1.78024','0.0','0.0','-0.777146','0.62932','3600','100','0');
INSERT INTO `gameobject` VALUES ('9593','142211','90','-561.236','709.881','-327.485','-0.881392','0.0','0.0','-0.426569','0.904455','3600','100','0');
INSERT INTO `gameobject` VALUES ('11977','142217','90','-497.995','647.425','-325.738','-2.03373','-0.091561','-0.058894','-0.845298','0.523086','3600','100','0');
INSERT INTO `gameobject` VALUES ('11994','142209','90','-485.723','690.871','-327.5','-2.67908','0.0','0.0','0.973379','-0.2292','3600','100','0');
INSERT INTO `gameobject` VALUES ('12003','90858','90','-758.538','260.386','-273.049','2.22529','0.0','0.0','0.896873','0.442289','3600','100','0');
INSERT INTO `gameobject` VALUES ('14139','85556','90','-806.887','323.963','-271.656','2.21308','0.0','0.0','0.894154','0.447759','3600','100','0');
INSERT INTO `gameobject` VALUES ('14140','142218','90','-528.375','630.048','-325.738','-2.93258','0.108055','0.013268','0.988611','-0.103907','3600','100','0');
INSERT INTO `gameobject` VALUES ('15766','142219','90','-560.737','643.358','-325.738','2.45177','0.103089','-0.034994','0.935582','0.335908','3600','100','0');
INSERT INTO `gameobject` VALUES ('16565','144179','90','-547.903','167.259','-193.804','-1.55334','0.0','0.0','-0.70091','0.71325','3600','100','0');
INSERT INTO `gameobject` VALUES ('17633','146086','90','-541.607','-105.434','-151.829','0.767944','0.0','0.0','0.374606','0.927184','3600','100','0');
INSERT INTO `gameobject` VALUES ('28327','142212','90','-562.961','632.162','-327.485','0.916298','0.0','0.0','0.442289','0.896873','3600','100','0');
INSERT INTO `gameobject` VALUES ('28487','142475','90','-563.833','154.52','-202.151','-1.98968','0.0','0.0','0.838671','-0.544639','3600','100','0');
INSERT INTO `gameobject` VALUES ('28683','142475','90','-562.086','125.454','-202.145','-3.12414','0.0','0.0','0.999962','-0.008727','3600','100','0');
INSERT INTO `gameobject` VALUES ('28934','142475','90','-550.357','101.493','-202.102','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('29116','142475','90','-546.673','129.436','-202.151','1.55334','0.0','0.0','0.700909','0.71325','3600','100','0');
INSERT INTO `gameobject` VALUES ('29196','142476','90','-555.494','488.075','-216.81','-1.81514','0.0','0.0','0.788011','-0.615661','3600','100','0');
INSERT INTO `gameobject` VALUES ('29513','142476','90','-554.104','487.732','-216.81','-1.8326','0.0','0.0','0.793353','-0.608761','3600','100','0');
INSERT INTO `gameobject` VALUES ('30560','142476','90','-555.275','488.978','-216.81','1.32645','0.0','0.0','0.615662','0.788011','3600','100','0');
INSERT INTO `gameobject` VALUES ('31904','142476','90','-553.812','488.616','-216.81','1.309','0.0','0.0','0.608761','0.793353','3600','100','0');
INSERT INTO `gameobject` VALUES ('32379','142696','90','-864.416','394.925','-316.429','0.645772','0.0','0.0','0.317305','0.948324','3600','100','0');
INSERT INTO `gameobject` VALUES ('32380','142696','90','-842.562','369.682','-316.873','2.30383','0.0','0.0','0.913545','0.406737','3600','100','0');
INSERT INTO `gameobject` VALUES ('32381','142696','90','-857.861','399.913','-316.423','-2.47837','0.0','0.0','0.945519','-0.325568','3600','100','0');
INSERT INTO `gameobject` VALUES ('32382','19020','90','-472.186','509.814','-230.602','-0.453786','0.0','0.0','0.224951','-0.97437','3600','100','0');
INSERT INTO `gameobject` VALUES ('32383','19020','90','-541.045','15.7146','-179.734','2.30383','0.0','0.0','0.913545','0.406737','3600','100','0');
INSERT INTO `gameobject` VALUES ('32384','142487','90','-519.316','163.12','-193.73','1.06465','0.0','0.0','0.507538','0.861629','3600','100','0');
INSERT INTO `gameobject` VALUES ('32385','175084','90','-550.033','206.148','-193.723','-2.05949','0.0','0.0','0.857167','-0.515038','3600','100','0');
INSERT INTO `gameobject` VALUES ('32386','175085','90','-496.932','185.134','-193.71','0.977384','0.0','0.0','0.469472','0.882948','3600','100','0');
INSERT INTO `gameobject` VALUES ('32387','142477','90','-459.943','634.926','-325.315','2.6529','0.0','0.0','0.970296','0.241922','3600','100','0');
INSERT INTO `gameobject` VALUES ('32388','142344','90','-821.033','296.943','-272.596','1.74533','0.0','0.0','0.766044','0.642788','3600','100','0');
INSERT INTO `gameobject` VALUES ('32389','142344','90','-425.91','33.8693','-207.919','2.54818','0.0','0.0','0.956305','0.292372','3600','100','0');
INSERT INTO `gameobject` VALUES ('32390','142344','90','-613.813','50.1167','-199.653','1.51844','0.0','0.0','0.688355','0.725374','3600','100','0');
INSERT INTO `gameobject` VALUES ('32391','142344','90','-651.159','404.573','-273.063','1.43117','0.0','0.0','0.656059','0.75471','3600','100','0');
INSERT INTO `gameobject` VALUES ('32392','142344','90','-497.876','268.348','-207.906','2.68781','0.0','0.0','0.97437','0.224951','3600','100','0');
INSERT INTO `gameobject` VALUES ('32393','142344','90','-495.907','463.871','-273.07','1.5708','0.0','0.0','0.707107','0.707107','3600','100','0');
INSERT INTO `gameobject` VALUES ('32394','142344','90','-484.388','524.049','-273.068','-1.95477','0.0','0.0','0.829038','-0.559193','3600','100','0');
INSERT INTO `gameobject` VALUES ('32395','142344','90','-623.627','715.784','-327.056','-1.50098','0.0','0.0','0.681998','-0.731354','3600','100','0');
INSERT INTO `gameobject` VALUES ('32396','142344','90','-857.707','357.317','-316.873','-1.97222','0.0','0.0','0.833886','-0.551937','3600','100','0');
INSERT INTO `gameobject` VALUES ('32397','142344','90','-577.389','429.721','-230.602','-2.25148','0.0','0.0','0.902585','-0.430511','3600','100','0');
INSERT INTO `gameobject` VALUES ('32398','3659','90','-571.492','510.91','-216.81','-2.61799','0.0','0.0','0.965926','-0.258819','3600','100','0');
INSERT INTO `gameobject` VALUES ('32399','74448','90','-754.344','364.0','-272.596','2.80998','0.0','0.0','0.986286','0.165048','3600','100','0');
INSERT INTO `gameobject` VALUES ('32400','142344','90','-618.898','546.456','-230.602','2.09439','0.0','0.0','0.866025','0.5','3600','100','0');
INSERT INTO `gameobject` VALUES ('32401','142344','90','-650.266','507.459','-273.061','0.174533','0.0','0.0','0.087156','0.996195','3600','100','0');
INSERT INTO `gameobject` VALUES ('32402','142344','90','-598.683','441.687','-230.601','0.226893','0.0','0.0','0.113203','0.993572','3600','100','0');
INSERT INTO `gameobject` VALUES ('32403','142344','90','-440.51','195.739','-207.906','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('32404','142344','90','-619.782','463.787','-230.602','-0.575959','0.0','0.0','0.284015','-0.95882','3600','100','0');
INSERT INTO `gameobject` VALUES ('32405','142344','90','-494.991','445.379','-230.602','0.680678','0.0','0.0','0.333807','0.942641','3600','100','0');
INSERT INTO `gameobject` VALUES ('32406','142344','90','-640.366','115.257','-183.875','1.50098','0.0','0.0','0.681998','0.731354','3600','100','0');
INSERT INTO `gameobject` VALUES ('32407','142344','90','-893.433','346.016','-272.596','0.069813','0.0','0.0','0.034899','0.999391','3600','100','0');
INSERT INTO `gameobject` VALUES ('32408','142344','90','-737.696','252.43','-273.08','2.86234','0.0','0.0','0.990268','0.139173','3600','100','0');
INSERT INTO `gameobject` VALUES ('32409','142344','90','-360.87','139.481','-154.743','0.174533','0.0','0.0','0.087156','0.996195','3600','100','0');
INSERT INTO `gameobject` VALUES ('32410','3695','90','-910.038','357.305','-272.596','-1.76278','0.0','0.0','0.771625','-0.636078','3600','100','0');
INSERT INTO `gameobject` VALUES ('32411','19020','90','-466.196','104.798','-150.114','0.226893','0.0','0.0','0.113203','0.993572','3600','100','0');
INSERT INTO `gameobject` VALUES ('32412','142344','90','-688.657','537.412','-290.292','0.069813','0.0','0.0','0.034899','0.999391','3600','100','0');
INSERT INTO `gameobject` VALUES ('32413','142344','90','-535.189','309.62','-216.94','-1.18682','0.0','0.0','0.559193','-0.829037','3600','100','0');
INSERT INTO `gameobject` VALUES ('32414','142344','90','-518.071','207.96','-155.237','2.53073','0.0','0.0','0.953717','0.300706','3600','100','0');
INSERT INTO `gameobject` VALUES ('32415','142344','90','-688.036','441.761','-273.062','1.58825','0.0','0.0','0.71325','0.700909','3600','100','0');
INSERT INTO `gameobject` VALUES ('32416','142344','90','-626.23','534.406','-230.602','0.10472','0.0','0.0','0.052336','0.99863','3600','100','0');
INSERT INTO `gameobject` VALUES ('32417','142344','90','-449.446','470.808','-230.601','-0.244346','0.0','0.0','0.121869','-0.992546','3600','100','0');
INSERT INTO `gameobject` VALUES ('32418','142344','90','-503.163','288.431','-211.552','-1.65806','0.0','0.0','0.737277','-0.67559','3600','100','0');
INSERT INTO `gameobject` VALUES ('32419','142344','90','-639.499','98.2576','-183.267','2.49582','0.0','0.0','0.948324','0.317305','3600','100','0');
INSERT INTO `gameobject` VALUES ('32420','142344','90','-614.765','446.326','-273.06','3.01942','0.0','0.0','0.998135','0.061049','3600','100','0');
INSERT INTO `gameobject` VALUES ('32421','142344','90','-554.923','524.83','-273.063','-1.13446','0.0','0.0','0.5373','-0.843391','3600','100','0');
INSERT INTO `gameobject` VALUES ('32422','74448','90','-440.175','81.8185','-151.476','1.25664','0.0','0.0','0.587785','0.809017','3600','100','0');
INSERT INTO `gameobject` VALUES ('32423','142344','90','-500.244','550.958','-273.07','0.680678','0.0','0.0','0.333807','0.942641','3600','100','0');
INSERT INTO `gameobject` VALUES ('32424','142344','90','-549.984','572.745','-273.072','1.58825','0.0','0.0','0.71325','0.700909','3600','100','0');
INSERT INTO `gameobject` VALUES ('32425','142344','90','-780.991','192.097','-273.082','-0.244346','0.0','0.0','0.121869','-0.992546','3600','100','0');
INSERT INTO `gameobject` VALUES ('32426','142344','90','-573.166','358.569','-231.679','1.309','0.0','0.0','0.608761','0.793353','3600','100','0');
INSERT INTO `gameobject` VALUES ('32427','142344','90','-560.135','587.789','-230.602','2.98451','0.0','0.0','0.996917','0.078459','3600','100','0');
INSERT INTO `gameobject` VALUES ('32428','142344','90','-771.775','368.892','-272.59','-0.715585','0.0','0.0','0.350207','-0.936672','3600','100','0');
INSERT INTO `gameobject` VALUES ('32429','142344','90','-441.089','235.067','-207.907','0.890118','0.0','0.0','0.430511','0.902585','3600','100','0');
INSERT INTO `gameobject` VALUES ('32430','142344','90','-737.905','683.435','-330.783','-1.15192','0.0','0.0','0.544639','-0.838671','3600','100','0');
INSERT INTO `gameobject` VALUES ('32431','142344','90','-835.579','507.531','-303.937','-1.6057','0.0','0.0','0.71934','-0.694658','3600','100','0');
INSERT INTO `gameobject` VALUES ('32432','142344','90','-824.705','434.837','-272.596','-1.81514','0.0','0.0','0.788011','-0.615661','3600','100','0');
INSERT INTO `gameobject` VALUES ('32433','142344','90','-474.898','39.9007','-207.411','-0.698132','0.0','0.0','0.34202','-0.939693','3600','100','0');
INSERT INTO `gameobject` VALUES ('32434','142344','90','-798.868','397.023','-316.433','2.70526','0.0','0.0','0.976296','0.21644','3600','100','0');
INSERT INTO `gameobject` VALUES ('32435','142344','90','-508.935','436.862','-230.602','3.05433','0.0','0.0','0.999048','0.043619','3600','100','0');
INSERT INTO `gameobject` VALUES ('32436','142344','90','-565.759','306.406','-213.012','1.62316','0.0','0.0','0.725374','0.688355','3600','100','0');
INSERT INTO `gameobject` VALUES ('32437','142344','90','-676.904','694.759','-331.384','-1.0821','0.0','0.0','0.515038','-0.857167','3600','100','0');
INSERT INTO `gameobject` VALUES ('32438','142344','90','-750.604','633.824','-314.793','-2.25148','0.0','0.0','0.902585','-0.430511','3600','100','0');
INSERT INTO `gameobject` VALUES ('32439','142344','90','-585.429','401.097','-230.601','1.97222','0.0','0.0','0.833886','0.551937','3600','100','0');
INSERT INTO `gameobject` VALUES ('32440','74448','90','-630.556','66.5022','-183.275','2.75762','0.0','0.0','0.981627','0.190809','3600','100','0');
INSERT INTO `gameobject` VALUES ('32441','19020','90','-527.599','-134.657','-152.499','0.174533','0.0','0.0','0.087156','0.996195','3600','100','0');
UPDATE `gameobject_template` SET `type`='11', `displayId`='808', `name`='Plunger', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '80022';
UPDATE `gameobject_template` SET `type`='11', `displayId`='807', `name`='Vator', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '80023';
UPDATE `gameobject_template` SET `type`='0', `displayId`='2230', `name`='Cave In', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '146085';
UPDATE `gameobject_template` SET `type`='0', `displayId`='2230', `name`='Cave In', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '146086';
UPDATE `gameobject_template` SET `type`='0', `displayId`='907', `name`='Workshop Door', `data0`='0', `data1`='92', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '90858';
UPDATE `gameobject_template` SET `type`='3', `displayId`='2089', `name`='Artificial Extrapolator', `data0`='93', `data1`='6799', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `type`='3', `displayId`='259', `name`='Large Solid Chest', `data0`='57', `data1`='4075', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='1', `data11`='0', `data12`='1', `data13`='0', `data14`='0', `data15`='1', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `type`='3', `displayId`='335', `name`='Box of Assorted Parts', `data0`='57', `data1`='2955', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `type`='11', `displayId`='852', `name`='Vator2', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '85556';
UPDATE `gameobject_template` SET `type`='2', `displayId`='2091', `name`='Matrix Punchograph 3005-B', `data0`='93', `data1`='0', `data2`='0', `data3`='1047', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `type`='19', `displayId`='2190', `name`='Mailbox', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `type`='2', `displayId`='2373', `name`='The Sparklematic 5200', `data0`='0', `data1`='2416', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `type`='2', `displayId`='2373', `name`='The Sparklematic 5200', `data0`='0', `data1`='3772', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `type`='2', `displayId`='2373', `name`='The Sparklematic 5200', `data0`='0', `data1`='3771', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `type`='0', `displayId`='907', `name`='The Final Chamber', `data0`='0', `data1`='86', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142207';
UPDATE `gameobject_template` SET `type`='2', `displayId`='2091', `name`='Matrix Punchograph 3005-C', `data0`='93', `data1`='0', `data2`='0', `data3`='1049', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `type`='3', `displayId`='334', `name`='Barrel of Melon Juice', `data0`='57', `data1`='2601', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `type`='2', `displayId`='2091', `name`='Matrix Punchograph 3005-D', `data0`='93', `data1`='0', `data2`='0', `data3`='1050', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `type`='3', `displayId`='336', `name`='Food Crate', `data0`='57', `data1`='2600', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `type`='1', `displayId`='2007', `name`='Gnome Face 01', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142211';
UPDATE `gameobject_template` SET `type`='1', `displayId`='339', `name`='Button', `data0`='0', `data1`='0', `data2`='196608', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142214';
UPDATE `gameobject_template` SET `type`='1', `displayId`='339', `name`='Button', `data0`='0', `data1`='0', `data2`='196608', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142219';
UPDATE `gameobject_template` SET `type`='1', `displayId`='2007', `name`='Gnome Face 06', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142212';
UPDATE `gameobject_template` SET `type`='1', `displayId`='339', `name`='Button', `data0`='0', `data1`='0', `data2`='196608', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142215';
UPDATE `gameobject_template` SET `type`='1', `displayId`='2007', `name`='Gnome Face 02', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142210';
UPDATE `gameobject_template` SET `type`='1', `displayId`='2007', `name`='Gnome Face 05', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142213';
UPDATE `gameobject_template` SET `type`='1', `displayId`='339', `name`='Button', `data0`='0', `data1`='0', `data2`='196608', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142217';
UPDATE `gameobject_template` SET `type`='1', `displayId`='339', `name`='Button', `data0`='0', `data1`='0', `data2`='196608', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142218';
UPDATE `gameobject_template` SET `type`='1', `displayId`='339', `name`='Button', `data0`='0', `data1`='0', `data2`='196608', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142216';
UPDATE `gameobject_template` SET `type`='1', `displayId`='2007', `name`='Gnome Face 03', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142209';
UPDATE `gameobject_template` SET `type`='1', `displayId`='2007', `name`='Gnome Face 04', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142208';
UPDATE `gameobject_template` SET `type`='3', `displayId`='10', `name`='Thermaplugg\'s Safe', `data0`='479', `data1`='6978', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '142477';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '40', `faction` = '0' WHERE `entry` = '80022';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '40', `faction` = '0' WHERE `entry` = '80023';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '32', `faction` = '114' WHERE `entry` = '146085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '32', `faction` = '114' WHERE `entry` = '146086';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '34', `faction` = '0' WHERE `entry` = '90858';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '40', `faction` = '0' WHERE `entry` = '85556';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '55' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '55' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '40', `faction` = '0' WHERE `entry` = '85556';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '55' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.614902', `flags` = '32', `faction` = '0' WHERE `entry` = '142207';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '55' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '55' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142487';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '55' WHERE `entry` = '144179';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142475';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.614902', `flags` = '32', `faction` = '0' WHERE `entry` = '142207';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '175084';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '32', `faction` = '114' WHERE `entry` = '146085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '32', `faction` = '114' WHERE `entry` = '146086';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142476';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '19020';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '32', `faction` = '114' WHERE `entry` = '146086';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '32', `faction` = '114' WHERE `entry` = '146085';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.614902', `flags` = '32', `faction` = '0' WHERE `entry` = '142207';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '74448';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142696';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142211';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142214';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142219';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142212';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142219';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142212';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142214';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142211';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142215';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142210';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142213';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142217';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142218';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142216';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142209';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142208';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142477';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '142344';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142215';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '114' WHERE `entry` = '142210';
UPDATE `gameobject_template` SET `size` = '2.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '142214';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6213';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '1800', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6210';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6208';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '1800', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6210';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6208';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6208';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6213';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6208';
UPDATE `creature_template` SET `faction_A` = '64', `faction_H` = '64', `npcflag` = '0', flags = '4096', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7843';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7079';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875', `npcflag` = '5', flags = '512', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '9676';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7079';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7079';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7079';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875', `npcflag` = '5', flags = '512', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '9676';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '1', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7998';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875', `npcflag` = '5', flags = '512', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '9676';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '2', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7850';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7079';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '2', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7850';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875', `npcflag` = '5', flags = '512', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '9676';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7079';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875', `npcflag` = '5', flags = '512', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '9676';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '594', `faction_H` = '594', `npcflag` = '0', flags = '768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7897';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6219';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6220';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6218';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '3', `dynamicflags` = '0' WHERE `entry` = '6207';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6211';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6329';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6206';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6391';
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875', `npcflag` = '5', flags = '512', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '9676';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6392';
UPDATE `creature_template` SET `faction_A` = '23', `faction_H` = '23', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6407';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7800';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '889', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6235';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6235';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6235';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '1333', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6235';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6223';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6235';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6230';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6229';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6229';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '1333', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6233';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '1333', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6227';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7800';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7800';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '0', flags = '33555200', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '13876';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '2048', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '8035';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6226';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '0', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7849';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32832', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6212';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '0', flags = '33555200', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '13876';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6232';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6234';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6224';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '64', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6225';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '7603';
UPDATE `creature_template` SET `faction_A` = '63', `faction_H` = '63', `npcflag` = '0', flags = '32768', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '6222';
UPDATE `creature_template` SET `modelid_A` = '990', `modelid_H` = '990', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Irradiated Invader', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6213';
UPDATE `creature_template` SET `modelid_A` = '726', `modelid_H` = '726', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Caverndeep Pillager', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6210';
UPDATE `creature_template` SET `modelid_A` = '4905', `modelid_H` = '4905', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Caverndeep Invader', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6208';
UPDATE `creature_template` SET `modelid_A` = '6973', `modelid_H` = '6974', `modelid_A2` = '6975', `modelid_H2` = '6976', `name` = 'Gnomeregan Evacuee', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='1', `RacialLeader`='0'WHERE `entry` = '7843';
UPDATE `creature_template` SET `modelid_A` = '976', `modelid_H` = '976', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Irradiated Pillager', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6329';
UPDATE `creature_template` SET `modelid_A` = '830', `modelid_H` = '830', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Caverndeep Burrower', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6206';
UPDATE `creature_template` SET `modelid_A` = '358', `modelid_H` = '358', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Irradiated Slime', `subname`='', `rank`='1', `family`='0', `type`='10', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6218';
UPDATE `creature_template` SET `modelid_A` = '11137', `modelid_H` = '11137', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Corrosive Lurker', `subname`='', `rank`='1', `family`='0', `type`='10', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6219';
UPDATE `creature_template` SET `modelid_A` = '764', `modelid_H` = '764', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Caverndeep Ambusher', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6207';
UPDATE `creature_template` SET `modelid_A` = '5497', `modelid_H` = '5497', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Viscous Fallout', `subname`='', `rank`='1', `family`='0', `type`='4', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '7079';
UPDATE `creature_template` SET `modelid_A` = '4907', `modelid_H` = '4907', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Irradiated Horror', `subname`='', `rank`='1', `family`='0', `type`='4', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6220';
UPDATE `creature_template` SET `modelid_A` = '10285', `modelid_H` = '10285', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Caverndeep Reaver', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6211';
UPDATE `creature_template` SET `modelid_A` = '6888', `modelid_H` = '6888', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Alarm-a-bomb 2600', `subname`='', `rank`='0', `family`='0', `type`='9', `flag1`='0', `civilian`='1', `RacialLeader`='0'WHERE `entry` = '7897';
UPDATE `creature_template` SET `modelid_A` = '6610', `modelid_H` = '6611', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Holdout Warrior', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6391';
UPDATE `creature_template` SET `modelid_A` = '6608', `modelid_H` = '6609', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Holdout Medic', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6392';
UPDATE `creature_template` SET `modelid_A` = '6628', `modelid_H` = '6629', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Holdout Technician', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6407';
UPDATE `creature_template` SET `modelid_A` = '9027', `modelid_H` = '9027', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Tink Sprocketwhistle', `subname`='Engineering Supplies', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='1', `RacialLeader`='0'WHERE `entry` = '9676';
UPDATE `creature_template` SET `modelid_A` = '6978', `modelid_H` = '6978', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mechanized Sentry', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6233';
UPDATE `creature_template` SET `modelid_A` = '6982', `modelid_H` = '6981', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Leprous Defender', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6223';
UPDATE `creature_template` SET `modelid_A` = '6888', `modelid_H` = '6888', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mobile Alert System', `subname`='', `rank`='0', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '7849';
UPDATE `creature_template` SET `modelid_A` = '7138', `modelid_H` = '7138', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Blastmaster Emi Shortfuse', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '7998';
UPDATE `creature_template` SET `modelid_A` = '7132', `modelid_H` = '7132', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Kernobee', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='1', `RacialLeader`='0'WHERE `entry` = '7850';
UPDATE `creature_template` SET `modelid_A` = '6980', `modelid_H` = '6980', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mekgineer Thermaplugg', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '7800';
UPDATE `creature_template` SET `modelid_A` = '6967', `modelid_H` = '6968', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Leprous Assistant', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '7603';
UPDATE `creature_template` SET `modelid_A` = '6932', `modelid_H` = '6933', `modelid_A2` = '6934', `modelid_H2` = '6935', `name` = 'Leprous Technician', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6222';
UPDATE `creature_template` SET `modelid_A` = '5926', `modelid_H` = '5926', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mechano-Tank', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6225';
UPDATE `creature_template` SET `modelid_A` = '8369', `modelid_H` = '8369', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Peacekeeper Security Suit', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6230';
UPDATE `creature_template` SET `modelid_A` = '6915', `modelid_H` = '6915', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Electrocutioner 6000', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6235';
UPDATE `creature_template` SET `modelid_A` = '3456', `modelid_H` = '3456', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Dark Iron Agent', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6212';
UPDATE `creature_template` SET `modelid_A` = '6979', `modelid_H` = '6979', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mechanized Guardian', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6234';
UPDATE `creature_template` SET `modelid_A` = '6936', `modelid_H` = '6937', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Leprous Machinesmith', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6224';
UPDATE `creature_template` SET `modelid_A` = '6889', `modelid_H` = '6889', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Arcane Nullifier X-21', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6232';
UPDATE `creature_template` SET `modelid_A` = '6890', `modelid_H` = '6890', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mechano-Flamewalker', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6226';
UPDATE `creature_template` SET `modelid_A` = '6891', `modelid_H` = '6891', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mechano-Frostwalker', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6227';
UPDATE `creature_template` SET `modelid_A` = '6774', `modelid_H` = '6774', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Crowd Pummeler 9-60', `subname`='', `rank`='1', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '6229';
UPDATE `creature_template` SET `modelid_A` = '11686', `modelid_H` = '11686', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Mekgineer Trigger', `subname`='', `rank`='0', `family`='0', `type`='10', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '13876';
UPDATE `creature_template` SET `modelid_A` = '6271', `modelid_H` = '6271', `modelid_A2` = '0', `modelid_H2` = '0', `name` = 'Dark Iron Land Mine', `subname`='', `rank`='0', `family`='0', `type`='9', `flag1`='0', `civilian`='0', `RacialLeader`='0'WHERE `entry` = '8035';
UPDATE `creature_model_info` SET `bounding_radius`='0.92575',`combat_reach`='1.725' WHERE `modelid`=830;
UPDATE `creature_model_info` SET `bounding_radius`='0.805',`combat_reach`='1.5' WHERE `modelid`=976;
UPDATE `creature_model_info` SET `bounding_radius`='0.68425',`combat_reach`='1.275' WHERE `modelid`=990;
UPDATE `creature_model_info` SET `bounding_radius`='0.805',`combat_reach`='1.5' WHERE `modelid`=4905;
UPDATE `creature_model_info` SET `bounding_radius`='0.5',`combat_reach`='1.5' WHERE `modelid`=4907;
UPDATE `creature_model_info` SET `bounding_radius`='1.0',`combat_reach`='2.0' WHERE `modelid`=5926;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6608;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6609;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6611;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6628;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6629;
UPDATE `creature_model_info` SET `bounding_radius`='0.6',`combat_reach`='0.8' WHERE `modelid`=6888;
UPDATE `creature_model_info` SET `bounding_radius`='1.1',`combat_reach`='2.2' WHERE `modelid`=6890;
UPDATE `creature_model_info` SET `bounding_radius`='1.1',`combat_reach`='2.2' WHERE `modelid`=6891;
UPDATE `creature_model_info` SET `bounding_radius`='1.2',`combat_reach`='2.4' WHERE `modelid`=6915;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6932;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6933;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6934;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6935;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6936;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6967;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=6968;
UPDATE `creature_model_info` SET `bounding_radius`='0.35',`combat_reach`='2.5' WHERE `modelid`=6978;
UPDATE `creature_model_info` SET `bounding_radius`='0.42',`combat_reach`='3.0' WHERE `modelid`=6979;
UPDATE `creature_model_info` SET `combat_reach`='2.5' WHERE `modelid`=6980;
UPDATE `creature_model_info` SET `bounding_radius`='0.38709',`combat_reach`='1.8975' WHERE `modelid`=6981;
UPDATE `creature_model_info` SET `bounding_radius`='0.38709',`combat_reach`='1.8975' WHERE `modelid`=6982;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=7132;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=7138;
UPDATE `creature_model_info` SET `bounding_radius`='1.125',`combat_reach`='1.125' WHERE `modelid`=8369;
UPDATE `creature_model_info` SET `bounding_radius`='0.3519',`combat_reach`='1.725' WHERE `modelid`=9027;
INSERT IGNORE INTO `creature_equip_template` VALUES (1731,7494,0,16752,50267138,0,33492994,1805,0,25);
INSERT IGNORE INTO `creature_equip_template` VALUES (1732,7428,0,6593,33488898,0,33489666,781,0,26);
INSERT IGNORE INTO `creature_equip_template` VALUES (1733,7494,0,16752,50267138,0,33492994,1805,0,25);
INSERT IGNORE INTO `creature_equip_template` VALUES (1734,7483,21539,0,33490690,33490436,0,781,1038,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1735,7487,0,6593,33490690,0,33489666,781,0,26);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (SELECT DISTINCT `id` FROM `creature` WHERE `map`=90);
UPDATE `creature_template` SET `equipment_id`=861 WHERE `entry`=6206;
UPDATE `creature_template` SET `equipment_id`=220 WHERE `entry`=6207;
UPDATE `creature_template` SET `equipment_id`=344 WHERE `entry`=6208;
UPDATE `creature_template` SET `equipment_id`=193 WHERE `entry`=6210;
UPDATE `creature_template` SET `equipment_id`=774 WHERE `entry`=6211;
UPDATE `creature_template` SET `equipment_id`=242 WHERE `entry`=6212;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=6213;
UPDATE `creature_template` SET `equipment_id`=1731 WHERE `entry`=6222;
UPDATE `creature_template` SET `equipment_id`=1732 WHERE `entry`=6223;
UPDATE `creature_template` SET `equipment_id`=1733 WHERE `entry`=6224;
UPDATE `creature_template` SET `equipment_id`=1734 WHERE `entry`=6391;
UPDATE `creature_template` SET `equipment_id`=145 WHERE `entry`=6392;
UPDATE `creature_template` SET `equipment_id`=754 WHERE `entry`=6407;
UPDATE `creature_template` SET `equipment_id`=1735 WHERE `entry`=7843;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=9676;
UPDATE `npc_text` SET `text0_0` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '1693';
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (30136, 1693);

-- Shadowfang Keep redone
delete from creature_addon where guid in (select guid from creature where map=33);
delete from creature_movement where id in (select guid from creature where map=33);
delete from gameobject where map=33;
delete from npc_gossip where npc_guid in (select guid from creature where map=33);
delete from creature where map=33;
INSERT INTO `creature` VALUES ('2114','3861','33','801','0','-212.892','2102.81','76.9773','6.00393','7200','6.0','0','-212.892','2102.81','76.9773','6.00393','1','0','0','0','');
INSERT INTO `creature` VALUES ('3478','3861','33','801','0','-236.623','2118.53','87.0845','6.00393','7200','2.0','0','-236.623','2118.53','87.0845','6.00393','1','0','0','0','');
INSERT INTO `creature` VALUES ('3479','3851','33','729','0','-205.378','2117.15','81.1379','1.0472','7200','5.0','0','-205.378','2117.15','81.1379','1.0472','1','0','0','0','');
INSERT INTO `creature` VALUES ('3480','3851','33','729','0','-246.705','2136.28','81.2629','2.32129','7200','5.0','0','-246.705','2136.28','81.2629','2.32129','1','0','0','0','');
INSERT INTO `creature` VALUES ('3481','3861','33','801','0','-191.003','2125.8','81.585','0.418879','7200','5.0','0','-191.003','2125.8','81.585','0.418879','1','0','0','0','');
INSERT INTO `creature` VALUES ('3482','3851','33','729','0','-194.589','2133.5','81.584','6.03884','7200','5.0','0','-194.589','2133.5','81.584','6.03884','1','0','0','0','');
INSERT INTO `creature` VALUES ('3483','3851','33','729','0','-246.827','2115.07','87.0959','2.79253','7200','2.0','0','-246.827','2115.07','87.0959','2.79253','1','0','0','0','');
INSERT INTO `creature` VALUES ('11514','3851','33','729','0','-206.364','2130.33','86.5839','5.88176','7200','6.0','0','-206.364','2130.33','86.5839','5.88176','1','0','0','0','');
INSERT INTO `creature` VALUES ('13352','3861','33','801','0','-255.29','2129.89','81.2629','1.74533','7200','6.0','0','-255.29','2129.89','81.2629','1.74533','1','0','0','0','');
INSERT INTO `creature` VALUES ('13353','3861','33','801','0','-258.757','2121.37','81.2629','1.50098','7200','6.0','0','-258.757','2121.37','81.2629','1.50098','1','0','0','0','');
INSERT INTO `creature` VALUES ('13354','2110','33','1141','0','-212.2','2295.34','96.0127','1.76915','7200','2.0','0','-212.2','2295.34','96.0127','1.76915','1','0','0','1','');
INSERT INTO `creature` VALUES ('13355','2110','33','1141','0','-204.552','2255.98','76.2013','6.02718','7200','5.0','0','-204.552','2255.98','76.2013','6.02718','1','0','0','1','');
INSERT INTO `creature` VALUES ('13356','2110','33','1141','0','-154.571','2184.39','99.9595','5.3058','7200','2.0','0','-154.571','2184.39','99.9595','5.3058','1','0','0','1','');
INSERT INTO `creature` VALUES ('16230','2110','33','1141','0','-241.8','2113.14','87.013','2.12899','7200','5.0','0','-241.8','2113.14','87.013','2.12899','1','0','0','1','');
INSERT INTO `creature` VALUES ('16231','2110','33','1141','0','-227.76','2234.48','79.7656','5.4449','7200','3.0','0','-227.76','2234.48','79.7656','5.4449','1','0','0','1','');
INSERT INTO `creature` VALUES ('16232','2110','33','1141','0','-205.049','2135.94','86.4996','1.36241','7200','5.0','0','-205.049','2135.94','86.4996','1.36241','1','0','0','1','');
INSERT INTO `creature` VALUES ('16233','2110','33','1141','0','-254.61','2290.36','76.3315','2.80136','7200','5.0','0','-254.61','2290.36','76.3315','2.80136','1','0','0','1','');
INSERT INTO `creature` VALUES ('16234','2110','33','1141','0','-232.683','2111.82','76.974','4.10152','7200','5.0','0','-232.683','2111.82','76.974','4.10152','1','0','0','1','');
INSERT INTO `creature` VALUES ('16235','2110','33','1141','0','-179.144','2184.82','97.265','6.11683','7200','2.0','0','-179.144','2184.82','97.265','6.11683','1','0','0','1','');
INSERT INTO `creature` VALUES ('16236','2110','33','1141','0','-121.052','2152.03','101.517','3.00286','7200','3.0','0','-121.052','2152.03','101.517','3.00286','1','0','0','1','');
INSERT INTO `creature` VALUES ('16237','3927','33','11179','0','-120.725','2162.03','155.762','2.67035','43200','6.0','0','-120.725','2162.03','155.762','2.67035','1','0','0','0','');
INSERT INTO `creature` VALUES ('16238','3863','33','2446','0','-118.703','2173.42','155.762','3.35103','7200','1.0','0','-118.703','2173.42','155.762','3.35103','1','0','0','1','');
INSERT INTO `creature` VALUES ('16239','3861','33','801','0','-127.63','2153.28','155.762','2.16421','7200','5.0','0','-127.63','2153.28','155.762','2.16421','1','0','0','0','');
INSERT INTO `creature` VALUES ('16240','3862','33','11421','0','-139.407','2182.91','155.762','5.09636','7200','2.0','0','-139.407','2182.91','155.762','5.09636','1','0','0','1','');
INSERT INTO `creature` VALUES ('16241','5058','33','246','0','-149.213','2163.18','155.762','0.10472','7200','2.0','0','-149.213','2163.18','155.762','0.10472','1','0','0','1','');
INSERT INTO `creature` VALUES ('16242','3914','33','524','0','-252.091','2123.11','81.1795','0.919918','43200','5.0','0','-252.091','2123.11','81.1795','0.919918','1','0','0','1','');
INSERT INTO `creature` VALUES ('16243','3859','33','736','0','-140.88','2182.66','110.256','5.97856','7200','1.0','0','-140.88','2182.66','110.256','5.97856','1','0','0','1','');
INSERT INTO `creature` VALUES ('16244','3859','33','736','0','-181.282','2189.59','113.5','5.90112','7200','2.0','0','-181.282','2189.59','113.5','5.90112','1','0','0','1','');
INSERT INTO `creature` VALUES ('16245','2529','33','1098','0','-121.846','2162.59','138.697','4.52578','7200','3.0','0','-121.846','2162.59','138.697','4.52578','1','0','0','1','');
INSERT INTO `creature` VALUES ('16246','2529','33','1098','0','-107.516','2153.47','101.603','4.31096','7200','2.0','0','-107.516','2153.47','101.603','4.31096','1','0','0','1','');
INSERT INTO `creature` VALUES ('16247','3863','33','2446','0','-111.421','2166.52','101.603','0.244346','7200','3.0','0','-111.421','2166.52','101.603','0.244346','1','0','0','1','');
INSERT INTO `creature` VALUES ('16248','2529','33','1098','0','-134.141','2163.83','94.1253','6.17846','7200','3.0','0','-134.141','2163.83','94.1253','6.17846','1','0','0','1','');
INSERT INTO `creature` VALUES ('16249','3859','33','736','0','-181.106','2172.01','97.4733','1.09956','7200','2.0','0','-181.106','2172.01','97.4733','1.09956','1','0','0','1','');
INSERT INTO `creature` VALUES ('16250','3863','33','2446','0','-120.756','2183.02','113.215','4.13643','7200','2.0','0','-120.756','2183.02','113.215','4.13643','1','0','0','1','');
INSERT INTO `creature` VALUES ('16251','2529','33','1098','0','-172.131','2180.1','109.786','1.52493','7200','2.0','0','-172.131','2180.1','109.786','1.52493','1','0','0','1','');
INSERT INTO `creature` VALUES ('16252','3863','33','2446','0','-129.732','2176.27','94.1285','2.54818','7200','2.0','0','-129.732','2176.27','94.1285','2.54818','1','0','0','1','');
INSERT INTO `creature` VALUES ('16253','3886','33','524','0','-202.596','2257.96','76.2846','3.97935','43200','5.0','0','-202.596','2257.96','76.2846','3.97935','1','0','0','1','');
INSERT INTO `creature` VALUES ('16254','3887','33','3222','0','-275.342','2297.35','76.2365','5.89921','43200','6.0','0','-275.342','2297.35','76.2365','5.89921','1','0','0','0','');
INSERT INTO `creature` VALUES ('16255','4275','33','2353','0','-76.7541','2152.41','155.792','2.49582','43200','6.0','0','-76.7541','2152.41','155.792','2.49582','1','0','0','0','');
INSERT INTO `creature` VALUES ('16256','4278','33','3223','0','-222.592','2259.44','102.839','3.47321','7200','6.0','0','-222.592','2259.44','102.839','3.47321','1','0','0','0','');
INSERT INTO `creature` VALUES ('16257','4279','33','522','0','-236.708','2146.08','100.112','4.46804','43200','2.0','0','-236.708','2146.08','100.112','4.46804','1','0','0','1','');
INSERT INTO `creature` VALUES ('16258','3868','33','1955','0','-248.788','2122.86','100.112','1.58825','7200','2.0','0','-248.788','2122.86','100.112','1.58825','1','0','0','1','');
INSERT INTO `creature` VALUES ('16259','3866','33','8808','0','-243.174','2126.93','100.112','6.07375','7200','2.0','0','-243.174','2126.93','100.112','6.07375','1','0','0','1','');
INSERT INTO `creature` VALUES ('16260','4444','33','2689','0','-217.991','2150.77','81.1327','2.79253','7200','6.0','0','-217.991','2150.77','81.1327','2.79253','1','0','0','0','');
INSERT INTO `creature` VALUES ('16261','3849','33','2006','0','-243.712','2113.72','81.2629','2.86234','7200','6.0','0','-243.712','2113.72','81.2629','2.86234','1','0','0','0','');
INSERT INTO `creature` VALUES ('16262','3850','33','2005','0','-240.904','2122.55','81.2629','2.47837','7200','6.0','0','-240.904','2122.55','81.2629','2.47837','1','0','0','0','');
INSERT INTO `creature` VALUES ('16263','3853','33','729','0','-195.475','2203.13','79.8469','4.43314','7200','6.0','0','-195.475','2203.13','79.8469','4.43314','1','0','0','0','');
INSERT INTO `creature` VALUES ('16264','3853','33','729','0','-200.86','2191.01','79.8479','3.28122','7200','6.0','0','-200.86','2191.01','79.8479','3.28122','1','0','0','0','');
INSERT INTO `creature` VALUES ('16265','3862','33','11421','0','-205.823','2213.78','79.7605','4.8275','7200','5.0','0','-205.823','2213.78','79.7605','4.8275','1','0','0','1','');
INSERT INTO `creature` VALUES ('16266','3853','33','729','0','-209.369','2242.35','79.8495','5.86431','7200','6.0','0','-209.369','2242.35','79.8495','5.86431','1','0','0','0','');
INSERT INTO `creature` VALUES ('16267','3862','33','11421','0','-220.82','2153.53','81.2106','4.72984','7200','6.0','0','-220.82','2153.53','81.2106','4.72984','1','0','0','0','');
INSERT INTO `creature` VALUES ('16268','3862','33','11421','0','-214.404','2146.14','80.9466','2.11928','7200','6.0','0','-214.404','2146.14','80.9466','2.11928','1','0','0','0','');
INSERT INTO `creature` VALUES ('16269','3853','33','729','0','-230.152','2158.71','81.2356','0.191986','7200','6.0','0','-230.152','2158.71','81.2356','0.191986','1','0','0','0','');
INSERT INTO `creature` VALUES ('16270','3853','33','729','0','-177.16','2212.52','80.0965','1.50098','7200','6.0','0','-177.16','2212.52','80.0965','1.50098','1','0','0','0','');
INSERT INTO `creature` VALUES ('16271','3853','33','729','0','-223.387','2202.71','79.8452','1.46608','7200','6.0','0','-223.387','2202.71','79.8452','1.46608','1','0','0','0','');
INSERT INTO `creature` VALUES ('16272','3853','33','729','0','-199.144','2220.97','79.8411','6.26573','7200','6.0','0','-199.144','2220.97','79.8411','6.26573','1','0','0','0','');
INSERT INTO `creature` VALUES ('16273','3875','33','3230','0','-203.744','2214.27','79.7623','5.98658','7200','5.0','0','-203.744','2214.27','79.7623','5.98658','1','0','0','0','');
INSERT INTO `creature` VALUES ('16274','3875','33','3229','0','-157.688','2228.26','82.8521','1.32299','7200','2.0','0','-157.688','2228.26','82.8521','1.32299','1','0','0','0','');
INSERT INTO `creature` VALUES ('16275','3875','33','3229','0','-222.213','2159.76','79.8473','0.890118','7200','6.0','0','-222.213','2159.76','79.8473','0.890118','1','0','0','0','');
INSERT INTO `creature` VALUES ('16276','3875','33','3229','0','-205.234','2208.91','79.7644','1.31889','7200','6.0','0','-205.234','2208.91','79.7644','1.31889','1','0','0','0','');
INSERT INTO `creature` VALUES ('16277','3875','33','3230','0','-162.57','2222.21','82.0461','4.21227','7200','5.0','0','-162.57','2222.21','82.0461','4.21227','1','0','0','0','');
INSERT INTO `creature` VALUES ('16278','3875','33','3229','0','-192.787','2249.88','76.2846','3.19395','7200','5.0','0','-192.787','2249.88','76.2846','3.19395','1','0','0','0','');
INSERT INTO `creature` VALUES ('16279','3875','33','3230','0','-182.096','2231.79','76.3246','1.71042','7200','5.0','0','-182.096','2231.79','76.3246','1.71042','1','0','0','0','');
INSERT INTO `creature` VALUES ('16280','3875','33','3229','0','-193.134','2257.3','76.2846','4.95674','7200','5.0','0','-193.134','2257.3','76.2846','4.95674','1','0','0','0','');
INSERT INTO `creature` VALUES ('16281','3875','33','3229','0','-179.083','2236.49','76.3246','0.541052','7200','6.0','0','-179.083','2236.49','76.3246','0.541052','1','0','0','0','');
INSERT INTO `creature` VALUES ('16282','3875','33','3230','0','-261.486','2287.64','75.0826','5.3058','7200','2.0','0','-261.486','2287.64','75.0826','5.3058','1','0','0','0','');
INSERT INTO `creature` VALUES ('16283','3875','33','3229','0','-239.912','2289.25','75.0827','0.715585','7200','5.0','0','-239.912','2289.25','75.0827','0.715585','1','0','0','0','');
INSERT INTO `creature` VALUES ('16284','3857','33','202','0','-235.827','2276.78','75.0827','3.45575','7200','5.0','0','-235.827','2276.78','75.0827','3.45575','1','0','0','1','');
INSERT INTO `creature` VALUES ('16285','3857','33','202','0','-251.413','2294.92','75.0826','1.88496','7200','2.0','0','-251.413','2294.92','75.0826','1.88496','1','0','0','1','');
INSERT INTO `creature` VALUES ('16286','3875','33','3230','0','-229.406','2272.55','75.0827','0.977384','7200','5.0','0','-229.406','2272.55','75.0827','0.977384','1','0','0','0','');
INSERT INTO `creature` VALUES ('16288','3857','33','202','0','-226.455','2278.76','74.9993','4.36755','7200','2.0','0','-226.455','2278.76','74.9993','4.36755','1','0','0','1','');
INSERT INTO `creature` VALUES ('16289','3857','33','202','0','-245.364','2280.52','75.0826','0.139626','7200','5.0','0','-245.364','2280.52','75.0826','0.139626','1','0','0','1','');
INSERT INTO `creature` VALUES ('16290','3875','33','3230','0','-254.424','2283.28','75.0826','4.2586','7200','2.0','0','-254.424','2283.28','75.0826','4.2586','1','0','0','0','');
INSERT INTO `creature` VALUES ('16291','3875','33','3230','0','-230.603','2284.89','75.0827','1.44862','7200','2.0','0','-230.603','2284.89','75.0827','1.44862','1','0','0','0','');
INSERT INTO `creature` VALUES ('16292','3875','33','3229','0','-262.139','2296.84','75.4708','2.87979','7200','2.0','0','-262.139','2296.84','75.4708','2.87979','1','0','0','0','');
INSERT INTO `creature` VALUES ('16293','3877','33','3226','0','-221.775','2252.1','102.841','4.2237','7200','2.0','0','-221.775','2252.1','102.841','4.2237','1','0','0','1','');
INSERT INTO `creature` VALUES ('16294','3877','33','3226','0','-241.655','2256.07','100.977','6.0912','7200','3.0','0','-241.655','2256.07','100.977','6.0912','1','0','0','1','');
INSERT INTO `creature` VALUES ('16295','3875','33','3229','0','-256.982','2249.59','100.976','1.50098','7200','3.0','0','-256.982','2249.59','100.976','1.50098','1','0','0','0','');
INSERT INTO `creature` VALUES ('16296','3877','33','3226','0','-250.506','2237.95','100.98','1.58825','7200','3.0','0','-250.506','2237.95','100.98','1.58825','1','0','0','1','');
INSERT INTO `creature` VALUES ('16297','3877','33','3226','0','-259.918','2242.56','100.977','3.03687','7200','3.0','0','-259.918','2242.56','100.977','3.03687','1','0','0','1','');
INSERT INTO `creature` VALUES ('16298','3877','33','3226','0','-232.226','2250.59','101.885','6.23082','7200','3.0','0','-232.226','2250.59','101.885','6.23082','1','0','0','1','');
INSERT INTO `creature` VALUES ('16299','3875','33','3230','0','-229.849','2261.64','102.84','2.46091','7200','2.0','0','-229.849','2261.64','102.84','2.46091','1','0','0','0','');
INSERT INTO `creature` VALUES ('16300','3875','33','3230','0','-247.221','2247.53','100.977','3.66519','7200','3.0','0','-247.221','2247.53','100.977','3.66519','1','0','0','0','');
INSERT INTO `creature` VALUES ('16313','3875','33','3229','0','-250.079','2262.77','100.972','2.04204','7200','6.0','0','-250.079','2262.77','100.972','2.04204','1','0','0','0','');
INSERT INTO `creature` VALUES ('16314','3855','33','657','0','-266.808','2314.64','95.9498','0.488692','7200','2.0','0','-266.808','2314.64','95.9498','0.488692','1','0','0','1','');
INSERT INTO `creature` VALUES ('16315','3855','33','657','0','-278.912','2323.63','95.8664','5.92198','7200','2.0','0','-278.912','2323.63','95.8664','5.92198','1','0','0','1','');
INSERT INTO `creature` VALUES ('16318','3855','33','657','0','-258.117','2319.79','96.9054','6.23082','7200','2.0','0','-258.117','2319.79','96.9054','6.23082','1','0','0','1','');
INSERT INTO `creature` VALUES ('16319','3855','33','657','0','-277.793','2322.1','95.9498','3.49066','7200','2.0','0','-277.793','2322.1','95.9498','3.49066','1','0','0','1','');
INSERT INTO `creature` VALUES ('16343','3855','33','657','0','-284.357','2277.18','95.9498','0.314159','7200','3.0','0','-284.357','2277.18','95.9498','0.314159','1','0','0','1','');
INSERT INTO `creature` VALUES ('16403','3855','33','657','0','-194.644','2289.77','95.899','2.57587','7200','3.0','0','-194.644','2289.77','95.899','2.57587','1','0','0','1','');
INSERT INTO `creature` VALUES ('16436','3855','33','657','0','-299.004','2295.8','93.1101','0.296706','7200','2.0','0','-299.004','2295.8','93.1101','0.296706','1','0','0','1','');
INSERT INTO `creature` VALUES ('16437','3855','33','657','0','-186.911','2284.36','95.9823','6.21337','7200','2.0','0','-186.911','2284.36','95.9823','6.21337','1','0','0','1','');
INSERT INTO `creature` VALUES ('16438','3855','33','657','0','-273.394','2273.13','95.9498','2.04204','7200','3.0','0','-273.394','2273.13','95.9498','2.04204','1','0','0','1','');
INSERT INTO `creature` VALUES ('16439','3855','33','657','0','-251.357','2307.46','95.9498','3.89208','7200','2.0','0','-251.357','2307.46','95.9498','3.89208','1','0','0','1','');
INSERT INTO `creature` VALUES ('16440','3864','33','1951','0','-234.131','2236.26','79.8619','0.296706','7200','6.0','0','-234.131','2236.26','79.8619','0.296706','1','0','0','0','');
INSERT INTO `creature` VALUES ('16441','3864','33','1951','0','-223.612','2245.72','79.8583','5.13127','7200','6.0','0','-223.612','2245.72','79.8583','5.13127','1','0','0','0','');
INSERT INTO `creature` VALUES ('16442','3864','33','1951','0','-217.135','2247.13','79.8579','4.88692','7200','5.0','0','-217.135','2247.13','79.8579','4.88692','1','0','0','0','');
INSERT INTO `creature` VALUES ('16443','3873','33','3225','0','-205.822','2105.25','97.3899','1.07407','7200','3.0','0','-205.822','2105.25','97.3899','1.07407','1','0','0','1','');
INSERT INTO `creature` VALUES ('16444','3877','33','3226','0','-248.504','2183.63','93.9309','4.4644','7200','2.0','0','-248.504','2183.63','93.9309','4.4644','1','0','0','1','');
INSERT INTO `creature` VALUES ('16445','3873','33','3225','0','-241.873','2111.72','97.4733','5.86999','7200','6.0','0','-241.873','2111.72','97.4733','5.86999','1','0','0','0','');
INSERT INTO `creature` VALUES ('16448','3877','33','3226','0','-255.961','2149.2','91.913','4.22951','7200','6.0','0','-255.961','2149.2','91.913','4.22951','1','0','0','0','');
INSERT INTO `creature` VALUES ('16449','3877','33','3226','0','-251.156','2175.53','94.02','1.61463','7200','2.0','0','-251.156','2175.53','94.02','1.61463','1','0','0','1','');
INSERT INTO `creature` VALUES ('17901','3873','33','3225','0','-182.666','2164.29','97.4733','4.39701','7200','6.0','0','-182.666','2164.29','97.4733','4.39701','1','0','0','0','');
INSERT INTO `creature` VALUES ('17956','3877','33','3226','0','-252.301','2168.82','93.9366','1.09352','7200','2.0','0','-252.301','2168.82','93.9366','1.09352','1','0','0','1','');
INSERT INTO `creature` VALUES ('18183','3873','33','3225','0','-186.698','2137.24','97.3899','4.28856','7200','6.0','0','-186.698','2137.24','97.3899','4.28856','1','0','0','0','');
INSERT INTO `creature` VALUES ('18189','3873','33','3225','0','-191.989','2129.11','97.4733','1.29655','7200','3.0','0','-191.989','2129.11','97.4733','1.29655','1','0','0','1','');
INSERT INTO `creature` VALUES ('18241','3873','33','3225','0','-194.844','2120.18','97.4733','1.11768','7200','3.0','0','-194.844','2120.18','97.4733','1.11768','1','0','0','1','');
INSERT INTO `creature` VALUES ('18302','17822','33','17263','0','-239.492','2132.84','81.2629','2.87979','7200','6.0','0','-239.492','2132.84','81.2629','2.87979','1','0','0','0','');
INSERT INTO `creature` VALUES ('18304','3861','33','801','0','-204.481','2139.15','86.5832','1.42291','7200','1.0','0','-204.481','2139.15','86.5832','1.42291','1','0','0','0','');
INSERT INTO `creature` VALUES ('18308','3851','33','729','0','-207.244','2102.16','76.9773','1.88094','7200','6.0','0','-207.244','2102.16','76.9773','1.88094','1','0','0','0','');
INSERT INTO `creature` VALUES ('18312','3861','33','801','0','-197.316','2111.16','81.1401','5.9909','7200','5.0','0','-197.316','2111.16','81.1401','5.9909','1','0','0','0','');
INSERT INTO `creature` VALUES ('18313','3851','33','729','0','-243.039','2129.03','87.0962','1.45932','7200','6.0','0','-243.039','2129.03','87.0962','1.45932','1','0','0','0','');
INSERT INTO `creature` VALUES ('18316','2110','33','1141','0','-256.649','2241.38','100.892','0.181911','7200','5.0','0','-256.649','2241.38','100.892','0.181911','1','0','0','1','');
INSERT INTO `creature` VALUES ('18392','2110','33','1141','0','-126.499','2153.87','155.678','5.60377','7200','3.0','0','-126.499','2153.87','155.678','5.60377','1','0','0','1','');
INSERT INTO `creature` VALUES ('18401','3863','33','2446','0','-128.064','2186.77','113.215','2.67035','7200','2.0','0','-128.064','2186.77','113.215','2.67035','1','0','0','1','');
INSERT INTO `creature` VALUES ('18403','3859','33','736','0','-143.452','2162.7','94.1247','0.069813','7200','6.0','0','-143.452','2162.7','94.1247','0.069813','1','0','0','0','');
INSERT INTO `creature` VALUES ('18431','3859','33','736','0','-169.686','2171.7','94.0461','5.93232','7200','6.0','0','-169.686','2171.7','94.0461','5.93232','1','0','0','0','');
INSERT INTO `creature` VALUES ('18690','3863','33','2446','0','-150.907','2182.17','99.9595','1.01229','7200','2.0','0','-150.907','2182.17','99.9595','1.01229','1','0','0','1','');
INSERT INTO `creature` VALUES ('18691','2529','33','1098','0','-94.8525','2150.37','145.004','3.07178','7200','5.0','0','-94.8525','2150.37','145.004','3.07178','1','0','0','1','');
INSERT INTO `creature` VALUES ('18692','3859','33','736','0','-149.101','2174.34','99.9595','2.86234','7200','3.0','0','-149.101','2174.34','99.9595','2.86234','1','0','0','1','');
INSERT INTO `creature` VALUES ('18693','3863','33','2446','0','-118.109','2152.18','101.603','5.72468','7200','2.0','0','-118.109','2152.18','101.603','5.72468','1','0','0','1','');
INSERT INTO `creature` VALUES ('18694','2529','33','1098','0','-106.86','2133.2','145.004','2.70526','7200','5.0','0','-106.86','2133.2','145.004','2.70526','1','0','0','1','');
INSERT INTO `creature` VALUES ('18695','2529','33','1098','0','-90.1872','2131.41','145.004','6.26573','7200','3.0','0','-90.1872','2131.41','145.004','6.26573','1','0','0','1','');
INSERT INTO `creature` VALUES ('18696','3859','33','736','0','-164.462','2192.41','138.287','1.03908','7200','3.0','0','-164.462','2192.41','138.287','1.03908','1','0','0','1','');
INSERT INTO `creature` VALUES ('18697','3862','33','11421','0','-192.438','2222.95','79.8431','2.94961','7200','5.0','0','-192.438','2222.95','79.8431','2.94961','1','0','0','1','');
INSERT INTO `creature` VALUES ('18698','3853','33','729','0','-207.099','2162.01','79.8483','0.623848','7200','6.0','0','-207.099','2162.01','79.8483','0.623848','1','0','0','0','');
INSERT INTO `creature` VALUES ('18699','3862','33','11421','0','-169.934','2244.22','86.3592','3.1765','7200','3.0','0','-169.934','2244.22','86.3592','3.1765','1','0','0','1','');
INSERT INTO `creature` VALUES ('18700','3853','33','729','0','-159.022','2243.51','86.0992','0.10472','7200','3.0','0','-159.022','2243.51','86.0992','0.10472','1','0','0','0','');
INSERT INTO `creature` VALUES ('18701','3862','33','11421','0','-198.594','2153.93','79.8471','4.46288','7200','5.0','0','-198.594','2153.93','79.8471','4.46288','1','0','0','1','');
INSERT INTO `creature` VALUES ('18702','3853','33','729','0','-195.926','2162.95','79.8327','0.456987','7200','6.0','0','-195.926','2162.95','79.8327','0.456987','1','0','0','0','');
INSERT INTO `creature` VALUES ('18703','3862','33','11421','0','-231.866','2165.91','79.8476','2.68061','7200','6.0','0','-231.866','2165.91','79.8476','2.68061','1','0','0','0','');
INSERT INTO `creature` VALUES ('18704','3853','33','729','0','-176.157','2250.3','86.5898','5.11381','7200','3.0','0','-176.157','2250.3','86.5898','5.11381','1','0','0','0','');
INSERT INTO `creature` VALUES ('18705','3853','33','729','0','-223.663','2209.45','79.8438','3.46964','7200','6.0','0','-223.663','2209.45','79.8438','3.46964','1','0','0','0','');
INSERT INTO `creature` VALUES ('18706','3853','33','729','0','-169.525','2220.66','80.5822','0.715585','7200','6.0','0','-169.525','2220.66','80.5822','0.715585','1','0','0','0','');
INSERT INTO `creature` VALUES ('18707','3855','33','657','0','-294.707','2279.39','95.8665','6.26476','7200','2.0','0','-294.707','2279.39','95.8665','6.26476','1','0','0','1','');
INSERT INTO `creature` VALUES ('18708','3855','33','657','0','-193.978','2271.01','90.8411','4.24008','7200','3.0','0','-193.978','2271.01','90.8411','4.24008','1','0','0','1','');
INSERT INTO `creature` VALUES ('18709','3877','33','3226','0','-232.178','2212.89','97.3452','4.49351','7200','2.0','0','-232.178','2212.89','97.3452','4.49351','1','0','0','1','');
INSERT INTO `creature` VALUES ('18710','2529','33','1098','0','-128.054','2179.05','112.778','1.74533','7200','1.0','0','-128.054','2179.05','112.778','1.74533','1','0','0','1','');
INSERT INTO `creature` VALUES ('18711','3859','33','736','0','-120.542','2161.02','101.603','6.03884','7200','2.0','0','-120.542','2161.02','101.603','6.03884','1','0','0','1','');
INSERT INTO `creature` VALUES ('18712','3862','33','11421','0','-204.012','2184.13','79.8488','4.31299','7200','6.0','0','-204.012','2184.13','79.8488','4.31299','1','0','0','0','');
INSERT INTO `creature` VALUES ('18713','3853','33','729','0','-217.143','2225.19','79.8432','4.5204','7200','6.0','0','-217.143','2225.19','79.8432','4.5204','1','0','0','0','');
INSERT INTO `creature` VALUES ('18714','4274','33','20180','0','-135.609','2168.66','128.779','2.86234','43200','6.0','0','-135.609','2168.66','128.779','2.86234','1','0','0','0','');
INSERT INTO `creature_addon` VALUES ('2114','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('3478','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('3479','0','512','0','4097','0','12544','13','18','255','0');
INSERT INTO `creature_addon` VALUES ('3480','0','512','0','4097','0','12544','13','18','255','0');
INSERT INTO `creature_addon` VALUES ('3481','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('3482','0','512','0','4097','0','12544','13','19','255','0');
INSERT INTO `creature_addon` VALUES ('3483','0','512','0','4097','0','12544','13','19','255','0');
INSERT INTO `creature_addon` VALUES ('11514','0','512','0','4097','0','12544','13','19','255','0');
INSERT INTO `creature_addon` VALUES ('13352','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('13353','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('13354','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('13355','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('13356','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16230','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16231','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16232','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16233','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16234','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16235','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16236','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16237','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16238','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16239','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16240','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16241','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16242','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16243','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16244','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16245','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16246','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16247','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16248','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16249','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16250','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16251','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16252','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16253','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16254','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16255','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16256','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16257','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16258','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16259','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16260','0','16777472','7','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16261','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16262','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16263','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16264','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16265','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16266','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16267','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16268','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16269','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16270','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16271','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16272','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16273','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16274','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16275','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16276','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16277','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16278','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16279','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16280','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16281','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16282','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16283','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16284','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16285','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16286','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16288','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16289','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16290','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16291','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16292','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16293','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16294','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16295','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16296','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16297','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16298','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16299','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16300','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16313','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16314','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16315','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16318','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16319','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16343','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16403','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16436','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16437','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16438','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16439','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16440','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16441','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16442','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16443','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16444','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16445','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16448','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('16449','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('17901','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('17956','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18183','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18189','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18241','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18302','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18304','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18308','0','512','0','4097','0','12544','13','18','255','0');
INSERT INTO `creature_addon` VALUES ('18312','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18313','0','512','0','4097','0','12544','13','18','255','0');
INSERT INTO `creature_addon` VALUES ('18316','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18392','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18401','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18403','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18431','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18690','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18691','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18692','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18693','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18694','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18695','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18696','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18697','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18698','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18699','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18700','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18701','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18702','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18703','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18704','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18705','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18706','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18707','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18708','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18709','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18710','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18711','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18712','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18713','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('18714','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `gameobject` VALUES ('20835','18895','33','-242.581','2159.05','90.6226','-1.94604','0.0','0.0','-0.82659','0.562805','5400','100','0');
INSERT INTO `gameobject` VALUES ('32442','18900','33','-252.696','2114.22','82.8052','4.71239','-0.131892','-0.694697','-0.131892','0.694697','5400','100','0');
INSERT INTO `gameobject` VALUES ('32443','101812','33','-236.251','2164.04','91.1562','1.5708','0.584487','0.397963','0.584487','-0.397963','5400','100','0');
INSERT INTO `gameobject` VALUES ('32444','101811','33','-245.598','2132.32','82.8052','4.71239','-0.131892','-0.694697','-0.131892','0.694697','5400','100','0');
INSERT INTO `gameobject` VALUES ('32445','18934','33','-251.244','2116.38','81.218','-0.375245','0.0','0.0','-0.186524','0.98245','5400','100','0');
INSERT INTO `gameobject` VALUES ('32446','18935','33','-244.14','2134.41','81.0625','-0.375245','0.0','0.0','-0.186524','0.98245','5400','100','0');
INSERT INTO `gameobject` VALUES ('32447','18973','33','-146.391','2173.0','150.543','-1.94604','0.0','0.0','-0.82659','0.562805','5400','100','0');
INSERT INTO `gameobject` VALUES ('32448','35594','33','-219.694','2259.45','77.338','-2.73144','0.0','0.0','0.979045','-0.203642','5400','100','0');
INSERT INTO `gameobject` VALUES ('32449','2061','33','-219.694','2259.45','77.338','-2.73144','0.0','0.0','0.979045','-0.203642','5400','100','0');
INSERT INTO `gameobject` VALUES ('32450','35595','33','-218.509','2260.46','77.338','0.802852','0.0','0.0','0.390731','0.920505','5400','100','0');
INSERT INTO `gameobject` VALUES ('32451','2061','33','-218.509','2260.46','77.338','0.802852','0.0','0.0','0.390731','0.920505','5400','100','0');
INSERT INTO `gameobject` VALUES ('32452','35597','33','-214.755','2272.27','77.338','-2.47837','0.0','0.0','0.945518','-0.325569','5400','100','0');
INSERT INTO `gameobject` VALUES ('32453','2061','33','-214.755','2272.27','77.338','-2.47837','0.0','0.0','0.945518','-0.325569','5400','100','0');
INSERT INTO `gameobject` VALUES ('32457','35593','33','-220.578','2258.18','77.338','-0.375245','0.0','0.0','-0.186524','0.98245','5400','100','0');
INSERT INTO `gameobject` VALUES ('32458','2061','33','-220.578','2258.18','77.338','-0.375245','0.0','0.0','-0.186524','0.98245','5400','100','0');
INSERT INTO `gameobject` VALUES ('32480','18899','33','-113.762','2165.08','157.855','4.71239','0.694697','-0.131892','0.694697','0.131892','5400','100','0');
INSERT INTO `gameobject` VALUES ('33219','18936','33','-247.757','2125.23','81.0625','-0.375245','0.0','0.0','-0.186524','0.98245','5400','100','0');
INSERT INTO `gameobject` VALUES ('33241','18971','33','-118.11','2161.86','155.678','2.76635','0.0','0.0','0.98245','0.186524','5400','100','0');
INSERT INTO `gameobject` VALUES ('33427','35598','33','-213.2','2273.37','77.338','-3.12414','0.0','0.0','0.999962','-0.008727','5400','100','0');
INSERT INTO `gameobject` VALUES ('33460','2061','33','-213.2','2273.37','77.338','-3.12414','0.0','0.0','0.999962','-0.008727','5400','100','0');
INSERT INTO `gameobject` VALUES ('33633','35596','33','-215.003','2270.45','77.338','-1.94604','0.0','0.0','-0.82659','0.562805','5400','100','0');
INSERT INTO `gameobject` VALUES ('33732','2061','33','-215.003','2270.45','77.338','-1.94604','0.0','0.0','-0.82659','0.562805','5400','100','0');
INSERT INTO `gameobject` VALUES ('33785','18972','33','-129.034','2166.16','129.187','-0.375245','0.0','0.0','-0.186524','0.98245','5400','100','0');
INSERT INTO `gameobject` VALUES ('34006','18901','33','-249.22','2123.1','82.8052','4.71239','-0.131892','-0.694697','-0.131892','0.694697','5400','100','0');
INSERT INTO `gameobject` VALUES ('34280','22567','33','-325.356','2089.16','30.2577','0.270526','0.0','0.0','0.134851','0.990866','5400','100','0');
INSERT INTO `gameobject` VALUES ('34865','2061','33','-325.356','2089.16','30.2577','0.270526','0.0','0.0','0.134851','0.990866','5400','100','0');
INSERT INTO `gameobject` VALUES ('35408','22566','33','-326.355','2089.7','25.3409','-1.91986','0.0','0.0','-0.819152','0.573577','5400','100','0');
INSERT INTO `gameobject` VALUES ('35409','2061','33','-326.355','2089.7','25.3409','-1.91986','0.0','0.0','-0.819152','0.573577','5400','100','0');
INSERT INTO `gameobject` VALUES ('35797','22563','33','-326.002','2090.32','25.3409','1.56207','0.0','0.0','0.704015','0.710186','5400','100','0');
INSERT INTO `gameobject` VALUES ('40655','2061','33','-326.002','2090.32','25.3409','1.56207','0.0','0.0','0.704015','0.710186','5400','100','0');
INSERT INTO `gameobject` VALUES ('40656','22564','33','-326.139','2089.7','30.2577','-1.91986','0.0','0.0','-0.819152','0.573577','5400','100','0');
INSERT INTO `gameobject` VALUES ('40657','2061','33','-326.139','2089.7','30.2577','-1.91986','0.0','0.0','-0.819152','0.573577','5400','100','0');
INSERT INTO `gameobject` VALUES ('40658','22565','33','-325.573','2089.16','25.3409','0.270526','0.0','0.0','0.134851','0.990866','5400','100','0');
INSERT INTO `gameobject` VALUES ('40659','2061','33','-325.573','2089.16','25.3409','0.270526','0.0','0.0','0.134851','0.990866','5400','100','0');
INSERT INTO `gameobject` VALUES ('40660','75295','33','-189.568','2122.88','97.3899','1.39626','0.0','0.0','0.642788','0.766044','5400','100','0');
INSERT INTO `gameobject` VALUES ('40661','3659','33','-197.138','2268.28','76.2013','-2.21657','0.0','0.0','0.894934','-0.446198','5400','100','0');
INSERT INTO `gameobject` VALUES ('40662','75293','33','-190.976','2225.68','79.7585','-1.23918','0.0','0.0','0.580703','-0.814116','5400','100','0');
INSERT INTO `gameobject` VALUES ('40663','3695','33','-206.199','2249.48','76.2013','1.16937','0.0','0.0','0.551937','0.833886','5400','100','0');
INSERT INTO `gameobject` VALUES ('40664','3659','33','-232.514','2290.86','74.9993','-2.02458','0.0','0.0','0.848048','-0.529919','5400','100','0');
INSERT INTO `gameobject` VALUES ('40665','75298','33','-106.541','2164.01','101.52','3.03687','0.0','0.0','0.99863','0.052336','5400','100','0');
INSERT INTO `gameobject` VALUES ('40666','3695','33','-257.011','2279.7','74.9993','1.23918','0.0','0.0','0.580703','0.814116','5400','100','0');
INSERT INTO `gameobject` VALUES ('40667','36738','33','-155.171','2185.61','130.643','0.785398','0.0','0.0','0.382683','0.92388','5400','100','0');
INSERT INTO `gameobject` VALUES ('40668','91138','33','-218.464','2237.2','80.7977','-2.18166','0.0','0.0','0.887011','-0.461749','5400','100','0');
INSERT INTO `gameobject` VALUES ('40669','182011','33','-207.395','2245.31','79.7689','-1.90241','0.0','0.0','0.814116','-0.580703','5400','100','0');
UPDATE `creature_template` SET `name` = 'Pyrewood Sentry', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '1894';
UPDATE `creature_template` SET `name` = 'Pyrewood Elder', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '1895';
UPDATE `creature_template` SET `name` = 'Bleak Worg', `subname`='', `rank`='1', `family`='1', `type`='1', `flag1`='1', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `name` = 'Shadowfang Whitescalp', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `name` = 'Black Rat', `subname`='', `rank`='0', `family`='0', `type`='8', `flag1`='0', `civilian`='1', `RacialLeader`='0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `name` = 'Rethilgore', `subname`='The Cell Keeper', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3914';
UPDATE `creature_template` SET `name` = 'Blood Seeker', `subname`='', `rank`='1', `family`='24', `type`='1', `flag1`='1', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3868';
UPDATE `creature_template` SET `name` = 'Vile Bat', `subname`='', `rank`='1', `family`='24', `type`='1', `flag1`='1', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3866';
UPDATE `creature_template` SET `name` = 'Deathstalker Adamant', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3849';
UPDATE `creature_template` SET `name` = 'Sorcerer Ashcrombe', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3850';
UPDATE `creature_template` SET `name` = 'Tormented Officer', `subname`='', `rank`='1', `family`='0', `type`='6', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `name` = 'Landen Stilwell', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='1', `RacialLeader`='0' WHERE `entry` = '17822';
UPDATE `creature_template` SET `name` = 'Shadowfang Ragetooth', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `name` = 'Son of Arugal', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `name` = 'Odo the Blindwatcher', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `name` = 'Arugal', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '10000';
UPDATE `creature_template` SET `name` = 'Deathstalker Vincent', `subname`='', `rank`='0', `family`='0', `type`='7', `flag1`='0', `civilian`='1', `RacialLeader`='0' WHERE `entry` = '4444';
UPDATE `creature_template` SET `name` = 'Shadowfang Moonwalker', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `name` = 'Slavering Worg', `subname`='', `rank`='1', `family`='1', `type`='1', `flag1`='1', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `name` = 'Haunted Servitor', `subname`='', `rank`='1', `family`='0', `type`='6', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `name` = 'Wailing Guardsman', `subname`='', `rank`='1', `family`='0', `type`='6', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `name` = 'Lupine Horror', `subname`='', `rank`='1', `family`='0', `type`='6', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `name` = 'Fel Steed', `subname`='', `rank`='1', `family`='0', `type`='1', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `name` = 'Fenrus the Devourer', `subname`='', `rank`='1', `family`='0', `type`='1', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '4274';
UPDATE `creature_template` SET `name` = 'Wolfguard Worg', `subname`='', `rank`='0', `family`='1', `type`='1', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '5058';
UPDATE `creature_template` SET `name` = 'Razorclaw the Butcher', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `name` = 'Commander Springvale', `subname`='', `rank`='1', `family`='0', `type`='6', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '4278';
UPDATE `creature_template` SET `name` = 'Shadowfang Glutton', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `name` = 'Shadowfang Darksoul', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `name` = 'Baron Silverlaine', `subname`='', `rank`='1', `family`='0', `type`='6', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3887';
UPDATE `creature_template` SET `name` = 'Wolf Master Nandos', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '3927';
UPDATE `creature_template` SET `name` = 'Archmage Arugal', `subname`='', `rank`='1', `family`='0', `type`='7', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '4275';
UPDATE `creature_template` SET `name` = 'Arugal\'s Voidwalker', `subname`='', `rank`='0', `family`='0', `type`='3', `flag1`='0', `civilian`='0', `RacialLeader`='0' WHERE `entry` = '4627';
UPDATE `creature_template` SET `faction_A` = '123', `faction_H` = '123', `npcflag` = '0', flags = '32832', `modelid_A` = '3551', `modelid_H` = '3551', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '1894';
UPDATE `creature_template` SET `faction_A` = '123', `faction_H` = '123', `npcflag` = '0', flags = '32832', `modelid_A` = '2535', `modelid_H` = '2535', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '1895';
UPDATE `creature_template` SET `faction_A` = '123', `faction_H` = '123', `npcflag` = '0', flags = '32832', `modelid_A` = '2535', `modelid_H` = '2535', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '1895';
UPDATE `creature_template` SET `faction_A` = '123', `faction_H` = '123', `npcflag` = '0', flags = '32832', `modelid_A` = '3551', `modelid_H` = '3551', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '1894';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3914';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1955', `modelid_H` = '1955', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3868';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '8808', `modelid_H` = '8808', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3866';
UPDATE `creature_template` SET `faction_A` = '68', `faction_H` = '68', `npcflag` = '1', flags = '37440', `modelid_A` = '2006', `modelid_H` = '2006', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3849';
UPDATE `creature_template` SET `faction_A` = '12', `faction_H` = '12', `npcflag` = '1', flags = '32832', `modelid_A` = '2005', `modelid_H` = '2005', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3850';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '1', flags = '32768', `modelid_A` = '17263', `modelid_H` = '17263', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '17822';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '320', `modelid_A` = '2353', `modelid_H` = '2353', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '10000';
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714', `npcflag` = '0', flags = '37376', `modelid_A` = '2689', `modelid_H` = '2689', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4444';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16', `npcflag` = '0', flags = '64', `modelid_A` = '20180', `modelid_H` = '20180', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4274';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '246', `modelid_H` = '246', `baseattacktime` = '1500', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '5058';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16', `npcflag` = '0', flags = '64', `modelid_A` = '20180', `modelid_H` = '20180', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4274';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '3200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3223', `modelid_H` = '3223', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4278';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '202', `modelid_H` = '202', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16', `npcflag` = '0', flags = '64', `modelid_A` = '20180', `modelid_H` = '20180', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4274';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '202', `modelid_H` = '202', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '202', `modelid_H` = '202', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '202', `modelid_H` = '202', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16', `npcflag` = '0', flags = '64', `modelid_A` = '20180', `modelid_H` = '20180', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4274';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '246', `modelid_H` = '246', `baseattacktime` = '1500', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '5058';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '202', `modelid_H` = '202', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3222', `modelid_H` = '3222', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3887';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '3200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '3200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714', `npcflag` = '2', flags = '37376', `modelid_A` = '2689', `modelid_H` = '2689', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4444';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '1', flags = '32768', `modelid_A` = '17263', `modelid_H` = '17263', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '17822';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '246', `modelid_H` = '246', `baseattacktime` = '1500', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '5058';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16', `npcflag` = '0', flags = '64', `modelid_A` = '20180', `modelid_H` = '20180', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4274';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '736', `modelid_H` = '736', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3859';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11179', `modelid_H` = '11179', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3927';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2446', `modelid_H` = '2446', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3863';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '3200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3223', `modelid_H` = '3223', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4278';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2353', `modelid_H` = '2353', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4275';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '1', flags = '32768', `modelid_A` = '17263', `modelid_H` = '17263', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '17822';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714', `npcflag` = '2', flags = '37376', `modelid_A` = '2689', `modelid_H` = '2689', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4444';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '8808', `modelid_H` = '8808', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3866';
UPDATE `creature_template` SET `faction_A` = '12', `faction_H` = '12', `npcflag` = '0', flags = '32832', `modelid_A` = '2005', `modelid_H` = '2005', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3850';
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `npcflag` = '1', flags = '32768', `modelid_A` = '17263', `modelid_H` = '17263', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '17822';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1955', `modelid_H` = '1955', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3868';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '3200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3223', `modelid_H` = '3223', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4278';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '202', `modelid_H` = '202', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3857';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2353', `modelid_H` = '2353', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4275';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '320', `modelid_A` = '2353', `modelid_H` = '2353', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4275';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '1131', `modelid_H` = '1131', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4627';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '1131', `modelid_H` = '1131', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4627';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '1131', `modelid_H` = '1131', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4627';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '0', `modelid_A` = '1131', `modelid_H` = '1131', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4627';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '524', `modelid_H` = '524', `baseattacktime` = '3200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3886';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3223', `modelid_H` = '3223', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4278';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714', `npcflag` = '2', flags = '37376', `modelid_A` = '2689', `modelid_H` = '2689', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4444';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15', `npcflag` = '0', flags = '64', `modelid_A` = '1951', `modelid_H` = '1951', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3864';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3230', `modelid_H` = '3230', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3229', `modelid_H` = '3229', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3875';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '657', `modelid_H` = '657', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3855';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '31', `faction_H` = '31', `npcflag` = '0', flags = '0', `modelid_A` = '1141', `modelid_H` = '1141', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2110';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '522', `modelid_H` = '522', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4279';
UPDATE `creature_template` SET `faction_A` = '714', `faction_H` = '714', `npcflag` = '2', flags = '37376', `modelid_A` = '2689', `modelid_H` = '2689', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4444';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3853';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '801', `modelid_H` = '801', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3861';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '11421', `modelid_H` = '11421', `baseattacktime` = '1200', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3862';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3226', `modelid_H` = '3226', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3877';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '729', `modelid_H` = '729', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3851';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '1098', `modelid_H` = '1098', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '2529';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '64', `modelid_A` = '2353', `modelid_H` = '2353', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '4275';
UPDATE `creature_template` SET `faction_A` = '24', `faction_H` = '24', `npcflag` = '0', flags = '32832', `modelid_A` = '3225', `modelid_H` = '3225', `baseattacktime` = '2000', `speed` = '1.2', `dynamicflags` = '0' WHERE `entry` = '3873';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '178845';
UPDATE `gameobject_template` SET `size` = '0.700000', `flags` = '0', `faction` = '0' WHERE `entry` = '1622';
UPDATE `gameobject_template` SET `size` = '0.842734', `flags` = '0', `faction` = '0' WHERE `entry` = '22567';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22564';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '22577';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22566';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22563';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.842734', `flags` = '0', `faction` = '0' WHERE `entry` = '22565';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '169997';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '169998';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '169999';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '170000';
UPDATE `gameobject_template` SET `size` = '0.700000', `flags` = '0', `faction` = '0' WHERE `entry` = '1622';
UPDATE `gameobject_template` SET `size` = '1.370000', `flags` = '34', `faction` = '114' WHERE `entry` = '18934';
UPDATE `gameobject_template` SET `size` = '1.370000', `flags` = '34', `faction` = '114' WHERE `entry` = '18936';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '34', `faction` = '114' WHERE `entry` = '18895';
UPDATE `gameobject_template` SET `size` = '1.370000', `flags` = '34', `faction` = '114' WHERE `entry` = '18935';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '34', `faction` = '114' WHERE `entry` = '18971';
UPDATE `gameobject_template` SET `size` = '1.725150', `flags` = '34', `faction` = '114' WHERE `entry` = '18972';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '18900';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101811';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '18901';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '2', `faction` = '94' WHERE `entry` = '75295';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '36738';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '18973';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '36738';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75298';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '0.842734', `flags` = '0', `faction` = '0' WHERE `entry` = '22567';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22566';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22563';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22564';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.842734', `flags` = '0', `faction` = '0' WHERE `entry` = '22565';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.842734', `flags` = '0', `faction` = '0' WHERE `entry` = '22567';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22566';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22563';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.841472', `flags` = '0', `faction` = '0' WHERE `entry` = '22564';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '0.842734', `flags` = '0', `faction` = '0' WHERE `entry` = '22565';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '36738';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35594';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35595';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35593';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35597';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35598';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35596';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '18973';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75298';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101811';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '36738';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '18900';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '18901';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '2', `faction` = '94' WHERE `entry` = '75295';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '18973';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '36738';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '18899';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75298';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35594';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35595';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35593';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101811';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '18901';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35594';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35595';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.430000', `flags` = '0', `faction` = '0' WHERE `entry` = '35593';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '14' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '2', `faction` = '94' WHERE `entry` = '75295';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `size` = '0.750000', `flags` = '0', `faction` = '94' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '94' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '2', `faction` = '94' WHERE `entry` = '75295';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '35' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '4', `faction` = '0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `type`='23', `displayId`='5498', `name`='Meeting Stone', `data0`='18', `data1`='32', `data2`='209', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '178845';
UPDATE `gameobject_template` SET `type`='3', `displayId`='358', `name`='Bruiseweed', `data0`='11', `data1`='1419', `data2`='0', `data3`='1', `data4`='1', `data5`='1', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '1622';
UPDATE `gameobject_template` SET `type`='8', `displayId`='199', `name`='Cozy Fire', `data0`='4', `data1`='8', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '22567';
UPDATE `gameobject_template` SET `type`='6', `displayId`='0', `name`='Campfire', `data0`='0', `data1`='1', `data2`='2', `data3`='7897', `data4`='0', `data5`='3', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '2061';
UPDATE `gameobject_template` SET `type`='8', `displayId`='199', `name`='Cozy Fire', `data0`='4', `data1`='8', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '22564';
UPDATE `gameobject_template` SET `type`='7', `displayId`='39', `name`='Wooden Chair', `data0`='1', `data1`='1', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '22577';
UPDATE `gameobject_template` SET `type`='8', `displayId`='199', `name`='Cozy Fire', `data0`='4', `data1`='8', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '22566';
UPDATE `gameobject_template` SET `type`='8', `displayId`='199', `name`='Cozy Fire', `data0`='4', `data1`='8', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '22563';
UPDATE `gameobject_template` SET `type`='8', `displayId`='199', `name`='Cozy Fire', `data0`='4', `data1`='8', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '22565';
UPDATE `gameobject_template` SET `type`='7', `displayId`='39', `name`='Wooden Chair', `data0`='1', `data1`='1', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '169997';
UPDATE `gameobject_template` SET `type`='7', `displayId`='39', `name`='Wooden Chair', `data0`='1', `data1`='1', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '169998';
UPDATE `gameobject_template` SET `type`='7', `displayId`='39', `name`='Wooden Chair', `data0`='1', `data1`='1', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '169999';
UPDATE `gameobject_template` SET `type`='7', `displayId`='39', `name`='Wooden Chair', `data0`='1', `data1`='1', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '170000';
UPDATE `gameobject_template` SET `type`='0', `displayId`='411', `name`='Cell Door', `data0`='0', `data1`='85', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18934';
UPDATE `gameobject_template` SET `type`='0', `displayId`='411', `name`='Cell Door', `data0`='0', `data1`='85', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18936';
UPDATE `gameobject_template` SET `type`='0', `displayId`='413', `name`='Courtyard Door', `data0`='0', `data1`='85', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18895';
UPDATE `gameobject_template` SET `type`='0', `displayId`='411', `name`='Cell Door', `data0`='0', `data1`='85', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18935';
UPDATE `gameobject_template` SET `type`='0', `displayId`='415', `name`='Arugal\'s Lair', `data0`='0', `data1`='85', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18971';
UPDATE `gameobject_template` SET `type`='0', `displayId`='411', `name`='Sorcerer\'s Gate', `data0`='0', `data1`='85', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18972';
UPDATE `gameobject_template` SET `type`='1', `displayId`='295', `name`='Lever', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18900';
UPDATE `gameobject_template` SET `type`='1', `displayId`='295', `name`='Lever', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '101811';
UPDATE `gameobject_template` SET `type`='1', `displayId`='295', `name`='Lever', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18901';
UPDATE `gameobject_template` SET `type`='3', `displayId`='259', `name`='Large Iron Bound Chest', `data0`='5', `data1`='4074', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='1', `data11`='0', `data12`='1', `data13`='0', `data14`='0', `data15`='1', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '75295';
UPDATE `gameobject_template` SET `type`='1', `displayId`='295', `name`='Lever', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '101812';
UPDATE `gameobject_template` SET `type`='3', `displayId`='259', `name`='Large Battered Chest', `data0`='57', `data1`='4073', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='1', `data11`='0', `data12`='1', `data13`='0', `data14`='0', `data15`='1', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '75293';
UPDATE `gameobject_template` SET `type`='3', `displayId`='185', `name`='The Book of Ur', `data0`='93', `data1`='3623', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '36738';
UPDATE `gameobject_template` SET `type`='3', `displayId`='908', `name`='Jordan\'s Hammer', `data0`='279', `data1`='4275', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '91138';
UPDATE `gameobject_template` SET `type`='10', `displayId`='416', `name`='Arugal\'s Focus', `data0`='0', `data1`='0', `data2`='0', `data3`='196608', `data4`='1', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18973';
UPDATE `gameobject_template` SET `type`='3', `displayId`='259', `name`='Large Solid Chest', `data0`='57', `data1`='4074', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='1', `data11`='0', `data12`='1', `data13`='0', `data14`='0', `data15`='1', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '75298';
UPDATE `gameobject_template` SET `type`='3', `displayId`='336', `name`='Food Crate', `data0`='57', `data1`='2600', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '3695';
UPDATE `gameobject_template` SET `type`='3', `displayId`='31', `name`='Crate of Ingots', `data0`='57', `data1`='18672', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '182011';
UPDATE `gameobject_template` SET `type`='8', `displayId`='626', `name`='Roaring Fire', `data0`='4', `data1`='10', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '35594';
UPDATE `gameobject_template` SET `type`='8', `displayId`='626', `name`='Roaring Fire', `data0`='4', `data1`='10', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '35595';
UPDATE `gameobject_template` SET `type`='8', `displayId`='626', `name`='Roaring Fire', `data0`='4', `data1`='10', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '35593';
UPDATE `gameobject_template` SET `type`='8', `displayId`='626', `name`='Roaring Fire', `data0`='4', `data1`='10', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '35597';
UPDATE `gameobject_template` SET `type`='8', `displayId`='626', `name`='Roaring Fire', `data0`='4', `data1`='10', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '35598';
UPDATE `gameobject_template` SET `type`='8', `displayId`='626', `name`='Roaring Fire', `data0`='4', `data1`='10', `data2`='2061', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '35596';
UPDATE `gameobject_template` SET `type`='3', `displayId`='334', `name`='Barrel of Melon Juice', `data0`='57', `data1`='2601', `data2`='0', `data3`='1', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '3659';
UPDATE `gameobject_template` SET `type`='1', `displayId`='295', `name`='Lever', `data0`='0', `data1`='0', `data2`='0', `data3`='0', `data4`='0', `data5`='0', `data6`='0', `data7`='0', `data8`='0', `data9`='0', `data10`='0', `data11`='0', `data12`='0', `data13`='0', `data14`='0', `data15`='0', `data16`='0', `data17`='0', `data18`='0', `data19`='0', `data20`='0', `data21`='0', `data22`='0', `data23`='0' WHERE `entry` = '18899';
UPDATE `creature_model_info` SET `bounding_radius`='0.807',`combat_reach`='1.5' WHERE `modelid`=202;
UPDATE `creature_model_info` SET `bounding_radius`='0.92805',`combat_reach`='1.725' WHERE `modelid`=524;
UPDATE `creature_model_info` SET `bounding_radius`='0.807',`combat_reach`='1.5' WHERE `modelid`=729;
UPDATE `creature_model_info` SET `bounding_radius`='0.6',`combat_reach`='1.5' WHERE `modelid`=1131;
UPDATE `creature_model_info` SET `bounding_radius`='1.15',`combat_reach`='1.725' WHERE `modelid`=1951;
UPDATE `creature_model_info` SET `bounding_radius`='0.180932',`combat_reach`='0.775424' WHERE `modelid`=1955;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=2005;
UPDATE `creature_model_info` SET `bounding_radius`='0.383',`combat_reach`='1.5' WHERE `modelid`=2006;
UPDATE `creature_model_info` SET `bounding_radius`='0.3672',`combat_reach`='1.8' WHERE `modelid`=2353;
UPDATE `creature_model_info` SET `bounding_radius`='0.348',`combat_reach`='1.0' WHERE `modelid`=2446;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=2535;
UPDATE `creature_model_info` SET `bounding_radius`='0.383',`combat_reach`='1.5' WHERE `modelid`=2689;
UPDATE `creature_model_info` SET `bounding_radius`='0.3672',`combat_reach`='1.8' WHERE `modelid`=3222;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=3223;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=3225;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=3226;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=3229;
UPDATE `creature_model_info` SET `bounding_radius`='0.208',`combat_reach`='1.5' WHERE `modelid`=3230;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=3551;
UPDATE `creature_model_info` SET `bounding_radius`='0.179153',`combat_reach`='0.767797' WHERE `modelid`=8808;
UPDATE `creature_model_info` SET `bounding_radius`='1.2105',`combat_reach`='2.25' WHERE `modelid`=11179;
UPDATE `creature_model_info` SET `bounding_radius`='0.306',`combat_reach`='1.5' WHERE `modelid`=17263;
UPDATE `creature_model_info` SET `combat_reach`='2.5' WHERE `modelid`=20180;
INSERT IGNORE INTO `creature_equip_template` VALUES (1736,7419,1755,0,33490690,33490436,0,781,1038,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1737,19635,0,0,50267138,0,0,781,0,0);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (SELECT DISTINCT `id` FROM `creature` WHERE `map`=33);
UPDATE `creature_template` SET `equipment_id` =642 WHERE `entry`=1894;
UPDATE `creature_template` SET `equipment_id` =119 WHERE `entry`=1895;
UPDATE `creature_template` SET `equipment_id` =639 WHERE `entry`=3849;
UPDATE `creature_template` SET `equipment_id` =1736 WHERE `entry`=3873;
UPDATE `creature_template` SET `equipment_id` =365 WHERE `entry`=3875;
UPDATE `creature_template` SET `equipment_id` =417 WHERE `entry`=3877;
UPDATE `creature_template` SET `equipment_id` =1737 WHERE `entry`=3887;
UPDATE `creature_template` SET `equipment_id` =859 WHERE `entry`=4275;
UPDATE `creature_template` SET `equipment_id` =1720 WHERE `entry`=4278;
UPDATE `creature_template` SET `equipment_id` =859 WHERE `entry`=10000;
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (18302, 9067);
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (16261, 799);
UPDATE `npc_text` SET `text0_0` = 'Stay away from me, $r! There\'s no telling when the sickness will take me again.$B$BJust leave me alone before it happens again.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '25', `em0_2` = '0', `em0_3` = '1', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9067';
UPDATE `npc_text` SET `text0_0` = 'At last! Someone to free me from this cell!$b$bHigh Executor Hadrec sent us to gather information on the Keep so that a plan could be formulated to overthrow Arugal once and for all.$b$bBut the old wizard has many tricks up his sleeve and we were detected by a magical ward. I was thrown in this prison. Vincent was not so lucky.$b$bI must return to Hadrec to debrief him at once. But first I will pick the lock to the courtyard door for you. Perhaps you can try your luck against the foes that lurk beyond.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '799';

-- Uldaman redone'
delete from creature_addon where guid in (select guid from creature where map=70);
delete from creature_movement where id in (select guid from creature where map=70);
delete from npc_gossip where npc_guid in (select guid from creature where map=70);
delete from gameobject where map=70;
delete from creature where map=70;
INSERT INTO `creature` VALUES ('18715','6906','70','5710','0','-353.007','117.186','-44.3684','0.523599','43200','6.0','0','-353.007','117.186','-44.3684','0.523599','1','0','0','0','');
INSERT INTO `creature` VALUES ('27449','6907','70','5708','0','-358.335','118.947','-44.3836','0.942478','43200','6.0','0','-358.335','118.947','-44.3836','0.942478','1','0','0','0','');
INSERT INTO `creature` VALUES ('27450','6908','70','5709','0','-356.985','132.094','-47.6973','1.3439','43200','6.0','0','-356.985','132.094','-47.6973','1.3439','1','0','0','0','');
INSERT INTO `creature` VALUES ('27451','7078','70','5985','0','-166.365','289.748','-53.4556','2.28638','7200','1.0','0','-166.365','289.748','-53.4556','2.28638','1','0','0','1','');
INSERT INTO `creature` VALUES ('27452','7078','70','5985','0','-164.843','286.351','-53.267','5.39362','7200','1.0','0','-164.843','286.351','-53.267','5.39362','1','0','0','1','');
INSERT INTO `creature` VALUES ('27453','7078','70','5985','0','-172.551','288.582','-53.1762','0.0','7200','1.0','0','-172.551','288.582','-53.1762','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('27454','7078','70','5985','0','-171.537','295.822','-54.1522','3.62543','7200','1.0','0','-171.537','295.822','-54.1522','3.62543','1','0','0','1','');
INSERT INTO `creature` VALUES ('27455','7078','70','5985','0','-172.616','291.724','-53.5781','2.678','7200','1.0','0','-172.616','291.724','-53.5781','2.678','1','0','0','1','');
INSERT INTO `creature` VALUES ('27456','7078','70','5985','0','-169.48','293.443','-53.8783','4.11476','7200','1.0','0','-169.48','293.443','-53.8783','4.11476','1','0','0','1','');
INSERT INTO `creature` VALUES ('27457','7078','70','5985','0','-170.324','292.19','-53.7022','4.04997','7200','1.0','0','-170.324','292.19','-53.7022','4.04997','1','0','0','1','');
INSERT INTO `creature` VALUES ('27458','7078','70','5985','0','-174.716','292.83','-53.5736','3.00687','7200','1.0','0','-174.716','292.83','-53.5736','3.00687','1','0','0','1','');
INSERT INTO `creature` VALUES ('27459','7078','70','5985','0','-167.612','284.036','-53.2623','0.0','7200','1.0','0','-167.612','284.036','-53.2623','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('27460','7078','70','5985','0','-170.771','285.173','-53.1398','0.0','7200','1.0','0','-170.771','285.173','-53.1398','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('27461','7078','70','5985','0','-156.393','208.328','-48.1095','3.07178','7200','1.0','0','-156.393','208.328','-48.1095','3.07178','1','0','0','1','');
INSERT INTO `creature` VALUES ('27462','7078','70','5985','0','-159.308','211.608','-50.0256','2.67035','7200','1.0','0','-159.308','211.608','-50.0256','2.67035','1','0','0','1','');
INSERT INTO `creature` VALUES ('27463','7078','70','5985','0','-161.485','207.947','-49.6569','5.60251','7200','1.0','0','-161.485','207.947','-49.6569','5.60251','1','0','0','1','');
INSERT INTO `creature` VALUES ('27464','7078','70','5985','0','-160.711','217.383','-48.3382','0.698132','7200','1.0','0','-160.711','217.383','-48.3382','0.698132','1','0','0','1','');
INSERT INTO `creature` VALUES ('27465','7078','70','5985','0','-157.386','201.609','-49.71','5.48033','7200','1.0','0','-157.386','201.609','-49.71','5.48033','1','0','0','1','');
INSERT INTO `creature` VALUES ('27466','7078','70','5985','0','-160.875','200.804','-49.9734','2.32129','7200','1.0','0','-160.875','200.804','-49.9734','2.32129','1','0','0','1','');
INSERT INTO `creature` VALUES ('27467','7078','70','5985','0','-164.902','208.901','-49.6422','5.74213','7200','1.0','0','-164.902','208.901','-49.6422','5.74213','1','0','0','1','');
INSERT INTO `creature` VALUES ('27468','7078','70','5985','0','-163.432','214.236','-48.9254','0.977384','7200','1.0','0','-163.432','214.236','-48.9254','0.977384','1','0','0','1','');
INSERT INTO `creature` VALUES ('27469','7078','70','5985','0','-160.361','203.515','-49.5899','5.53269','7200','1.0','0','-160.361','203.515','-49.5899','5.53269','1','0','0','1','');
INSERT INTO `creature` VALUES ('27470','7078','70','5985','0','-154.971','205.115','-48.3103','5.67232','7200','1.0','0','-154.971','205.115','-48.3103','5.67232','1','0','0','1','');
INSERT INTO `creature` VALUES ('27471','4860','70','2234','0','-73.6665','231.738','-49.7598','1.1927','7200','3.0','0','-73.6665','231.738','-49.7598','1.1927','1','0','0','1','');
INSERT INTO `creature` VALUES ('27472','4860','70','2234','0','-89.6837','301.882','-50.1905','4.79655','7200','5.0','0','-89.6837','301.882','-50.1905','4.79655','1','0','0','1','');
INSERT INTO `creature` VALUES ('27473','4860','70','2234','0','-39.625','272.806','-49.0187','3.26601','7200','2.0','0','-39.625','272.806','-49.0187','3.26601','1','0','0','1','');
INSERT INTO `creature` VALUES ('27474','7405','70','5985','0','-21.7503','332.732','-46.896','2.4716','7200','1.0','0','-21.7503','332.732','-46.896','2.4716','1','0','0','1','');
INSERT INTO `creature` VALUES ('27476','7405','70','5985','0','-18.6602','331.129','-46.7308','5.44729','7200','1.0','0','-18.6602','331.129','-46.7308','5.44729','1','0','0','1','');
INSERT INTO `creature` VALUES ('27477','7405','70','5985','0','-17.7247','327.988','-46.7162','5.88029','7200','1.0','0','-17.7247','327.988','-46.7162','5.88029','1','0','0','1','');
INSERT INTO `creature` VALUES ('27478','7405','70','5985','0','-20.3014','328.854','-47.0445','5.60312','7200','1.0','0','-20.3014','328.854','-47.0445','5.60312','1','0','0','1','');
INSERT INTO `creature` VALUES ('27479','7405','70','5985','0','-24.3644','333.975','-46.6297','0.959931','7200','1.0','0','-24.3644','333.975','-46.6297','0.959931','1','0','0','1','');
INSERT INTO `creature` VALUES ('27480','7405','70','5985','0','-23.5265','335.07','-46.5413','2.11845','7200','1.0','0','-23.5265','335.07','-46.5413','2.11845','1','0','0','1','');
INSERT INTO `creature` VALUES ('27481','7405','70','5985','0','-19.7895','329.712','-46.9786','4.97419','7200','1.0','0','-19.7895','329.712','-46.9786','4.97419','1','0','0','1','');
INSERT INTO `creature` VALUES ('27482','7405','70','5985','0','-19.2043','331.832','-46.7092','5.76498','7200','1.0','0','-19.2043','331.832','-46.7092','5.76498','1','0','0','1','');
INSERT INTO `creature` VALUES ('27483','7405','70','5985','0','-23.0397','333.272','-46.8216','0.173056','7200','1.0','0','-23.0397','333.272','-46.8216','0.173056','1','0','0','1','');
INSERT INTO `creature` VALUES ('27484','7405','70','5985','0','-23.2569','337.856','-45.4986','4.31096','7200','1.0','0','-23.2569','337.856','-45.4986','4.31096','1','0','0','1','');
INSERT INTO `creature` VALUES ('27485','4848','70','6055','0','12.7475','413.541','-47.7169','0.087266','7200','2.0','0','12.7475','413.541','-47.7169','0.087266','1','0','0','1','');
INSERT INTO `creature` VALUES ('27486','4849','70','6067','0','7.95455','412.226','-47.5251','1.64061','7200','2.0','0','7.95455','412.226','-47.5251','1.64061','1','0','0','1','');
INSERT INTO `creature` VALUES ('27487','4849','70','6067','0','15.0678','401.771','-44.131','2.84489','7200','2.0','0','15.0678','401.771','-44.131','2.84489','1','0','0','1','');
INSERT INTO `creature` VALUES ('27488','7290','70','6057','0','3.3877','383.55','-42.8435','4.32842','7200','6.0','0','3.3877','383.55','-42.8435','4.32842','1','0','0','0','');
INSERT INTO `creature` VALUES ('27489','4848','70','6055','0','14.2152','397.785','-44.0817','2.02458','7200','2.0','0','14.2152','397.785','-44.0817','2.02458','1','0','0','1','');
INSERT INTO `creature` VALUES ('27490','7290','70','6057','0','-4.97794','389.725','-43.7371','4.85202','7200','6.0','0','-4.97794','389.725','-43.7371','4.85202','1','0','0','0','');
INSERT INTO `creature` VALUES ('27491','7291','70','6059','0','-10.3813','414.708','-46.8571','6.16101','43200','6.0','0','-10.3813','414.708','-46.8571','6.16101','1','0','0','0','');
INSERT INTO `creature` VALUES ('27492','7030','70','6056','0','-10.2721','410.924','-47.1784','6.21337','7200','6.0','0','-10.2721','410.924','-47.1784','6.21337','1','0','0','0','');
INSERT INTO `creature` VALUES ('27494','7030','70','6056','0','-8.36762','418.289','-46.9226','6.16101','7200','6.0','0','-8.36762','418.289','-46.9226','6.16101','1','0','0','0','');
INSERT INTO `creature` VALUES ('27495','7078','70','5985','0','-138.324','262.465','-54.2898','4.20754','7200','1.0','0','-138.324','262.465','-54.2898','4.20754','1','0','0','1','');
INSERT INTO `creature` VALUES ('27496','7078','70','5985','0','-135.797','260.676','-53.4638','0.45734','7200','1.0','0','-135.797','260.676','-53.4638','0.45734','1','0','0','1','');
INSERT INTO `creature` VALUES ('27497','7078','70','5985','0','-133.15','259.457','-53.481','1.61797','7200','1.0','0','-133.15','259.457','-53.481','1.61797','1','0','0','1','');
INSERT INTO `creature` VALUES ('27498','7078','70','5985','0','-137.333','258.012','-53.499','4.51605','7200','1.0','0','-137.333','258.012','-53.499','4.51605','1','0','0','1','');
INSERT INTO `creature` VALUES ('27499','7078','70','5985','0','-140.074','260.077','-54.2264','4.4855','7200','1.0','0','-140.074','260.077','-54.2264','4.4855','1','0','0','1','');
INSERT INTO `creature` VALUES ('27500','7078','70','5985','0','-136.651','268.276','-52.8145','0.753239','7200','1.0','0','-136.651','268.276','-52.8145','0.753239','1','0','0','1','');
INSERT INTO `creature` VALUES ('27501','7078','70','5985','0','-140.645','272.362','-52.8315','2.43514','7200','1.0','0','-140.645','272.362','-52.8315','2.43514','1','0','0','1','');
INSERT INTO `creature` VALUES ('27502','7078','70','5985','0','-141.643','270.516','-52.5432','1.72272','7200','1.0','0','-141.643','270.516','-52.5432','1.72272','1','0','0','1','');
INSERT INTO `creature` VALUES ('27503','7078','70','5985','0','-144.587','266.477','-51.9826','2.11185','7200','1.0','0','-144.587','266.477','-51.9826','2.11185','1','0','0','1','');
INSERT INTO `creature` VALUES ('27504','7078','70','5985','0','-140.557','276.706','-52.8402','3.02355','7200','1.0','0','-140.557','276.706','-52.8402','3.02355','1','0','0','1','');
INSERT INTO `creature` VALUES ('27505','4855','70','11166','0','57.9032','373.95','-38.2499','4.2516','7200','3.0','1','57.9032','373.948','-38.2499','4.2516','1','0','0','2','');
INSERT INTO `creature` VALUES ('27506','7320','70','11166','0','16.34','245.154','-33.7684','4.32489','7200','3.0','0','16.34','245.154','-33.7684','4.32489','1','0','0','1','');
INSERT INTO `creature` VALUES ('27507','7320','70','11166','0','9.20103','224.056','-31.8643','1.17416','7200','2.0','0','9.20103','224.056','-31.8643','1.17416','1','0','0','1','');
INSERT INTO `creature` VALUES ('27508','7321','70','160','0','6.69549','242.724','-34.1162','2.11185','7200','3.0','0','6.69549','242.724','-34.1162','2.11185','1','0','0','1','');
INSERT INTO `creature` VALUES ('27509','7321','70','160','0','16.0128','241.9','-32.9021','3.21727','7200','3.0','0','16.0128','241.9','-32.9021','3.21727','1','0','0','1','');
INSERT INTO `creature` VALUES ('27510','4855','70','11166','0','9.28976','332.21','-38.6322','5.21853','7200','3.0','0','9.28976','332.21','-38.6322','5.21853','1','0','0','1','');
INSERT INTO `creature` VALUES ('27511','4853','70','1194','0','16.3417','332.015','-39.43','2.47837','7200','3.0','0','16.3417','332.015','-39.43','2.47837','1','0','0','1','');
INSERT INTO `creature` VALUES ('27512','4855','70','11166','0','78.8918','404.942','-38.1789','5.02655','7200','2.0','0','78.8918','404.942','-38.1789','5.02655','1','0','0','1','');
INSERT INTO `creature` VALUES ('27513','4855','70','11166','0','85.4878','403.676','-38.1789','6.12611','7200','2.0','0','85.4878','403.676','-38.1789','6.12611','1','0','0','1','');
INSERT INTO `creature` VALUES ('27514','4853','70','1194','0','85.2644','397.095','-38.1789','2.3911','7200','2.0','0','85.2644','397.095','-38.1789','2.3911','1','0','0','1','');
INSERT INTO `creature` VALUES ('27515','7320','70','11166','0','28.3855','220.067','-31.4421','2.11185','7200','6.0','0','28.3855','220.067','-31.4421','2.11185','1','0','0','0','');
INSERT INTO `creature` VALUES ('27516','7320','70','11166','0','25.0827','214.221','-30.5394','1.85005','7200','6.0','0','25.0827','214.221','-30.5394','1.85005','1','0','0','0','');
INSERT INTO `creature` VALUES ('27517','7321','70','160','0','27.6785','226.454','-31.7868','3.31613','7200','6.0','0','27.6785','226.454','-31.7868','3.31613','1','0','0','0','');
INSERT INTO `creature` VALUES ('27518','7321','70','160','0','19.9551','215.548','-30.3961','1.72788','7200','2.0','0','19.9551','215.548','-30.3961','1.72788','1','0','0','1','');
INSERT INTO `creature` VALUES ('27519','7320','70','11166','0','8.35215','284.732','-38.5941','1.79769','7200','3.0','0','8.35215','284.732','-38.5941','1.79769','1','0','0','1','');
INSERT INTO `creature` VALUES ('27520','7321','70','160','0','3.7883','282.063','-38.1958','4.88692','7200','4.0','0','3.7883','282.063','-38.1958','4.88692','1','0','0','1','');
INSERT INTO `creature` VALUES ('27521','4855','70','11166','0','49.3411','346.228','-40.0877','3.07178','7200','6.0','0','49.3411','346.228','-40.0877','3.07178','1','0','0','0','');
INSERT INTO `creature` VALUES ('27522','4853','70','1194','0','48.8975','340.68','-40.8543','2.67035','7200','3.0','0','48.8975','340.68','-40.8543','2.67035','1','0','0','1','');
INSERT INTO `creature` VALUES ('27523','7320','70','11166','0','10.2117','263.027','-35.633','5.84685','7200','2.0','0','10.2117','263.027','-35.633','5.84685','1','0','0','1','');
INSERT INTO `creature` VALUES ('27524','7321','70','160','0','3.82797','263.358','-35.8374','5.84685','7200','2.0','0','3.82797','263.358','-35.8374','5.84685','1','0','0','1','');
INSERT INTO `creature` VALUES ('27525','4855','70','11166','0','42.0532','323.202','-42.8722','2.38446','7200','5.0','0','42.0532','323.202','-42.8722','2.38446','1','0','0','1','');
INSERT INTO `creature` VALUES ('27526','4855','70','11166','0','36.2464','376.018','-38.8766','2.86234','7200','6.0','0','36.2464','376.018','-38.8766','2.86234','1','0','0','0','');
INSERT INTO `creature` VALUES ('27527','4853','70','1194','0','30.4951','375.779','-39.9868','2.02458','7200','6.0','0','30.4951','375.779','-39.9868','2.02458','1','0','0','0','');
INSERT INTO `creature` VALUES ('27528','4854','70','11165','0','56.7096','455.299','-40.9623','4.2586','43200','6.0','0','56.7096','455.299','-40.9623','4.2586','1','0','0','0','');
INSERT INTO `creature` VALUES ('27529','4863','70','4486','0','59.4307','453.107','-40.9609','4.01426','7200','6.0','0','59.4307','453.107','-40.9609','4.01426','1','0','0','0','');
INSERT INTO `creature` VALUES ('27530','4853','70','1194','0','50.8847','452.713','-40.9676','4.50295','7200','6.0','0','50.8847','452.713','-40.9676','4.50295','1','0','0','0','');
INSERT INTO `creature` VALUES ('27531','4855','70','11166','0','57.4593','447.311','-40.9598','0.0','7200','6.0','0','57.4593','447.311','-40.9598','0.0','1','0','0','0','');
INSERT INTO `creature` VALUES ('27532','6910','70','5945','0','-225.598','161.224','-44.5463','0.034907','43200','6.0','0','-225.598','161.224','-44.5463','0.034907','1','0','0','0','');
INSERT INTO `creature` VALUES ('27533','4851','70','721','0','-228.116','177.455','-44.6301','3.06182','7200','2.0','0','-228.116','177.455','-44.6301','3.06182','1','0','0','1','');
INSERT INTO `creature` VALUES ('27534','4852','70','160','0','-233.511','170.852','-44.6301','2.58106','7200','2.0','0','-233.511','170.852','-44.6301','2.58106','1','0','0','1','');
INSERT INTO `creature` VALUES ('27535','7175','70','763','0','-210.111','106.761','-48.0202','3.19395','7200','2.0','0','-210.111','106.761','-48.0202','3.19395','1','0','0','1','');
INSERT INTO `creature` VALUES ('27536','7175','70','763','0','-244.16','108.004','-48.0202','3.14159','7200','3.0','0','-244.16','108.004','-48.0202','3.14159','1','0','0','1','');
INSERT INTO `creature` VALUES ('27537','4852','70','160','0','-266.266','90.8042','-48.711','0.575959','7200','2.0','0','-266.266','90.8042','-48.711','0.575959','1','0','0','1','');
INSERT INTO `creature` VALUES ('27538','4851','70','721','0','-280.755','79.9444','-48.7191','5.88176','7200','3.0','0','-280.755','79.9444','-48.7191','5.88176','1','0','0','1','');
INSERT INTO `creature` VALUES ('27539','4852','70','160','0','-174.321','165.9','-47.3283','4.43314','7200','3.0','0','-174.321','165.9','-47.3283','4.43314','1','0','0','1','');
INSERT INTO `creature` VALUES ('27540','4852','70','160','0','-245.23','96.0977','-48.0381','6.00393','7200','2.0','0','-245.23','96.0977','-48.0381','6.00393','1','0','0','1','');
INSERT INTO `creature` VALUES ('27541','4852','70','160','0','-280.366','87.4282','-48.717','3.68265','7200','2.0','0','-280.366','87.4282','-48.717','3.68265','1','0','0','1','');
INSERT INTO `creature` VALUES ('27542','4851','70','721','0','-178.939','169.876','-47.3264','0.802851','7200','2.0','0','-178.939','169.876','-47.3264','0.802851','1','0','0','1','');
INSERT INTO `creature` VALUES ('27543','4852','70','160','0','-271.653','140.403','-47.324','1.55334','7200','3.0','0','-271.653','140.403','-47.324','1.55334','1','0','0','1','');
INSERT INTO `creature` VALUES ('27544','4851','70','721','0','-176.355','61.1042','-48.7257','6.16101','7200','3.0','0','-176.355','61.1042','-48.7257','6.16101','1','0','0','1','');
INSERT INTO `creature` VALUES ('27545','4851','70','721','0','-174.671','88.053','-48.7266','1.78024','7200','3.0','0','-174.671','88.053','-48.7266','1.78024','1','0','0','1','');
INSERT INTO `creature` VALUES ('27552','4852','70','160','0','-210.155','94.8437','-48.0213','1.90241','7200','2.0','0','-210.155','94.8437','-48.0213','1.90241','1','0','0','1','');
INSERT INTO `creature` VALUES ('27553','7206','70','10798','0','-38.429','221.253','-48.3663','3.15905','43200','6.0','0','-38.429','221.253','-48.3663','3.15905','1','0','0','0','');
INSERT INTO `creature` VALUES ('27554','4857','70','10805','0','117.805','267.876','-26.4488','2.75762','43200','6.0','0','117.805','267.876','-26.4488','2.75762','1','0','0','0','');
INSERT INTO `creature` VALUES ('27555','4857','70','10805','0','99.7033','259.329','-26.4488','1.22173','43200','6.0','0','99.7033','259.329','-26.4488','1.22173','1','0','0','0','');
INSERT INTO `creature` VALUES ('27568','7396','70','6010','0','132.37','225.131','-42.4067','5.60251','7200','2.0','0','132.37','225.131','-42.4067','5.60251','1','0','0','1','');
INSERT INTO `creature` VALUES ('27691','7396','70','6010','0','122.578','224.795','-42.4062','0.226893','7200','2.0','0','122.578','224.795','-42.4062','0.226893','1','0','0','1','');
INSERT INTO `creature` VALUES ('27692','7396','70','6010','0','123.441','220.494','-42.4077','4.88692','7200','2.0','0','123.441','220.494','-42.4077','4.88692','1','0','0','1','');
INSERT INTO `creature` VALUES ('27728','7396','70','6010','0','118.21','220.368','-42.4052','5.84685','7200','2.0','0','118.21','220.368','-42.4052','5.84685','1','0','0','1','');
INSERT INTO `creature` VALUES ('27730','7397','70','6009','0','131.392','230.027','-42.4052','4.27606','7200','2.0','0','131.392','230.027','-42.4052','4.27606','1','0','0','1','');
INSERT INTO `creature` VALUES ('27763','4860','70','2234','0','127.47','224.281','-42.4075','4.43314','7200','2.0','0','127.47','224.281','-42.4075','4.43314','1','0','0','1','');
INSERT INTO `creature` VALUES ('27764','7396','70','6010','0','88.5986','251.486','-26.5881','3.24601','7200','2.0','0','88.5986','251.486','-26.5881','3.24601','1','0','0','1','');
INSERT INTO `creature` VALUES ('27765','7396','70','6010','0','73.0341','261.931','-26.5047','5.16617','7200','2.0','0','73.0341','261.931','-26.5047','5.16617','1','0','0','1','');
INSERT INTO `creature` VALUES ('27766','7396','70','6010','0','74.116','256.977','-26.5047','4.2237','7200','2.0','0','74.116','256.977','-26.5047','4.2237','1','0','0','1','');
INSERT INTO `creature` VALUES ('27767','7396','70','6010','0','83.5133','261.764','-26.5881','4.90455','7200','2.0','0','83.5133','261.764','-26.5881','4.90455','1','0','0','1','');
INSERT INTO `creature` VALUES ('27768','7397','70','6009','0','80.3241','268.971','-26.5881','0.761993','7200','2.0','0','80.3241','268.971','-26.5881','0.761993','1','0','0','1','');
INSERT INTO `creature` VALUES ('27769','4860','70','2234','0','78.6097','262.243','-26.5881','4.69281','7200','2.0','0','78.6097','262.243','-26.5881','4.69281','1','0','0','1','');
INSERT INTO `creature` VALUES ('27770','7396','70','6010','0','105.054','296.987','-26.5047','4.5204','7200','2.0','0','105.054','296.987','-26.5047','4.5204','1','0','0','1','');
INSERT INTO `creature` VALUES ('27789','7396','70','6010','0','98.8091','299.724','-26.5047','4.55531','7200','2.0','0','98.8091','299.724','-26.5047','4.55531','1','0','0','1','');
INSERT INTO `creature` VALUES ('27790','7396','70','6010','0','87.6316','291.83','-26.5047','2.1293','7200','2.0','0','87.6316','291.83','-26.5047','2.1293','1','0','0','1','');
INSERT INTO `creature` VALUES ('27791','7396','70','6010','0','107.523','301.349','-26.5047','2.46091','7200','2.0','0','107.523','301.349','-26.5047','2.46091','1','0','0','1','');
INSERT INTO `creature` VALUES ('27792','7397','70','6009','0','96.2288','292.927','-26.5047','5.79449','7200','2.0','0','96.2288','292.927','-26.5047','5.79449','1','0','0','1','');
INSERT INTO `creature` VALUES ('27793','4860','70','2234','0','91.5275','296.61','-26.5047','0.767945','7200','2.0','0','91.5275','296.61','-26.5047','0.767945','1','0','0','1','');
INSERT INTO `creature` VALUES ('27794','4857','70','10805','0','109.357','286.115','-26.4488','4.36332','43200','6.0','0','109.357','286.115','-26.4488','4.36332','1','0','0','0','');
INSERT INTO `creature` VALUES ('27796','7396','70','6010','0','153.612','298.344','-26.4982','2.02458','7200','2.0','0','153.612','298.344','-26.4982','2.02458','1','0','0','1','');
INSERT INTO `creature` VALUES ('27798','7396','70','6010','0','148.075','287.88','-26.4982','4.86947','7200','2.0','0','148.075','287.88','-26.4982','4.86947','1','0','0','1','');
INSERT INTO `creature` VALUES ('27800','7396','70','6010','0','144.399','299.006','-26.4982','4.4855','7200','2.0','0','144.399','299.006','-26.4982','4.4855','1','0','0','1','');
INSERT INTO `creature` VALUES ('28363','7396','70','6010','0','144.547','306.485','-26.4982','2.11185','7200','2.0','0','144.547','306.485','-26.4982','2.11185','1','0','0','1','');
INSERT INTO `creature` VALUES ('28364','7397','70','6009','0','151.225','303.806','-26.4982','0.331613','7200','2.0','0','151.225','303.806','-26.4982','0.331613','1','0','0','1','');
INSERT INTO `creature` VALUES ('28365','4860','70','2234','0','165.557','261.435','-29.3548','2.13883','7200','2.0','0','165.557','261.435','-29.3548','2.13883','1','0','0','1','');
INSERT INTO `creature` VALUES ('28367','4860','70','2234','0','152.666','288.39','-26.5815','2.01064','7200','2.0','0','152.666','288.39','-26.5815','2.01064','1','0','0','1','');
INSERT INTO `creature` VALUES ('28368','4857','70','10805','0','91.4283','277.518','-26.4488','5.96903','43200','6.0','0','91.4283','277.518','-26.4488','5.96903','1','0','0','0','');
INSERT INTO `creature` VALUES ('28369','7011','70','6010','0','-72.984','219.844','-49.7103','0.11546','7200','2.0','0','-72.984','219.844','-49.7103','0.11546','1','0','0','1','');
INSERT INTO `creature` VALUES ('28370','7011','70','6010','0','-81.0191','225.437','-49.7123','5.79837','7200','3.0','0','-81.0191','225.437','-49.7123','5.79837','1','0','0','1','');
INSERT INTO `creature` VALUES ('28371','7011','70','6010','0','-70.2975','239.65','-49.7109','0.252966','7200','5.0','0','-70.2975','239.65','-49.7109','0.252966','1','0','0','1','');
INSERT INTO `creature` VALUES ('28372','7012','70','6009','0','-80.2126','237.241','-49.6289','3.05433','7200','2.0','0','-80.2126','237.241','-49.6289','3.05433','1','0','0','1','');
INSERT INTO `creature` VALUES ('28373','7012','70','6009','0','-89.1307','232.445','-49.6289','3.29867','7200','3.0','0','-89.1307','232.445','-49.6289','3.29867','1','0','0','1','');
INSERT INTO `creature` VALUES ('28374','7011','70','6010','0','-87.6623','240.589','-49.6289','4.2586','7200','3.0','0','-87.6623','240.589','-49.6289','4.2586','1','0','0','1','');
INSERT INTO `creature` VALUES ('28376','7011','70','6010','0','-85.255','275.884','-47.6308','1.85184','7200','6.0','0','-85.255','275.884','-47.6308','1.85184','1','0','0','0','');
INSERT INTO `creature` VALUES ('28377','7011','70','6010','0','-91.305','281.95','-47.5474','0.645772','7200','3.0','0','-91.305','281.95','-47.5474','0.645772','1','0','0','1','');
INSERT INTO `creature` VALUES ('28532','7011','70','6010','0','-98.2153','276.013','-47.5474','2.1293','7200','6.0','0','-98.2153','276.013','-47.5474','2.1293','1','0','0','0','');
INSERT INTO `creature` VALUES ('28533','7012','70','6009','0','-95.467','267.834','-47.5474','0.820305','7200','6.0','0','-95.467','267.834','-47.5474','0.820305','1','0','0','0','');
INSERT INTO `creature` VALUES ('28534','7012','70','6009','0','-88.2716','262.831','-47.6308','3.30022','7200','6.0','0','-88.2716','262.831','-47.6308','3.30022','1','0','0','0','');
INSERT INTO `creature` VALUES ('28535','7011','70','6010','0','-78.7421','266.852','-47.6307','4.72767','7200','6.0','0','-78.7421','266.852','-47.6307','4.72767','1','0','0','0','');
INSERT INTO `creature` VALUES ('28536','7011','70','6010','0','-108.909','315.128','-48.0201','5.5676','7200','6.0','0','-108.909','315.128','-48.0201','5.5676','1','0','0','0','');
INSERT INTO `creature` VALUES ('28537','7011','70','6010','0','-97.6881','332.306','-47.5372','1.6057','7200','6.0','0','-97.6881','332.306','-47.5372','1.6057','1','0','0','0','');
INSERT INTO `creature` VALUES ('28538','7011','70','6010','0','-101.0','315.478','-49.3246','4.29351','7200','6.0','0','-101.0','315.478','-49.3246','4.29351','1','0','0','0','');
INSERT INTO `creature` VALUES ('28539','7011','70','6010','0','-110.732','324.565','-46.9314','2.28638','7200','6.0','0','-110.732','324.565','-46.9314','2.28638','1','0','0','0','');
INSERT INTO `creature` VALUES ('28540','7012','70','6009','0','-100.29','322.715','-49.3303','1.58825','7200','6.0','0','-100.29','322.715','-49.3303','1.58825','1','0','0','0','');
INSERT INTO `creature` VALUES ('28541','7011','70','6010','0','-1.90834','279.235','-49.6279','6.17846','7200','6.0','0','-1.90834','279.235','-49.6279','6.17846','1','0','0','0','');
INSERT INTO `creature` VALUES ('28542','7011','70','6010','0','-8.72249','288.024','-48.0006','0.261799','7200','6.0','0','-8.72249','288.024','-48.0006','0.261799','1','0','0','0','');
INSERT INTO `creature` VALUES ('28543','7011','70','6010','0','-14.8232','289.552','-46.6865','3.49066','7200','6.0','0','-14.8232','289.552','-46.6865','3.49066','1','0','0','0','');
INSERT INTO `creature` VALUES ('28544','7011','70','6010','0','-13.8457','274.421','-48.3546','4.88692','7200','6.0','0','-13.8457','274.421','-48.3546','4.88692','1','0','0','0','');
INSERT INTO `creature` VALUES ('28545','7012','70','6009','0','-23.7722','278.45','-47.6628','1.55334','7200','6.0','0','-23.7722','278.45','-47.6628','1.55334','1','0','0','0','');
INSERT INTO `creature` VALUES ('28546','7011','70','6010','0','-43.5592','237.275','-48.3282','2.7571','7200','2.0','0','-43.5592','237.275','-48.3282','2.7571','1','0','0','1','');
INSERT INTO `creature` VALUES ('28547','7011','70','6010','0','-43.1821','203.8','-48.3275','6.12569','7200','2.0','0','-43.1821','203.8','-48.3275','6.12569','1','0','0','1','');
INSERT INTO `creature` VALUES ('28784','7011','70','6010','0','-42.6852','255.155','-48.9355','1.90241','7200','2.0','0','-42.6852','255.155','-48.9355','1.90241','1','0','0','1','');
INSERT INTO `creature` VALUES ('28786','7012','70','6009','0','-44.1402','272.689','-48.9356','2.61799','7200','2.0','0','-44.1402','272.689','-48.9356','2.61799','1','0','0','1','');
INSERT INTO `creature` VALUES ('28789','7012','70','6009','0','-42.3058','263.875','-48.9355','2.96706','7200','2.0','0','-42.3058','263.875','-48.9355','2.96706','1','0','0','1','');
INSERT INTO `creature` VALUES ('28795','7011','70','6010','0','-49.6443','201.981','-48.3253','0.987509','7200','2.0','0','-49.6443','201.981','-48.3253','0.987509','1','0','0','1','');
INSERT INTO `creature` VALUES ('28796','7011','70','6010','0','-83.9396','301.188','-49.8128','6.07375','7200','6.0','0','-83.9396','301.188','-49.8128','6.07375','1','0','0','0','');
INSERT INTO `creature` VALUES ('28797','7011','70','6010','0','-93.9021','300.532','-49.9348','3.90954','7200','6.0','0','-93.9021','300.532','-49.9348','3.90954','1','0','0','0','');
INSERT INTO `creature` VALUES ('28798','7011','70','6010','0','-79.6481','323.651','-50.2189','0.122173','7200','6.0','0','-79.6481','323.651','-50.2189','0.122173','1','0','0','0','');
INSERT INTO `creature` VALUES ('28799','7011','70','6010','0','-85.0924','335.421','-48.09','0.575959','7200','6.0','0','-85.0924','335.421','-48.09','0.575959','1','0','0','0','');
INSERT INTO `creature` VALUES ('28800','7012','70','6009','0','-80.9599','328.132','-50.3943','1.64061','7200','5.0','0','-80.9599','328.132','-50.3943','1.64061','1','0','0','1','');
INSERT INTO `creature` VALUES ('29384','7011','70','6010','0','-99.3593','220.256','-43.6977','2.80998','7200','6.0','0','-99.3593','220.256','-43.6977','2.80998','1','0','0','0','');
INSERT INTO `creature` VALUES ('29488','7011','70','6010','0','-101.67','213.408','-41.9086','2.79253','7200','6.0','0','-101.67','213.408','-41.9086','2.79253','1','0','0','0','');
INSERT INTO `creature` VALUES ('29573','7011','70','6010','0','-100.271','196.996','-39.4195','4.64258','7200','6.0','0','-100.271','196.996','-39.4195','4.64258','1','0','0','0','');
INSERT INTO `creature` VALUES ('29574','7011','70','6010','0','-107.486','197.499','-40.3266','4.46804','7200','6.0','0','-107.486','197.499','-40.3266','4.46804','1','0','0','0','');
INSERT INTO `creature` VALUES ('29589','7012','70','6009','0','-85.0633','214.664','-46.0615','3.83972','7200','6.0','0','-85.0633','214.664','-46.0615','3.83972','1','0','0','0','');
INSERT INTO `creature` VALUES ('29590','6912','70','5711','0','-176.003','169.17','-47.3276','2.68781','7200','6.0','0','-176.003','169.17','-47.3276','2.68781','1','0','0','0','');
INSERT INTO `creature` VALUES ('29591','4847','70','6054','0','-160.858','363.96','-33.8446','4.39823','7200','5.0','0','-160.858','363.96','-33.8446','4.39823','1','0','0','1','');
INSERT INTO `creature` VALUES ('29592','4847','70','6054','0','-139.421','370.119','-41.6872','3.56047','7200','6.0','0','-139.421','370.119','-41.6872','3.56047','1','0','0','0','');
INSERT INTO `creature` VALUES ('29593','7030','70','6056','0','-139.302','393.84','-40.2474','5.79449','7200','3.0','0','-139.302','393.84','-40.2474','5.79449','1','0','0','1','');
INSERT INTO `creature` VALUES ('29594','4847','70','6054','0','-137.294','386.394','-40.2004','5.96903','7200','2.0','0','-137.294','386.394','-40.2004','5.96903','1','0','0','1','');
INSERT INTO `creature` VALUES ('29649','4847','70','6054','0','-151.839','368.456','-33.9654','5.93412','7200','6.0','0','-151.839','368.456','-33.9654','5.93412','1','0','0','0','');
INSERT INTO `creature` VALUES ('29650','7023','70','5285','0','-163.76','387.992','-36.3564','0.10472','7200','3.0','0','-163.76','387.992','-36.3564','0.10472','1','0','0','1','');
INSERT INTO `creature` VALUES ('29651','4847','70','6054','0','-143.07','389.049','-39.8265','0.959931','7200','3.0','0','-143.07','389.049','-39.8265','0.959931','1','0','0','1','');
INSERT INTO `creature` VALUES ('29652','4852','70','160','0','-248.191','240.72','-46.5294','0.296706','7200','6.0','0','-248.191','240.72','-46.5294','0.296706','1','0','0','0','');
INSERT INTO `creature` VALUES ('29653','4850','70','722','0','-242.073','241.255','-47.9852','2.70526','7200','6.0','0','-242.073','241.255','-47.9852','2.70526','1','0','0','0','');
INSERT INTO `creature` VALUES ('29654','4850','70','722','0','-246.664','245.974','-46.9168','5.44543','7200','6.0','0','-246.664','245.974','-46.9168','5.44543','1','0','0','0','');
INSERT INTO `creature` VALUES ('29655','4852','70','160','0','-258.846','280.83','-48.5384','2.79253','7200','6.0','0','-258.846','280.83','-48.5384','2.79253','1','0','0','0','');
INSERT INTO `creature` VALUES ('29656','4850','70','722','0','-265.963','280.01','-48.3898','0.767945','7200','6.0','0','-265.963','280.01','-48.3898','0.767945','1','0','0','0','');
INSERT INTO `creature` VALUES ('29657','4850','70','722','0','-267.258','286.174','-47.2355','5.51524','7200','6.0','0','-267.258','286.174','-47.2355','5.51524','1','0','0','0','');
INSERT INTO `creature` VALUES ('29658','4852','70','160','0','-244.168','266.766','-50.3178','3.57792','7200','6.0','0','-244.168','266.766','-50.3178','3.57792','1','0','0','0','');
INSERT INTO `creature` VALUES ('29659','4850','70','722','0','-223.6','197.962','-44.5323','3.42085','7200','6.0','0','-223.6','197.962','-44.5323','3.42085','1','0','0','0','');
INSERT INTO `creature` VALUES ('29773','4850','70','722','0','-211.945','247.895','-48.5138','3.89208','7200','3.0','0','-211.945','247.895','-48.5138','3.89208','1','0','0','1','');
INSERT INTO `creature` VALUES ('30022','4850','70','722','0','-210.824','242.184','-47.8069','1.02974','7200','3.0','0','-210.824','242.184','-47.8069','1.02974','1','0','0','1','');
INSERT INTO `creature` VALUES ('30023','7175','70','763','0','-243.165','215.393','-46.6571','5.91667','7200','6.0','0','-243.165','215.393','-46.6571','5.91667','1','0','0','0','');
INSERT INTO `creature` VALUES ('30024','7175','70','763','0','-211.798','220.44','-46.6627','3.08923','7200','6.0','0','-211.798','220.44','-46.6627','3.08923','1','0','0','0','');
INSERT INTO `creature` VALUES ('30025','7175','70','763','0','-213.264','215.356','-46.7294','2.18166','7200','6.0','0','-213.264','215.356','-46.7294','2.18166','1','0','0','0','');
INSERT INTO `creature` VALUES ('30027','7175','70','763','0','-243.263','220.803','-46.3484','1.0472','7200','6.0','0','-243.263','220.803','-46.3484','1.0472','1','0','0','0','');
INSERT INTO `creature` VALUES ('30028','7175','70','763','0','-235.294','214.836','-49.4181','0.890118','7200','6.0','0','-235.294','214.836','-49.4181','0.890118','1','0','0','0','');
INSERT INTO `creature` VALUES ('30029','7175','70','763','0','-221.358','214.264','-49.4079','2.32129','7200','6.0','0','-221.358','214.264','-49.4079','2.32129','1','0','0','0','');
INSERT INTO `creature` VALUES ('30030','4850','70','722','0','-230.359','255.139','-49.4661','6.12611','7200','2.0','0','-230.359','255.139','-49.4661','6.12611','1','0','0','1','');
INSERT INTO `creature` VALUES ('30066','4850','70','722','0','-232.006','198.061','-44.532','2.94961','7200','6.0','0','-232.006','198.061','-44.532','2.94961','1','0','0','0','');
INSERT INTO `creature` VALUES ('30067','4850','70','722','0','-250.699','264.989','-50.2675','6.05629','7200','6.0','0','-250.699','264.989','-50.2675','6.05629','1','0','0','0','');
INSERT INTO `creature` VALUES ('30068','4852','70','160','0','-334.994','80.9996','-51.1472','0.890118','7200','3.0','0','-334.994','80.9996','-51.1472','0.890118','1','0','0','1','');
INSERT INTO `creature` VALUES ('30069','4852','70','160','0','-296.946','140.831','-46.5533','0.349066','7200','2.0','0','-296.946','140.831','-46.5533','0.349066','1','0','0','1','');
INSERT INTO `creature` VALUES ('30073','4850','70','722','0','-317.726','117.748','-49.015','0.0','7200','2.0','0','-317.726','117.748','-49.015','0.0','1','0','0','1','');
INSERT INTO `creature` VALUES ('30074','4852','70','160','0','-350.327','100.63','-53.0457','4.71239','7200','1.0','0','-350.327','100.63','-53.0457','4.71239','1','0','0','1','');
INSERT INTO `creature` VALUES ('30075','4852','70','160','0','-333.309','98.8381','-56.0877','0.418879','7200','3.0','0','-333.309','98.8381','-56.0877','0.418879','1','0','0','1','');
INSERT INTO `creature` VALUES ('30076','4850','70','722','0','-332.0','112.267','-54.0304','5.06145','7200','2.0','0','-332.0','112.267','-54.0304','5.06145','1','0','0','1','');
INSERT INTO `creature` VALUES ('30077','4852','70','160','0','-342.276','86.0456','-51.8534','0.645772','7200','2.0','0','-342.276','86.0456','-51.8534','0.645772','1','0','0','1','');
INSERT INTO `creature` VALUES ('30078','4850','70','722','0','-338.709','139.708','-49.575','4.29351','7200','3.0','0','-338.709','139.708','-49.575','4.29351','1','0','0','1','');
INSERT INTO `creature` VALUES ('30079','4850','70','722','0','-305.035','131.561','-46.5367','3.56047','7200','6.0','0','-305.035','131.561','-46.5367','3.56047','1','0','0','0','');
INSERT INTO `creature` VALUES ('30080','4852','70','160','0','-331.743','119.006','-53.3566','0.0','7200','6.0','0','-331.743','119.006','-53.3566','0.0','1','0','0','0','');
INSERT INTO `creature` VALUES ('30081','4861','70','1954','0','-186.122','284.889','-47.9277','1.14041','7200','3.0','0','-186.122','284.889','-47.9277','1.14041','1','0','0','1','');
INSERT INTO `creature` VALUES ('30082','7022','70','2488','0','-152.951','275.119','-46.8386','4.24115','7200','5.0','0','-152.951','275.119','-46.8386','4.24115','1','0','0','1','');
INSERT INTO `creature` VALUES ('30083','4861','70','1954','0','-69.8894','358.44','-51.3618','5.23599','7200','5.0','0','-69.8894','358.44','-51.3618','5.23599','1','0','0','1','');
INSERT INTO `creature` VALUES ('30084','4863','70','4486','0','-178.951','321.668','-52.6526','2.72271','7200','3.0','0','-178.951','321.668','-52.6526','2.72271','1','0','0','1','');
INSERT INTO `creature` VALUES ('30085','4861','70','1954','0','-123.223','241.99','-48.1317','4.47565','7200','3.0','0','-123.223','241.99','-48.1317','4.47565','1','0','0','1','');
INSERT INTO `creature` VALUES ('30086','7022','70','2488','0','-155.958','319.144','-49.1202','1.15192','7200','5.0','0','-155.958','319.144','-49.1202','1.15192','1','0','0','1','');
INSERT INTO `creature` VALUES ('30087','7022','70','2488','0','-133.63','229.448','-47.8246','4.64258','7200','3.0','0','-133.63','229.448','-47.8246','4.64258','1','0','0','1','');
INSERT INTO `creature` VALUES ('30088','4861','70','1954','0','-77.5891','373.853','-46.2722','3.1765','7200','5.0','0','-77.5891','373.853','-46.2722','3.1765','1','0','0','1','');
INSERT INTO `creature` VALUES ('30089','4863','70','4486','0','-125.943','266.856','-45.7099','3.9619','7200','5.0','0','-125.943','266.856','-45.7099','3.9619','1','0','0','1','');
INSERT INTO `creature` VALUES ('30090','4861','70','1954','0','-112.023','353.095','-45.5119','1.93731','7200','5.0','0','-112.023','353.095','-45.5119','1.93731','1','0','0','1','');
INSERT INTO `creature` VALUES ('30091','4855','70','11166','0','58.6503','366.721','-38.8707','0.785398','7200','6.0','0','58.6503','366.721','-38.8707','0.785398','1','0','0','0','');
INSERT INTO `creature` VALUES ('30092','4855','70','11166','0','55.4041','379.024','-38.1699','2.18166','7200','6.0','0','55.4041','379.024','-38.1699','2.18166','1','0','0','0','');
INSERT INTO `creature` VALUES ('30093','4853','70','1194','0','62.5257','377.912','-38.2556','2.10292','7200','2.0','0','62.5257','377.912','-38.2556','2.10292','1','0','0','1','');
INSERT INTO `creature` VALUES ('30094','4855','70','11166','0','55.8178','416.082','-41.0342','2.3869','7200','2.0','0','55.8178','416.082','-41.0342','2.3869','1','0','0','1','');
INSERT INTO `creature` VALUES ('30095','7320','70','11166','0','6.94175','278.814','-37.2726','1.00828','7200','2.0','0','6.94175','278.814','-37.2726','1.00828','1','0','0','1','');
INSERT INTO `creature` VALUES ('30096','7320','70','11166','0','25.8111','300.415','-40.3157','4.08407','7200','2.0','0','25.8111','300.415','-40.3157','4.08407','1','0','0','1','');
INSERT INTO `creature` VALUES ('30097','7320','70','11166','0','26.1589','293.341','-39.4752','1.65806','7200','2.0','0','26.1589','293.341','-39.4752','1.65806','1','0','0','1','');
INSERT INTO `creature` VALUES ('30098','4855','70','11166','0','49.7852','418.467','-40.9534','0.122173','7200','2.0','0','49.7852','418.467','-40.9534','0.122173','1','0','0','1','');
INSERT INTO `creature` VALUES ('30099','4853','70','1194','0','49.4747','425.58','-40.9556','3.59538','7200','3.0','0','49.4747','425.58','-40.9556','3.59538','1','0','0','1','');
INSERT INTO `creature` VALUES ('30100','4855','70','11166','0','40.1434','445.185','-40.965','4.62512','7200','2.0','0','40.1434','445.185','-40.965','4.62512','1','0','0','1','');
INSERT INTO `creature` VALUES ('30101','4853','70','1194','0','37.5974','438.76','-40.9636','4.7822','7200','3.0','0','37.5974','438.76','-40.9636','4.7822','1','0','0','1','');
INSERT INTO `creature` VALUES ('30102','4855','70','11166','0','39.3714','311.03','-39.1286','2.63545','7200','6.0','0','39.3714','311.03','-39.1286','2.63545','1','0','0','0','');
INSERT INTO `creature` VALUES ('30103','4855','70','11166','0','49.9951','309.711','-40.1848','2.26893','7200','6.0','0','49.9951','309.711','-40.1848','2.26893','1','0','0','0','');
INSERT INTO `creature` VALUES ('30104','4853','70','1194','0','43.393','304.585','-39.5612','5.48033','7200','6.0','0','43.393','304.585','-39.5612','5.48033','1','0','0','0','');
INSERT INTO `creature` VALUES ('30105','4855','70','11166','0','40.5816','359.864','-43.2524','5.74213','7200','2.0','0','40.5816','359.864','-43.2524','5.74213','1','0','0','1','');
INSERT INTO `creature` VALUES ('30106','4855','70','11166','0','36.9656','331.841','-43.0655','0.802851','7200','4.0','0','36.9656','331.841','-43.0655','0.802851','1','0','0','1','');
INSERT INTO `creature` VALUES ('30107','4851','70','721','0','-191.578','138.187','-47.321','6.13962','7200','2.0','0','-191.578','138.187','-47.321','6.13962','1','0','0','1','');
INSERT INTO `creature` VALUES ('30108','4852','70','160','0','-243.784','120.961','-46.6312','4.99385','7200','3.0','0','-243.784','120.961','-46.6312','4.99385','1','0','0','1','');
INSERT INTO `creature` VALUES ('30109','4851','70','721','0','-176.665','143.337','-47.3272','1.65806','7200','3.0','0','-176.665','143.337','-47.3272','1.65806','1','0','0','1','');
INSERT INTO `creature` VALUES ('30110','4851','70','721','0','-174.126','137.393','-47.4112','2.02458','7200','2.0','1','-174.126','137.393','-47.4112','2.02458','1','0','0','2','');
INSERT INTO `creature` VALUES ('30111','4851','70','721','0','-287.446','83.2841','-48.723','0.948537','7200','2.0','0','-287.446','83.2841','-48.723','0.948537','1','0','0','1','');
INSERT INTO `creature` VALUES ('30112','4852','70','160','0','-174.826','75.6344','-48.7268','3.2467','7200','3.0','0','-174.826','75.6344','-48.7268','3.2467','1','0','0','1','');
INSERT INTO `creature` VALUES ('30113','4851','70','721','0','-231.575','137.174','-46.6299','3.1363','7200','2.0','0','-231.575','137.174','-46.6299','3.1363','1','0','0','1','');
INSERT INTO `creature` VALUES ('33501','4852','70','160','0','-172.4','140.041','-47.3289','2.60054','7200','2.0','0','-172.4','140.041','-47.3289','2.60054','1','0','0','1','');
INSERT INTO `creature` VALUES ('33502','4851','70','721','0','-276.031','169.233','-47.3251','3.15905','7200','2.0','0','-276.031','169.233','-47.3251','3.15905','1','0','0','1','');
INSERT INTO `creature` VALUES ('33503','4851','70','721','0','-276.377','136.472','-47.3259','5.34071','7200','2.0','0','-276.377','136.472','-47.3259','5.34071','1','0','0','1','');
INSERT INTO `creature` VALUES ('33504','10120','70','5989','0','48.5035','251.146','-52.1147','0.558505','7200','6.0','0','48.5035','251.146','-52.1147','0.558505','1','0','0','0','');
INSERT INTO `creature` VALUES ('33505','7396','70','6010','0','48.8237','260.62','-52.1147','5.51524','7200','2.0','0','48.8237','260.62','-52.1147','5.51524','1','0','0','1','');
INSERT INTO `creature` VALUES ('33506','7396','70','6010','0','65.102','251.421','-52.1981','5.42025','7200','2.0','0','65.102','251.421','-52.1981','5.42025','1','0','0','1','');
INSERT INTO `creature` VALUES ('33507','7396','70','6010','0','59.6526','247.481','-52.198','1.62304','7200','2.0','0','59.6526','247.481','-52.198','1.62304','1','0','0','1','');
INSERT INTO `creature` VALUES ('33508','7396','70','6010','0','55.0334','254.895','-52.198','2.13041','7200','2.0','0','55.0334','254.895','-52.198','2.13041','1','0','0','1','');
INSERT INTO `creature` VALUES ('33509','7397','70','6009','0','61.976','247.81','-52.198','2.02133','7200','2.0','0','61.976','247.81','-52.198','2.02133','1','0','0','1','');
INSERT INTO `creature` VALUES ('33510','7397','70','6009','0','58.3992','254.443','-52.198','5.78542','7200','2.0','0','58.3992','254.443','-52.198','5.78542','1','0','0','1','');
INSERT INTO `creature` VALUES ('33511','4860','70','2234','0','61.616','238.023','-52.198','0.140379','7200','2.0','0','61.616','238.023','-52.198','0.140379','1','0','0','1','');
INSERT INTO `creature` VALUES ('33512','4860','70','2234','0','76.1654','213.906','-54.9749','2.28883','7200','3.0','0','76.1654','213.906','-54.9749','2.28883','1','0','0','1','');
INSERT INTO `creature` VALUES ('33513','7396','70','6010','0','122.341','258.239','-26.5881','2.8043','7200','2.0','0','122.341','258.239','-26.5881','2.8043','1','0','0','1','');
INSERT INTO `creature` VALUES ('33514','7396','70','6010','0','129.495','258.71','-26.5881','1.24716','7200','2.0','0','129.495','258.71','-26.5881','1.24716','1','0','0','1','');
INSERT INTO `creature` VALUES ('33515','7396','70','6010','0','129.486','263.976','-26.5881','5.05695','7200','2.0','0','129.486','263.976','-26.5881','5.05695','1','0','0','1','');
INSERT INTO `creature` VALUES ('33516','7396','70','6010','0','112.488','244.233','-26.5047','0.593412','7200','2.0','0','112.488','244.233','-26.5047','0.593412','1','0','0','1','');
INSERT INTO `creature` VALUES ('33517','7397','70','6009','0','124.215','250.495','-26.5881','0.043685','7200','2.0','0','124.215','250.495','-26.5881','0.043685','1','0','0','1','');
INSERT INTO `creature` VALUES ('33518','4860','70','2234','0','113.387','252.391','-26.5881','0.518236','7200','2.0','0','113.387','252.391','-26.5881','0.518236','1','0','0','1','');
INSERT INTO `creature` VALUES ('33519','7022','70','2488','0','-123.224','239.511','-48.3428','3.07178','7200','3.0','0','-123.224','239.511','-48.3428','3.07178','1','0','0','1','');
INSERT INTO `creature` VALUES ('33520','4863','70','4486','0','-141.03','312.545','-44.3538','5.61996','7200','5.0','0','-141.03','312.545','-44.3538','5.61996','1','0','0','1','');
INSERT INTO `creature` VALUES ('33521','4861','70','1954','0','-44.2284','356.997','-47.5747','0.575959','7200','3.0','0','-44.2284','356.997','-47.5747','0.575959','1','0','0','1','');
INSERT INTO `creature` VALUES ('33522','4861','70','1954','0','-56.0625','371.559','-50.5752','3.43001','7200','3.0','0','-56.0625','371.559','-50.5752','3.43001','1','0','0','1','');
INSERT INTO `creature` VALUES ('33523','4861','70','1954','0','-48.6179','369.872','-49.8161','4.29351','7200','3.0','0','-48.6179','369.872','-49.8161','4.29351','1','0','0','1','');
INSERT INTO `creature` VALUES ('33524','4851','70','721','0','-281.844','163.795','-47.3267','4.4855','7200','2.0','0','-281.844','163.795','-47.3267','4.4855','1','0','0','1','');
INSERT INTO `creature` VALUES ('33525','4852','70','160','0','-166.57','69.4432','-48.7308','1.53746','7200','3.0','0','-166.57','69.4432','-48.7308','1.53746','1','0','0','1','');
INSERT INTO `creature` VALUES ('33526','4852','70','160','0','-273.878','62.1223','-48.7141','3.41824','7200','3.0','0','-273.878','62.1223','-48.7141','3.41824','1','0','0','1','');
INSERT INTO `creature` VALUES ('33527','4851','70','721','0','-212.113','120.996','-46.6312','4.60462','7200','5.0','0','-212.113','120.996','-46.6312','4.60462','1','0','0','1','');
INSERT INTO `creature` VALUES ('33528','4851','70','721','0','-280.322','59.587','-48.7168','0.403883','7200','3.0','0','-280.322','59.587','-48.7168','0.403883','1','0','0','1','');
INSERT INTO `creature` VALUES ('33529','4851','70','721','0','-164.516','82.1045','-48.7316','0.567649','7200','3.0','0','-164.516','82.1045','-48.7316','0.567649','1','0','0','1','');
INSERT INTO `creature` VALUES ('33530','4851','70','721','0','-244.22','90.1088','-48.0306','3.45953','7200','2.0','0','-244.22','90.1088','-48.0306','3.45953','1','0','0','1','');
INSERT INTO `creature` VALUES ('33531','4852','70','160','0','-282.683','170.546','-47.3271','2.51327','7200','2.0','0','-282.683','170.546','-47.3271','2.51327','1','0','0','1','');
INSERT INTO `creature` VALUES ('33532','4851','70','721','0','-212.481','88.8378','-48.0205','3.08739','7200','2.0','0','-212.481','88.8378','-48.0205','3.08739','1','0','0','1','');
INSERT INTO `creature` VALUES ('33533','4852','70','160','0','-224.209','134.803','-46.6291','3.37407','7200','2.0','0','-224.209','134.803','-46.6291','3.37407','1','0','0','1','');
INSERT INTO `creature` VALUES ('33534','4851','70','721','0','-230.612','129.842','-46.6282','1.46608','7200','2.0','0','-230.612','129.842','-46.6282','1.46608','1','0','0','1','');
INSERT INTO `creature` VALUES ('33535','10120','70','5989','0','51.9748','243.765','-52.1147','0.593412','7200','6.0','0','51.9748','243.765','-52.1147','0.593412','1','0','0','0','');
INSERT INTO `creature` VALUES ('33536','15384','70','11686','0','150.307','306.34','-52.1428','5.79449','7200','5.0','0','150.307','306.34','-52.1428','5.79449','1','0','0','1','');
INSERT INTO `creature` VALUES ('33537','2748','70','5988','0','104.338','272.31','-51.6959','3.64774','43200','6.0','0','104.338','272.31','-51.6959','3.64774','1','0','0','0','');
INSERT INTO `creature` VALUES ('33538','7309','70','6025','0','132.846','259.723','-52.1213','2.60054','7200','6.0','0','132.846','259.723','-52.1213','2.60054','1','0','0','0','');
INSERT INTO `creature` VALUES ('33539','7309','70','6025','0','79.827','292.044','-52.1213','5.84685','7200','6.0','0','79.827','292.044','-52.1213','5.84685','1','0','0','0','');
INSERT INTO `creature` VALUES ('33540','7309','70','6025','0','119.714','299.935','-52.1213','4.18879','7200','6.0','0','119.714','299.935','-52.1213','4.18879','1','0','0','0','');
INSERT INTO `creature` VALUES ('33541','7309','70','6025','0','73.6493','276.098','-52.1213','6.0912','7200','6.0','0','73.6493','276.098','-52.1213','6.0912','1','0','0','0','');
INSERT INTO `creature` VALUES ('33542','7076','70','6026','0','106.737','290.618','-51.6997','4.59022','7200','6.0','0','106.737','290.618','-51.6997','4.59022','1','0','0','0','');
INSERT INTO `creature` VALUES ('33543','7309','70','6025','0','96.1878','242.548','-52.1213','1.36136','7200','6.0','0','96.1878','242.548','-52.1213','1.36136','1','0','0','0','');
INSERT INTO `creature` VALUES ('33544','10120','70','5989','0','117.541','244.48','-52.1213','2.09439','7200','6.0','0','117.541','244.48','-52.1213','2.09439','1','0','0','0','');
INSERT INTO `creature` VALUES ('33545','7309','70','6025','0','85.3935','247.961','-52.1213','0.959931','7200','6.0','0','85.3935','247.961','-52.1213','0.959931','1','0','0','0','');
INSERT INTO `creature` VALUES ('33546','7309','70','6025','0','87.3029','246.851','-52.1213','1.06465','7200','6.0','0','87.3029','246.851','-52.1213','1.06465','1','0','0','0','');
INSERT INTO `creature` VALUES ('33547','7309','70','6025','0','107.897','303.66','-52.1213','4.57276','7200','6.0','0','107.897','303.66','-52.1213','4.57276','1','0','0','0','');
INSERT INTO `creature` VALUES ('33548','7309','70','6025','0','110.552','303.294','-52.1213','4.57276','7200','6.0','0','110.552','303.294','-52.1213','4.57276','1','0','0','0','');
INSERT INTO `creature` VALUES ('33549','10120','70','5989','0','90.9648','301.704','-52.1213','5.28835','7200','6.0','0','90.9648','301.704','-52.1213','5.28835','1','0','0','0','');
INSERT INTO `creature` VALUES ('33550','7077','70','6025','0','125.958','296.112','-52.1213','3.9619','7200','6.0','0','125.958','296.112','-52.1213','3.9619','1','0','0','0','');
INSERT INTO `creature` VALUES ('33551','7076','70','6026','0','89.731','282.814','-51.6997','5.67232','7200','6.0','0','89.731','282.814','-51.6997','5.67232','1','0','0','0','');
INSERT INTO `creature` VALUES ('33552','7309','70','6025','0','78.5479','289.994','-52.1213','5.70723','7200','6.0','0','78.5479','289.994','-52.1213','5.70723','1','0','0','0','');
INSERT INTO `creature` VALUES ('33553','7309','70','6025','0','77.1684','287.766','-52.1213','5.81195','7200','6.0','0','77.1684','287.766','-52.1213','5.81195','1','0','0','0','');
INSERT INTO `creature` VALUES ('33554','7309','70','6025','0','75.9659','285.748','-52.1213','5.65487','7200','6.0','0','75.9659','285.748','-52.1213','5.65487','1','0','0','0','');
INSERT INTO `creature` VALUES ('33555','7309','70','6025','0','74.2951','280.898','-52.1213','6.0912','7200','6.0','0','74.2951','280.898','-52.1213','6.0912','1','0','0','0','');
INSERT INTO `creature` VALUES ('33556','7309','70','6025','0','73.9196','278.483','-52.1213','6.12611','7200','6.0','0','73.9196','278.483','-52.1213','6.12611','1','0','0','0','');
INSERT INTO `creature` VALUES ('33557','7309','70','6025','0','73.2958','273.634','-52.1213','6.00393','7200','6.0','0','73.2958','273.634','-52.1213','6.00393','1','0','0','0','');
INSERT INTO `creature` VALUES ('33558','7077','70','6025','0','83.3431','249.266','-52.1213','0.837758','7200','6.0','0','83.3431','249.266','-52.1213','0.837758','1','0','0','0','');
INSERT INTO `creature` VALUES ('33559','7077','70','6025','0','93.7888','243.029','-52.1213','1.23918','7200','6.0','0','93.7888','243.029','-52.1213','1.23918','1','0','0','0','');
INSERT INTO `creature` VALUES ('33560','7076','70','6026','0','102.634','255.188','-51.6997','1.48353','7200','6.0','0','102.634','255.188','-51.6997','1.48353','1','0','0','0','');
INSERT INTO `creature` VALUES ('33561','7309','70','6025','0','130.37','255.511','-52.1213','2.58309','7200','6.0','0','130.37','255.511','-52.1213','2.58309','1','0','0','0','');
INSERT INTO `creature` VALUES ('33562','7309','70','6025','0','131.642','257.691','-52.1213','2.61799','7200','6.0','0','131.642','257.691','-52.1213','2.61799','1','0','0','0','');
INSERT INTO `creature` VALUES ('33563','7077','70','6025','0','115.438','302.439','-52.1213','4.34587','7200','6.0','0','115.438','302.439','-52.1213','4.34587','1','0','0','0','');
INSERT INTO `creature` VALUES ('33577','7077','70','6025','0','103.067','304.25','-52.1213','4.74729','7200','6.0','0','103.067','304.25','-52.1213','4.74729','1','0','0','0','');
INSERT INTO `creature` VALUES ('33578','7309','70','6025','0','91.5691','244.263','-52.1213','1.0472','7200','6.0','0','91.5691','244.263','-52.1213','1.0472','1','0','0','0','');
INSERT INTO `creature` VALUES ('33579','7309','70','6025','0','98.6404','242.097','-52.1213','1.36136','7200','6.0','0','98.6404','242.097','-52.1213','1.36136','1','0','0','0','');
INSERT INTO `creature` VALUES ('33580','7309','70','6025','0','101.175','241.734','-52.1213','1.41372','7200','6.0','0','101.175','241.734','-52.1213','1.41372','1','0','0','0','');
INSERT INTO `creature` VALUES ('33581','7309','70','6025','0','134.815','264.562','-52.1213','2.9147','7200','6.0','0','134.815','264.562','-52.1213','2.9147','1','0','0','0','');
INSERT INTO `creature` VALUES ('33582','7309','70','6025','0','135.212','267.042','-52.1213','2.98451','7200','6.0','0','135.212','267.042','-52.1213','2.98451','1','0','0','0','');
INSERT INTO `creature` VALUES ('33583','7309','70','6025','0','135.559','269.673','-52.1213','2.98451','7200','6.0','0','135.559','269.673','-52.1213','2.98451','1','0','0','0','');
INSERT INTO `creature` VALUES ('33584','7309','70','6025','0','135.927','272.091','-52.1213','3.01942','7200','6.0','0','135.927','272.091','-52.1213','3.01942','1','0','0','0','');
INSERT INTO `creature` VALUES ('33585','7309','70','6025','0','123.935','297.48','-52.1213','4.15388','7200','6.0','0','123.935','297.48','-52.1213','4.15388','1','0','0','0','');
INSERT INTO `creature` VALUES ('33586','7076','70','6026','0','88.0912','265.328','-51.6997','0.436332','7200','6.0','0','88.0912','265.328','-51.6997','0.436332','1','0','0','0','');
INSERT INTO `creature` VALUES ('33587','7309','70','6025','0','117.584','301.153','-52.1213','4.24115','7200','6.0','0','117.584','301.153','-52.1213','4.24115','1','0','0','0','');
INSERT INTO `creature` VALUES ('33588','7077','70','6025','0','127.731','251.6','-52.1213','2.40855','7200','6.0','0','127.731','251.6','-52.1213','2.40855','1','0','0','0','');
INSERT INTO `creature` VALUES ('33589','7077','70','6025','0','134.081','262.03','-52.1213','2.80998','7200','6.0','0','134.081','262.03','-52.1213','2.80998','1','0','0','0','');
INSERT INTO `creature` VALUES ('33593','7077','70','6025','0','74.8823','283.399','-52.1213','5.91667','7200','6.0','0','74.8823','283.399','-52.1213','5.91667','1','0','0','0','');
INSERT INTO `creature` VALUES ('33594','7309','70','6025','0','103.572','241.414','-52.1213','1.36136','7200','6.0','0','103.572','241.414','-52.1213','1.36136','1','0','0','0','');
INSERT INTO `creature` VALUES ('33595','7309','70','6025','0','121.925','298.689','-52.1213','4.15388','7200','6.0','0','121.925','298.689','-52.1213','4.15388','1','0','0','0','');
INSERT INTO `creature` VALUES ('33596','7309','70','6025','0','112.992','302.948','-52.1213','4.50295','7200','6.0','0','112.992','302.948','-52.1213','4.50295','1','0','0','0','');
INSERT INTO `creature` VALUES ('33597','7309','70','6025','0','105.498','304.0','-52.1213','4.59022','7200','6.0','0','105.498','304.0','-52.1213','4.59022','1','0','0','0','');
INSERT INTO `creature` VALUES ('35238','7309','70','6025','0','129.047','253.491','-52.1213','2.53073','7200','6.0','0','129.047','253.491','-52.1213','2.53073','1','0','0','0','');
INSERT INTO `creature` VALUES ('44158','7077','70','6025','0','105.984','241.057','-52.1213','1.64061','7200','6.0','0','105.984','241.057','-52.1213','1.64061','1','0','0','0','');
INSERT INTO `creature` VALUES ('44159','7077','70','6025','0','73.0399','271.531','-52.1213','0.017453','7200','6.0','0','73.0399','271.531','-52.1213','0.017453','1','0','0','0','');
INSERT INTO `creature` VALUES ('44391','7077','70','6025','0','81.1552','293.988','-52.1213','5.51524','7200','6.0','0','81.1552','293.988','-52.1213','5.51524','1','0','0','0','');
INSERT INTO `creature` VALUES ('46995','7076','70','6026','0','120.997','280.152','-51.6997','3.61283','7200','6.0','0','120.997','280.152','-51.6997','3.61283','1','0','0','0','');
INSERT INTO `creature` VALUES ('47441','7076','70','6026','0','119.465','263.298','-51.6997','2.56563','7200','6.0','0','119.465','263.298','-51.6997','2.56563','1','0','0','0','');
INSERT INTO `creature` VALUES ('47579','7077','70','6025','0','135.904','274.323','-52.1213','3.21141','7200','6.0','0','135.904','274.323','-52.1213','3.21141','1','0','0','0','');
INSERT INTO `creature` VALUES ('48034','7309','70','6025','0','89.4681','245.446','-52.1213','1.06465','7200','6.0','0','89.4681','245.446','-52.1213','1.06465','1','0','0','0','');
INSERT INTO `creature` VALUES ('52882','11073','70','10609','0','-159.803','196.172','-49.5849','1.74533','7200','6.0','0','-159.803','196.172','-49.5849','1.74533','1','0','0','0','');
INSERT INTO `creature` VALUES ('54080','7228','70','0','0','-235.673','309.639','-47.5976','4.74317','43200','2.0','0','-235.673','309.639','-47.5976','0.0','15000','0','0','1','');
INSERT INTO `creature_addon` VALUES ('18715','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27449','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27450','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27451','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27452','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27453','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27454','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27455','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27456','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27457','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27458','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27459','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27460','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27461','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27462','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27463','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27464','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27465','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27466','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27467','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27468','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27469','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27470','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27471','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27472','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27473','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27474','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27476','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27477','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27478','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27479','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27480','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27481','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27482','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27483','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27484','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27485','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27486','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27487','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27488','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27489','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27490','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27491','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27492','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27494','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27495','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27496','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27497','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27498','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27499','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27500','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27501','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27502','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27503','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27504','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27505','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27506','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27507','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27508','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27509','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27510','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27511','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27512','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27513','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27514','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27515','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27516','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27517','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27518','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27519','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27520','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27521','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27522','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27523','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27524','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27525','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27526','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27527','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27528','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27529','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27530','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27531','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27532','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27533','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27534','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27535','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27536','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27537','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27538','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27539','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27540','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27541','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27542','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27543','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27544','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27545','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27552','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27553','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27554','0','16908544','0','4097','0','10255','9','46','255','0');
INSERT INTO `creature_addon` VALUES ('27555','0','16908544','0','4097','0','10255','9','46','255','0');
INSERT INTO `creature_addon` VALUES ('27568','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27691','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27692','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27728','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27730','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27763','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27764','0','16777472','1114112','4097','0','7165','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('27765','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27766','0','16777472','1114112','4097','0','7165','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('27767','0','16777472','1114112','4097','0','7165','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('27768','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27769','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27770','0','16777472','1114112','4097','0','7165','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('27789','0','16777472','1114112','4097','0','7165','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('27790','0','16777472','1114112','4097','0','7165','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('27791','0','16777472','1114112','4097','0','7165','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('27792','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27793','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27794','0','16908544','0','4097','0','10255','217','11822','65535','0');
INSERT INTO `creature_addon` VALUES ('27796','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27798','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('27800','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28363','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28364','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28365','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28367','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28368','0','16908544','0','4097','0','10255','9','46','255','0');
INSERT INTO `creature_addon` VALUES ('28369','0','16777472','1114112','4097','0','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28370','0','16777472','1114112','4097','0','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28371','0','16777472','1114112','4097','0','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28372','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28373','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28374','0','16777472','1114112','4097','0','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28376','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28377','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28532','0','16777472','1114112','4097','0','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28533','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28534','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28535','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28536','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28537','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28538','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28539','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28540','0','2048','0','4097','233','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28541','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28542','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28543','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28544','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28545','0','2048','0','4097','233','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28546','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28547','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28784','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28786','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28789','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('28795','0','16777472','1114112','4097','0','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('28796','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28797','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28798','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28799','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('28800','0','2048','0','4097','233','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29384','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('29488','0','16777472','1114112','4097','233','7165','9','43','255','0');
INSERT INTO `creature_addon` VALUES ('29573','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('29574','0','16777472','1114112','4097','233','7165','9','42','255','0');
INSERT INTO `creature_addon` VALUES ('29589','0','2048','0','4097','233','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29590','0','512','7','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29591','0','512','0','4097','173','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29592','0','512','0','4097','173','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29593','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29594','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29649','0','512','0','4097','173','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29650','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29651','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29652','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29653','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('29654','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('29655','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29656','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('29657','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('29658','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('29659','0','16777472','33554432','4097','0','7939','217','9766','65535','64');
INSERT INTO `creature_addon` VALUES ('29773','0','16777472','33554432','4097','0','7939','217','9766','65535','64');
INSERT INTO `creature_addon` VALUES ('30022','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30023','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30024','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30025','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30027','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30028','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30029','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30030','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30066','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30067','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30068','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30069','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30073','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30074','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30075','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30076','0','16777472','33554432','4097','0','7939','217','9766','65535','64');
INSERT INTO `creature_addon` VALUES ('30077','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30078','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30079','0','16777472','33554432','4097','0','7939','217','10023','65535','64');
INSERT INTO `creature_addon` VALUES ('30080','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30081','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30082','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30083','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30084','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30085','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30086','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30087','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30088','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30089','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30090','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30091','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30092','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30093','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30094','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30095','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30096','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30097','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30098','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30099','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30100','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30101','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30102','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30103','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30104','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30105','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30106','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30107','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30108','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30109','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30110','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30111','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30112','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('30113','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33501','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33502','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33503','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33504','0','16908544','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33505','0','16777472','1114112','4097','0','7165','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33506','0','16777472','1114112','4097','0','7165','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33507','0','16777472','1114112','4097','0','7165','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33508','0','16777472','1114112','4097','0','7165','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33509','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33510','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33511','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33512','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33513','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33514','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33515','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33516','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33517','0','2048','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33518','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33519','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33520','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33521','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33522','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33523','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33524','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33525','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33526','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33527','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33528','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33529','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33530','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33531','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33532','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33533','0','512','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33534','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33535','0','16908544','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33536','0','16908544','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33537','0','16777472','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_addon` VALUES ('33538','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33539','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33540','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33541','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33542','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33543','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33544','0','16908544','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33545','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33546','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33547','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33548','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33549','0','16908544','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33550','0','2048','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33551','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33552','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33553','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33554','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33555','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33556','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33557','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33558','0','2048','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33559','0','2048','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33560','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33561','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33562','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33563','0','2048','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33577','0','2048','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33578','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33579','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33580','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33581','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33582','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33583','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33584','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33585','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33586','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33587','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33588','0','2048','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('33589','0','2048','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33593','0','2048','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33594','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33595','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33596','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('33597','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('35238','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('44158','0','2048','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('44159','0','2048','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('44391','0','2048','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('46995','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('47441','0','16777472','0','4097','0','10255','9','44','255','0');
INSERT INTO `creature_addon` VALUES ('47579','0','2048','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('48034','0','16777472','0','4097','0','10255','9','45','255','0');
INSERT INTO `creature_addon` VALUES ('52882','0','16843008','0','4097','0','0','0','0','0','0');
INSERT INTO `creature_movement` VALUES ('27505','1','57.9032','373.95','-38.2499','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('27505','2','75.2625','395.951','-38.2749','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('27505','3','62.5435','409.664','-38.2636','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('27505','4','75.2625','395.951','-38.2749','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30110','1','-174.126','137.393','-47.4112','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30110','2','-177.074','165.965','-47.4112','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30110','3','-195.662','169.764','-47.4042','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `creature_movement` VALUES ('30110','4','-177.074','165.965','-47.4112','0','','','','','','','0','0','0','0.0','0','0');
INSERT INTO `gameobject` VALUES ('14354','48483','70','-12.7417','276.117','-48.6347','2.79253','0.0','0.0','0.984808','0.173648','3600','100','0');
INSERT INTO `gameobject` VALUES ('14355','48508','70','-100.862','330.383','-47.5363','2.15463','0.019534','0.001075','0.880602','0.473452','3600','100','0');
INSERT INTO `gameobject` VALUES ('14356','2061','70','-100.862','330.383','-47.5363','2.15463','0.019534','0.001075','0.880602','0.473452','3600','100','0');
INSERT INTO `gameobject` VALUES ('14357','48484','70','-8.03935','279.003','-48.7176','2.46679','0.057618','-0.032506','0.941299','0.331027','3600','100','0');
INSERT INTO `gameobject` VALUES ('14358','48500','70','-32.0942','303.005','-45.404','-3.14122','0.013268','-0.007055','0.999887','-9.4e-005','3600','100','0');
INSERT INTO `gameobject` VALUES ('14359','48459','70','-223.822','-52.8567','-45.3611','-0.411659','-0.012865','0.030369','-0.203769','0.978463','3600','100','0');
INSERT INTO `gameobject` VALUES ('14360','48470','70','-360.689','122.367','-45.088','-0.410762','-0.064403','-0.032508','-0.205898','0.975911','3600','100','0');
INSERT INTO `gameobject` VALUES ('14361','48477','70','-360.417','119.553','-44.7049','0.604296','-0.04773','-0.005713','0.297623','0.953473','3600','100','0');
INSERT INTO `gameobject` VALUES ('14362','48507','70','-148.232','244.513','-40.2454','-3.124','-0.106509','0.040367','0.993483','-0.004328','3600','100','0');
INSERT INTO `gameobject` VALUES ('14363','48491','70','-120.337','238.514','-48.8304','0.387906','0.062014','0.015925','0.192113','0.979282','3600','100','0');
INSERT INTO `gameobject` VALUES ('14364','48492','70','49.7145','348.337','-39.9966','0.690192','-0.011673','0.045712','0.337712','0.940066','3600','100','0');
INSERT INTO `gameobject` VALUES ('14365','2061','70','49.7145','348.337','-39.9966','0.690192','-0.011673','0.045712','0.337712','0.940066','3600','100','0');
INSERT INTO `gameobject` VALUES ('14366','48493','70','26.7081','372.597','-40.4458','2.50987','-0.018382','0.093358','0.945006','0.312906','3600','100','0');
INSERT INTO `gameobject` VALUES ('14367','2061','70','26.7081','372.597','-40.4458','2.50987','-0.018382','0.093358','0.945006','0.312906','3600','100','0');
INSERT INTO `gameobject` VALUES ('14368','48495','70','-246.792','242.174','-46.7675','0.347656','-0.006662','0.072261','0.172074','0.982408','3600','100','0');
INSERT INTO `gameobject` VALUES ('14369','2061','70','-246.792','242.174','-46.7675','0.347656','-0.006662','0.072261','0.172074','0.982408','3600','100','0');
INSERT INTO `gameobject` VALUES ('14370','48433','70','-135.821','293.887','-45.7767','-3.13009','-0.048573','0.058928','0.997076','-0.002871','3600','100','0');
INSERT INTO `gameobject` VALUES ('14371','48434','70','-140.419','267.264','-52.6497','1.49974','0.015758','0.061965','0.678784','0.731549','3600','100','0');
INSERT INTO `gameobject` VALUES ('14372','48436','70','-138.724','267.537','-52.9151','2.08567','0.0','0.0','0.863836','0.503774','3600','100','0');
INSERT INTO `gameobject` VALUES ('14373','48405','70','-215.523','7.14708','-48.1857','0.071304','-0.022407','-0.016676','0.035266','0.998988','3600','100','0');
INSERT INTO `gameobject` VALUES ('14374','103012','70','-82.0178','334.937','-48.8487','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14375','48445','70','-214.739','5.66459','-48.3328','0.894205','0.07621','-0.043425','0.433945','0.896659','3600','100','0');
INSERT INTO `gameobject` VALUES ('14376','48455','70','-244.407','-9.22357','-48.7237','1.35416','0.038377','0.034314','0.625582','0.778458','3600','100','0');
INSERT INTO `gameobject` VALUES ('14377','2061','70','-244.407','-9.22357','-48.7237','1.35416','0.038377','0.034314','0.625582','0.778458','3600','100','0');
INSERT INTO `gameobject` VALUES ('14378','103011','70','-357.999','120.864','-44.8125','1.01602','-0.068802','0.071104','0.486192','0.868233','3600','100','0');
INSERT INTO `gameobject` VALUES ('14379','2061','70','-357.999','120.864','-44.8125','1.01602','-0.068802','0.071104','0.486192','0.868233','3600','100','0');
INSERT INTO `gameobject` VALUES ('14380','48411','70','-11.2335','278.878','-48.4381','2.27835','0.059654','-0.022444','0.906563','0.41723','3600','100','0');
INSERT INTO `gameobject` VALUES ('14381','2061','70','-11.2335','278.878','-48.4381','2.27835','0.059654','-0.022444','0.906563','0.41723','3600','100','0');
INSERT INTO `gameobject` VALUES ('14382','48407','70','-208.763','-2.70435','-48.624','2.77514','0.006293','0.010469','0.983197','0.182139','3600','100','0');
INSERT INTO `gameobject` VALUES ('14383','48408','70','-216.16','-6.56397','-48.5339','-1.06362','0.028372','0.020748','-0.507168','0.86113','3600','100','0');
INSERT INTO `gameobject` VALUES ('14384','48505','70','-255.654','267.584','-50.3883','-0.91449','-0.046963','0.0118','-0.441391','0.896007','3600','100','0');
INSERT INTO `gameobject` VALUES ('14385','48496','70','-211.64','215.49','-46.8359','1.03334','-0.044225','0.01018','0.49437','0.868066','3600','100','0');
INSERT INTO `gameobject` VALUES ('14386','2061','70','-211.64','215.49','-46.8359','1.03334','-0.044225','0.01018','0.49437','0.868066','3600','100','0');
INSERT INTO `gameobject` VALUES ('14387','48417','70','19.6114','212.707','-30.7543','0.469331','0.033086','-0.024473','0.233133','0.971574','3600','100','0');
INSERT INTO `gameobject` VALUES ('14388','48418','70','16.754','234.987','-31.6856','-0.843491','-0.021154','-0.092952','-0.405883','0.90894','3600','100','0');
INSERT INTO `gameobject` VALUES ('14389','48409','70','-205.883','-33.3631','-46.9783','2.07612','-0.004051','0.052416','0.859568','0.50831','3600','100','0');
INSERT INTO `gameobject` VALUES ('14390','48430','70','-154.319','327.64','-44.8869','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14391','48431','70','-139.767','270.428','-52.9144','2.14482','0.050321','0.067996','0.875678','0.475429','3600','100','0');
INSERT INTO `gameobject` VALUES ('14392','2061','70','-139.767','270.428','-52.9144','2.14482','0.050321','0.067996','0.875678','0.475429','3600','100','0');
INSERT INTO `gameobject` VALUES ('14393','124371','70','-234.688','239.619','-50.9083','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14394','124372','70','-234.567','294.81','-47.596','-1.5708','0.0','0.0','-0.707107','0.707107','3600','100','0');
INSERT INTO `gameobject` VALUES ('14395','48452','70','-19.0193','341.359','-40.9857','3.14159','0.047978','0.0','0.998848','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14396','48453','70','-18.0883','343.805','-40.8768','-3.13663','0.056499','-0.056668','0.996793','0.000736','3600','100','0');
INSERT INTO `gameobject` VALUES ('14397','48454','70','-9.40941','319.774','-39.4051','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14398','48465','70','7.355','404.675','-46.9825','2.25925','-0.037649','-0.020446','0.903796','0.425814','3600','100','0');
INSERT INTO `gameobject` VALUES ('14399','48469','70','-152.808','364.384','-33.9316','2.54912','-0.058626','-0.002853','0.955113','0.290369','3600','100','0');
INSERT INTO `gameobject` VALUES ('14400','48462','70','-103.491','210.84','-41.3915','-0.154758','-0.109685','-0.015535','-0.079426','0.990666','3600','100','0');
INSERT INTO `gameobject` VALUES ('14401','48473','70','-144.195','393.703','-40.0772','-0.531384','0.049971','0.100852','-0.263239','0.958143','3600','100','0');
INSERT INTO `gameobject` VALUES ('14402','48474','70','-141.793','394.541','-39.9671','-1.89947','0.051664','0.129574','-0.800081','0.583448','3600','100','0');
INSERT INTO `gameobject` VALUES ('14403','48475','70','-139.3','393.074','-40.5301','-2.46514','0.015535','-0.074359','0.940367','-0.33157','3600','100','0');
INSERT INTO `gameobject` VALUES ('14404','48476','70','5.13656','407.546','-47.2073','-2.63886','-0.08329','-0.019026','0.965081','-0.247629','3600','100','0');
INSERT INTO `gameobject` VALUES ('14405','2061','70','5.13656','407.546','-47.2073','-2.63886','-0.08329','-0.019026','0.965081','-0.247629','3600','100','0');
INSERT INTO `gameobject` VALUES ('14406','48422','70','-46.5848','276.383','-49.0577','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14407','48424','70','51.4933','324.965','-43.2233','2.45111','-0.054899','0.010948','0.939673','0.337463','3600','100','0');
INSERT INTO `gameobject` VALUES ('14408','48440','70','-166.525','206.859','-49.5789','-0.444336','0.013922','0.043679','-0.22029','0.974357','3600','100','0');
INSERT INTO `gameobject` VALUES ('14409','48442','70','-164.875','215.454','-48.8381','-0.49742','0.021144','-0.00537','-0.246095','0.969','3600','100','0');
INSERT INTO `gameobject` VALUES ('14410','48482','70','-165.338','394.298','-36.4654','-0.007972','0.024064','0.014628','-0.004338','0.999594','3600','100','0');
INSERT INTO `gameobject` VALUES ('14411','124367','70','137.664','288.136','-26.4418','-2.70526','0.0','0.0','0.976296','-0.21644','3600','100','0');
INSERT INTO `gameobject` VALUES ('14412','124368','70','50.0446','247.246','-26.5175','-2.70526','0.0','0.0','0.976296','-0.21644','3600','100','0');
INSERT INTO `gameobject` VALUES ('14413','48420','70','-269.12','-37.7511','-43.9261','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14414','48421','70','-46.4928','278.334','-49.0708','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14415','48426','70','44.9896','326.255','-43.3459','1.66822','0.006089','0.02726','0.740185','0.671823','3600','100','0');
INSERT INTO `gameobject` VALUES ('14416','48428','70','-127.33','331.134','-44.246','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14417','48460','70','-68.4732','356.613','-51.1938','-1.0178','-0.026843','-0.088248','-0.483595','0.870418','3600','100','0');
INSERT INTO `gameobject` VALUES ('14418','2061','70','-68.4732','356.613','-51.1938','-1.0178','-0.026843','-0.088248','-0.483595','0.870418','3600','100','0');
INSERT INTO `gameobject` VALUES ('14419','48461','70','27.2443','290.927','-39.1096','-0.68017','0.016806','-0.076304','-0.329956','0.940757','3600','100','0');
INSERT INTO `gameobject` VALUES ('14420','48412','70','-36.8029','301.933','-44.6243','0.085863','-0.009131','0.049952','0.043214','0.997774','3600','100','0');
INSERT INTO `gameobject` VALUES ('14421','48403','70','29.6978','372.833','-40.6615','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('14422','124369','70','137.654','288.125','-52.1341','-2.70526','0.0','0.0','0.976296','-0.21644','3600','100','0');
INSERT INTO `gameobject` VALUES ('14423','48480','70','-158.077','363.416','-33.9055','-1.25048','-0.052868','-0.002679','-0.585579','0.808885','3600','100','0');
INSERT INTO `gameobject` VALUES ('14424','2061','70','-158.077','363.416','-33.9055','-1.25048','-0.052868','-0.002679','-0.585579','0.808885','3600','100','0');
INSERT INTO `gameobject` VALUES ('14425','48481','70','-165.191','392.62','-36.4654','0.13138','0.026413','0.009768','0.065401','0.997462','3600','100','0');
INSERT INTO `gameobject` VALUES ('14426','48486','70','28.7753','375.097','-40.5884','-2.26391','-0.076564','0.022726','0.903698','-0.420656','3600','100','0');
INSERT INTO `gameobject` VALUES ('14427','48479','70','-162.738','391.294','-36.4654','1.7111','0.00703','0.02727','0.754426','0.655781','3600','100','0');
INSERT INTO `gameobject` VALUES ('14428','48487','70','-142.095','391.401','-40.3016','0.092438','-0.041576','0.072851','0.048897','0.995275','3600','100','0');
INSERT INTO `gameobject` VALUES ('14429','2061','70','-142.095','391.401','-40.3016','0.092438','-0.041576','0.072851','0.048897','0.995275','3600','100','0');
INSERT INTO `gameobject` VALUES ('14430','48488','70','-110.742','231.829','-52.3405','2.27262','-0.035729','0.049317','0.904735','0.421599','3600','100','0');
INSERT INTO `gameobject` VALUES ('14431','48472','70','-242.776','-18.5393','-48.1187','-0.576139','-0.022492','0.071184','-0.280823','0.956852','3600','100','0');
INSERT INTO `gameobject` VALUES ('14432','2061','70','-242.776','-18.5393','-48.1187','-0.576139','-0.022492','0.071184','-0.280823','0.956852','3600','100','0');
INSERT INTO `gameobject` VALUES ('14433','48413','70','23.5414','220.783','-31.5287','0.194096','-0.062099','0.015717','0.097999','0.993123','3600','100','0');
INSERT INTO `gameobject` VALUES ('14434','48443','70','-85.3134','336.897','-48.1264','-2.84519','0.012872','0.002769','0.988951','-0.147658','3600','100','0');
INSERT INTO `gameobject` VALUES ('14435','2061','70','-85.3134','336.897','-48.1264','-2.84519','0.012872','0.002769','0.988951','-0.147658','3600','100','0');
INSERT INTO `gameobject` VALUES ('14436','48446','70','-155.154','223.659','-46.52','-3.03638','0.073329','0.002183','0.995932','-0.052317','3600','100','0');
INSERT INTO `gameobject` VALUES ('14437','48447','70','-65.3726','361.648','-51.0291','-3.13073','0.06755','-0.039838','0.996917','-0.002699','3600','100','0');
INSERT INTO `gameobject` VALUES ('14438','48448','70','-74.9544','355.604','-51.2773','0.837718','-0.057085','0.047478','0.407598','0.910138','3600','100','0');
INSERT INTO `gameobject` VALUES ('14439','48450','70','-73.3156','355.061','-51.1343','1.62581','-0.023265','0.041953','0.724994','0.687083','3600','100','0');
INSERT INTO `gameobject` VALUES ('14440','48464','70','-103.14','212.677','-41.8789','-0.739997','-0.116105','-0.070591','-0.366638','0.920388','3600','100','0');
INSERT INTO `gameobject` VALUES ('14441','141869','70','70.701','256.905','-52.0584','-2.70526','0.0','0.0','0.976296','-0.21644','3600','100','0');
INSERT INTO `gameobject` VALUES ('14442','48511','70','-240.033','-18.5585','-48.4242','3.07154','0.032299','-0.004082','0.998854','0.035097','3600','100','0');
INSERT INTO `gameobject` VALUES ('15412','48432','70','-211.481','-33.4789','-47.2107','-0.017454','0.028143','0.060258','-0.010382','0.997732','3600','100','0');
INSERT INTO `gameobject` VALUES ('15478','2061','70','-211.481','-33.4789','-47.2107','-0.017454','0.028143','0.060258','-0.010382','0.997732','3600','100','0');
INSERT INTO `gameobject` VALUES ('15506','48509','70','-246.485','215.413','-46.8472','-0.488972','-0.001092','-0.019423','-0.241944','0.970095','3600','100','0');
INSERT INTO `gameobject` VALUES ('33214','48513','70','-214.306','213.869','-46.7948','0.559547','-0.047695','-0.08301','0.270444','0.957964','3600','100','0');
INSERT INTO `gameobject` VALUES ('33215','48514','70','-215.031','215.95','-46.9364','-0.052072','-0.049881','-0.044778','-0.028222','0.997352','3600','100','0');
INSERT INTO `gameobject` VALUES ('33216','48515','70','-193.623','-20.8782','-33.2921','2.64952','0.030977','-0.046301','0.968002','0.244681','3600','100','0');
INSERT INTO `gameobject` VALUES ('33217','48410','70','-243.487','-16.6386','-48.1398','-0.72074','-0.023905','0.053165','-0.350428','0.934774','3600','100','0');
INSERT INTO `gameobject` VALUES ('33218','48501','70','-35.1563','301.21','-44.8091','2.2825','0.042688','0.070671','0.906372','0.414335','3600','100','0');
INSERT INTO `gameobject` VALUES ('33220','103007','70','-217.173','384.857','-39.0385','0.880767','0.063291','-0.131798','0.421848','0.8948','3600','100','0');
INSERT INTO `gameobject` VALUES ('33221','131474','70','161.826','298.283','-51.3698','-0.174533','0.0','0.0','-0.087156','0.996195','3600','100','0');
INSERT INTO `gameobject` VALUES ('33222','48510','70','-241.045','-16.8139','-48.2756','-2.53924','-0.003279','0.007053','0.954961','-0.296629','3600','100','0');
INSERT INTO `gameobject` VALUES ('33223','124370','70','-185.394','389.599','-36.3661','0.0','0.0','0.0','0.0','1.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33224','48471','70','-242.871','9.15532','-47.8467','-3.08595','-0.022237','0.047403','0.998269','-0.026773','3600','100','0');
INSERT INTO `gameobject` VALUES ('33225','2061','70','-242.871','9.15532','-47.8467','-3.08595','-0.022237','0.047403','0.998269','-0.026773','3600','100','0');
INSERT INTO `gameobject` VALUES ('33226','48467','70','8.29184','406.718','-46.901','3.07303','-0.032725','0.029802','0.998399','0.035207','3600','100','0');
INSERT INTO `gameobject` VALUES ('33227','48503','70','-246.137','275.353','-50.0709','-1.45661','0.019126','0.000954','-0.665622','0.746043','3600','100','0');
INSERT INTO `gameobject` VALUES ('33228','48435','70','-215.627','361.523','-39.3363','1.92762','0.063823','-0.040403','0.819162','0.568566','3600','100','0');
INSERT INTO `gameobject` VALUES ('33229','48490','70','-218.364','362.314','-39.1264','1.84202','0.053382','-0.034824','0.794769','0.603556','3600','100','0');
INSERT INTO `gameobject` VALUES ('33230','2061','70','-218.364','362.314','-39.1264','1.84202','0.053382','-0.034824','0.794769','0.603556','3600','100','0');
INSERT INTO `gameobject` VALUES ('33231','48423','70','-259.395','370.126','-37.1944','0.325101','-0.03313','0.074323','0.162909','0.98328','3600','100','0');
INSERT INTO `gameobject` VALUES ('33232','48425','70','42.9327','326.448','-43.193','1.40642','0.009595','0.026232','0.646162','0.762689','3600','100','0');
INSERT INTO `gameobject` VALUES ('33233','48415','70','-255.129','372.414','-37.9806','-2.50895','0.041143','-0.02152','0.949697','-0.30971','3600','100','0');
INSERT INTO `gameobject` VALUES ('33234','48451','70','-162.023','205.416','-49.7395','2.71758','-0.037043','-0.026216','0.976819','0.209201','3600','100','0');
INSERT INTO `gameobject` VALUES ('33235','2061','70','-162.023','205.416','-49.7395','2.71758','-0.037043','-0.026216','0.976819','0.209201','3600','100','0');
INSERT INTO `gameobject` VALUES ('33236','48504','70','-247.816','275.446','-50.0534','-1.54689','0.024115','0.042028','-0.697377','0.715065','3600','100','0');
INSERT INTO `gameobject` VALUES ('33237','48406','70','-247.478','-7.58863','-48.3038','-0.797098','0.08282','0.05369','-0.390378','0.915349','3600','100','0');
INSERT INTO `gameobject` VALUES ('33238','103010','70','-242.733','7.14204','-47.7888','1.72626','0.011142','-0.050888','0.757998','0.650173','3600','100','0');
INSERT INTO `gameobject` VALUES ('33239','48458','70','-215.218','384.681','-38.7247','1.96629','-0.005656','-0.041683','0.831121','0.554498','3600','100','0');
INSERT INTO `gameobject` VALUES ('33240','170353','70','150.495','305.928','-52.2261','0.436333','0.0','0.0','0.21644','0.976296','3600','100','0');
INSERT INTO `gameobject` VALUES ('33242','48419','70','22.4306','214.409','-30.6124','1.84374','-0.037073','0.028266','0.795862','0.60368','3600','100','0');
INSERT INTO `gameobject` VALUES ('33243','2061','70','22.4306','214.409','-30.6124','1.84374','-0.037073','0.028266','0.795862','0.60368','3600','100','0');
INSERT INTO `gameobject` VALUES ('33244','48494','70','-112.48','234.122','-52.2094','-3.01741','0.06817','-0.065682','0.993859','-0.057295','3600','100','0');
INSERT INTO `gameobject` VALUES ('33245','2061','70','-112.48','234.122','-52.2094','-3.01741','0.06817','-0.065682','0.993859','-0.057295','3600','100','0');
INSERT INTO `gameobject` VALUES ('33246','48444','70','-88.7184','313.445','-51.1717','2.15463','0.019534','0.001075','0.880602','0.473452','3600','100','0');
INSERT INTO `gameobject` VALUES ('33247','2061','70','-88.7184','313.445','-51.1717','2.15463','0.019534','0.001075','0.880602','0.473452','3600','100','0');
INSERT INTO `gameobject` VALUES ('33248','48466','70','-94.9388','203.878','-39.6716','1.55063','-0.034373','0.055574','0.697791','0.713315','3600','100','0');
INSERT INTO `gameobject` VALUES ('33249','2061','70','-94.9388','203.878','-39.6716','1.55063','-0.034373','0.055574','0.697791','0.713315','3600','100','0');
INSERT INTO `gameobject` VALUES ('33250','48468','70','6.15078','390.771','-44.5271','-2.76553','0.003794','0.109831','0.975932','-0.18836','3600','100','0');
INSERT INTO `gameobject` VALUES ('33251','48414','70','26.641','221.423','-31.6789','-0.716324','0.003466','-0.000418','-0.350554','0.936536','3600','100','0');
INSERT INTO `gameobject` VALUES ('33252','2061','70','26.641','221.423','-31.6789','-0.716324','0.003466','-0.000418','-0.350554','0.936536','3600','100','0');
INSERT INTO `gameobject` VALUES ('33253','142488','70','150.495','305.928','-52.2261','0.436333','0.0','0.0','0.21644','0.976296','3600','100','0');
INSERT INTO `gameobject` VALUES ('33254','48437','70','-213.755','7.63143','-48.1748','0.153017','-0.035141','0.041069','0.077712','0.99551','3600','100','0');
INSERT INTO `gameobject` VALUES ('33255','2061','70','-213.755','7.63143','-48.1748','0.153017','-0.035141','0.041069','0.077712','0.99551','3600','100','0');
INSERT INTO `gameobject` VALUES ('33256','48502','70','-247.077','286.443','-48.6889','-1.63188','0.0','0.0','-0.728371','0.685183','3600','100','0');
INSERT INTO `gameobject` VALUES ('33257','48416','70','24.4553','223.402','-31.8671','-0.626887','-0.039967','-0.033002','-0.309081','0.949622','3600','100','0');
INSERT INTO `gameobject` VALUES ('33258','48506','70','-248.061','238.934','-46.504','0.915699','-0.015833','0.007554','0.442086','0.896801','3600','100','0');
INSERT INTO `gameobject` VALUES ('33259','103006','70','-82.1037','332.987','-48.6892','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33260','103009','70','-85.766','314.434','-51.2457','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33261','48485','70','52.875','345.382','-40.1759','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33262','48457','70','-36.6456','337.479','-39.5379','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33263','48478','70','-354.055','113.161','-44.222','2.43293','0.035616','0.020336','0.937377','0.345893','3600','100','0');
INSERT INTO `gameobject` VALUES ('33264','48427','70','-126.334','332.602','-44.0837','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33265','48498','70','-245.441','286.356','-48.6889','-1.5708','0.0','0.0','-0.707107','0.707107','3600','100','0');
INSERT INTO `gameobject` VALUES ('33266','103005','70','-115.06','345.334','-44.6386','3.14159','0.0','0.0','1.0','0.0','3600','100','0');
INSERT INTO `gameobject` VALUES ('33267','48439','70','-198.304','270.631','-48.6933','2.80547','0.060366','-0.018399','0.983862','0.167433','3600','100','0');
INSERT INTO `gameobject` VALUES ('33268','48497','70','-246.502','265.0','-50.3298','-2.20012','0.012807','0.006955','0.891138','-0.453499','3600','100','0');
INSERT INTO `gameobject` VALUES ('33269','2061','70','-246.502','265.0','-50.3298','-2.20012','0.012807','0.006955','0.891138','-0.453499','3600','100','0');
INSERT INTO `gameobject` VALUES ('33270','48463','70','-15.815','341.419','-41.1402','1.81281','-0.037894','-0.008885','0.78715','0.615532','3600','100','0');
INSERT INTO `gameobject` VALUES ('33271','2061','70','-15.815','341.419','-41.1402','1.81281','-0.037894','-0.008885','0.78715','0.615532','3600','100','0');
INSERT INTO `gameobject` VALUES ('33272','48429','70','30.4804','317.575','-39.893','-1.3361','-0.006702','0.016792','-0.619243','0.784991','3600','100','0');
INSERT INTO `gameobject` VALUES ('33273','2061','70','30.4804','317.575','-39.893','-1.3361','-0.006702','0.016792','-0.619243','0.784991','3600','100','0');
INSERT INTO `gameobject` VALUES ('33274','48438','70','-197.55','272.136','-48.7444','2.90467','0.074492','-0.004459','0.990261','0.117531','3600','100','0');
INSERT INTO `gameobject` VALUES ('33275','48512','70','-215.032','-8.5477','-48.5745','-1.46335','-0.017971','0.028946','-0.667495','0.743834','3600','100','0');
INSERT INTO `gameobject` VALUES ('33276','2061','70','-215.032','-8.5477','-48.5745','-1.46335','-0.017971','0.028946','-0.667495','0.743834','3600','100','0');
INSERT INTO `gameobject` VALUES ('33277','48489','70','-109.96','234.258','-52.2748','-3.07411','-0.073691','-0.058389','0.994851','-0.037827','3600','100','0');
INSERT INTO `gameobject` VALUES ('33278','1735','70','-179.772','95.0592','-48.8041','2.77507','0.0','0.0','0.983255','0.182236','3600','100','0');
INSERT INTO `gameobject` VALUES ('33279','1735','70','-23.9125','326.636','-44.5684','-1.97222','0.0','0.0','0.833886','-0.551937','3600','100','0');
INSERT INTO `gameobject` VALUES ('33280','2040','70','26.3165','209.089','-29.7314','2.68781','0.0','0.0','0.97437','0.224951','3600','100','0');
INSERT INTO `gameobject` VALUES ('33281','2040','70','-360.646','141.757','-48.4138','-0.174533','0.0','0.0','0.087156','-0.996195','3600','100','0');
INSERT INTO `gameobject` VALUES ('33282','3707','70','-101.293','329.776','-47.5239','-2.61799','0.0','0.0','0.965926','-0.258819','3600','100','0');
INSERT INTO `gameobject` VALUES ('33283','3707','70','-247.885','236.192','-46.4701','-0.10472','0.0','0.0','0.052336','-0.99863','3600','100','0');
INSERT INTO `gameobject` VALUES ('40670','3707','70','-117.284','235.933','-51.811','-0.401426','0.0','0.0','0.199368','-0.979925','3600','100','0');
INSERT INTO `gameobject` VALUES ('40671','3707','70','54.6041','348.621','-40.4473','-3.10669','0.0','0.0','0.999848','-0.017452','3600','100','0');
INSERT INTO `gameobject` VALUES ('40672','3707','70','37.0305','227.32','-32.1131','-2.67035','0.0','0.0','0.97237','-0.233445','3600','100','0');
INSERT INTO `gameobject` VALUES ('40673','123329','70','-355.996','112.829','-43.2036','0.383972','0.0','0.0','0.190809','0.981627','3600','100','0');
INSERT INTO `gameobject` VALUES ('40674','128293','70','-358.599','100.755','-53.1931','1.0472','0.0','0.0','0.5','0.866025','3600','100','0');
INSERT INTO `gameobject` VALUES ('40675','126049','70','-203.678','214.625','-46.4376','2.23402','0.0','0.0','0.898794','0.438371','3600','100','0');
INSERT INTO `gameobject` VALUES ('40676','128196','70','-203.678','214.625','-46.4376','2.23402','0.0','0.0','0.898794','0.438371','3600','100','0');
INSERT INTO `gameobject` VALUES ('40677','126049','70','57.257','322.762','-41.8984','-0.418879','0.0','0.0','0.207912','-0.978148','3600','100','0');
INSERT INTO `gameobject` VALUES ('40678','128196','70','57.257','322.762','-41.8984','-0.418879','0.0','0.0','0.207912','-0.978148','3600','100','0');
INSERT INTO `gameobject` VALUES ('40679','128293','70','-164.64','301.678','-53.1613','-1.71042','0.0','0.0','0.75471','-0.656059','3600','100','0');
INSERT INTO `gameobject` VALUES ('40680','126049','70','1.60166','236.356','-32.3796','-2.63545','0.0','0.0','0.968148','-0.25038','3600','100','0');
INSERT INTO `gameobject` VALUES ('40681','128196','70','1.60166','236.356','-32.3796','-2.63545','0.0','0.0','0.968148','-0.25038','3600','100','0');
INSERT INTO `gameobject` VALUES ('40682','126049','70','-95.1379','337.393','-47.0908','-1.43117','0.0','0.0','0.656059','-0.75471','3600','100','0');
INSERT INTO `gameobject` VALUES ('40683','128196','70','-95.1379','337.393','-47.0908','-1.43117','0.0','0.0','0.656059','-0.75471','3600','100','0');
INSERT INTO `gameobject` VALUES ('40684','126049','70','-112.397','230.632','-52.1536','-0.471239','0.0','0.0','0.233445','-0.97237','3600','100','0');
INSERT INTO `gameobject` VALUES ('40685','128196','70','-112.397','230.632','-52.1536','-0.471239','0.0','0.0','0.233445','-0.97237','3600','100','0');
INSERT INTO `gameobject` VALUES ('40686','126049','70','-129.112','384.45','-39.9942','-2.04204','0.0','0.0','0.85264','-0.522498','3600','100','0');
INSERT INTO `gameobject` VALUES ('40687','128196','70','-129.112','384.45','-39.9942','-2.04204','0.0','0.0','0.85264','-0.522498','3600','100','0');
INSERT INTO `gameobject` VALUES ('40688','142088','70','-1.89168','422.099','-47.1127','-1.62316','0.0','0.0','0.725374','-0.688354','3600','100','0');
INSERT INTO `gameobject` VALUES ('40689','19903','70','-119.96','269.695','-45.7821','-2.11185','0.0','0.0','0.870356','-0.492423','3600','100','0');
INSERT INTO `gameobject` VALUES ('40690','19903','70','-143.01','210.889','-46.4858','-0.383972','0.0','0.0','0.190809','-0.981627','3600','100','0');
INSERT INTO `gameobject` VALUES ('40691','19903','70','-14.075','300.25','-46.1978','-0.907571','0.0','0.0','0.438371','-0.898794','3600','100','0');
INSERT INTO `gameobject` VALUES ('40692','131978','70','-150.166','201.764','-49.9121','-2.98451','0.0','0.0','0.996917','-0.078459','3600','100','0');
INSERT INTO `gameobject` VALUES ('40693','131978','70','-73.5079','265.315','-47.6291','2.82743','0.0','0.0','0.987688','0.156434','3600','100','0');
INSERT INTO `gameobject` VALUES ('40694','113757','70','21.1868','413.872','-45.0149','-2.02458','0.0','0.0','0.848048','-0.529919','3600','100','0');
INSERT INTO `gameobject` VALUES ('40695','125477','70','-350.81','82.6264','-51.2318','1.93731','0.0','0.0','0.824126','0.566406','3600','100','0');
INSERT INTO `gameobject` VALUES ('40696','130511','70','104.845','272.453','-26.5322','-2.67035','0.0','0.0','0.97237','-0.233445','3600','100','0');
INSERT INTO `gameobject` VALUES ('40697','123463','70','-355.018','114.854','-43.2878','2.54818','0.0','0.0','0.956305','0.292372','3600','100','0');
INSERT INTO `gameobject` VALUES ('40698','133234','70','96.4808','269.052','-52.1487','-2.70526','0.0','0.0','0.976296','-0.21644','3600','100','0');
UPDATE `creature_model_info` SET `bounding_radius`='0.21',`combat_reach`='0.9' WHERE `modelid`=1954;
UPDATE `creature_model_info` SET `bounding_radius`='1.03',`combat_reach`='1.5' WHERE `modelid`=2234;
UPDATE `creature_model_info` SET `bounding_radius`='0.5',`combat_reach`='1.0' WHERE `modelid`=2488;
UPDATE `creature_model_info` SET `bounding_radius`='1.18065',`combat_reach`='1.7' WHERE `modelid`=4486;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=4899;
UPDATE `creature_model_info` SET `bounding_radius`='1.545',`combat_reach`='2.25' WHERE `modelid`=5285;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=5708;
UPDATE `creature_model_info` SET `bounding_radius`='0.4164',`combat_reach`='1.8' WHERE `modelid`=5709;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=5710;
UPDATE `creature_model_info` SET `bounding_radius`='0.383',`combat_reach`='1.5' WHERE `modelid`=5711;
UPDATE `creature_model_info` SET `bounding_radius`='0.454237',`combat_reach`='0.908475' WHERE `modelid`=5985;
UPDATE `creature_model_info` SET `bounding_radius`='0.525' WHERE `modelid`=5988;
UPDATE `creature_model_info` SET `bounding_radius`='1.545',`combat_reach`='2.25' WHERE `modelid`=5989;
UPDATE `creature_model_info` SET `bounding_radius`='0.4164',`combat_reach`='1.8' WHERE `modelid`=6009;
UPDATE `creature_model_info` SET `bounding_radius`='0.4164',`combat_reach`='1.8' WHERE `modelid`=6010;
UPDATE `creature_model_info` SET `bounding_radius`='0.5205',`combat_reach`='2.25' WHERE `modelid`=6025;
UPDATE `creature_model_info` SET `bounding_radius`='0.5205',`combat_reach`='2.25' WHERE `modelid`=6026;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6053;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6054;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6055;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6056;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6057;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6059;
UPDATE `creature_model_info` SET `bounding_radius`='0.347',`combat_reach`='1.5' WHERE `modelid`=6067;
UPDATE `creature_model_info` SET `bounding_radius`='0.208',`combat_reach`='1.5' WHERE `modelid`=10609;
UPDATE `creature_model_info` SET `bounding_radius`='1.339',`combat_reach`='1.95' WHERE `modelid`=10798;
UPDATE `creature_model_info` SET `bounding_radius`='1.8025',`combat_reach`='2.625' WHERE `modelid`=10805;
UPDATE `creature_model_info` SET `bounding_radius`='1.61',`combat_reach`='3.0' WHERE `modelid`=11165;
UPDATE `creature_model_info` SET `bounding_radius`='1.40875',`combat_reach`='2.625' WHERE `modelid`=11166;
INSERT IGNORE INTO `creature_equip_template` VALUES (1738,7439,1705,0,50267138,33490436,0,781,1038,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1739,7526,0,6233,33490690,0,50266626,781,0,15);
INSERT IGNORE INTO `creature_equip_template` VALUES (1740,0,24695,0,0,33490436,0,0,1038,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (1741,12236,6537,0,50267138,33488900,0,1805,1815,0);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (SELECT DISTINCT `id` FROM `creature` WHERE `map`=70);
UPDATE `creature_template` SET `equipment_id` =105 WHERE `entry`=2748;
UPDATE `creature_template` SET `equipment_id` =738 WHERE `entry`=2909;
UPDATE `creature_template` SET `equipment_id` =838 WHERE `entry`=4844;
UPDATE `creature_template` SET `equipment_id` =1717 WHERE `entry`=4845;
UPDATE `creature_template` SET `equipment_id` =738 WHERE `entry`=4846;
UPDATE `creature_template` SET `equipment_id` =738 WHERE `entry`=4847;
UPDATE `creature_template` SET `equipment_id` =110 WHERE `entry`=4848;
UPDATE `creature_template` SET `equipment_id` =1738 WHERE `entry`=4849;
UPDATE `creature_template` SET `equipment_id` =242 WHERE `entry`=4850;
UPDATE `creature_template` SET `equipment_id` =258 WHERE `entry`=4851;
UPDATE `creature_template` SET `equipment_id` =458 WHERE `entry`=4852;
UPDATE `creature_template` SET `equipment_id` =85 WHERE `entry`=4853;
UPDATE `creature_template` SET `equipment_id` =119 WHERE `entry`=4854;
UPDATE `creature_template` SET `equipment_id` =741 WHERE `entry`=4856;
UPDATE `creature_template` SET `equipment_id` =1739 WHERE `entry`=6906;
UPDATE `creature_template` SET `equipment_id` =1740 WHERE `entry`=6908;
UPDATE `creature_template` SET `equipment_id` =131 WHERE `entry`=7011;
UPDATE `creature_template` SET `equipment_id` =738 WHERE `entry`=7012;
UPDATE `creature_template` SET `equipment_id` =237 WHERE `entry`=7030;
UPDATE `creature_template` SET `equipment_id` =136 WHERE `entry`=7076;
UPDATE `creature_template` SET `equipment_id` =220 WHERE `entry`=7175;
UPDATE `creature_template` SET `equipment_id` =1732 WHERE `entry`=7290;
UPDATE `creature_template` SET `equipment_id` =237 WHERE `entry`=7291;
UPDATE `creature_template` SET `equipment_id` =344 WHERE `entry`=7320;
UPDATE `creature_template` SET `equipment_id` =85 WHERE `entry`=7321;
UPDATE `creature_template` SET `equipment_id` =131 WHERE `entry`=7396;
UPDATE `creature_template` SET `equipment_id` =143 WHERE `entry`=7397;
UPDATE `creature_template` SET `equipment_id` =1741 WHERE `entry`=11073;
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (52882, 5253);

-- Gatherer data, only 4 added :(
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`spawntimesecs`) VALUES ('40699','181271','530','-5248.28301','412.719017','65.673485','600');
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`spawntimesecs`) VALUES ('40700','181271','530','-4959.207121','426.868296','87.685585','600');
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`spawntimesecs`) VALUES ('40701','181271','530','-5125.754943','108.844733','134.296799','600');
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`spawntimesecs`) VALUES ('40702','181271','530','-5028.319297','88.189101','79.925896','600');

-- MobInfo2 health information
UPDATE `creature_template` SET `MinHealth`='663' WHERE `entry`=3;
UPDATE `creature_template` SET `MaxHealth`='245' WHERE `entry`=95;
UPDATE `creature_template` SET `MinHealth`='617',`MaxHealth`='663' WHERE `entry`=202;
UPDATE `creature_template` SET `MinHealth`='787',`MaxHealth`='787' WHERE `entry`=210;
UPDATE `creature_template` SET `MinHealth`='446',`MaxHealth`='481' WHERE `entry`=217;
UPDATE `creature_template` SET `MinHealth`='664',`MaxHealth`='752' WHERE `entry`=218;
UPDATE `creature_template` SET `MinHealth`='248',`MaxHealth`='271' WHERE `entry`=504;
UPDATE `creature_template` SET `MinHealth`='2787',`MaxHealth`='2787' WHERE `entry`=522;
UPDATE `creature_template` SET `MinHealth`='657' WHERE `entry`=531;
UPDATE `creature_template` SET `MinHealth`='531',`MaxHealth`='574' WHERE `entry`=569;
UPDATE `creature_template` SET `MinHealth`='896',`MaxHealth`='945' WHERE `entry`=570;
UPDATE `creature_template` SET `MinHealth`='253',`MaxHealth`='283' WHERE `entry`=589;
UPDATE `creature_template` SET `MinHealth`='276' WHERE `entry`=590;
UPDATE `creature_template` SET `MinHealth`='768',`MaxHealth`='811' WHERE `entry`=785;
UPDATE `creature_template` SET `MinHealth`='692',`MaxHealth`='723' WHERE `entry`=787;
UPDATE `creature_template` SET `MaxHealth`='840' WHERE `entry`=898;
UPDATE `creature_template` SET `MaxHealth`='782' WHERE `entry`=948;
UPDATE `creature_template` SET `MinHealth`='726',`MaxHealth`='787' WHERE `entry`=949;
UPDATE `creature_template` SET `MinHealth`='278' WHERE `entry`=1109;
UPDATE `creature_template` SET `MinHealth`='839',`MaxHealth`='896' WHERE `entry`=1110;
UPDATE `creature_template` SET `MinHealth`='1846',`MaxHealth`='1846' WHERE `entry`=1696;
UPDATE `creature_template` SET `MinHealth`='1686' WHERE `entry`=1706;
UPDATE `creature_template` SET `MinHealth`='1802' WHERE `entry`=1707;
UPDATE `creature_template` SET `MinHealth`='1814' WHERE `entry`=1708;
UPDATE `creature_template` SET `MinHealth`='1450' WHERE `entry`=1711;
UPDATE `creature_template` SET `MinHealth`='1618' WHERE `entry`=1717;
UPDATE `creature_template` SET `MinHealth`='589',`MaxHealth`='589' WHERE `entry`=2044;
UPDATE `creature_template` SET `MinHealth`='385',`MaxHealth`='416' WHERE `entry`=2323;
UPDATE `creature_template` SET `MaxHealth`='573' WHERE `entry`=3817;
UPDATE `creature_template` SET `MinHealth`='6324',`MaxHealth`='6541' WHERE `entry`=4041;
UPDATE `creature_template` SET `MinHealth`='83140',`MaxHealth`='83140' WHERE `entry`=11980;
UPDATE `creature_template` SET `MinHealth`='64408',`MaxHealth`='64408' WHERE `entry`=15547;
UPDATE `creature_template` SET `MinHealth`='68656',`MaxHealth`='68656' WHERE `entry`=15548;
UPDATE `creature_template` SET `MinHealth`='340394',`MaxHealth`='340394' WHERE `entry`=15550;
UPDATE `creature_template` SET `MinHealth`='33307',`MaxHealth`='33307' WHERE `entry`=15551;
UPDATE `creature_template` SET `MinHealth`='329662',`MaxHealth`='329662' WHERE `entry`=15687;
UPDATE `creature_template` SET `MinHealth`='349846',`MaxHealth`='349846' WHERE `entry`=16151;
UPDATE `creature_template` SET `MinHealth`='41800',`MaxHealth`='41800' WHERE `entry`=16389;
UPDATE `creature_template` SET `MinHealth`='22638',`MaxHealth`='22638' WHERE `entry`=16406;
UPDATE `creature_template` SET `MinHealth`='33130',`MaxHealth`='41674' WHERE `entry`=16407;
UPDATE `creature_template` SET `MinHealth`='66096',`MaxHealth`='66096' WHERE `entry`=16408;
UPDATE `creature_template` SET `MinHealth`='10676',`MaxHealth`='10676' WHERE `entry`=16409;
UPDATE `creature_template` SET `MinHealth`='57638',`MaxHealth`='57638' WHERE `entry`=16414;
UPDATE `creature_template` SET `MinHealth`='41404',`MaxHealth`='41404' WHERE `entry`=16415;
UPDATE `creature_template` SET `MinHealth`='14176',`MaxHealth`='14176' WHERE `entry`=16468;
UPDATE `creature_template` SET `MinHealth`='38300',`MaxHealth`='38300' WHERE `entry`=16470;
UPDATE `creature_template` SET `MinHealth`='71680',`MaxHealth`='71680' WHERE `entry`=16471;
UPDATE `creature_template` SET `MinHealth`='51042',`MaxHealth`='51042' WHERE `entry`=16472;
UPDATE `creature_template` SET `MinHealth`='58240',`MaxHealth`='58240' WHERE `entry`=16473;
UPDATE `creature_template` SET `MinHealth`='56598',`MaxHealth`='57184' WHERE `entry`=16489;
UPDATE `creature_template` SET `MinHealth`='13096',`MaxHealth`='13096' WHERE `entry`=16491;
UPDATE `creature_template` SET `MinHealth`='118030',`MaxHealth`='118030' WHERE `entry`=16504;
UPDATE `creature_template` SET `MinHealth`='723526',`MaxHealth`='723526' WHERE `entry`=16524;
UPDATE `creature_template` SET `MinHealth`='43618',`MaxHealth`='43618' WHERE `entry`=16525;
UPDATE `creature_template` SET `MinHealth`='44290',`MaxHealth`='44290' WHERE `entry`=16529;
UPDATE `creature_template` SET `MinHealth`='38368',`MaxHealth`='38368' WHERE `entry`=16530;
UPDATE `creature_template` SET `MinHealth`='15212',`MaxHealth`='15212' WHERE `entry`=16539;
UPDATE `creature_template` SET `MinHealth`='34412',`MaxHealth`='34412' WHERE `entry`=16540;
UPDATE `creature_template` SET `MinHealth`='64844',`MaxHealth`='64844' WHERE `entry`=17007;
UPDATE `creature_template` SET `MinHealth`='5713',`MaxHealth`='5913' WHERE `entry`=17130;
UPDATE `creature_template` SET `MinHealth`='5904',`MaxHealth`='6113' WHERE `entry`=17131;
UPDATE `creature_template` SET `MinHealth`='4569',`MaxHealth`='4729' WHERE `entry`=17153;
UPDATE `creature_template` SET `MinHealth`='4572',`MaxHealth`='4731' WHERE `entry`=17158;
UPDATE `creature_template` SET `MaxHealth`='4888' WHERE `entry`=17159;
UPDATE `creature_template` SET `MinHealth`='13967',`MaxHealth`='13967' WHERE `entry`=17167;
UPDATE `creature_template` SET `MinHealth`='194722',`MaxHealth`='194722' WHERE `entry`=17533;
UPDATE `creature_template` SET `MinHealth`='141592',`MaxHealth`='141592' WHERE `entry`=17534;
UPDATE `creature_template` SET `MinHealth`='125360',`MaxHealth`='125360' WHERE `entry`=17975;
UPDATE `creature_template` SET `MinHealth`='152920',`MaxHealth`='152920' WHERE `entry`=17976;
UPDATE `creature_template` SET `MinHealth`='191408',`MaxHealth`='191408' WHERE `entry`=17977;
UPDATE `creature_template` SET `MinHealth`='95846',`MaxHealth`='95846' WHERE `entry`=17978;
UPDATE `creature_template` SET `MinHealth`='122808',`MaxHealth`='122808' WHERE `entry`=17980;
UPDATE `creature_template` SET `MinHealth`='4731',`MaxHealth`='4887' WHERE `entry`=17981;
UPDATE `creature_template` SET `MaxHealth`='21879' WHERE `entry`=17993;
UPDATE `creature_template` SET `MaxHealth`='29062' WHERE `entry`=17994;
UPDATE `creature_template` SET `MinHealth`='5516',`MaxHealth`='5516' WHERE `entry`=18086;
UPDATE `creature_template` SET `MinHealth`='3865',`MaxHealth`='3865' WHERE `entry`=18122;
UPDATE `creature_template` SET `MaxHealth`='5514' WHERE `entry`=18124;
UPDATE `creature_template` SET `MaxHealth`='19030' WHERE `entry`=18155;
UPDATE `creature_template` SET `MinHealth`='5914',`MaxHealth`='5914' WHERE `entry`=18205;
UPDATE `creature_template` SET `MinHealth`='6115',`MaxHealth`='6115' WHERE `entry`=18220;
UPDATE `creature_template` SET `MaxHealth`='28273' WHERE `entry`=18404;
UPDATE `creature_template` SET `MaxHealth`='70584' WHERE `entry`=18405;
UPDATE `creature_template` SET `MaxHealth`='22656' WHERE `entry`=18419;
UPDATE `creature_template` SET `MinHealth`='21274',`MaxHealth`='22842' WHERE `entry`=18421;
UPDATE `creature_template` SET `MinHealth`='21794',`MaxHealth`='22722' WHERE `entry`=18422;
UPDATE `creature_template` SET `MinHealth`='5715',`MaxHealth`='5909' WHERE `entry`=18467;
UPDATE `creature_template` SET `MaxHealth`='4136' WHERE `entry`=18587;
UPDATE `creature_template` SET `MinHealth`='17482',`MaxHealth`='18192' WHERE `entry`=18631;
UPDATE `creature_template` SET `MinHealth`='22658',`MaxHealth`='22658' WHERE `entry`=18632;
UPDATE `creature_template` SET `MinHealth`='16478',`MaxHealth`='16478' WHERE `entry`=18633;
UPDATE `creature_template` SET `MinHealth`='16429',`MaxHealth`='17216' WHERE `entry`=18634;
UPDATE `creature_template` SET `MinHealth`='14328',`MaxHealth`='23364' WHERE `entry`=18635;
UPDATE `creature_template` SET `MinHealth`='20972',`MaxHealth`='20972' WHERE `entry`=18636;
UPDATE `creature_template` SET `MinHealth`='15572',`MaxHealth`='16680' WHERE `entry`=18637;
UPDATE `creature_template` SET `MinHealth`='16908',`MaxHealth`='16908' WHERE `entry`=18638;
UPDATE `creature_template` SET `MinHealth`='16764',`MaxHealth`='17213' WHERE `entry`=18639;
UPDATE `creature_template` SET `MinHealth`='24016',`MaxHealth`='24016' WHERE `entry`=18640;
UPDATE `creature_template` SET `MinHealth`='4846',`MaxHealth`='4846' WHERE `entry`=18641;
UPDATE `creature_template` SET `MinHealth`='7768',`MaxHealth`='7768' WHERE `entry`=18642;
UPDATE `creature_template` SET `MinHealth`='8550',`MaxHealth`='8550' WHERE `entry`=18663;
UPDATE `creature_template` SET `MinHealth`='134132',`MaxHealth`='134132' WHERE `entry`=18667;
UPDATE `creature_template` SET `MinHealth`='392700',`MaxHealth`='392700' WHERE `entry`=18708;
UPDATE `creature_template` SET `MinHealth`='134798',`MaxHealth`='134798' WHERE `entry`=18731;
UPDATE `creature_template` SET `MinHealth`='104108',`MaxHealth`='104108' WHERE `entry`=18732;
UPDATE `creature_template` SET `MinHealth`='3234',`MaxHealth`='3324' WHERE `entry`=18750;
UPDATE `creature_template` SET `MinHealth`='16717',`MaxHealth`='20176' WHERE `entry`=18794;
UPDATE `creature_template` SET `MinHealth`='83513',`MaxHealth`='83513' WHERE `entry`=18796;
UPDATE `creature_template` SET `MinHealth`='2673',`MaxHealth`='2673' WHERE `entry`=18797;
UPDATE `creature_template` SET `MinHealth`='19210',`MaxHealth`='19210' WHERE `entry`=18830;
UPDATE `creature_template` SET `MinHealth`='296258',`MaxHealth`='296258' WHERE `entry`=18836;
UPDATE `creature_template` SET `MinHealth`='69142' WHERE `entry`=18848;
UPDATE `creature_template` SET `MinHealth`='2668236',`MaxHealth`='2668236' WHERE `entry`=19044;
UPDATE `creature_template` SET `MinHealth`='20528',`MaxHealth`='20528' WHERE `entry`=19209;
UPDATE `creature_template` SET `MinHealth`='298298',`MaxHealth`='298298' WHERE `entry`=19389;
UPDATE `creature_template` SET `MinHealth`='19122',`MaxHealth`='22412' WHERE `entry`=19486;
UPDATE `creature_template` SET `MinHealth`='19160',`MaxHealth`='19692' WHERE `entry`=19505;
UPDATE `creature_template` SET `MinHealth`='19171',`MaxHealth`='19171' WHERE `entry`=19507;
UPDATE `creature_template` SET `MinHealth`='27225',`MaxHealth`='28372' WHERE `entry`=19508;
UPDATE `creature_template` SET `MinHealth`='21940',`MaxHealth`='22674' WHERE `entry`=19509;
UPDATE `creature_template` SET `MinHealth`='24656',`MaxHealth`='28368' WHERE `entry`=19511;
UPDATE `creature_template` SET `MinHealth`='24698',`MaxHealth`='28796' WHERE `entry`=19512;
UPDATE `creature_template` SET `MinHealth`='17090',`MaxHealth`='18736' WHERE `entry`=19513;
UPDATE `creature_template` SET `MaxHealth`='12097' WHERE `entry`=19557;
UPDATE `creature_template` SET `MinHealth`='6556',`MaxHealth`='6624' WHERE `entry`=19598;
UPDATE `creature_template` SET `MinHealth`='6436',`MaxHealth`='6436' WHERE `entry`=19608;
UPDATE `creature_template` SET `MinHealth`='6535',`MaxHealth`='7120' WHERE `entry`=19754;
UPDATE `creature_template` SET `MinHealth`='6108',`MaxHealth`='6318' WHERE `entry`=19755;
UPDATE `creature_template` SET `MinHealth`='5232',`MaxHealth`='5232' WHERE `entry`=19756;
UPDATE `creature_template` SET `MinHealth`='4736',`MaxHealth`='4820' WHERE `entry`=19757;
UPDATE `creature_template` SET `MinHealth`='6514',`MaxHealth`='6542' WHERE `entry`=19759;
UPDATE `creature_template` SET `MinHealth`='6574',`MaxHealth`='6758' WHERE `entry`=19802;
UPDATE `creature_template` SET `MinHealth`='4402',`MaxHealth`='4402' WHERE `entry`=19825;
UPDATE `creature_template` SET `MinHealth`='28444',`MaxHealth`='28444' WHERE `entry`=19843;
UPDATE `creature_template` SET `MinHealth`='17712',`MaxHealth`='18362' WHERE `entry`=19865;
UPDATE `creature_template` SET `MinHealth`='81158',`MaxHealth`='81158' WHERE `entry`=19873;
UPDATE `creature_template` SET `MinHealth`='67598',`MaxHealth`='67598' WHERE `entry`=19875;
UPDATE `creature_template` SET `MinHealth`='76228',`MaxHealth`='76228' WHERE `entry`=19876;
UPDATE `creature_template` SET `MinHealth`='6387',`MaxHealth`='6387' WHERE `entry`=19919;
UPDATE `creature_template` SET `MinHealth`='6414',`MaxHealth`='6414' WHERE `entry`=19920;
UPDATE `creature_template` SET `MinHealth`='4243',`MaxHealth`='4243' WHERE `entry`=19949;
UPDATE `creature_template` SET `MinHealth`='5442',`MaxHealth`='5442' WHERE `entry`=19953;
UPDATE `creature_template` SET `MaxHealth`='1415' WHERE `entry`=19958;
UPDATE `creature_template` SET `MaxHealth`='1328' WHERE `entry`=19962;
UPDATE `creature_template` SET `MaxHealth`='1389' WHERE `entry`=19964;
UPDATE `creature_template` SET `MaxHealth`='1400' WHERE `entry`=19969;
UPDATE `creature_template` SET `MaxHealth`='18926' WHERE `entry`=20083;
UPDATE `creature_template` SET `MaxHealth`='5428' WHERE `entry`=20324;
UPDATE `creature_template` SET `MinHealth`='6213',`MaxHealth`='6684' WHERE `entry`=20514;
UPDATE `creature_template` SET `MaxHealth`='6759' WHERE `entry`=20673;
UPDATE `creature_template` SET `MinHealth`='6264',`MaxHealth`='6264' WHERE `entry`=20683;
UPDATE `creature_template` SET `MinHealth`='3498',`MaxHealth`='4867' WHERE `entry`=20872;
UPDATE `creature_template` SET `MinHealth`='6537',`MaxHealth`='6888' WHERE `entry`=20878;
UPDATE `creature_template` SET `MinHealth`='1518',`MaxHealth`='1518' WHERE `entry`=20887;
UPDATE `creature_template` SET `MinHealth`='5034',`MaxHealth`='5040' WHERE `entry`=21021;
UPDATE `creature_template` SET `MaxHealth`='5494' WHERE `entry`=21060;
UPDATE `creature_template` SET `MinHealth`='6820',`MaxHealth`='6820' WHERE `entry`=21061;
UPDATE `creature_template` SET `MinHealth`='6300',`MaxHealth`='6300' WHERE `entry`=21080;
UPDATE `creature_template` SET `MinHealth`='6111' WHERE `entry`=21123;
UPDATE `creature_template` SET `MinHealth`='6406' WHERE `entry`=21124;
UPDATE `creature_template` SET `MinHealth`='6152',`MaxHealth`='6152' WHERE `entry`=21207;
UPDATE `creature_template` SET `MinHealth`='5043',`MaxHealth`='5043' WHERE `entry`=21302;
UPDATE `creature_template` SET `MinHealth`='6538',`MaxHealth`='6538' WHERE `entry`=21305;
UPDATE `creature_template` SET `MinHealth`='6313' WHERE `entry`=21314;
UPDATE `creature_template` SET `MinHealth`='6743',`MaxHealth`='6743' WHERE `entry`=21337;
UPDATE `creature_template` SET `MinHealth`='237706',`MaxHealth`='237706' WHERE `entry`=21350;
UPDATE `creature_template` SET `MinHealth`='5556',`MaxHealth`='5556' WHERE `entry`=21384;
UPDATE `creature_template` SET `MinHealth`='5048',`MaxHealth`='5048' WHERE `entry`=21385;
UPDATE `creature_template` SET `MinHealth`='6325',`MaxHealth`='6539' WHERE `entry`=21408;
UPDATE `creature_template` SET `MinHealth`='6442',`MaxHealth`='6758' WHERE `entry`=21450;
UPDATE `creature_template` SET `MaxHealth`='6761' WHERE `entry`=21462;
UPDATE `creature_template` SET `MinHealth`='6414',`MaxHealth`='6414' WHERE `entry`=21477;
UPDATE `creature_template` SET `MaxHealth`='6554' WHERE `entry`=21478;
UPDATE `creature_template` SET `MinHealth`='81246',`MaxHealth`='81246' WHERE `entry`=21483;
UPDATE `creature_template` SET `MinHealth`='5587' WHERE `entry`=21649;
UPDATE `creature_template` SET `MaxHealth`='9332' WHERE `entry`=21723;
UPDATE `creature_template` SET `MinHealth`='5224',`MaxHealth`='5224' WHERE `entry`=21735;
UPDATE `creature_template` SET `MinHealth`='3124',`MaxHealth`='3124' WHERE `entry`=21804;
UPDATE `creature_template` SET `MinHealth`='6539',`MaxHealth`='6755' WHERE `entry`=21864;
UPDATE `creature_template` SET `MaxHealth`='6540' WHERE `entry`=21878;
UPDATE `creature_template` SET `MinHealth`='6594',`MaxHealth`='6594' WHERE `entry`=21879;
UPDATE `creature_template` SET `MinHealth`='5400',`MaxHealth`='5400' WHERE `entry`=21901;
UPDATE `creature_template` SET `MinHealth`='5580' WHERE `entry`=21911;
UPDATE `creature_template` SET `MinHealth`='14128',`MaxHealth`='14128' WHERE `entry`=22106;
UPDATE `creature_template` SET `MinHealth`='2616' WHERE `entry`=22115;
UPDATE `creature_template` SET `MinHealth`='7248',`MaxHealth`='7248' WHERE `entry`=22274;
UPDATE `creature_template` SET `MinHealth`='7447',`MaxHealth`='7956' WHERE `entry`=22310;
UPDATE `creature_template` SET `MinHealth`='3900',`MaxHealth`='9333' WHERE `entry`=22311;
UPDATE `creature_template` SET `MinHealth`='5438',`MaxHealth`='5743' WHERE `entry`=22341;
UPDATE `creature_template` SET `MinHealth`='5586',`MaxHealth`='5806' WHERE `entry`=22342;
UPDATE `creature_template` SET `MinHealth`='6986',`MaxHealth`='7173' WHERE `entry`=22343;
UPDATE `creature_template` SET `MinHealth`='1968',`MaxHealth`='2010' WHERE `entry`=22362;
UPDATE `creature_template` SET `MinHealth`='5567',`MaxHealth`='5743' WHERE `entry`=22363;
UPDATE `creature_template` SET `MinHealth`='32974',`MaxHealth`='33506' WHERE `entry`=22393;
UPDATE `creature_template` SET `MinHealth`='3406',`MaxHealth`='3512' WHERE `entry`=22394;
UPDATE `creature_template` SET `MinHealth`='6961',`MaxHealth`='6961' WHERE `entry`=23051;
UPDATE `creature_template` SET `MinHealth`='7266',`MaxHealth`='7266' WHERE `entry`=23188;
UPDATE `creature_template` SET `MinHealth`='5239',`MaxHealth`='5239' WHERE `entry`=23326;

-- Bad creature spells removed
-- Some mobs had spells with effect 36 (SPELL_EFFECT_LEARN_SPELL) and when they casted them, characters learned spells they weren't supposed to
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 597 AND `spell1` = 6191;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 731 AND `spell1` = 479;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 783 AND `spell1` = 11557;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 1393 AND `spell1` = 1065;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 2558 AND `spell1` = 6191;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 2643 AND `spell1` = 11557;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 6221 AND `spell1` = 1607;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 7341 AND `spell1` = 838;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 8216 AND `spell1` = 11557;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 9268 AND `spell1` = 11558;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 10984 AND `spell1` = 11559;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 11352 AND `spell1` = 11559;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 15859 AND `spell1` = 1211;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 16170 AND `spell1` = 10522;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 17236 AND `spell1` = 5904;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 18884 AND `spell1` = 11576;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19022 AND `spell1` = 5830;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19023 AND `spell1` = 5830;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19024 AND `spell1` = 5830;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19025 AND `spell1` = 5830;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19026 AND `spell1` = 5830;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19428 AND `spell1` = 11586;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 19784 AND `spell1` = 10530;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 20502 AND `spell1` = 10480;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 21022 AND `spell1` = 11571;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 21033 AND `spell1` = 9071;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 21864 AND `spell1` = 11579;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 22255 AND `spell1` = 11575;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 23219 AND `spell1` = 11576;
UPDATE `creature_template` SET `spell2` = 0 WHERE `entry` = 10807 AND `spell2` = 25016;
UPDATE `creature_template` SET `spell2` = 0 WHERE `entry` = 15859 AND `spell2` = 13011;
UPDATE `creature_template` SET `spell3` = 0 WHERE `entry` = 6221 AND `spell3` = 7374;
UPDATE `creature_template` SET `spell4` = 0 WHERE `entry` = 6221 AND `spell4` = 2059;

-- Some damage fix
UPDATE `creature_template` SET
    `mindmg`=4444,
    `maxdmg`=8888,
    `attackpower`=round((`maxdmg` + `mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`= 18829; -- Hellfire Warder
UPDATE `creature_template` SET
    `mindmg`=4444,
    `maxdmg`=6666,
    `attackpower`=round((`maxdmg`+`mindmg`)/4 *7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17256; -- Hellfire Channeler
UPDATE `creature_template` SET
    `mindmg`=6666,
    `maxdmg`=14000,
    `minhealth`=4750000,
    `maxhealth`=4750000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17257; -- magtheridon

-- Karazhan correction
UPDATE `creature_template` SET
    `mindmg`=1400 ,
    `maxdmg`=2000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15547; -- Spectral Charger
UPDATE `creature_template` SET
    `mindmg`=1200,
    `maxdmg`=1800 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15548; -- Spectral Stallion
UPDATE `creature_template` SET
    `mindmg`=1200 ,
    `maxdmg`=1600,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15551 ; -- Spectral Stable Hand
UPDATE `creature_template` SET
    `mindmg`=1000 ,
    `maxdmg`=1600 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16389; -- Spectral Apprentice
UPDATE `creature_template` SET
    `mindmg`=3200,
    `maxdmg`=4200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15550; -- Attumen
UPDATE `creature_template` SET
    `mindmg`=3000 ,
    `maxdmg`=3800 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16151 ; -- Midnight
UPDATE `creature_template` SET
    `mindmg`=3000,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16412; -- Ghostly Baker
UPDATE `creature_template` SET
    `mindmg`=2000 ,
    `maxdmg`=3000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16411; -- Spectral Chef
UPDATE `creature_template` SET
    `mindmg`=400,
    `maxdmg`=650,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16407; -- Spectral Servant
UPDATE `creature_template` SET
    `mindmg`=1500,
    `maxdmg`=2100,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16415; -- Skeletal Waiter
UPDATE `creature_template` SET
    `mindmg`=1100 ,
    `maxdmg`=1300,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16409 ; -- Phantom Guest
UPDATE `creature_template` SET
    `mindmg`=3500,
    `maxdmg`=3850,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16414; -- Ghostly Steward
UPDATE `creature_template` SET
    `mindmg`=6000 ,
    `maxdmg`=10000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16408 ; -- Phantom Valet
UPDATE `creature_template` SET
    `mindmg`=3200,
    `maxdmg`=5000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15687 ; -- Moroes
UPDATE `creature_template` SET
    `mindmg`=2000 ,
    `maxdmg`=3000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16410; -- Spectral Retainer
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=3000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16406; -- Phantom Attendant
UPDATE `creature_template` SET
    `mindmg`=3000 ,
    `maxdmg`=4200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=19875 ; -- Baroness Dorothea Millstipe
UPDATE `creature_template` SET
    `mindmg`=1000,
    `maxdmg`=1850,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=19872 ; -- Lady Catriona Von'Indi
UPDATE `creature_template` SET
    `mindmg`=2600,
    `maxdmg`=3400,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17007 ; -- Lady Keira Berrybuck
UPDATE `creature_template` SET
    `mindmg`=3000,
    `maxdmg`=4200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=19874; -- Baron Rafe Dreuger
UPDATE `creature_template` SET
    `mindmg`=3800,
    `maxdmg`=6400,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=19876 ; -- Lord Robin Daris
UPDATE `creature_template` SET
    `mindmg`=2600,
    `maxdmg`=3000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=19873; -- Lord Crispin Ference
UPDATE `creature_template` SET
    `mindmg`=2000 ,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16425 ; -- Phantom Guardsman
UPDATE `creature_template` SET
    `mindmg`=1800,
    `maxdmg`=3800,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16424; -- Spectral S`entry`
UPDATE `creature_template` SET
    `mindmg`=1000,
    `maxdmg`=3000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16460 ; -- Night Mistress
UPDATE `creature_template` SET
    `mindmg`=1000,
    `maxdmg`=3200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16461; -- Concubine
UPDATE `creature_template` SET
    `mindmg`=1000 ,
    `maxdmg`=3200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16459 ; -- Wanton Hostess
UPDATE `creature_template` SET
    `mindmg`=5810,
    `maxdmg`=8140,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16457 ; -- Maiden of Virtue
UPDATE `creature_template` SET
    `mindmg`=550,
    `maxdmg`=800,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16170 ; -- Coldmist Stalker
UPDATE `creature_template` SET
    `mindmg`=2600,
    `maxdmg`=3200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16171; -- Coldmist Widow
UPDATE `creature_template` SET
    `mindmg`=1625,
    `maxdmg`=1825,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16173; -- Shadowbat
UPDATE `creature_template` SET
    `mindmg`=1625 ,
    `maxdmg`=2000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16175; -- Vampiric Shadowbat
UPDATE `creature_template` SET
    `mindmg`=800 ,
    `maxdmg`=1050,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16174; -- Greater Shadowbat
UPDATE `creature_template` SET
    `mindmg`=3500 ,
    `maxdmg`=3900,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16177; -- Dreadbeast
UPDATE `creature_template` SET
    `mindmg`=2200 ,
    `maxdmg`=2700,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16176 ; -- Shadowbeast
UPDATE `creature_template` SET
    `mindmg`=2600,
    `maxdmg`=2900 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16178; -- Phase Hound
UPDATE `creature_template` SET
    `mindmg`=6850 ,
    `maxdmg`=7200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16181; -- Rokad the Ravager
UPDATE `creature_template` SET
    `mindmg`=4000,
    `maxdmg`=6000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16180; -- Shadikith the Glider
UPDATE `creature_template` SET
    `mindmg`=4000,
    `maxdmg`=6000 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16179; -- Hyakiss the Lurker
UPDATE `creature_template` SET
    `mindmg`=4800,
    `maxdmg`=5300,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16472 ; -- Phantom Stagehand
UPDATE `creature_template` SET
    `mindmg`=6000,
    `maxdmg`=10000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16471 ; -- Skeletal Usher
UPDATE `creature_template` SET
    `mindmg`=4700,
    `maxdmg`=5200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16473; -- Spectral Performer
UPDATE `creature_template` SET
    `mindmg`=1100,
    `maxdmg`=1350,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16468 ; -- Spectral Patron
UPDATE `creature_template` SET
    `mindmg`=4000,
    `maxdmg`=8000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17521 ; -- Big Bad Wolf
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16470; -- Ghostly Philanthropist
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=5000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17534; -- Julianne
UPDATE `creature_template` SET
    `mindmg`=2250,
    `maxdmg`=5250,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17533; -- Romulo
UPDATE `creature_template` SET
    `mindmg`=3600,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17546 ; -- Roar
UPDATE `creature_template` SET
    `mindmg`=4700,
    `maxdmg`=5200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17543; -- Strawman
UPDATE `creature_template` SET
    `mindmg`=3000,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17547; -- Tinhead
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=3000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=18168 ; -- The Crone
UPDATE `creature_template` SET
    `mindmg`=800,
    `maxdmg`=2000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17548 ; -- Tito
UPDATE `creature_template` SET
    `mindmg`=1000,
    `maxdmg`=2000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=17535 ; -- Dorothee
UPDATE `creature_template` SET
    `mindmg`=4000,
    `maxdmg`=6300,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16481; -- Ghostly Haunt
UPDATE `creature_template` SET
    `mindmg`=6000,
    `maxdmg`=8000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16482; -- Trapped Soul
UPDATE `creature_template` SET
    `mindmg`=3350 ,
    `maxdmg`=3950,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16488 ; -- Arcane Anomaly
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16492 ; -- Syphoner
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=4350,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16485 ; -- Arcane Watchman
UPDATE `creature_template` SET
    `mindmg`=6000 ,
    `maxdmg`=8000 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16504 ; -- Arcane Protector
UPDATE `creature_template` SET
    `mindmg`=1000,
    `maxdmg`=1500 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16491; -- Mana Feeder
UPDATE `creature_template` SET
    `mindmg`=1000 ,
    `maxdmg`=3560 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16530 ; -- Mana Warp
UPDATE `creature_template` SET
    `mindmg`=3700 ,
    `maxdmg`=4250 ,
dmgschool=6,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16489 ; -- Chaotic Sentience
UPDATE `creature_template` SET
    `mindmg`=2000 ,
    `maxdmg`=3680 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16529 ; -- Magical Horror
UPDATE `creature_template` SET
    `mindmg`=3600,
    `maxdmg`=3900 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16525 ; -- Spell Shade
UPDATE `creature_template` SET
    `mindmg`=2500 ,
    `maxdmg`=4500,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16539; -- Homunculus
UPDATE `creature_template` SET
    `mindmg`=2000 ,
    `maxdmg`=4000 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16540 ; -- Shadow Pillager
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=3800 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16526; -- Sorcerous Shade
UPDATE `creature_template` SET
    `mindmg`=6500,
    `maxdmg`=7000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16544 ; -- Ethereal Thief
UPDATE `creature_template` SET
    `mindmg`=10000 ,
    `maxdmg`=11000 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16545 ; -- Ethereal Spellfilcher
UPDATE `creature_template` SET
    `mindmg`=3000,
    `maxdmg`=4000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15688 ; -- Terestian Illhoof
UPDATE `creature_template` SET
    `mindmg`=1000 ,
    `maxdmg`=3000 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16524 ; -- Shade of Aran
UPDATE `creature_template` SET
    `mindmg`=9000,
    `maxdmg`=11000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15689; -- Netherspite
UPDATE `creature_template` SET
    `mindmg`=5750 ,
    `maxdmg`=6200 ,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15691 ; -- The Curator
UPDATE `creature_template` SET
    `mindmg`=3800,
    `maxdmg`=4200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16595 ; -- Fleshbeast
UPDATE `creature_template` SET
    `mindmg`=4000,
    `maxdmg`=6200,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16596 ; -- Greater Fleshbeast
UPDATE `creature_template` SET
    `mindmg`=6000 ,
    `maxdmg`=8000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=16596; -- Nightbane
UPDATE `creature_template` SET
    `mindmg`=2000,
    `maxdmg`=6000,
    `attackpower`=round((`maxdmg`+`mindmg`)/4*7),
    `mindmg`=round(`mindmg`-`attackpower`/7),
    `maxdmg`=round(`maxdmg`-`attackpower`/7)
    WHERE `entry`=15690; -- Prince Malchezaar
	
-- Various fixes
DELETE from `npc_trainer` where spell=7404;
DELETE from `creature_loot_template` where item in (17850,16972,11227,17849);
UPDATE `creature_template` SET `minhealth` = 1, `maxhealth` = 1, `armor` = 2400, `mindmg` = 100, `maxdmg` = 100, `attackpower` = 700 WHERE `entry` = 11439;
UPDATE `creature_template` set flags=0 where entry=17096;

-- Quintine:
-- Quest : Welcome 9278
-- Missing some quest text
UPDATE `quest_template` SET `OfferRewardText`='You are indeed a special hero, $N. We welcome you to the world of Azeroth, and offer you one of these unique gifts!',`RequestItemsText`='Greetings! It is a pleasure to meet you!$B$BI see you have a special voucher. Give it to me and I will offer you something in exchange.' WHERE `entry`='9278';
-- Quest : Swoop Hunting
-- Very Low Drop Rate, Should be 100%
UPDATE `creature_loot_template` SET `QuestChanceOrGroup`='100' WHERE `item`='4769';
-- KARAZHAN
-- Attumen the Huntsman
UPDATE `creature_template` SET `armor`='7500' WHERE `entry`='15550';
-- Midnight
UPDATE `creature_template` SET `armor`='8200' WHERE `entry`='16151';
-- Maiden of Virtue
UPDATE `creature_template` SET `armor`='6700' WHERE `entry`='16457';
-- Julianne
UPDATE `creature_template` SET `armor`='6100' WHERE `entry`='17534';
-- Romulo
UPDATE `creature_template` SET `armor`='7600' WHERE `entry`='17533';
-- Strawman
UPDATE `creature_template` SET `armor`='7300' WHERE `entry`='17543';
-- Roar
UPDATE `creature_template` SET `armor`='4700' WHERE `entry`='17546';
-- The Curator
UPDATE `creature_template` SET `armor`='6100' WHERE `entry`='15691';
-- Shade of Aran
UPDATE `creature_template` SET `armor`='3800' WHERE `entry`='16524';
-- Kil'rek
UPDATE `creature_template` SET `armor`='3400' WHERE `entry`='17229';
-- Terestian Illhoof
UPDATE `creature_template` SET `armor`='6700' WHERE `entry`='15688';
-- Nightbane
UPDATE `creature_template` SET `armor`='7600' WHERE `entry`='17225';
-- Netherspite
UPDATE `creature_template` SET `armor`='5500' WHERE `entry`='15689';
-- Prince Malchezaar
UPDATE `creature_template` SET `armor`='7600' WHERE `entry`='15690';

-- TEMPEST KEEP
-- Al'ar
UPDATE `creature_template` SET `armor`='7000' WHERE `entry`='19514';
-- High Astromancer Solarian
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='18805';
-- Kael'thas Sunstrider
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='19622';
-- Void Reaver
UPDATE `creature_template` SET `armor`='10700' WHERE `entry`='19516';

-- SERPENTSHRINE CAVERN
-- Lady Vashj
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='21212';
-- Hydross the Unstable
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='21216';
-- The Lurker Below
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='21217';
-- Leotheras the Blind
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='21215';
-- Fathom-Lord Karathress
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='21214';
-- Morogrim Tidewalker
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='21213';

-- OUTDOOR
-- Doomwalker
UPDATE `creature_template` SET `armor`='7600' WHERE `entry`='17711';

-- HYJAL SUMMIT
-- Rage Winterchill
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='17767';
-- Anetheron
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='17808';
-- Kaz'rogal
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='17888';
-- Azgalor
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='17842';
-- Archimonde
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='17968';

-- BLACK TEMPLE
-- High Warlord Naj'entus
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='22887';
-- Supremus
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='22898';
-- Shade of Akama
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='22841';
-- Teron Gorefiend
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='22871';
-- Gurtogg Bloodboil
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='22948';
-- Essence of Suffering
UPDATE `creature_template` SET `armor`='0' WHERE `entry`='23418';
-- Essence of Desire
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='23419';
-- Essence of Anger
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='23420';
-- Mother Shahraz
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='22947';
-- Gathios the Shatterer
UPDATE `creature_template` SET `armor`='6200' WHERE `entry`='22949';
-- Illidan Stormrage
UPDATE `creature_template` SET `armor`='7685' WHERE `entry`='22917';

-- Graveyard fix for BT
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone`=3959;
INSERT INTO `game_graveyard_zone` (`id`,`ghost_zone`,`faction`) VALUES ('1261','3959','0');
INSERT INTO `game_graveyard_zone` (`id`,`ghost_zone`,`faction`) VALUES ('1262','3959','0');
-- More target scripts
delete from `spell_script_target` where `entry`=23359;
insert into `spell_script_target` (`entry`, `type`, `targetEntry`)
values
(23359, 1, 5357),
(23359, 1, 5358),
(23359, 1, 5359),
(23359, 1, 5361);
-- delete from `spell_script_target` where `entry`=11889;
-- insert into `spell_script_target` (`entry`, `type`, `targetEntry`)
-- values
-- (11889, 2, 5357),
-- (11889, 2, 5358);
-- NPC no longer in game
delete from creature where guid=86177;
-- NPC is quest giver, not trainer
update creature_template set npcflag=2 where entry=23103;

UPDATE `creature_template` set `faction_A`='414', `faction_H`='414' where `entry`='6651';
insert ignore into `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(6651, 576, 0, 7, 0, -125, 0, 0, 0, 0),
(11557, 576, 0, 7, 0, -75, 0, 0, 0, 0),
(11555, 576, 0, 7, 0, -75, 0, 0, 0, 0),
(11558, 576, 0, 7, 0, -75, 0, 0, 0, 0),
(11552, 576, 0, 7, 0, -25, 0, 0, 0, 0),
(11516, 576, 0, 7, 0, -25, 0, 0, 0, 0),
(11553, 576, 0, 7, 0, -25, 0, 0, 0, 0),
(6184, 576, 0, 7, 0, -25, 0, 0, 0, 0),
(6188, 576, 0, 7, 0, -25, 0, 0, 0, 0),
(6189, 576, 0, 7, 0, -25, 0, 0, 0, 0),
(6185, 576, 0, 7, 0, -25, 0, 0, 0, 0);

UPDATE npc_vendor SET maxcount = '4' AND incrtime = '7200' WHERE entry = '14847' AND item = '858';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '954';
UPDATE npc_vendor SET maxcount = '3' AND incrtime = '7200' WHERE entry = '14847' AND item = '955';
UPDATE npc_vendor SET maxcount = '3' AND incrtime = '7200' WHERE entry = '14847' AND item = '1180';
UPDATE npc_vendor SET maxcount = '3' AND incrtime = '7200' WHERE entry = '14847' AND item = '1181';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '1477';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '1711';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '2289';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '2290';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '3012';
UPDATE npc_vendor SET maxcount = '3' AND incrtime = '7200' WHERE entry = '14847' AND item = '3013';
UPDATE npc_vendor SET maxcount = '4' AND incrtime = '7200' WHERE entry = '14847' AND item = '3385';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '3928';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '4421';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '4424';
UPDATE npc_vendor SET maxcount = '2' AND incrtime = '7200' WHERE entry = '14847' AND item = '13443';

INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
('14847', '23440', '1', '86400'),
('14847', '23436', '1', '86400'),
('14847', '23441', '1', '86400'),
('14847', '23438', '1', '86400'),
('14847', '23437', '1', '86400'),
('14847', '22572', '2', '43200'),
('14847', '22573', '2', '43200'),
('14847', '22574', '2', '43200'),
('14847', '22575', '1', '43200'),
('14847', '22576', '2', '43200'),
('14847', '22577', '1', '43200'),
('14847', '22578', '1', '43200'),
('14847', '4425', '1', '7200'),
('14847', '10309', '2', '7200'),
('14847', '27498', '2', '7200'),
('14847', '4419', '2', '7200'),
('14847', '10308', '2', '7200'),
('14847', '27499', '2', '7200'),
('14847', '10305', '1', '7200'),
('14847', '27500', '1', '7200'),
('14847', '10306', '2', '7200'),
('14847', '27501', '1', '7200'),
('14847', '4422', '2', '7200'),
('14847', '10307', '1', '7200'),
('14847', '27502', '2', '7200'),
('14847', '4426', '2', '7200'),
('14847', '10310', '1', '7200'),
('14847', '27503', '2', '7200'),
('14847', '22829', '2', '18000'),
('14847', '22832', '1', '18000');

DELETE FROM `creature` WHERE `guid` = '18131';
DELETE FROM `creature_addon` WHERE `guid` = '18131';
DELETE FROM `creature_movement` WHERE `id` = '18131';

update `creature_template` set `npcflag`=133 where `entry` in (11103,12196);

INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`)
VALUES
('18822', '32071', '0', '0');

INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`)
VALUES
('18821', '33783', '0', '0'),
('18822', '33783', '0', '0');

UPDATE npc_vendor SET maxcount = '1' WHERE entry = '14846' AND item = '21887';

INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
('14846', '13456', '1', '7200'),
('14846', '25708', '2', '7200'),
('14846', '22789', '1', '7200'),
('14846', '13468', '1', '7200'),
('14846', '22787', '2', '7200'),
('14846', '23793', '1', '7200'),
('14846', '22790', '2', '7200'),
('14846', '22791', '1', '7200'),
('14846', '22792', '2', '7200'),
('14846', '22793', '1', '7200'),
('14846', '22794', '1', '7200');

INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`)
VALUES
('14845', '33246', '0', '0'),
('14845', '33254', '0', '0');

INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`)
VALUES
('14844', '33234', '0', '0'),
('14844', '33236', '0', '0');

update creature_template set flags=0 where entry=17096;

update item_template set stat_type1=6,stat_value1=3, stat_type2=5,stat_value2=9, stat_type3=7,stat_value3=5, stat_type4=0,stat_value4=0, spellid_1=9417,spelltrigger_1=1 where entry=6324;

update creature_loot_template set `QuestChanceOrGroup` = 75 where item = 28513;
update creature_loot_template set `ChanceOrRef`= 0 where item= 28513;

UPDATE quest_template SET RewRepValue2=250 WHERE entry=313;

UPDATE `creature` SET `position_x`='-2965.33', `position_y`='2577.28', `position_z`='76.5438', `orientation`='2.28315' WHERE (`guid`='76074');
UPDATE `creature` SET `spawn_position_x`='-2965.33', `spawn_position_y`='2577.28', `spawn_position_z`='76.5438', `spawn_orientation`='2.28315' WHERE (`guid`='76074');

update areatrigger_teleport set name='The Black Morass - exit' where id=4320;
update areatrigger_teleport set name='The Black Morass - entrance' where id=4322;
update areatrigger_teleport set name='Old Hillsbrad Foothils - exit' where id=4321;
update areatrigger_teleport set name='Old Hillsbrad Foothils - entrance' where id=4324;

DELETE FROM spell_script_target WHERE entry= 35771;
INSERT INTO spell_script_target VALUES (35771,1,20777);
INSERT INTO spell_script_target VALUES (35771,1,20610); 

update creature_template set flags=0 where entry in (18338,21213,21214,21215,21216,21217,22871,17533,17534);

UPDATE creature_template SET faction_a=14, faction_h=14 WHERE entry IN (21958, 22009, 22055, 22056);

UPDATE `gameobject` SET `orientation`='2.01926',`rotation1`='0',`rotation2`='0.846607',`rotation3`='0.532218' WHERE (`guid`='49797');

update creature_template set RacialLeader='0' where entry='4809';
update creature_template set RacialLeader='0' where entry='4810';
update creature_template set RacialLeader='0' where entry='4811';
update creature_template set RacialLeader='0' where entry='4812';
update creature_template set RacialLeader='0' where entry='4814';
update creature_template set RacialLeader='0' where entry='15663';
update creature_template set RacialLeader='1' where entry='17948';
update creature_template set RacialLeader='0' where entry='23180';
update creature_template set RacialLeader='0' where entry='24484';

delete from creature where guid=85618;

INSERT IGNORE INTO `spell_teleport` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ('31613','530','-3288.9','-12923.5','10.1061','5.92033');

DELETE FROM `creature` WHERE `guid` IN (85580, 87042);

DELETE FROM npc_vendor WHERE item = '2770' AND entry IN (5758,9676);
UPDATE npc_vendor SET maxcount = '5' WHERE item = '2770' AND entry = '16224';

UPDATE `creature_template` SET `minlevel` = '73',`maxlevel` = '73',`faction_A` = '14',`faction_H` = '14' WHERE `entry` = 21845;

UPDATE `creature_template` SET `spell2`='0' WHERE (`entry`='4093');

update creature_loot_template
set lootcondition=6, condition_value1 = 469
where item in (1972, 10000, 23759, 23870, 23900, 23890, 24483, 24559);
update creature_loot_template
set lootcondition=6, condition_value1 = 67
where item in (2839, 5099, 10441, 5877, 12564, 16408, 23892, 29590);
update quest_template set requiredraces=0 where entry=6981;
update quest_template set RequiredRaces=690 where entry=781;
update gameobject_loot_template
set lootcondition=6, condition_value1 = 469
where item in (3706, 4433, 5791, 6172);
update gameobject_loot_template
set lootcondition=6, condition_value1 = 67
where item in (4851, 4881);

UPDATE creature_template SET skinloot=0 WHERE entry=3638;
DELETE FROM skinning_loot_template WHERE entry=3638;

update creature_template set spell4=0 where spell4=1;

update creature_template
set minhealth = 1300
where entry = 686;

DELETE FROM creature_loot_template WHERE entry=21867;
UPDATE creature_template SET lootid=0 WHERE entry=21867;

DELETE FROM creature WHERE guid=86132;
DELETE FROM creature_addon WHERE guid=86132;
DELETE FROM npc_gossip WHERE npc_guid=86132;
DELETE FROM creature_movement WHERE id=86132; 

UPDATE creature_template SET minhealth=5000000, maxhealth=5000000, minmana=1693500, maxmana=1693500, flags=1 WHERE entry=22871; 

UPDATE creature_template SET mindmg=5000, maxdmg=7000 WHERE entry=22871;
update creature_template set attackpower = round((maxdmg + mindmg) / 4 * 7) WHERE entry = 22871;
update creature_template set mindmg = round(mindmg - attackpower / 7) WHERE entry = 22871;
update creature_template set maxdmg = round(maxdmg - attackpower / 7) WHERE entry = 22871;
UPDATE `creature_template` SET `mindmg` = 1 WHERE (`mindmg` < 1) AND (`entry` = 22871);

-- Wrong spawned Elite Teron Gorefiend
DELETE FROM creature WHERE guid=12819;
DELETE FROM creature_addon WHERE guid=12819;
DELETE FROM npc_gossip WHERE npc_guid=12819;
DELETE FROM creature_movement WHERE id=12819;

delete from npc_trainer where spell = 2125;

insert into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`)
values
('328','2125','4000','0','0','24'),
('331','2125','4000','0','0','24'),
('1228','2125','4000','0','0','24'),
('2128','2125','4000','0','0','24'),
('3047','2125','4000','0','0','24'),
('3048','2125','4000','0','0','24'),
('3049','2125','4000','0','0','24'),
('4566','2125','4000','0','0','24'),
('4567','2125','4000','0','0','24'),
('4568','2125','4000','0','0','24'),
('5144','2125','4000','0','0','24'),
('5145','2125','4000','0','0','24'),
('5497','2125','4000','0','0','24'),
('5498','2125','4000','0','0','24'),
('5880','2125','4000','0','0','24'),
('5882','2125','4000','0','0','24'),
('5883','2125','4000','0','0','24'),
('5885','2125','4000','0','0','24'),
('7311','2125','4000','0','0','24'),
('7312','2125','4000','0','0','24'),
('17481','2125','4000','0','0','24'),
('17513','2125','4000','0','0','24'),
('17514','2125','4000','0','0','24'),
('16269','2125','4000','0','0','24'),
('16653','2125','4000','0','0','24'),
('16652','2125','4000','0','0','24'),
('16651','2125','4000','0','0','24'),
('16749','2125','4000','0','0','24');

-- Hostile Level 50 Felpaw Scavenger in the building in Rut'Theran Village -- doesn't belong
delete from creature where guid=517;

-- Keepers of Time:
-- Formula: Enchant Gloves - Superior Agility
DELETE FROM `npc_vendor` WHERE `item`='33152';
INSERT INTO `npc_vendor`(`entry`,`item`,`maxcount`,`incrtime`) VALUES ('21643','33152','0','0');
-- Toy Dragon
DELETE FROM `npc_vendor` WHERE `item`='31951';
INSERT INTO `npc_vendor`(`entry`,`item`,`maxcount`,`incrtime`) VALUES ('21643','31951','0','0');

delete from `gameobject` where `guid`='31232';

update gameobject set id=19030 where guid=20617;
UPDATE `gameobject_template` set `data1` = 1043 WHERE (`entry`=19030);

-- min/maxhealth should be 1400-1700 acc wowhead for Lashtail Raptor (id 686)
update `creature_template`
set `minhealth` = 1400, `maxhealth` = 1700
where `entry` = 686;

UPDATE `quest_template` SET `Title`='[OLD]Crown Of The Earth' WHERE `entry`='934';
DELETE FROM `creature_involvedrelation` WHERE `quest`='934';
DELETE FROM `creature_questrelation` WHERE `quest`='934';
UPDATE `quest_template` SET `PrevQuestId`='7383' WHERE `entry`='935';

delete from creature_loot_template where item=31680;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (19740, 31680, 5, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (19755, 31680, 5, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (21302, 31680, 5, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (21314, 31680, 5, 0, 1, 1, 0, 0, 0, 0); 

UPDATE creature_loot_template set ChanceOrRef=3 where item=22559;

DELETE FROM `gameobject` WHERE (`guid`=12029);

-- Strength of One: ReqSpellCast1 was set incorrectly to 8121, should just be a regular kill
UPDATE `quest_template` SET `ReqSpellCast1` = 0 WHERE `entry` = 9582;

UPDATE creature_template SET `faction_A`='1781', `faction_H`='1781' WHERE `entry`=21294;

UPDATE `creature_loot_template` SET `QuestChanceOrGroup`='100' WHERE (`item`='30158');

DELETE FROM `npc_trainer` WHERE `spell` IN ('41309','39975','39976','41327','41330','40275','41325','41322','41326','41329','41331','41324','41323','41328');

INSERT INTO `npc_trainer` (`entry`, `spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
('17634','41309','50000','202','375','0'),
('17634','39975','20000','202','335','0'),
('17634','39976','55000','202','335','0'),
('17634','41327','50000','202','350','0'),
('17634','41330','50000','202','350','0'),
('17634','40275','50000','202','350','0'),
('17634','41325','50000','202','350','0'),
('17634','41322','50000','202','350','0'),
('17634','41326','50000','202','350','0'),
('17634','41329','50000','202','350','0'),
('17634','41331','50000','202','350','0'),
('17634','41324','50000','202','350','0'),
('17634','41323','50000','202','350','0'),
('17634','41328','50000','202','350','0');

INSERT INTO `npc_trainer` (`entry`, `spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
('18775','41309','50000','202','375','0'),
('18775','39975','20000','202','335','0'),
('18775','39976','55000','202','335','0'),
('18775','41327','50000','202','350','0'),
('18775','41330','50000','202','350','0'),
('18775','40275','50000','202','350','0'),
('18775','41325','50000','202','350','0'),
('18775','41322','50000','202','350','0'),
('18775','41326','50000','202','350','0'),
('18775','41329','50000','202','350','0'),
('18775','41331','50000','202','350','0'),
('18775','41324','50000','202','350','0'),
('18775','41323','50000','202','350','0'),
('18775','41328','50000','202','350','0');

INSERT INTO `npc_trainer` (`entry`, `spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
('17637','41309','50000','202','375','0'),
('17637','39975','20000','202','335','0'),
('17637','39976','55000','202','335','0'),
('17637','41327','50000','202','350','0'),
('17637','41330','50000','202','350','0'),
('17637','40275','50000','202','350','0'),
('17637','41325','50000','202','350','0'),
('17637','41322','50000','202','350','0'),
('17637','41326','50000','202','350','0'),
('17637','41329','50000','202','350','0'),
('17637','41331','50000','202','350','0'),
('17637','41324','50000','202','350','0'),
('17637','41323','50000','202','350','0'),
('17637','41328','50000','202','350','0');

INSERT INTO `npc_trainer` (`entry`, `spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
('19576','41309','50000','202','375','0'),
('19576','39975','20000','202','335','0'),
('19576','39976','55000','202','335','0'),
('19576','41327','50000','202','350','0'),
('19576','41330','50000','202','350','0'),
('19576','40275','50000','202','350','0'),
('19576','41325','50000','202','350','0'),
('19576','41322','50000','202','350','0'),
('19576','41326','50000','202','350','0'),
('19576','41329','50000','202','350','0'),
('19576','41331','50000','202','350','0'),
('19576','41324','50000','202','350','0'),
('19576','41323','50000','202','350','0'),
('19576','41328','50000','202','350','0');

INSERT INTO `npc_trainer` (`entry`, `spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
('18752','41309','50000','202','375','0'),
('18752','39975','20000','202','335','0'),
('18752','39976','55000','202','335','0'),
('18752','41327','50000','202','350','0'),
('18752','41330','50000','202','350','0'),
('18752','40275','50000','202','350','0'),
('18752','41325','50000','202','350','0'),
('18752','41322','50000','202','350','0'),
('18752','41326','50000','202','350','0'),
('18752','41329','50000','202','350','0'),
('18752','41331','50000','202','350','0'),
('18752','41324','50000','202','350','0'),
('18752','41323','50000','202','350','0'),
('18752','41328','50000','202','350','0'); 

delete from creature_onkill_reputation where RewOnKillRepFaction1 = 990;
INSERT IGNORE INTO creature_onkill_reputation
(creature_id, RewOnKillRepFaction1, RewOnKillRepFaction2, MaxStanding1, IsTeamAward1, RewOnKillRepValue1, MaxStanding2, IsTeamAward2, RewOnKillRepValue2, TeamDependent)
VALUES
(17808, 990, 0, 7, 0, 200, 0, 0, 0, 0),
(17968, 990, 0, 7, 0, 500, 0, 0, 0, 0),
(17842, 990, 0, 7, 0, 200, 0, 0, 0, 0),
(17888, 990, 0, 7, 0, 200, 0, 0, 0, 0),
(17767, 990, 0, 7, 0, 200, 0, 0, 0, 0),
(17899, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17907, 990, 0, 7, 0, 15, 0, 0, 0, 0),
(17898, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17895, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17905, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17897, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17906, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17908, 990, 0, 7, 0, 3, 0, 0, 0, 0),
(17916, 990, 0, 7, 0, 3, 0, 0, 0, 0);

-- Arantir and his quests are beta stuff
DELETE FROM `creature` WHERE `id`=7009;
UPDATE `quest_template` SET `title` = 'BETA Horns of Nez\'ra' WHERE `entry`=2358;

-- Demon Trainer doesn't sell any armor anymore
DELETE FROM `npc_vendor` WHERE `npc_vendor`.`entry` = 5520 AND `npc_vendor`.`item` = 15520;

-- Added arcane explosion and fire ball to this npc. as writed in wowhead.com comments.
Update `creature_template` set `spell1`='10150', `spell2`='10202', `ScriptName`='generic_creature' where `entry`='16977';

DELETE FROM `creature` WHERE `id`=5912;
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`auras`) VALUES
    (517,5912, 43, 0, 0, 0.00823113, -55.9339, -67.0312, 4.01711, 43200, 0, 0, 0.00823113, -55.9339, -67.0312, 0, 1500, 2622, 0, 0, '');

-- SD2 scripts
-- 169
-- hellfire peninsula special taxi path
UPDATE `creature_template` SET `ScriptName` = 'npc_wing_commander_brack' WHERE `entry` = 19401;
UPDATE `creature_template` SET `ScriptName` = 'npc_wing_commander_dabiree' WHERE `entry` = 19409;
UPDATE `creature_template` SET `ScriptName` = 'npc_gryphoneer_windbellow' WHERE `entry` = 20235;
-- 170
-- special taxi path netherstorm
UPDATE `creature_template` SET `ScriptName` = 'npc_protectorate_nether_drake' WHERE `entry` = 20903;
-- 171
-- multi kill quest mobs hfp
UPDATE `creature_template` SET `ScriptName` = 'mobs_shattered_hand_orc' WHERE `entry` IN (19411, 19410, 19413, 19414, 16867, 19295, 16870, 16878, 19415);
-- 172
-- support multikill bladespire and bloodmaul ogres
UPDATE `creature_template` SET `ScriptName` = 'mobs_bladespire_ogre' WHERE `entry` IN (19998, 20334, 21296, 21975);
UPDATE `creature_template` SET `ScriptName` = 'mobs_bloodmaul_ogre' WHERE `entry` IN (19948, 19952, 19957);
-- 174
-- multikill creatures
UPDATE `creature_template` SET `ScriptName` = 'mobs_dragonmaw_orc' WHERE `entry` IN (21717, 21718, 21719, 21720, 22331);
UPDATE `creature_template` SET `ScriptName` = 'mobs_shadowmoon_valley_wildlife' WHERE `entry` IN (21878, 21879);
UPDATE `creature_template` SET `ScriptName` = 'mobs_gordunni_ogre' WHERE `entry` IN (22143, 22144, 22148, 23022);
-- vendor
UPDATE `creature_template` SET `ScriptName` = 'npc_drake_dealer_hurlunk' WHERE `entry` = 23489;
UPDATE `creature_template` SET `ScriptName` = 'npc_rivern_frostwind' WHERE `entry` = 10618;
-- 176
-- tales and stories
UPDATE `creature_template` SET `ScriptName` = 'npc_tirion_fordring' WHERE `entry` = 1855;
UPDATE `creature_template` SET `ScriptName` = 'npc_loramus_thalipedes' WHERE `entry` = 7783;
UPDATE `creature_template` SET `ScriptName` = 'npc_fallen_hero_of_horde' WHERE `entry` = 7572;
UPDATE `creature_template` SET `ScriptName` = 'npc_lorax' WHERE `entry` = 10918;
-- 177
-- kalaran windblade
UPDATE `creature_template` SET `ScriptName` = 'npc_kalaran_windblade' WHERE `entry` = 8479;
-- 178
-- kharan mighthammer
UPDATE `creature_template` SET `ScriptName` = 'npc_kharan_mighthammer' WHERE `entry` = 9021;
-- 181
-- npc_lantresor_of_the_blade
UPDATE `creature_template` SET `ScriptName` = 'npc_lantresor_of_the_blade' WHERE `entry` = 18261;
-- 182
-- npc_ragged_john
UPDATE `creature_template` SET `ScriptName` = 'npc_ragged_john' WHERE `entry` = 9563;
-- 183
-- revert to original specialflags + flag 4 for mangos support, script no longer needed for quest
UPDATE `quest_template` SET `SpecialFlags`= 140 WHERE `entry` IN (10040, 10041);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (18716, 18717, 18719);
-- gossip only, key to searing gorge discussion
UPDATE `creature_template` SET `ScriptName` = 'npc_mountaineer_pebblebitty' WHERE `entry` = 3836;

-- Final steps
-- Not selectable GO type 3
UPDATE `gameobject_template` SET `flags`=0 WHERE `type`=3 AND `flags`=4;
UPDATE `creature`,`creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry`;
-- Cleanup
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
-- And finaly db_version update
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.8.2 (328) with SD2 calls rev.183');
-- END
