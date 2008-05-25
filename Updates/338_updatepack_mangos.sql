-- Start UPDATE Pack 338 -- 2008-01-23

-- Dupe spirit healer in AmmenVale
DELETE FROM `creature` WHERE `guid` = '87071';
DELETE FROM `creature_addon` WHERE `guid` = '87071';
DELETE FROM `creature_movement` WHERE `id` = '87071';

-- Realy dupe (same exact position)
DELETE FROM `creature` WHERE `guid` IN (31822,56348,55089,84864,84950,84953,88911,4216,4222);
DELETE FROM `creature_addon` WHERE `guid` IN (31822,4216,4222);
-- creatures in space
DELETE FROM `creature` WHERE `guid` IN (84937,84903);
-- correct one
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `guid`=4202;

-- Wrong scripts added in 337 removed
UPDATE creature_template set scriptname='generic_creature' where `entry`='1407';
UPDATE creature_template set scriptname='generic_creature' where `entry`='2910';
UPDATE creature_template set scriptname='generic_creature' where `entry`='3351';
UPDATE creature_template set scriptname='miner' where `entry`='3578';
UPDATE creature_template set scriptname='generic_creature' where `entry`='14739';
-- new proff table
-- data from w12x
INSERT IGNORE INTO `skill_extra_item_template` (`spellId`,`requiredSpecialization`,`additionalCreateChance`,`additionalMaxNum`) VALUES
('26751', '26798', '100', '1'),
('36686', '26801', '100', '1'),
('31373', '26797', '100', '1'),
-- Transmutations
('32765', '28672', '16', '4'),
('29688', '28672', '16', '4'),
('32766', '28672', '16', '4'),
('17559', '28672', '16', '4'),
('17187', '28672', '16', '4'),
('17566', '28672', '16', '4'),
('17561', '28672', '16', '4'),
('17560', '28672', '16', '4'),
('11479', '28672', '16', '4'),
('17565', '28672', '16', '4'),
('11480', '28672', '16', '4'),
('28566', '28672', '16', '4'),
('28585', '28672', '16', '4'),
('28567', '28672', '16', '4'),
('28568', '28672', '16', '4'),
('28583', '28672', '16', '4'),
('28584', '28672', '16', '4'),
('28582', '28672', '16', '4'),
('28580', '28672', '16', '4'),
('28569', '28672', '16', '4'),
('28581', '28672', '16', '4'),
('17563', '28672', '16', '4'),
('17562', '28672', '16', '4'),
('17564', '28672', '16', '4'),
('25146', '28672', '16', '4'),
-- Fasks and elixirs
('42736', '28677', '14', '4'),
('28578', '28677', '14', '4'),
('28590', '28677', '14', '4'),
('28587', '28677', '14', '4'),
('28588', '28677', '14', '4'),
('28591', '28677', '14', '4'),
('28589', '28677', '14', '4'),
('28570', '28677', '14', '4'),
('28558', '28677', '14', '4'),
('28557', '28677', '14', '4'),
('28556', '28677', '14', '4'),
('38960', '28677', '14', '4'),
('39639', '28677', '14', '4'),
('28553', '28677', '14', '4'),
('28552', '28677', '14', '4'),
('39637', '28677', '14', '4'),
('39638', '28677', '14', '4'),
('28549', '28677', '14', '4'),
('33741', '28677', '14', '4'),
('28545', '28677', '14', '4'),
('39636', '28677', '14', '4'),
('28543', '28677', '14', '4'),
('28544', '28677', '14', '4'),
('33740', '28677', '14', '4'),
('17638', '28677', '14', '4'),
('17636', '28677', '14', '4'),
('17634', '28677', '14', '4'),
('17637', '28677', '14', '4'),
('17635', '28677', '14', '4'),
('33738', '28677', '14', '4'),
('24368', '28677', '14', '4'),
('17573', '28677', '14', '4'),
('17571', '28677', '14', '4'),
('17557', '28677', '14', '4'),
('24365', '28677', '14', '4'),
('17555', '28677', '14', '4'),
('17554', '28677', '14', '4'),
('11477', '28677', '14', '4'),
('11478', '28677', '14', '4'),
('26277', '28677', '14', '4'),
('11476', '28677', '14', '4'),
('11472', '28677', '14', '4'),
('11468', '28677', '14', '4'),
('11467', '28677', '14', '4'),
('11466', '28677', '14', '4'),
('11461', '28677', '14', '4'),
('11465', '28677', '14', '4'),
('11460', '28677', '14', '4'),
('22808', '28677', '14', '4'),
('12609', '28677', '14', '4'),
('3453', '28677', '14', '4'),
('11450', '28677', '14', '4'),
('21923', '28677', '14', '4'),
('11449', '28677', '14', '4'),
('3451', '28677', '14', '4'),
('3450', '28677', '14', '4'),
('3188', '28677', '14', '4'),
('7845', '28677', '14', '4'),
('2333', '28677', '14', '4'),
('3177', '28677', '14', '4'),
('3176', '28677', '14', '4'),
('8240', '28677', '14', '4'),
('7179', '28677', '14', '4'),
('3171', '28677', '14', '4'),
('3230', '28677', '14', '4'),
('2334', '28677', '14', '4'),
('3170', '28677', '14', '4'),
('2329', '28677', '14', '4'),
('7183', '28677', '14', '4'),
-- Potions
('28579', '28675', '14', '4'),
('38961', '28675', '14', '4'),
('28575', '28675', '14', '4'),
('28571', '28675', '14', '4'),
('28572', '28675', '14', '4'),
('28577', '28675', '14', '4'),
('28573', '28675', '14', '4'),
('28576', '28675', '14', '4'),
('28586', '28675', '14', '4'),
('28565', '28675', '14', '4'),
('28564', '28675', '14', '4'),
('28563', '28675', '14', '4'),
('28562', '28675', '14', '4'),
('38962', '28675', '14', '4'),
('28555', '28675', '14', '4'),
('28554', '28675', '14', '4'),
('45061', '28675', '14', '4'),
('28550', '28675', '14', '4'),
('28546', '28675', '14', '4'),
('33733', '28675', '14', '4'),
('22732', '28675', '14', '4'),
('33732', '28675', '14', '4'),
('17580', '28675', '14', '4'),
('17577', '28675', '14', '4'),
('17574', '28675', '14', '4'),
('17575', '28675', '14', '4'),
('17576', '28675', '14', '4'),
('17578', '28675', '14', '4'),
('24367', '28675', '14', '4'),
('17572', '28675', '14', '4'),
('11452', '28675', '14', '4'),
('17570', '28675', '14', '4'),
('24366', '28675', '14', '4'),
('17552', '28675', '14', '4'),
('3175', '28675', '14', '4'),
('11464', '28675', '14', '4'),
('15833', '28675', '14', '4'),
('11458', '28675', '14', '4'),
('4942', '28675', '14', '4'),
('11457', '28675', '14', '4'),
('11453', '28675', '14', '4'),
('11448', '28675', '14', '4'),
('7258', '28675', '14', '4'),
('7259', '28675', '14', '4'),
('6618', '28675', '14', '4'),
('7257', '28675', '14', '4'),
('3448', '28675', '14', '4'),
('3452', '28675', '14', '4'),
('7181', '28675', '14', '4'),
('6624', '28675', '14', '4'),
('7256', '28675', '14', '4'),
('3173', '28675', '14', '4'),
('3174', '28675', '14', '4'),
('3447', '28675', '14', '4'),
('3172', '28675', '14', '4'),
('7255', '28675', '14', '4'),
('7841', '28675', '14', '4'),
('6617', '28675', '14', '4'),
('2335', '28675', '14', '4'),
('2337', '28675', '14', '4'),
('4508', '28675', '14', '4'),
('2332', '28675', '14', '4'),
('2331', '28675', '14', '4');

-- forum begins:
-- recoverer lootid, it npc has lootid=0 but loot_template contains record for it entry
UPDATE `creature_template` SET `lootid`=`entry` WHERE `entry` IN (17895, 17897, 17898, 17899, 17905, 17906, 17907, 17908, 17916, 22144, 22148, 24830);

-- cleanup `creature_loot_template`
-- in 335 was removed loot from npc Kixxle and Anilia (3920, 8305)
-- but entry in loot_template stil exist
DELETE FROM `creature_loot_template` WHERE `entry` IN ('3920','8305');
-- fix, incorect record in go_loot_tables (GO this data1 = 179501 not exist, but exist GO this id = 179501 and data1 = 16591)
UPDATE `gameobject_loot_template` SET `entry`= '16591' WHERE `entry`='179501';

-- this is records for loot from items on PT server.
-- this items not exist in UDB 337, it's test items
-- cleanup unused entry
-- Tier 5 Rogue Test Gear (32553), Tier 5 Rogue Test Gear Box 2 (32554), Tier 5 Warrior Test Gear Box 2 (32560)
DELETE FROM `item_loot_template` WHERE `entry` IN ('32553','32554','32560');

delete from `playercreateinfo_item` where race=11 and class=8 and itemid=6948;
INSERT IGNORE INTO `playercreateinfo_item` VALUES (11, 8, 6948, 1);
-- WANTED Boss Grog'ak Q 9820
-- His head should drop at 100%
UPDATE `creature_loot_template` SET `QuestChanceOrGroup`='100' WHERE (`item`='24472');
update creature_template set faction_a =7 , faction_h=7 where entry=10928 or entry=12922;
-- Lifting the Curse Q 290
UPDATE `creature_loot_template` SET `ChanceOrRef`='0',`QuestChanceOrGroup`='100' WHERE (`item`='2629');
INSERT IGNORE INTO item_loot_template values(33857,27681,26,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,31671,26,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,27682,26,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,27677,26,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,27678,25,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,27671,25,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,31670,25,0,5,15,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,5637,11,0,1,2,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,5136,11,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,7005,11,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,5871,11,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,4555,11,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33856,11,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33854,10,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,1430,10,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,2765,10,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33873,8,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33875,4,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33871,3,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33855,2,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33857,33925,2,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27422,96,0,6,8,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27438,22,0,4,6,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27435,22,0,4,6,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27429,21,0,4,6,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27425,20,0,4,6,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27516,20,0,1,2,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27515,20,0,1,2,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,9355,14,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,5361,14,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,4874,13,0,2,3,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,2763,13,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,5567,13,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,6532,13,0,1,3,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,33846,13,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27439,9,0,4,6,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,33869,9,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,33870,8,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,25351,5,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,33875,4,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,33871,3,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,33925,1.9,0,1,1,0,0,0,0);
INSERT IGNORE INTO item_loot_template values(33844,27442,1.7,0,1,1,0,0,0,0);
UPDATE `quest_template` SET `ReqSourceId2`= 12733, `ReqSourceCount2` = 1, `ReqSourceRef2` = 2, `ReqSpellCast2` = 16796, `SpecialFlags` = `SpecialFlags`|2 WHERE `entry` = 5056;

DELETE FROM `spell_scripts` WHERE `id` = 16796;
INSERT IGNORE INTO spell_scripts (id, delay, command, datalong, datalong2, datatext, x, y, z, o) VALUES
(16796, 0, 10, 10737, 3000000, '', '8072.38', '-3833.81', '690.03', '4.56'),
(16796, 1, 7, 5056, 0, '', 0, 0, 0, 0);
UPDATE `fishing_loot_template` SET `ChanceOrRef` = 0, `QuestChanceOrGroup` = 30 WHERE `item` = 6718;
UPDATE `fishing_loot_template` SET `ChanceOrRef` = 0, `QuestChanceOrGroup` = 100 WHERE `item` = 6717;
-- change endpoint of quest The Orc Report to Lieutenant Aden
UPDATE `creature_involvedrelation` SET `id` = 23951 WHERE `quest`=1219;
-- Fix faction for Myst Spinners and Myst Leechers
UPDATE `creature_template` SET `faction_A` = '312', `faction_H` = '312' WHERE `entry` IN ('17522', '17523');
UPDATE `gameobject_loot_template` SET `ChanceOrRef`='3' WHERE `item`='22794';
UPDATE `creature_template` SET `lootid`='0' WHERE `entry` IN ('13217','13219','12781','12799','12783','12796','12805','14753','14754','15126','15127');
DELETE FROM `creature_loot_template` WHERE `entry` IN ('13217','13219','12781','12799','12783','12796','12805','14753','14754','15126','15127');

DELETE FROM `creature_loot_template` WHERE `item` IN ('19105','19110','18241','18242','18243','18244','18245','18246','18247','18248');
DELETE FROM `npc_vendor` WHERE `item` IN ('19105','19110','18241','18242','18243','18244','18245','18246','18247','18248');
UPDATE `quest_template` SET `ReqSpellCast1` = '31736', `ReqSpellCast2` = '31736', `ReqSpellCast3` = '31736', `ReqSpellCast4` = '31736' WHERE `entry` =9720;

UPDATE quest_template SET `RequiredRaces`=690, `Details`='Greetings, $R. I am Kolark, Bounty Hunter from Thunderbluff. Much of the world I have traveled and much I have seen.$B$BMy journeys across the South Seas lead to the discovery of these wonderous thorium headed arrows. Alas, I have an endless supply of the arrows but have exhausted my supply of shells. Bah, no self respecting Tauren would ever be caught dead using a flimsy bow. The arrows are useless!$B$BI will offer a trade: An even exchange of thorium shells for my thorium headed arrows. Deal?', `OfferRewardText`='Excellent! I am a Tauren of my word, $R. The arrows are yours.' WHERE (`entry`=7341);

UPDATE quest_template SET `RequiredRaces`=0, `Details`='It would seem that the device needs some sort of grime-encrusted object to clean and three silver coins to get the contraption working. So long as both are present, the Sparklematic 5200 should work...', `OfferRewardText`='As quickly as it started, the Sparklematic 5200 comes to an abrupt halt. A simple "ding" is heard from the machine, and the mouth of the machine spirals upward. Inside the Sparklematic 5200 is a small box wrapped in a little bow. The machine would appear to wrap an object up after eliminating its grime-encrusted status. Even if the machine didn\'t work, at least the item is now wrapped in a pretty box.$B$BWell, there is one way to find out if it cleaned the item or not...' WHERE (`entry`=4605);

UPDATE quest_template SET `OfferRewardText`='It has been proven that the Light is with you, $N, but as times grow more dangerous, it becomes important to know what strength lies beneath the flesh. When demons, dragons, or any other evil set foot in your lands, your mettle will be tested. Will you be strong enough?$B$BBravery, regardless of the situation, is as much a part of paladinhood as the Light, your armor, and your weapon. Protecting the weak, and not losing faith are two more lessons you must master while you study in the Cathedral of Light.' WHERE (`entry`=1793);

UPDATE quest_template SET `OfferRewardText`='I will keep three of the weapons you returned to me, as mementos of my pain and loss. But please, $N, choose your favorite of the heirlooms and keep it for yourself.$B$BMay it serve you greater than it served its cursed, former owners.' WHERE (`entry`=1822);

UPDATE quest_template SET `OfferRewardText`='I have finished with your piece of armor, and I am quite pleased. Furen\'s new techniques meshed perfectly with my own and I am sure this armor will prove to be quite resilient.$B$BThank you, $N. And may this serve you well in future battles.' WHERE (`entry`=1711);

UPDATE quest_template SET `OfferRewardText`='$N, I have crafted these weapons with the elunite you brought to me. Please, take whichever most suits you.$B$BAnd I must thank you. Working with elunite is both an honor and a pleasure.' WHERE (`entry`=1693);

UPDATE quest_template SET `RequiredRaces`=1101, `OfferRewardText`='Ah, another flare gun, huh? That I can do.$B$BAnd don\'t forget, southern tip of Azshara. It\'s a small little island that\'s been turned into a landing pad. You can\'t miss it if you\'re in the right spot.' WHERE (`entry`=3483);

UPDATE `quest_template` SET `OfferRewardText` = "The children love to watch heroes at their work. It is my hope that, one day, each of these orphans will grow into a strong member of the Horde, and ultimately die in glorious battle!$B$BAh, thoughts of such a fine fate brings mist to my eyes..." WHERE `entry` = 11357;

UPDATE `quest_template` SET `OfferRewardText` = "Excellent! You\'ve shown your worth by defending our operations in Warsong Gulch! May word of your honor spread far and wide across our lands.", `RequestItemsText` = "Do you bear news from Warsong Gulch, $N?" WHERE `entry` = 8386;

UPDATE `quest_template` SET `OfferRewardText` = "I am heartened by your initiative to speak with me. In the past I was responsible for the training of young paladins as they entered our order. This is a duty and privilege that I humbly take up once more. Your name has been mentioned as one who seeks to do good in the name of the Light. It would be my honor to guide you in your first steps as a $C.$B$BShall we begin?" WHERE `entry` = 9676;

delete from `creature_onkill_reputation` where `creature_id` in (17023,17835,17892,17952,18982,18983,18994,18995,21818);
UPDATE `creature_template` SET armor = 6135 WHERE entry = 23597;
update creature_addon set auras='18950 0 18950 1' where guid in (select guid from creature where id in (23597, 23889, 24179));
UPDATE `creature_template` SET armor = 4250 WHERE entry = 23889;
UPDATE `creature_template` SET armor = 2480 WHERE entry = 24179;
UPDATE `creature_template` SET armor = 3887 WHERE entry = 23581;
UPDATE `creature_template` SET armor = 3200 WHERE entry = 23542;
UPDATE `creature_template` SET armor = 6792 WHERE entry = 23584;
UPDATE `creature_template` SET armor = 4850 WHERE entry = 23580;
UPDATE `creature_template` SET armor = 4850 WHERE entry = 24065;
UPDATE `creature_template` SET armor = 3887 WHERE entry = 23596;
UPDATE `creature_template` SET armor = 6887 WHERE entry = 24059;
UPDATE `creature_template` SET armor = 4125 WHERE entry = 24043;
DELETE FROM `creature_template_addon` WHERE entry = 24043;
INSERT IGNORE INTO `creature_template_addon` (entry, auras) VALUES (24043, '18950 0 18950 1 16380 0 ');
UPDATE creature_template SET faction_A = 16, faction_H = 16, minlevel = 69, maxlevel = 71, minhealth = 53000, maxhealth = 58000 WHERE entry = 24043;
UPDATE `creature_template` SET armor = 1850 WHERE entry = 24064;
UPDATE `creature_template` SET armor = 3580 WHERE entry = 24530;
UPDATE `creature_template` SET armor = 5425 WHERE entry = 24047;
UPDATE `creature_template` SET armor = 4212 WHERE entry = 23834;
UPDATE `creature_template` SET armor = 4212 WHERE entry = 23582;
UPDATE `creature_template` SET armor = 7125 WHERE entry = 24225;
UPDATE `creature_template` SET armor = 3965 WHERE entry = 24180;
UPDATE `creature_template` SET armor = 2600 WHERE entry = 24549;
UPDATE `creature_template` SET armor = 1854 WHERE entry = 23834;
UPDATE `creature_template` SET armor = 4872 WHERE entry = 23587;
UPDATE `creature_template` SET armor = 1760 WHERE entry = 23586;
UPDATE `creature_template` SET minhealth = 2328, maxhealth = 2328, spell1 = 42375 WHERE entry = 23757;
UPDATE `creature_template` SET minhealth = 948, maxhealth = 948, spell1 = 42480 WHERE entry = 23822;

delete from creature_involvedrelation where id=10978 and quest=5163;
update quest_template set ReqSpellCast1=17166, ReqSpellCast2=17166, ReqSpellCast3=17166 where entry=5163;
-- deleting Talisman of Corruption from Xabraxxis loottable
delete from `creature_loot_template` where `entry`=10373 and `item`=12355;
-- Swift Flying Broom / Swift Magic Broom 14d, + 20557
UPDATE `item_template` set duration= '-1209600' where entry in (33182, 33184, 33176, 33183, 33189, 20557);
-- Engineer Membership Cards
UPDATE `item_template` set duration= '1209600' where entry in (10791, 10790);
-- Tricky Treats 1d
UPDATE `item_template` set duration='-86400' where entry=33226;
-- flimsy masks 7d + fresh holly
UPDATE `item_template` set duration='-604800' where entry in (20562, 20392, 20565, 20563, 20569, 20571, 20567, 20574, 20561, 20391, 20566, 20564, 20570, 20572, 20568, 20573, 21212);
-- snowflakes 10d + wand of holiday cheer
UPDATE `item_template` set duration='-864000' where entry in (21328, 34191);
-- hardpacked snowball 5mins
UPDATE `item_template` set duration='-300' where entry=21038;
-- hammer of expertise 1h
UPDATE `item_template` set duration='3600' where entry=8708;
-- andonisus 10mins + living rot
UPDATE `item_template` set duration='-600' where entry in (15447, 22736);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(19772, 32948),
(19772, 32947);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(19773, 32948),
(19773, 32947);
update creature_template set lootid=0 where entry in (375, 4592, 23291, 15666, 23370, 18478);
delete from `gameobject_loot_template` where `entry` in (12620, 12681);
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('12620','12242','0','100','1','1','0','0','0','0');
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('12681','12289','0','100','1','1','0','0','0','0');
/*-- Brotherhood of Thieves
DELETE FROM creature_loot_template WHERE item = 752;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(38, 752, 0, 34, 1, 1, 0, 0, 0, 0); current chance more accurate*/

/*-- Wolves Across the Border
DELETE FROM creature_loot_template WHERE item = 750;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(705, 750, 0, 63, 1, 1, 0, 0, 0, 0),
(704, 750, 0, 54, 1, 1, 0, 0, 0, 0),
(69, 750, 0, 50, 1, 1, 0, 0, 0, 0),
(299, 750, 0, 48, 1, 1, 0, 0, 0, 0);same already good*/

/*-- Pie for Billy
DELETE FROM creature_loot_template WHERE item = 769;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(3099, 769, 99, 0, 1, 1, 0, 0, 0, 0),
(1191, 769, 82, 0, 1, 2, 0, 0, 0, 0),
(3100, 769, 82, 0, 1, 2, 0, 0, 0, 0),
(3225, 769, 81, 0, 1, 1, 0, 0, 0, 0),
(1190, 769, 81, 0, 1, 1, 0, 0, 0, 0),
(1192, 769, 79, 0, 1, 2, 0, 0, 0, 0),
(119, 769, 79, 0, 1, 1, 0, 0, 0, 0),
(524, 769, 78, 0, 1, 1, 0, 0, 0, 0),
(547, 769, 77, 0, 1, 2, 0, 0, 0, 0),
(157, 769, 76, 0, 1, 2, 0, 0, 0, 0),
(454, 769, 76, 0, 1, 1, 0, 0, 0, 0),
(113, 769, 76, 0, 1, 1, 0, 0, 0, 0),
(390, 769, 68, 0, 1, 1, 0, 0, 0, 0),
(1126, 769, 45, 0, 1, 1, 0, 0, 0, 0),
(1125, 769, 45, 0, 1, 1, 0, 0, 0, 0),
(1127, 769, 45, 0, 1, 1, 0, 0, 0, 0),
(1689, 769, 43, 0, 1, 1, 0, 0, 0, 0),
(330, 769, 30, 0, 1, 1, 0, 0, 0, 0),
(3098, 769, 0.1, 0, 1, 1, 0, 0, 0, 0),
(1985, 769, 0.1, 0, 1, 1, 0, 0, 0, 0),
(708, 769, 0.1, 0, 1, 1, 0, 0, 0, 0);
already basicly same values*/

-- Gold Dust Excha
UPDATE creature_loot_template SET QuestChanceOrGroup=50 WHERE item = 773;


-- Kobold Candles
UPDATE creature_loot_template set QuestChanceOrGroup=66 WHERE item = 772;


-- Red Linen Goods
UPDATE creature_loot_template set QuestChanceOrGroup=66 WHERE item = 1019;

-- Riverpaw Gnoll Bounty
UPDATE creature_loot_template set QuestChanceOrGroup=40 WHERE item = 782;


-- Collecting Kelp
UPDATE creature_loot_template set QuestChanceOrGroup=33 WHERE item = 1256;

-- Bounty on Murlocs
UPDATE creature_loot_template set QuestChanceOrGroup=50 WHERE item = 780;

-- Bounty on Garrick Padfoot
UPDATE creature_loot_template set QuestChanceOrGroup=100 WHERE item = 182;

-- Goldtooth
UPDATE creature_loot_template set QuestChanceOrGroup=100 WHERE item = 981;


-- Manhunt
UPDATE creature_loot_template set QuestChanceOrGroup=100 WHERE item = 2239;

UPDATE `creature_loot_template` SET `ChanceOrRef` = '5' WHERE `entry` =9736 AND `item` =21955;
-- Knothide Ammo Pouch
UPDATE npc_trainer SET spell=44345 WHERE spell=44343;
UPDATE `creature_template` SET `faction_A` = 104, `faction_H` = 104 WHERE `entry` = 3689;
Delete from `creature` where `guid`=84084;
-- Mogdorg the Wizened
UPDATE `creature_template` SET `minhealth` = '8500', `maxhealth` = '9100', `modelid_A` = '19755', `modelid_H` = '19755', `armor` = '2200', `baseattacktime` = '2000', `flags` = `flags`|'2', `mingold` = '0', `maxgold` = '0', `MovementType` = '0' WHERE `entry` = '22941';

UPDATE creature_template SET faction_A='14', faction_H='14' WHERE entry IN (13036, 14321, 14324, 14326);

UPDATE `creature_template` SET `minlevel` = '22', `maxlevel` = '22', `faction_A` = '12', `faction_H` = '12', `npcflag` = `npcflag`|'2', flags = '4608', `baseattacktime` = '2000', `rangeattacktime` = '0' WHERE `entry` = '7024';

UPDATE `quest_template` SET `ReqSourceId1` = 33050, `ReqSourceCount1` = 4, `ReqSourceRef1` = 1 WHERE `entry` = 11201;
-- The Essence Focuser
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0.1' WHERE `item` = '31304';
-- Fix for Quest Saving Princess Stillpine

-- Princess shouldn't walk around (mobs in cage for another quest shouldn't either)
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0' WHERE `id` IN (17682, 17375);
UPDATE `creature_template` SET `faction_A` = '1685', `faction_H` = '1685' WHERE `entry` =17375;

-- changed cage's size. looks better.
UPDATE `gameobject_template` SET `size` = '1.5' WHERE `entry` =181928;

-- you shouldn't kill the princess but open the cage to complete the quest
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '-181928', ReqSpellCast1 = '31003' WHERE `entry` =9667;

-- key should only be dropped when quest is active
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0', `QuestChanceOrGroup` = '100',
`freeforall` = '1' WHERE `entry` =17702 AND `item` =24099;

UPDATE `quest_template` SET `ReqSourceId1` = '24099', `ReqSourceCount1` = '1', `ReqSourceRef1` = '1' WHERE `entry` =9667;

-- furbolgs shouldn't kill other mobs in cages
UPDATE `creature_template` SET `faction_A` = '82', `faction_H` = '82' WHERE `entry` =17702;
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='164661');
INSERT IGNORE INTO `npc_vendor`(entry, item, maxcount, incrtime)
VALUES (2482,12252,1,43200),(2482,12163,1,7200);
-- More Shadow Dust template
INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) VALUES (11006, 3679, 70, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 1, 11004, 0, 0, 0, 0, 0, 0, 'More Shadow Dust', 'It looks like the commander was not delirious after all. Bring me more dust and I\'ll prepare another elixir for you.', '', 'Keep bringing the dust to me. $B I\'ll prepare as many elixirs as you need.', 'Have you obtained the dust, $N?', '', '', '', '', '', 32388, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32446, 0, 0, 0, 1, 0, 0, 0, 1031, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0);

-- More Shadow Dust relation
DELETE FROM `creature_questrelation` WHERE `quest` = '11006';
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES('23042','11006');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11006';
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES('23042','11006');

-- World of Shadows misc
UPDATE `quest_template` SET `IncompleteEmote` = '6' WHERE `entry` = '11004';

UPDATE `gameobject` SET `position_x` = '3397.36', `position_y` = '-4997.98', `position_z` = '167.655', `orientation` = '2.4803', `rotation2` = '0.945832', `rotation3` = '0.324656' WHERE `guid` = '18467';
-- ZG class trinket mats
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '0', `ChanceOrRef` = '100' WHERE `item` IN ('19939', '19940', '19941', '19942');
UPDATE `creature_template` SET `speed` = '1.20' WHERE `entry` = '17661';
UPDATE `creature_template` SET `mindmg`='628',`maxdmg`='942',`attackpower`='5495' WHERE (`entry`='20216');
INSERT IGNORE INTO `npc_trainer` (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES
(5142, 44052, 3250, 101, 0, 70),
(5142, 44051, 2300, 101, 0, 60),
(5142, 44050, 1500, 101, 0, 50),
(5142, 44049, 900, 101, 0, 40),
(5142, 44048, 500, 101, 0, 30),
(5142, 44042, 100, 101, 0, 20),
(17510, 44052, 3250, 760, 0, 70),
(17510, 44051, 2300, 760, 0, 60),
(17510, 44050, 1500, 760, 0, 50),
(17510, 44049, 900, 760, 0, 40),
(17510, 44048, 500, 760, 0, 30),
(17510, 44042, 100, 760, 0, 20),
(5141, 44052, 3250, 101, 0, 70),
(5141, 44051, 2300, 101, 0, 60),
(5141, 44050, 1500, 101, 0, 50),
(5141, 44049, 900, 101, 0, 40),
(5141, 44048, 500, 101, 0, 30),
(5141, 44042, 100, 101, 0, 20),
(5143, 44052, 3250, 101, 0, 70),
(5143, 44051, 2300, 101, 0, 60),
(5143, 44050, 1500, 101, 0, 50),
(5143, 44049, 900, 101, 0, 40),
(5143, 44048, 500, 101, 0, 30),
(5143, 44042, 100, 101, 0, 20),
(16756, 44052, 3250, 760, 0, 70),
(16756, 44051, 2300, 760, 0, 60),
(16756, 44050, 1500, 760, 0, 50),
(16756, 44049, 900, 760, 0, 40),
(16756, 44048, 500, 760, 0, 30),
(16756, 44042, 100, 760, 0, 20),
(17511, 44052, 3250, 760, 0, 70),
(17511, 44051, 2300, 760, 0, 60),
(17511, 44050, 1500, 760, 0, 50),
(17511, 44049, 900, 760, 0, 40),
(17511, 44048, 500, 760, 0, 30),
(17511, 44042, 100, 760, 0, 20);
UPDATE `gameobject_template` SET `size` = 0.05 WHERE `entry` = 181897;
UPDATE `gameobject_loot_template` SET `lootcondition` = '2', `condition_value1` = '12766',
`condition_value2` = '1' WHERE `entry` =2774 AND `item` =12768;

UPDATE `gameobject_loot_template` SET `lootcondition` = '2', `condition_value1` = '12765',
`condition_value2` = '1' WHERE `entry` =2774 AND `item` =12766;
-- loot for Renn's Supplies
DELETE FROM `item_loot_template` where `entry`=33045;
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(33045, 33040, 100, 0, 1, 1, 0, 0, 0, 0),
(33045, 33044, 0, 100, 1, 1, 0, 0, 0, 0);

-- duration for Repaired Diving Gear set to 60 minutes
UPDATE `item_template` SET `Duration`= 3600 WHERE `entry`= 33040;
DELETE FROM `npc_vendor` WHERE (`entry`=12795);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12795, 16565), (12795, 16566), (12795, 16568), (12795, 16551), (12795, 16549), (12795, 16550), (12795, 17591), (12795, 17590), (12795, 17592), (12795, 29615), (12795, 29616), (12795, 29617), (12795, 16563), (12795, 16561), (12795, 16562), (12795, 16577), (12795, 16578), (12795, 16580), (12795, 16541), (12795, 16542), (12795, 16544), (12795, 17623), (12795, 17622), (12795, 17624), (12795, 16536), (12795, 16533), (12795, 16535), (12795, 16569), (12795, 16571), (12795, 16567), (12795, 16554), (12795, 16555), (12795, 16552), (12795, 17586), (12795, 17588), (12795, 17593), (12795, 29612), (12795, 29613), (12795, 29614), (12795, 16564), (12795, 16560), (12795, 16558), (12795, 16573), (12795, 16574), (12795, 16579), (12795, 16545), (12795, 16548), (12795, 16543), (12795, 17618), (12795, 17620), (12795, 17625), (12795, 16539), (12795, 16540), (12795, 16534), (12795, 23251), (12795, 23252), (12795, 23253), (12795, 23254), (12795, 23255), (12795, 23256), (12795, 29604), (12795, 29605), (12795, 23257), (12795, 23258), (12795, 23259), (12795, 23244), (12795, 23260), (12795, 23243), (12795, 23261), (12795, 23262), (12795, 23263), (12795, 23264), (12795, 22874), (12795, 22875), (12795, 22877), (12795, 22878), (12795, 22881), (12795, 22884), (12795, 29602), (12795, 29603), (12795, 22879), (12795, 22880), (12795, 22876), (12795, 22887), (12795, 22872), (12795, 22873), (12795, 22882), (12795, 22885), (12795, 22883), (12795, 22886), (12795, 22843), (12795, 22862), (12795, 22863), (12795, 22852), (12795, 22865), (12795, 22855), (12795, 29600), (12795, 29601), (12795, 22864), (12795, 22856), (12795, 22857), (12795, 22867), (12795, 22868), (12795, 22858), (12795, 22869), (12795, 22859), (12795, 22870), (12795, 22860);

/*
Sergeant Major Clate - Should sell 60lvl pvp sets (BLue and Epic ALLIANCE)
here u have whole
*/

DELETE FROM `npc_vendor` WHERE (`entry`=12785);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12785, 16466), (12785, 16465), (12785, 16468), (12785, 17578), (12785, 16441), (12785, 16452), (12785, 16451), (12785, 16449), (12785, 17581), (12785, 17580), (12785, 17602), (12785, 16473), (12785, 16474), (12785, 16476), (12785, 16453), (12785, 16457), (12785, 16455), (12785, 29609), (12785, 29610), (12785, 29611), (12785, 16477), (12785, 16478), (12785, 16480), (12785, 17604), (12785, 17605), (12785, 16444), (12785, 16443), (12785, 16462), (12785, 16463), (12785, 16467), (12785, 16459), (12785, 16448), (12785, 16450), (12785, 17583), (12785, 17584), (12785, 17579), (12785, 16472), (12785, 16471), (12785, 16475), (12785, 16446), (12785, 16454), (12785, 16456), (12785, 29606), (12785, 29607), (12785, 29608), (12785, 16483), (12785, 16484), (12785, 16479), (12785, 17608), (12785, 17603), (12785, 17607), (12785, 16437), (12785, 16440), (12785, 16442), (12785, 23292), (12785, 23293), (12785, 23294), (12785, 23295), (12785, 23296), (12785, 23297), (12785, 23272), (12785, 23273), (12785, 23298), (12785, 23299), (12785, 29596), (12785, 29597), (12785, 23300), (12785, 23301), (12785, 23302), (12785, 23303), (12785, 23304), (12785, 23305), (12785, 23278), (12785, 23279), (12785, 23280), (12785, 23281), (12785, 23282), (12785, 23283), (12785, 23274), (12785, 23275), (12785, 23284), (12785, 23285), (12785, 29594), (12785, 29595), (12785, 23286), (12785, 23287), (12785, 23288), (12785, 23289), (12785, 23290), (12785, 23291), (12785, 23306), (12785, 23307), (12785, 23308), (12785, 23309), (12785, 23310), (12785, 23311), (12785, 23276), (12785, 23277), (12785, 23312), (12785, 23313), (12785, 29598), (12785, 29599), (12785, 23314), (12785, 23315), (12785, 23316), (12785, 23317), (12785, 23318), (12785, 23319);

/*
Lieutenant Jackspring - should sell 60lvl weapons (Alliance)
*/

DELETE FROM `npc_vendor` WHERE (`entry`=12784);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12784, 18825), (12784, 18867), (12784, 18833), (12784, 18876), (12784, 23455), (12784, 18838), (12784, 18869), (12784, 18855), (12784, 18827), (12784, 18847), (12784, 12584), (12784, 23451), (12784, 18865), (12784, 18836), (12784, 18843), (12784, 18873), (12784, 18830), (12784, 23456), (12784, 23452), (12784, 23453), (12784, 23454);

/*
Stone Guard Zarg - should sell 60lvl weapons (Horde)
*/

DELETE FROM `npc_vendor` WHERE (`entry`=12794);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12794, 18831), (12794, 23464), (12794, 18874), (12794, 16345), (12794, 18866), (12794, 18828), (12794, 18837), (12794, 23465), (12794, 18877), (12794, 18848), (12794, 18871), (12794, 18868), (12794, 23467), (12794, 18840), (12794, 18835), (12794, 18844), (12794, 18826), (12794, 23466), (12794, 18860), (12794, 23468), (12794, 23469);

/*
Lady Palanseer - after 2.3 patch should sell ONLY GLADIATOR SET 1 FOR HONOR (HORDE)
*/

DELETE FROM `npc_vendor` WHERE (`entry`=12792);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12792, 28334), (12792, 28335), (12792, 28331), (12792, 28332), (12792, 28333), (12792, 28130), (12792, 28126), (12792, 28127), (12792, 28128), (12792, 28129), (12792, 30200), (12792, 30188), (12792, 30187), (12792, 30201), (12792, 30186), (12792, 31375), (12792, 31376), (12792, 31377), (12792, 31378), (12792, 31379), (12792, 27702), (12792, 27703), (12792, 27704), (12792, 27705), (12792, 27706), (12792, 25834), (12792, 25830), (12792, 25833), (12792, 25832), (12792, 25831), (12792, 25997), (12792, 26000), (12792, 25998), (12792, 26001), (12792, 25999), (12792, 27469), (12792, 27470), (12792, 27471), (12792, 27472), (12792, 27473), (12792, 31409), (12792, 31410), (12792, 31411), (12792, 31412), (12792, 31413), (12792, 31613), (12792, 31614), (12792, 31616), (12792, 31618), (12792, 31619), (12792, 24544), (12792, 24549), (12792, 24545), (12792, 24547), (12792, 24546), (12792, 31396), (12792, 31397), (12792, 31400), (12792, 31406), (12792, 31407), (12792, 27707), (12792, 27708), (12792, 27709), (12792, 27710), (12792, 27711), (12792, 27879), (12792, 27880), (12792, 27881), (12792, 27882), (12792, 27883), (12792, 25854), (12792, 25855), (12792, 25857), (12792, 25856), (12792, 25858), (12792, 28136), (12792, 28137), (12792, 28138), (12792, 28139), (12792, 28140);

/*
Captain Dirgehammer - after 2.3 patch should sell ONLY GLADIATOR SET 1 FOR HONOR (ALLIANCE)
*/

DELETE FROM `npc_vendor` WHERE (`entry`=12777);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12777, 28334), (12777, 28335), (12777, 28331), (12777, 28332), (12777, 28333), (12777, 28130), (12777, 28126), (12777, 28127), (12777, 28128), (12777, 28129), (12777, 30200), (12777, 30188), (12777, 30187), (12777, 30201), (12777, 30186), (12777, 31375), (12777, 31376), (12777, 31377), (12777, 31378), (12777, 31379), (12777, 27702), (12777, 27703), (12777, 27704), (12777, 27705), (12777, 27706), (12777, 25834), (12777, 25830), (12777, 25833), (12777, 25832), (12777, 25831), (12777, 25997), (12777, 26000), (12777, 25998), (12777, 26001), (12777, 25999), (12777, 27469), (12777, 27470), (12777, 27471), (12777, 27472), (12777, 27473), (12777, 31409), (12777, 31410), (12777, 31411), (12777, 31412), (12777, 31413), (12777, 31613), (12777, 31614), (12777, 31616), (12777, 31618), (12777, 31619), (12777, 24544), (12777, 24549), (12777, 24545), (12777, 24547), (12777, 24546), (12777, 31396), (12777, 31397), (12777, 31400), (12777, 31406), (12777, 31407), (12777, 27707), (12777, 27708), (12777, 27709), (12777, 27710), (12777, 27711), (12777, 27879), (12777, 27880), (12777, 27881), (12777, 27882), (12777, 27883), (12777, 25854), (12777, 25855), (12777, 25857), (12777, 25856), (12777, 25858), (12777, 28136), (12777, 28137), (12777, 28138), (12777, 28139), (12777, 28140);

/*
Doris Volanthius - should sell VINDICATOR'S ITEMS AND VETERAN'S RING (after 2.3 patch only ring left from veterans cause then u can equip Vindicator and Veteran ring at once). (HORDE).
*/

DELETE FROM `npc_vendor` WHERE (`entry`=24520);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(24520, 33877), (24520, 33878), (24520, 33879), (24520, 33880), (24520, 33882), (24520, 33884), (24520, 33885), (24520, 33886), (24520, 33888), (24520, 33890), (24520, 33891), (24520, 33895), (24520, 33892), (24520, 33898), (24520, 33899), (24520, 33900), (24520, 33902), (24520, 33903), (24520, 33905), (24520, 33811), (24520, 33812), (24520, 33907), (24520, 33908), (24520, 33909), (24520, 33911), (24520, 33912), (24520, 33914), (24520, 33915), (24520, 33916), (24520, 33918), (24520, 33919), (24520, 33853), (24520, 33876), (24520, 33881), (24520, 33883), (24520, 33887), (24520, 33889), (24520, 33893), (24520, 33894), (24520, 33897), (24520, 33904), (24520, 33920), (24520, 33921), (24520, 33922), (24520, 33923), (24520, 33813), (24520, 33906), (24520, 33910), (24520, 33913), (24520, 33917), (24520, 33056), (24520, 33064), (24520, 33057), (24520, 34576), (24520, 34577), (24520, 34578), (24520, 34580), (24520, 34579);

/*
Lieutenant Tristia - should sell VINDICATOR'S ITEMS AND VETERAN'S RING (after 2.3 patch only ring left from veterans cause then u can equip Vindicator and Veteran ring at once). (ALLIANCE).
*/

DELETE FROM `npc_vendor` WHERE (`entry`=23446);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(23446, 33877), (23446, 33878), (23446, 33879), (23446, 33880), (23446, 33882), (23446, 33884), (23446, 33885), (23446, 33886), (23446, 33888), (23446, 33890), (23446, 33891), (23446, 33895), (23446, 33892), (23446, 33898), (23446, 33899), (23446, 33900), (23446, 33902), (23446, 33903), (23446, 33905), (23446, 33811), (23446, 33812), (23446, 33907), (23446, 33908), (23446, 33909), (23446, 33911), (23446, 33912), (23446, 33914), (23446, 33915), (23446, 33916), (23446, 33918), (23446, 33919), (23446, 33853), (23446, 33876), (23446, 33881), (23446, 33883), (23446, 33887), (23446, 33889), (23446, 33893), (23446, 33894), (23446, 33897), (23446, 33904), (23446, 33920), (23446, 33921), (23446, 33922), (23446, 33923), (23446, 33813), (23446, 33906), (23446, 33910), (23446, 33913), (23446, 33917), (23446, 33056), (23446, 33064), (23446, 33057), (23446, 34576), (23446, 34577), (23446, 34578), (23446, 34580), (23446, 34579);

DELETE FROM `npc_vendor` where entry = 12793 and item in (28244,28245,28246,28247);
DELETE FROM `npc_vendor` where entry = 12781 and item in (28244,28245,28246,28247);

/*
4 items too many in these

Missing mount for alliance (dunno what about horde)
*/

delete from `npc_vendor` where entry = 12783 and item = 29465;
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES (12783, 29465);

/*
Too many mounts for Horde (these on 55lvl doesnt exist anymore)
*/

DELETE FROM `npc_vendor` where entry = 12796 and item in (18248,18247,18245,18246);

/*
These 2 npcs need to be deleted: “This NPC no longer exists. PvP rewards are now sold in the Champion's Hall.”
*/

DELETE FROM `creature` WHERE `id` in ( '12805', '12779');

-- Change Sergeant Kien (no longer in game) with Doris Volanthius
UPDATE `creature` SET `id`= '24520' WHERE `guid`= '12819';
-- Stats faction etc for Doris Volanthius
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '8000', `maxhealth` = '8000', `armor` = '1500', `faction_A` = '1602', `faction_H` = '1602', `npcflag` = `npcflag`|'128', `mindmg` = '200', `maxdmg` = '400', `attackpower` = '1338', `baseattacktime` = '2000', `civilian` = '1' WHERE `entry` = '24520';

-- Zelfrax
UPDATE `creature_template` SET `minlevel` = '36', `maxlevel` = '36', `minhealth` = '1100', `maxhealth` = '1200', `minmana` = '1050', `maxmana` = '1100', `armor` = '380', `faction_A` = '1825', `faction_H` = '1825', `speed` = '1.10', `mindmg` = '24', `maxdmg` = '51', `attackpower` = '264', `baseattacktime` = '2000' WHERE `entry` = '23864';
-- Ragveil:
DELETE FROM gameobject_loot_template WHERE entry=19627;
INSERT IGNORE INTO gameobject_loot_template VALUES
(19627, 0, -18113, 0, 1, 1, 0, 0, 0, 0);

-- Purple Lotus:
DELETE FROM gameobject_loot_template WHERE entry=17200;
INSERT IGNORE INTO gameobject_loot_template VALUES
(17200, 0, - 6142, 0, 1, 1, 0, 0, 0, 0);

-- Blindweed:
DELETE FROM gameobject_loot_template WHERE entry=19630;
INSERT IGNORE INTO gameobject_loot_template VALUES
(19630, 0, -6152, 0, 1, 1, 0, 0, 0, 0);

-- Dreaming Glory:
DELETE FROM gameobject_loot_template WHERE entry=19629;
INSERT IGNORE INTO gameobject_loot_template VALUES
(19629, 0, -18112, 0, 1, 1, 0, 0, 0, 0);

-- Felweed:
DELETE FROM gameobject_loot_template WHERE entry=19628;
INSERT IGNORE INTO gameobject_loot_template VALUES
(19628, 0, -18111, 0, 1, 1, 0, 0, 0, 0);

-- Sungrass:
DELETE FROM gameobject_loot_template WHERE entry=17201;
INSERT IGNORE INTO gameobject_loot_template VALUES
(17201, 0, -6151, 0, 1, 1, 0, 0, 0, 0);

-- Golden Sansam:
DELETE FROM gameobject_loot_template WHERE entry=17202;
INSERT IGNORE INTO gameobject_loot_template VALUES
(17202, 0, -13945, 0, 1, 1, 0, 0, 0, 0);

-- Dreamfoil:
DELETE FROM gameobject_loot_template WHERE entry=17203;
INSERT IGNORE INTO gameobject_loot_template VALUES
(17203, 0, -13946, 0, 1, 1, 0, 0, 0, 0);

-- Mountain Silversage:
DELETE FROM gameobject_loot_template WHERE entry=17204;
INSERT IGNORE INTO gameobject_loot_template VALUES
(17204, 0, -13947, 0, 1, 1, 0, 0, 0, 0);

update areatrigger_involvedrelation set id='231' where quest='984';

DELETE FROM creature WHERE id=19595;

UPDATE `gameobject_loot_template` SET `ChanceOrRef` = '0', `QuestChanceOrGroup` = '100', `freeforall` = '1' WHERE `entry` =16926 AND `item` =19071;
DELETE FROM `creature_loot_template` WHERE `item` IN (19069, 19071);
DELETE FROM `creature` WHERE `creature`.`guid` = 12783;
DELETE FROM `creature_addon` WHERE `creature_addon`.`guid` = 12783;
-- Slaag template
UPDATE `creature_template` SET
`mindmg` = '2000',
`maxdmg` = '3000',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
WHERE `entry` = '22199';
UPDATE `creature_template` SET `minhealth` = '132000',
`maxhealth` = '140000', `armor` = '2800', `speed` = '1.50', `spell1` = '41981', `mingold` = '3000', `maxgold` = '4000', `ScriptName` = 'generic_creature' WHERE `entry` = '22199';

-- Zanza the Restless
UPDATE `creature_template` SET `faction_A` = '1574', `faction_H` = '1574', `flags` = `flags`|'2', `lootid` = '0', `MovementType` = '0' WHERE `entry` = '15042';
DELETE FROM `creature_loot_template` WHERE `entry` = '15042';

UPDATE `creature_template` SET `minhealth` = '3900', `maxhealth` = '3990' WHERE `entry` = '16488';
UPDATE `creature_template` SET `armor` = '1800', `faction_A` = '1374', `faction_H` = '1374' WHERE `entry` = '14326';
-- Bloodmaul Lookout
UPDATE `creature_template` SET `minhealth`= '6000', `maxhealth`= '6100', `faction_A`= '1781', `faction_H`= '1781' WHERE `entry`= '19956';
-- Fix for Betrayed (Horde)
DELETE FROM `creature_involvedrelation` WHERE `quest` = '3505';
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = '3505';
INSERT IGNORE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('151286', '3505');
-- Captain Kromcrush and friends
UPDATE `creature_template` SET `faction_A` = '1374', `faction_H` = '1374' WHERE `entry` IN ('14321', '14322', '14323', '14324', '14325', '14326', '13036', '11501');


-- forum ends

-- Sephiroth1983
-- Threat Bag should be BoP and Conjured item
UPDATE `item_template` SET `Flags` = '6', `bonding` = '1' WHERE `entry` = '20393';
-- Shadowfiend pet stats
UPDATE `creature_template` SET `minlevel` = '66', `faction_A` = '7', `faction_H` = '7', `dmgschool` = '5', `resistance1` = '350', `resistance2` = '500', `resistance3` = '500', `resistance4` = '500', `resistance5` = '500', `resistance6` = '500' WHERE `entry` = '19668';
UPDATE `creature_template` SET
`mindmg` = '100',
`maxdmg` = '121',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
WHERE `entry` = '19668';
-- Hallowed Wand - Bat should not be creature loot
DELETE FROM `creature_loot_template` WHERE `item` = '20410';
-- Lost fix of 335 by NoFantasy
DELETE FROM `creature_loot_template` WHERE `item` = '11040';
-- Warmaul Prison Key should be quest loot
UPDATE `quest_template` SET `ReqSourceId1` = '25604', `ReqSourceCount1` = '15', `ReqSourceRef1` = '1', `IncompleteEmote` = '18' WHERE `entry` = '9948';
-- Innkeeper Farley misc fixes, should not have loot imo
UPDATE `creature_template` SET `minhealth` = '1080', `maxhealth` = '1200', `armor` = '400', `baseattacktime` = '1500', `lootid` = '0' WHERE `entry` = '295';
DELETE FROM `creature_loot_template` WHERE `entry` = '295';
-- Glasshide Basilisk should not be on the way to reach a npc at Steamwheedle port
DELETE FROM `creature` WHERE `guid` = '35418';
-- Quartermaster Urgronn had wrong stats
UPDATE `creature_template` SET `minhealth` = '6000', `maxhealth` = '6000', `armor` = '2200' WHERE `entry` = '17585';
-- Carefully Folded Note is item which start quest
UPDATE `gameobject_loot_template` SET `ChanceOrRef` = '25' WHERE `item` = '4098';
-- Engineering quest should not be repeatable
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` = '3634'; 
-- Kinkle Goodsteel should repair, misc fixes
UPDATE `creature_template` SET `npcflag` = `npcflag`|'4096', `armor` = '560', `lootid` = '0' WHERE `entry` = '5411';
DELETE FROM `creature_loot_template` WHERE `entry` = '5411';
-- Soft-shelled Clam Meat should drop only if on quest and by one item only
DELETE FROM `item_loot_template` WHERE `item` = '15924';
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('15874', '15924', '0', '100', '1', '1', '0', '0', '0', '0');

-- Soft-shelled Clam should drop as indirect quest item
UPDATE `gameobject_loot_template` SET `ChanceOrRef`= '0', `QuestChanceOrGroup`= '100' WHERE `item`='15874';
-- Clam Bait quest
UPDATE `quest_template` SET `ReqSourceId1` = '15874', `ReqSourceCount1` = '10', `ReqSourceRef1` = '1' WHERE `entry` = '6142';
UPDATE `quest_template` SET `PrevQuestId` = '690' WHERE `entry` = '691';
-- Hazzali Parasite misc fixes
UPDATE `creature_template` SET `minhealth` = '1300', `maxhealth` = '1300', `lootid` = '0' WHERE `entry` = '7769';
DELETE FROM `creature_loot_template` WHERE `entry` = '7769';
-- The parasites should come out after killing a Hazzali Stinger or Swarmer
DELETE FROM `creature` WHERE `id` = '7769';
-- remove Fiendish Hound summoned mob
DELETE FROM `creature` WHERE `id` = '17540';
-- Fiendish Hound right data for normal mode
UPDATE `creature_template` SET `maxlevel` = '60', `minhealth` = '2000', `maxhealth` = '2200', `maxmana` = '2500', `armor` = '1200' WHERE `entry` = '17540';
-- Witch Doctor Zumrah is friendly at first, but when you move near to him he will turn hostile
UPDATE `creature_template` SET `armor` = '1800', `faction_A` = '35', `faction_H` = '35' WHERE `entry` = '7271';
-- Witch Doctor Zumrah totem Ward of Zumrah stats and passive spell to summon zombies
UPDATE `creature_template` SET `minhealth` = '2700', `speed` = '0', `spell1` = '11087', `ScriptName` = 'TotemAI' WHERE `entry` = '7785';
-- Skeleton of Zumrah same level of Zumrah, faction, etc
UPDATE `creature_template` SET `minlevel` = '46', `maxlevel` = '46', `maxhealth` = '810', `armor` = '1980', `faction_A` = '37', `faction_H` = '37', `lootid` = '0' WHERE `entry` = '7786';
DELETE FROM `creature_loot_template` WHERE `entry` = '7786';
-- Remove Magrami Spectre summoned creature
DELETE FROM `creature` WHERE `id` = '11560';
-- Seer Olum should not award golds, misc fixes
UPDATE `creature_template` SET `armor` = '2400', `attackpower` = '2000', `mingold` = '0', `maxgold` = '0' WHERE `entry` = '22820';
-- Withered Corpse should lie dead, etc
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701', `flags` = `flags`|'2', `civilian` = '1', `MovementType` = '0' WHERE `entry` = '20561';
DELETE FROM `creature_template_addon` WHERE (`entry`='20561');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('20561','0','16843008','0','4097','31261 0 31261 1');
-- The Flesh Lies quest fix
DELETE FROM `spell_script_target` WHERE `entry` = '35372';
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('35372', '1', '20561');
UPDATE `quest_template` SET `ReqSpellCast1` = '35372', `IncompleteEmote` = '6' WHERE `entry` = '10345';
-- remove Parisitic Fleshbeast and Parasitic Fleshling summoned creatures
DELETE FROM `creature` WHERE `id` IN ('20335', '21265');
-- Give to Parisitic Fleshbeast the right spell to summon Parasitic Fleshling and faction, misc
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `lootid` = '0', `spell1` = '36469', `ScriptName` = 'generic_creature' WHERE `entry` = '20335';
DELETE FROM `creature_loot_template` WHERE `entry` = '20335';
-- Tyralius quest fix
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '-184588' WHERE `entry` = '10422';
-- Scrapped Fel Reaver spell and misc
UPDATE `creature_template` SET `minhealth` = '19000', `maxhealth` = '19000', `armor` = '3200', `mindmg` = '191', `maxdmg` = '334', `attackpower` = '1839', `spell1` = '34620', `spell2` = '34618', `ScriptName` = 'generic_creature' WHERE `entry` = '19849';
UPDATE `creature` SET `curhealth` = '19000' WHERE `id` = '19849';
-- Negatron spells and misc
UPDATE `creature_template` SET `armor` = '1820', `spell1` = '34625', `spell2` = '33919', `ScriptName` = 'generic_creature' WHERE `entry` = '19851';
-- Apprentice Garion
UPDATE `creature_template` SET `minlevel` = '37', `maxlevel` = '38', `minhealth` = '1400', `maxhealth` = '1400', `minmana` = '1189', `maxmana` = '1200', `armor` = '360', `mindmg` = '10', `maxdmg` = '33', `attackpower` = '170' WHERE `entry` = '23601';
-- Forema Tionn
UPDATE `creature_template` SET `minhealth` = '1200', `maxhealth` = '1200', `armor` = '360', `mindmg` = '21', `maxdmg` = '44', `attackpower` = '226' WHERE `entry` = '24006';
-- Apprentice Morlann
UPDATE `creature_template` SET `minlevel` = '36', `maxlevel` = '37', `minhealth` = '1200', `maxhealth` = '1300', `minmana` = '1100', `maxmana` = '1200', `armor` = '360', `mindmg` = '21', `maxdmg` = '44', `attackpower` = '226' WHERE `entry` = '23600';
-- Deserter Lieutenant
UPDATE `creature_template` SET `minlevel` = '37', `maxlevel` = '37', `minhealth` = '1500', `maxhealth` = '1500', `armor` = '980', `mindmg` = '23', `maxdmg` = '48', `attackpower` = '247', `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23637';
-- Privateer Groy
UPDATE `creature_template` SET `armor` = '320', `lootid` = '0' WHERE `entry` = '2616';
-- Calia Hastings
UPDATE `creature_template` SET `minlevel` = '37', `maxlevel` = '38', `minhealth` = '750', `maxhealth` = '800', `armor` = '220', `mindmg` = '21', `maxdmg` = '44', `attackpower` = '226' WHERE `entry` = '23566';
-- Major Mills
UPDATE `creature_template` SET `minlevel` = '50', `maxlevel` = '50', `minhealth` = '1700', `maxhealth` = '1800', `armor` = '1600', `mindmg` = '32', `maxdmg` = '67', `attackpower` = '345' WHERE `entry` = '23905';
-- Mill Worker
UPDATE `creature_template` SET `minlevel` = '30', `maxlevel` = '32', `minhealth` = '950', `maxhealth` = '1000', `armor` = '230', `mindmg` = '16', `maxdmg` = '32', `attackpower` = '164' WHERE `entry` = '24005';
-- Lieutenant Aden
UPDATE `creature_template` SET `minlevel` = '52', `maxlevel` = '52', `minhealth` = '3000', `maxhealth` = '3000', `armor` = '1800', `mindmg` = '35', `maxdmg` = '73', `attackpower` = '374' WHERE `entry` = '23951';
-- Mill Courier
UPDATE `creature_template` SET `minlevel` = '30', `maxlevel` = '32', `minhealth` = '950', `maxhealth` = '1000', `armor` = '230', `mindmg` = '16', `maxdmg` = '32', `attackpower` = '164' WHERE `entry` = '24007';
-- Sergeant Amelyn
UPDATE `creature_template` SET `minlevel` = '54', `maxlevel` = '56', `minhealth` = '4600', `maxhealth` = '4900', `armor` = '1800', `mindmg` = '35', `maxdmg` = '73', `attackpower` = '347' WHERE `entry` = '23835';
-- Andello Porter
UPDATE `creature_template` SET `minlevel` = '38', `maxlevel` = '38', `minhealth` = '1600', `maxhealth` = '1600', `armor` = '600', `mindmg` = '21', `maxdmg` = '46', `attackpower` = '236' WHERE `entry` = '23942';
-- Privateer
UPDATE `creature_template` SET `armor` = '350', `mindmg` = '21', `maxdmg` = '46', `attackpower` = '236', `mingold` = '130', `maxgold` = '180' WHERE `entry` = '23620';
-- Theramore Deserter
UPDATE `creature_template` SET `armor` = '450' WHERE `entry` = '5057';
-- Gavis Greyshield
UPDATE `creature_template` SET `minlevel` = '37', `maxlevel` = '38', `minhealth` = '1000', `maxhealth` = '1100', `minmana` = '1100', `maxmana` = '1200', `armor` = '1200', `faction_A` = '1883', `faction_H` = '1883', `mindmg` = '27', `maxdmg` = '57', `attackpower` = '294', `baseattacktime` = '2000' WHERE `entry` = '23941';
-- Noxious Shredder
UPDATE `creature_template` SET `minhealth` = '1700', `maxhealth` = '1800', `armor` = '300', `mindmg` = '23', `maxdmg` = '48', `attackpower` = '247' WHERE `entry` = '4348';
-- Apothecary Cylla
UPDATE `creature_template` SET `armor` = '1100', `mindmg` = '27', `maxdmg` = '57', `attackpower` = '294' WHERE `entry` = '23881';
-- Grimtotem Breaker
UPDATE `creature_template` SET `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23592';
-- Grimtotem Destroyer
UPDATE `creature_template` SET `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23594';
-- Grimtotem Earthbinder
UPDATE `creature_template` SET `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23595';
-- Grimtotem Elder
UPDATE `creature_template` SET `minmana` = '1095', `maxmana` = '1140', `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23714';
-- Grimtotem Spirit Guide should no longer be tameable and are summoned by Grimtotem Spirit-Shifters so should have same level
UPDATE `creature_template` SET `minlevel` = '36', `maxlevel` = '37', `minhealth` = '480', `maxhealth` = '490', `armor` = '200', `faction_A` = '16', `faction_H` = '16', `baseattacktime` = '1800', `family` = '0', `type` = '6' WHERE `entry` = '24133';
-- Grimtotem Spirit-Shifter give spell to summon 2 Grimtotem Spirit Guide etc
UPDATE `creature_template` SET `spell1` = '43110', `mingold` = '150', `maxgold` = '200', `modelid_A2` = '0', `ScriptName` = 'generic_creature' WHERE `entry` = '23593';
-- Drywallow Daggermaw
UPDATE `creature_template` SET `minhealth` = '1700', `maxhealth` = '1900', `armor` = '600' WHERE `entry` = '4345';
-- Goreclaw the Ravenous was too slow for his size and had no damage
UPDATE `creature_template` SET `armor` = '600', `speed` = '1.60', `mindmg` = '27', `maxdmg` = '57', `attackpower` = '294', `MovementType` = '1' WHERE `entry` = '23873';
-- To the five minutes respawn comment, his spawntime is rather two minutes
UPDATE `creature` SET `spawntimesecs` = '160' WHERE `id` = '23873';
-- Moxie Steelgrille
UPDATE `creature_template` SET `minlevel` = '40', `maxlevel` = '41', `minhealth` = '1200', `maxhealth` = '1300', `armor` = '700', `mindmg` = '23', `maxdmg` = '48', `attackpower` = '247' WHERE `entry` = '23797';
-- Mordant Grimsby
UPDATE `creature_template` SET `minlevel` = '42', `maxlevel` = '42', `minhealth` = '1000', `maxhealth` = '1100', `minmana` = '1380', `maxmana` = '1400', `armor` = '450', `mindmg` = '24', `maxdmg` = '51', `attackpower` = '264' WHERE `entry` = '23843';
-- Risen Husk
UPDATE `creature_template` SET `minhealth` = '1400', `armor` = '1250', `mindmg` = '21', `maxdmg` = '44', `attackpower` = '226', `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23555';
-- Risen Spirit
UPDATE `creature_template` SET `mingold` = '150', `maxgold` = '200' WHERE `entry` = '23554';
-- Restless Apparition
UPDATE `creature_template` SET `minlevel` = '35', `maxlevel` = '36', `minhealth` = '1000', `maxhealth` = '1100', `minmana` = '1020', `maxmana` = '1090' WHERE `entry` = '23861';
-- Lieutenant Khand
UPDATE `creature_template` SET `minlevel` = '52', `maxlevel` = '52', `minhealth` = '3100', `maxhealth` = '3100', `armor` = '1200', `mindmg` = '32', `maxdmg` = '67', `attackpower` = '345' WHERE `entry` = '23950';
-- Cassa Crimsonwing
UPDATE `creature_template` SET `minlevel` = '40', `maxlevel` = '40', `minhealth` = '3700', `maxhealth` = '3800', `minmana` = '3800', `maxmana` = '3900', `armor` = '800', `mindmg` = '40', `maxdmg` = '70', `attackpower` = '247', `civilian` = '1' WHERE `entry` = '23704';
-- Restless Skeleton should have same faction of Nightbane etc
UPDATE `creature_template` SET `armor` = '1800', `faction_A` = '103', `faction_H` = '103', `baseattacktime` = '2000' WHERE `entry` = '17261';
-- Bonepicker stats
UPDATE `creature_template` SET `minlevel` = '49', `maxlevel` = '50', `minhealth` = '2700', `maxhealth` = '2800', `mindmg` = '31', `maxdmg` = '65', `attackpower` = '332', `lootid` = '5982', `skinloot` = '5982' WHERE `entry` = '5983';
-- Tooga model fix and misc
UPDATE `creature_template` SET `modelid_A` = '2902', `modelid_H` = '2902', `maxhealth` = '2400', `armor` = '1500', `flags` = `flags`|'2', `skinloot` = '0' WHERE `entry` = '5955';
-- Attumen should be spawned by script
DELETE FROM `creature` WHERE `id` = '15550';
-- Revenge is Tasty, Soup for the Soul, Super Hot Stew should require 275 cooking
UPDATE `quest_template` SET `RequiredSkillValue` = '275' WHERE `entry` IN ('11377', '11381', '11379');
-- Astral Flare misc
UPDATE `creature_template` SET `minhealth` = '12800', `maxhealth` = '13000', `armor` = '0', `mindmg` = '1', `maxdmg` = '2', `dmgschool` = '6', `attackpower` = '3', `civilian` = '0' WHERE `entry` = '17096';
-- The Curator T4 Token loot group
UPDATE `creature_loot_template` SET `ChanceOrRef` = '33.4', `QuestChanceOrGroup` = '-1' WHERE (`entry` = '15691') AND (`item` = '29756');
UPDATE `creature_loot_template` SET `ChanceOrRef` = '33.3', `QuestChanceOrGroup` = '-1' WHERE `entry` = '15691' AND `item` IN ('29757', '29758');
-- Prince Malchezaar T4 Token loot group
UPDATE `creature_loot_template` SET `ChanceOrRef` = '33.4', `QuestChanceOrGroup` = '-1' WHERE (`entry` = '15690') AND (`item` = '29760');
UPDATE `creature_loot_template` SET `ChanceOrRef` = '33.3', `QuestChanceOrGroup` = '-1' WHERE `entry` = '15690' AND `item` IN ('29759', '29761');
-- Troll Necklace Bounty
UPDATE `quest_template` SET `NextQuestId` = '0' WHERE `entry` = '2880';
UPDATE `quest_template` SET `SpecialFlags` = '0', `PrevQuestId` = '0' WHERE `entry` = '2881';
-- Remove reward of reputation for Wildhammer Clan
UPDATE `quest_template` SET `RewRepFaction1` = '0', `RewRepValue1` = '0' WHERE `RewRepFaction1` = '471';
-- Mana Tide totem model fix
UPDATE `creature_template` SET `modelid_A` = '19075', `modelid_H` = '4587' WHERE `entry` = '10467';
-- Searing Totem Rank V alliance model
UPDATE `creature_template` SET `modelid_A` = '19074' WHERE `entry` = '7400';
-- Book was under desk (almost invisible)
UPDATE `gameobject` SET `position_x` = '-3716.199951', `position_y` = '-800.895996', `position_z` = '26.622101', `orientation` = '2.653000' WHERE `guid` = '18535';
-- Deepmoss Matriarch was flying
UPDATE `creature` SET `position_x` = '1431.849731', `position_y` = '-437.484528', `position_z` = '20.415291', `spawn_position_x` = '1431.849731', `spawn_position_y` = '-437.484528', `spawn_position_z` = '20.415291' WHERE `guid` = '30012';
-- Mithril deposit was at mid-air
UPDATE `gameobject` SET `position_z` = '-13.683900' WHERE `guid` = '7208';
-- Lieutenant Farren Orinell was inside a chair, should stay beetween two
UPDATE `creature` SET `position_x` = '-847.4522209', `position_y` = '-579.894348', `position_z` = '12.192023', `spawn_position_x` = '-847.4522209', `spawn_position_y` = '-579.894348', `spawn_position_z` = '12.192023' WHERE `guid` = '14244';
-- Yuka Screwspigot
UPDATE `creature_template` SET `npcflag` = `npcflag`|'128', `lootid` = '0' WHERE `entry` = '9544';
DELETE FROM `creature_loot_template` WHERE `entry` = '9544';
-- Guardian of the Hawk should not drop 5 gold
UPDATE `creature_template` SET `mingold` = '0', `maxgold` = '0' WHERE `entry` = '22992';
-- Gruna should be Orgrimmar and no loot
UPDATE `creature_template` SET `armor` = '800', `faction_A` = '1074', `faction_H` = '1074', `lootid` = '0', civilian=1 WHERE `entry` = '3708';
-- Vahgruk faction and misc fix
UPDATE `creature_template` SET `minmana` = '0', `maxmana` = '0', `armor` = '1200', `faction_A` = '1074', `faction_H` = '1074', `lootid` = '0', civilian=1 WHERE `entry` = '13177';
DELETE FROM `creature_loot_template` WHERE `entry` IN ('3708', '13177');
-- Twilight Serpent damage
UPDATE `creature_template` SET `mindmg` = '198', `maxdmg` = '216', `attackpower` = '1451' WHERE `entry` = '23026';
-- Infinite Assassin was friendly
UPDATE `creature_template` SET `armor` = '4800', `faction_A` = '14', `faction_H` = '14' WHERE `entry` = '17835';
-- Ethereal Beacon is summoned mob
DELETE FROM `creature` WHERE `id` = '18431';
-- Ethereal Spellfilcher rep
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '30' WHERE `creature_id` = '16545';
-- sephiroth ends
-- ssc dmgs:
UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=1770,
`minhealth`=18000,
`maxhealth`=18000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21508; -- Coilfang Frenzy

UPDATE `creature_template` set
`mindmg`=3250,
`maxdmg`=4000,
`minhealth`=120000,
`maxhealth`=120000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21246; --  Serpentshrine Sporebat

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7777,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21339; --  Coilfang Hate-Screamer

UPDATE `creature_template` set
`mindmg`=4500,
`maxdmg`=8888,
`minhealth`=250000,
`maxhealth`=250000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21221; --  Coilfang Beast-Tamer

UPDATE `creature_template` set
`mindmg`=4500,
`maxdmg`=8450,
`minhealth`=600000,
`maxhealth`=600000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21251; --  Underbog Colossus

UPDATE `creature_template` set
`mindmg`=8000,
`maxdmg`=11000,
`minhealth`=3500000,
`maxhealth`=3500000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21216; --  Hydross the Unstable

UPDATE `creature_template` set
`mindmg`=5555,
`maxdmg`=7333,
`minhealth`=11000,
`maxhealth`=11000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21253; --  Tainted Water Elemental

UPDATE `creature_template` set
`mindmg`=5555,
`maxdmg`=7333,
`minhealth`=12000,
`maxhealth`=12000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21260; --  Purified Water Elemental

UPDATE `creature_template` set
`mindmg`=5000,
`maxdmg`=6100,
`minhealth`=51000,
`maxhealth`=51000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22036; --  Tainted Spawn of Hydross

UPDATE `creature_template` set
`mindmg`=5000,
`maxdmg`=6100,
`minhealth`=49000,
`maxhealth`=49000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22035; --  Pure Spawn of Hydross

UPDATE `creature_template` set
`mindmg`=11948,
`maxdmg`=16895,
`minhealth`=5311600,
`maxhealth`=5311600,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21217; --  The Lurker Below

UPDATE `creature_template` set
`mindmg`=6666,
`maxdmg`=10000,
`minhealth`=20000,
`maxhealth`=20000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21301; --  Coilfang Shatterer

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=6666,
`minhealth`=20000,
`maxhealth`=20000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21263; --  Greyheart Technician

UPDATE `creature_template` set
`mindmg`=6666,
`maxdmg`=8888,
`minhealth`=250000,
`maxhealth`=250000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21218; -- Vashj'ir Honor Guard

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=4444,
`minhealth`=145000,
`maxhealth`=145000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21220; --  Coilfang Priestess

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=6666,
`minhealth`=29000,
`maxhealth`=29000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21865; --  Coilfang Ambusher

UPDATE `creature_template` set
`mindmg`=6666,
`maxdmg`=8350,
`minhealth`=69000,
`maxhealth`=69000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21873; --  Coilfang Guardian

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7500,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21229; --  Greyheart Tidecaller

UPDATE `creature_template` set
`mindmg`=6666,
`maxdmg`=12111,
`minhealth`=5600000,
`maxhealth`=5600000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21213; --  Morogrim Tidewalker

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=4444,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21230; --  Greyheart Nether-Mage

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=5555,
`minhealth`=180000,
`maxhealth`=180000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21232; --  asd

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7777,
`minhealth`=180000,
`maxhealth`=180000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21298; --  Coilfang Serpentguard

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=4444,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21299; --  Coilfang Fathom-Witch

UPDATE `creature_template` set
`mindmg`=3333,
`maxdmg`=4444,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21224; --  Tidewalker Depth-Seer

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7777,
`minhealth`=190000,
`maxhealth`=190000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21227; --  Tidewalker Harpooner

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=6666,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21228; --  Tidewalker Hydromancer

UPDATE `creature_template` set
`mindmg`=3333,
`maxdmg`=5555,
`minhealth`=150000,
`maxhealth`=150000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21226; --  Tidewalker Shaman

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=5555,
`minhealth`=200000,
`maxhealth`=200000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21225; --  Tidewalker Warrior

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=4444,
`minhealth`=18000,
`maxhealth`=18000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21920; --  Tidewalker_Lurker

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7777,
`minhealth`=860000,
`maxhealth`=860000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21965; --  Fathom-Guard Tidalvess

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7777,
`minhealth`=860000,
`maxhealth`=860000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21966; --  Fathom-Guard Sharkkis

UPDATE `creature_template` set
`mindmg`=3333,
`maxdmg`=6666,
`minhealth`=860000,
`maxhealth`=860000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21964; --  Fathom-Guard Caribdis

UPDATE `creature_template` set
`mindmg`=4700,
`maxdmg`=11600,
`minhealth`=1700000,
`maxhealth`=1700000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21214; --  Fathom-Lord Karathress

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=8888,
`minhealth`=110000,
`maxhealth`=110000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21863; --  Serpentshrine Lurker

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=8500,
`minhealth`=190000,
`maxhealth`=190000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21231; --  Greyheart Shield-Bearer

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=4444,
`minhealth`=130000,
`maxhealth`=130000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21806; --  Greyheart Spellbinder

UPDATE `creature_template` set
`mindmg`=1555,
`maxdmg`=2444,
`minhealth`=11000,
`maxhealth`=11000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21857; --  Inner_Demon

UPDATE `creature_template` set
`mindmg`=5111,
`maxdmg`=7222,
`minhealth`=3750000,
`maxhealth`=3750000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21215; --  Leotheras the Blind

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=2200,
`minhealth`=35000,
`maxhealth`=35000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22352; --  Colossus Rager

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=3000,
`minhealth`=140000,
`maxhealth`=140000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22347; --  Colossus_Lurker

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=7500,
`minhealth`=170000,
`maxhealth`=170000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22055; --  Coilfang Elite

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=4444,
`minhealth`=170000,
`maxhealth`=170000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22056; --  Coilfang Strider

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=5750,
`minhealth`=170000,
`maxhealth`=170000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22120; --  170

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=5800,
`minhealth`=170000,
`maxhealth`=170000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22119; --  Fathom Lurker

UPDATE `creature_template` set
`mindmg`=2222,
`maxdmg`=4444,
`minhealth`=7700,
`maxhealth`=7700,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21958; --  Enchanted Elemental

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=3333,
`minhealth`=6900,
`maxhealth`=6900,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22140; --  Toxic Spore Bat

UPDATE `creature_template` set
`mindmg`=4444,
`maxdmg`=8888,
`minhealth`=25000,
`maxhealth`=25000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22238; --  Serpentshrine Tidecaller

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=3333,
`minhealth`=11000,
`maxhealth`=11000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=22379; --  22379

UPDATE `creature_template` set
`mindmg`=1111,
`maxdmg`=2222,
`minhealth`=23000,
`maxhealth`=35000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=17990; --  Underbog Mushroom

UPDATE `creature_template` set
`mindmg`=5755,
`maxdmg`=7377,
`minhealth`=4700000,
`maxhealth`=4700000,
`attackpower`=round((`maxdmg` + `mindmg`) / 4 * 7),
`mindmg`=round(`mindmg` - `attackpower` / 7),
`maxdmg`=round(`maxdmg` - `attackpower` / 7)
where `entry`=21212; --  21212
-- ssc dmgs ends


-- Item and npc_text UPDATE with correct values from WDB
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10436','1','<The Arcane Guardian gestures to a place across the Tier, towards the inn and nearby mailbox.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10438','1','<The Arcane Guardian stands motionless, waiting for you to elaborate on which Battlemasters you mean.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10513','1','<The Arcane Guardian gestures towards a place below the Tier, a stairwell northeast of the city\'s center.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10514','1','<The Arcane Guardian gestures to a place below the Tier, a stairwell southeast of the city\'s center.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10431','1','<The Arcane Guardian gestures towards the easternmost portion of the lower city.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10437','1','<The Arcane Guardian gestures across the Tier, towards the inn and the stablemaster outside it.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10504','1','<The Arcane Guardian silently waits for you to further elaborate.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10516','1','<The Arcane Guardian gestures to the northwest portion of the lower city, where Shattrath\'s arakkoa dwell.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10702','1','<The construct gestures to the eastern portion of the Tier.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11234','1','My brother Krixx thinks he has it bad working in Orgrimmar. Nothing compares to the stench of this place. At least the boss had the decency to give me hazard pay!$B$BWhat? Do you want to see where the zeppelin is? Good thing I\'ve got my zeppelin tracker right here!','My brother Krixx thinks he has it bad working in Orgrimmar. Nothing compares to the stench of this place. At least the boss had the decency to give me hazard pay!$B$BWhat? Do you want to see where the zeppelin is? Good thing I\'ve got my zeppelin tracker right here!','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11175','1','The zeppelin should have just departed from Undercity.','The zeppelin should have just departed from Undercity.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11181','1','The zeppelin should just have departed from Grom\'gol.','The zeppelin should just have departed from Grom\'gol.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('4977','1','','The Shrine of Remulos is a sacred place for us in the Cenarion Circle here in Moonglade... so please conduct yourself in a manner befitting a visitor.$B$BA visitor who doesn\'t want my scimitar buried in them, that is.','0','0','1','0','25','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10393','1','Jack Trapper can be found cooking in the lower city\'s open market, in the southeast.','Jack Trapper can be found cooking in the lower city\'s open market, in the southeast.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11179','1','The zeppelin should just have arrived at Undercity.','The zeppelin should just have arrived at Undercity.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10521','1','<The Arcane Guardian gestures towards Aldor Rise.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10522','1','The mana loom is located down in the lower city\'s open marketplace.','The mana loom is located down in the lower city\'s open marketplace.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10523','1','<The Arcane Guardian gestures towards the lower city\'s open marketplace.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10520','1','<The Arcane Guardian gestures towards the northeastern section of the lower city.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10519','1','<The Arcane Guardian gestures towards the Seer\'s Library.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10518','1','<The Arcane Guardian gestures down towards the lower city\'s open market, in the southeast.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10517','1','<The Arcane Guardian gestures down towards the lower city, where a great forge may be found.>','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11170','1','The zeppelin should have just departed from Orgrimmar...','The zeppelin should have just departed from Orgrimmar...','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10389','1','The Alliance battlemasters can usually be found on a stairwell northeast of the city\'s center.','The Alliance battlemasters can usually be found on a stairwell northeast of the city\'s center.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10398','1','Seymour, the principal skinner in Shattrath and grand master of the trade, may be found in the lower city\'s open marketplace.','Seymour, the principal skinner in Shattrath and grand master of the trade, may be found in the lower city\'s open marketplace.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10392','1','Lorokeem, grand master alchemist and Skettis outcast, lives among the other arakkoa in the northwest portion of the lower city.','Lorokeem, grand master alchemist and Skettis outcast, lives among the other arakkoa in the northwest portion of the lower city.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10399','1','The grand master leatherworker Darmari may be found in the lower city\'s open marketplace.','The grand master leatherworker Darmari may be found in the lower city\'s open marketplace.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into npc_text (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10396','1','Mildred Fletcher may be found within the infirmary in the northeastern section of the lower city.','Mildred Fletcher may be found within the infirmary in the northeastern section of the lower city.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into item_template (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ExtendedCost`, `RequiredArenaRank`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('33186','9','4','-1','Plans: Adamantite Weapon Chain','15274','2','64','1','3800','950','0','-1','-1','63','0','164','335','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','42689','0','-1','-1','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
UPDATE npc_text set em0_4='0' where id='9615';
UPDATE npc_text set em0_4='500' where id='9128';
UPDATE npc_text set text0_1='Spinebreaker Post is a great place to be stationed!  The Bleeding Hollow aberrations are so close you can smell their foul blood!  What better place to gather vengeance from a clan that has forsaken its brethren and made a pact with demons?' where id='10610';
UPDATE npc_text set text0_1='As a representative of the Lower City, I\'m here to put forward our case that Auchindoun must be cleared of its Shadow Council infestation.  That is, if we\'re to have any hope for a future and stave off the possibility of a cataclysm greater than the creation of the Bone Wastes!$B$BAll of our peoples have suffered too much already.  I am here to see to it that the suffering stops!' where id='9615';
UPDATE npc_text set text0_1='Oh, pay no mind to Buddy.  He won\'t hurt you, he just likes to scratch now and then.$B$BHe\'s just a big, loveable kitty.$B$BAren\'t you Buddy?  Yes, you are, you cute, little thing.  You\'re mommy\'s little baby, that\'s what you are!' where id='9085';
UPDATE npc_text set text0_1='All things in nature exists in an interconnected web; an ecology.  If we\'re careful not to disturb it, and simply observe, we may be fortunate to piece together the complex relationship between the diverse organisms around us.$B$BOnce we have that understanding, we can take the appropriate actions to ensure the wellbeing of all creatures.  Interfere without that knowledge, and we\'ll surely cause destruction.$B$BI am here to observe the complex interactions between the sporelings and the bog lords.' where id='9128';
UPDATE npc_text set text0_1='Oh that\'s simple! You use it like anything else you might activate. Don\'t worry, I\'ll take care of lighting the fuse. Once you\'re up in the air you\'ll notice that you\'ll seem to \"float,\" but that won\'t last forever. What you\'re aiming for is a target on the lake way over yonder. Make sure that you begin your descent by detaching your \"wings\" at the right time to land in the water, or, well, I don\'t sell life insurance.' where id='7790';
UPDATE npc_text set text0_1='' where id='10432';
UPDATE npc_text set text0_1='' where id='10435';
UPDATE npc_text set text0_1='' where id='10701';
UPDATE npc_text set text0_1='Speak to Pephredo at the Darkbriar Lodge in the Valley of Spirits, up above and to the west of the Valley of Strength.' where id='2560';
UPDATE npc_text set text0_1='Master Pyreanor can be found among Thrall\'s advisors in his fortress, Grommash Hold, in the Valley of Wisdom.' where id='10843';
UPDATE npc_text set text0_1='Certainly, $N. You only need to tell me what reputation you would like to know about.$B' where id='8498';
UPDATE npc_text set text0_1='Certainly, $N.$B$BAdventurers that the Dawn views as honored must submit a combined total of 40 insignias to access superior items. To access items of even greater power, they would be required to submit a total of 150 insignias.$B$BI must admit, the price is high even for those honored amongst the Dawn.$B' where id='8499';
UPDATE npc_text set text0_1='Certainly, $N.$B$BAdventurers that the Dawn views as friendly must submit a combined total of 60 insignias to access superior items. To access items of even greater power, they would be required to submit a total of 220 insignias.$B$BI must admit, the price is quite high for adventurers not favored by the Dawn.$B' where id='8503';
UPDATE npc_text set text0_1='Certainly, $N.$B$BAdventurers that the Dawn views as exalted must submit a combined total of 12 insignias to access superior items. To access items of even greater power, they would be required to submit a total of 54 insignias.$B$BThose exalted in the eyes of the Dawn receive the greatest discounts.$B' where id='8502';
UPDATE npc_text set text0_1='Certainly, $N.$B$BAdventurers that the Dawn views as revered must submit a combined total of 14 insignias to access superior items. To access items of even greater power, they would be required to submit a total of 90 insignias.$B$BThose that are revered by the Dawn will find the cost of superior items quite reasonable! The cost for the more powerful items is still high.$B' where id='8500';
UPDATE npc_text set text0_1='Don\'t get too close, $N. I\'m liable to fumble and bash your brains open with the face of my hammer.' where id='7245';
UPDATE npc_text set text0_1='Ah am very surprised that one wit such a careless nature has gotten dis far...$B$BYah, you may have another charm, but Mau\'ari is very displeased wit your actions!$B$BGo, now. ' where id='3425';
UPDATE npc_text set text0_0='There exist in Outland demonic presences much more powerful than anything we\'d ever seen in the old world.$B$BGreat power shall come to those who do not shy away from it, but learn to harness and master its strength.' where id='8675';
UPDATE npc_text set text0_0='What is the Brotherhood of the Light? Well... We are all members of the Argent Dawn at the core - members of the Argent Dawn that aren\'t held in check by morals, guilt and useless human emotion. Consider us Scarlet Crusade minus the stupidity, lack of leadership, and blind zealotry.$B$BDon\'t let the Scarlet Commander tell you otherwise.$B$BAnd don\'t let Tyrosus know I said that... It would be a terrible shame if I had to brutally maim him should a brawl break out.$B' where id='8353';
UPDATE npc_text set text0_0='A wondrous Winter Veil to you... uh... little $G boy : girl;.  Good children get special, um, discounts at any local Smokywood Pastures vendor.  Yum.' where id='6250';
UPDATE npc_text set text0_0='<The Arcane Guardian gestures to a place southeast of the city\'s center.>' where id='10432';
UPDATE npc_text set text0_0='<The Arcane Guardian gestures to a place east of the city\'s center.>' where id='10435';
UPDATE npc_text set text0_0='<The Arcane Guardian gestures to the northwest portion of the lower city, where Shattrath\'s arakkoa dwell.>' where id='10701';
UPDATE npc_text set text0_0='Strength and honor, $c. We need eager soldiers like you in Alterac Valley; the territory of the Frostwolves must be defended! Will you return to Azeroth and lend your aid?' where id='10570';
UPDATE npc_text set text0_0='You will find the battlemasters inside the Hall of the Brave in the Valley of Honor.' where id='10221';
UPDATE npc_text set text0_0='Speak to Pephredo at the Darkbriar Lodge in the Valley of Spirits, up above and to the west of the Valley of Strength.' where id='2560';
UPDATE npc_text set text0_0='Master Pyreanor can be found among Thrall\'s advisors in his fortress, Grommash Hold, in the Valley of Wisdom.' where id='10843';
UPDATE npc_text set text0_0='Our caravans go out \'bout twice a day, but I\'ll be damned if the Scourge haven\'t gone out of their way to stop Didier and his mules from getting shipments to the front lines. Craziest thing I\'ve ever seen. If only we had the heroic adventurin\' types to help protect the shipments...' where id='8452';
UPDATE npc_text set lang0='1' where id='10570';
UPDATE npc_text set lang0='1' where id='10221';
UPDATE npc_text set em0_3='5' where id='9615';
UPDATE npc_text set em0_3='1' where id='9085';
UPDATE npc_text set em0_3='1' where id='9128';
UPDATE npc_text set em0_3='1' where id='7789';
UPDATE npc_text set em0_3='1' where id='7790';
UPDATE npc_text set em0_3='1' where id='8132';
UPDATE npc_text set em0_3='15' where id='6935';
UPDATE npc_text set em0_3='1' where id='7689';
UPDATE npc_text set em0_3='1' where id='7010';
UPDATE npc_text set em0_3='1' where id='10572';
UPDATE npc_text set em0_3='1' where id='8452';
UPDATE npc_text set em0_3='5' where id='3673';
UPDATE npc_text set em0_3='1' where id='6154';
UPDATE npc_text set em0_3='1' where id='6949';
UPDATE npc_text set em0_3='1' where id='6950';
UPDATE npc_text set em0_3='1' where id='6951';
UPDATE npc_text set em0_3='1' where id='6952';
UPDATE npc_text set em0_3='1' where id='6953';
UPDATE npc_text set em0_2='500' where id='9615';
UPDATE npc_text set em0_2='500' where id='9128';
UPDATE npc_text set em0_2='0' where id='7689';
UPDATE npc_text set em0_2='0' where id='10572';
UPDATE npc_text set em0_1='1' where id='9615';
UPDATE npc_text set em0_1='1' where id='9618';
UPDATE npc_text set em0_1='1' where id='9085';
UPDATE npc_text set em0_1='1' where id='9128';
UPDATE npc_text set em0_1='1' where id='9106';
UPDATE npc_text set em0_1='66' where id='8132';
UPDATE npc_text set em0_1='1' where id='6935';
UPDATE npc_text set em0_1='1' where id='5793';
UPDATE npc_text set em0_1='1' where id='9714';
UPDATE npc_text set em0_1='1' where id='8452';
UPDATE npc_text set em0_1='6' where id='8143';
UPDATE npc_text set em0_1='25' where id='7247';
UPDATE npc_text set em0_1='1' where id='7245';
UPDATE npc_text set em0_1='1' where id='7243';
UPDATE npc_text set em0_1='2' where id='4841';
UPDATE npc_text set em0_1='25' where id='3673';
UPDATE npc_text set em0_1='1' where id='6153';
UPDATE npc_text set em0_1='274' where id='6154';
UPDATE npc_text set em0_1='273' where id='6949';
UPDATE npc_text set em0_0='0' where id='9615';
UPDATE npc_text set em0_0='0' where id='9618';
UPDATE npc_text set em0_0='0' where id='9106';
UPDATE npc_text set em0_0='0' where id='7789';
UPDATE npc_text set em0_0='0' where id='7790';
UPDATE npc_text set em0_0='0' where id='8132';
UPDATE npc_text set em0_0='0' where id='6935';
UPDATE npc_text set em0_0='0' where id='7689';
UPDATE npc_text set em0_0='0' where id='7010';
UPDATE npc_text set em0_0='0' where id='5793';
UPDATE npc_text set em0_0='0' where id='9714';
UPDATE npc_text set em0_0='0' where id='10572';
UPDATE npc_text set em0_0='0' where id='8143';
UPDATE npc_text set em0_0='0' where id='7247';
UPDATE npc_text set em0_0='0' where id='7245';
UPDATE npc_text set em0_0='0' where id='7243';
UPDATE npc_text set em0_0='0' where id='4841';
UPDATE npc_text set em0_0='0' where id='3673';
UPDATE npc_text set em0_0='0' where id='6153';
UPDATE npc_text set em0_0='0' where id='6154';
UPDATE npc_text set em0_0='0' where id='6949';
UPDATE npc_text set em0_0='0' where id='6950';
UPDATE npc_text set em0_0='0' where id='6951';
UPDATE npc_text set em0_0='0' where id='6952';
UPDATE npc_text set em0_0='0' where id='6953';
UPDATE gameobject_template set name='Ogre Firepit' where entry='182574';
UPDATE gameobject_template set name='Ogre Firepit' where entry='182573';
UPDATE gameobject_template set data4='1628' where entry='180684';
UPDATE gameobject_template set data4='1628' where entry='180683';
UPDATE gameobject_template set data4='1628' where entry='180682';
UPDATE gameobject_template set data4='1628' where entry='180712';
UPDATE gameobject_template set data4='1628' where entry='180685';
UPDATE gameobject_template set data4='1628' where entry='180663';
UPDATE gameobject_template set data4='1628' where entry='180901';
UPDATE gameobject_template set data4='1628' where entry='180900';
UPDATE gameobject_template set data4='1628' where entry='180750';
UPDATE gameobject_template set data1='52' where entry='178827';
UPDATE item_template set subclass='5' where `entry`='1113';
UPDATE item_template set subclass='8' where `entry`='2091';
UPDATE item_template set subclass='5' where `entry`='2288';
UPDATE item_template set subclass='1' where `entry`='3087';
UPDATE item_template set subclass='11' where `entry`='3164';
UPDATE item_template set subclass='5' where `entry`='4595';
UPDATE item_template set subclass='8' where `entry`='5043';
UPDATE item_template set subclass='8' where `entry`='5044';
UPDATE item_template set subclass='5' where `entry`='5066';
UPDATE item_template set subclass='5' where `entry`='5349';
UPDATE item_template set subclass='5' where `entry`='5350';
UPDATE item_template set subclass='5' where `entry`='5478';
UPDATE item_template set subclass='5' where `entry`='5479';
UPDATE item_template set subclass='8' where `entry`='5510';
UPDATE item_template set subclass='8' where `entry`='6317';
UPDATE item_template set subclass='4' where `entry`='6351';
UPDATE item_template set subclass='4' where `entry`='6352';
UPDATE item_template set subclass='4' where `entry`='6357';
UPDATE item_template set subclass='8' where `entry`='6458';
UPDATE item_template set subclass='4' where `entry`='6643';
UPDATE item_template set subclass='4' where `entry`='6645';
UPDATE item_template set subclass='4' where `entry`='6647';
UPDATE item_template set subclass='8' where `entry`='6811';
UPDATE item_template set subclass='4' where `entry`='8366';
UPDATE item_template set subclass='2' where `entry`='8486';
UPDATE item_template set subclass='2' where `entry`='8487';
UPDATE item_template set subclass='2' where `entry`='8488';
UPDATE item_template set subclass='2' where `entry`='8489';
UPDATE item_template set subclass='2' where `entry`='8491';
UPDATE item_template set subclass='2' where `entry`='8494';
UPDATE item_template set subclass='2' where `entry`='8497';
UPDATE item_template set subclass='8' where `entry`='8959';
UPDATE item_template set subclass='8' where `entry`='9317';
UPDATE item_template set subclass='5' where `entry`='9361';
UPDATE item_template set subclass='11' where `entry`='9719';
UPDATE item_template set subclass='2' where `entry`='10361';
UPDATE item_template set subclass='2' where `entry`='10394';
UPDATE item_template set subclass='2' where `entry`='10822';
UPDATE item_template set subclass='2' where `entry`='11023';
UPDATE item_template set subclass='5' where `entry`='11415';
UPDATE item_template set subclass='5' where `entry`='11444';
UPDATE item_template set subclass='5' where `entry`='11584';
UPDATE item_template set subclass='8' where `entry`='11950';
UPDATE item_template set subclass='5' where `entry`='11951';
UPDATE item_template set subclass='8' where `entry`='11952';
UPDATE item_template set subclass='5' where `entry`='12224';
UPDATE item_template set subclass='8' where `entry`='12586';
UPDATE item_template set subclass='6' where `entry`='12645';
UPDATE item_template set subclass='8' where `entry`='13367';
UPDATE item_template set subclass='5' where `entry`='13546';
UPDATE item_template set subclass='4' where `entry`='13874';
UPDATE item_template set subclass='4' where `entry`='13881';
UPDATE item_template set subclass='1' where `entry`='15794';
UPDATE item_template set subclass='2' where `entry`='15996';
UPDATE item_template set subclass='5' where `entry`='16971';
UPDATE item_template set subclass='8' where `entry`='17302';
UPDATE item_template set subclass='8' where `entry`='17305';
UPDATE item_template set subclass='8' where `entry`='17308';
UPDATE item_template set subclass='8' where `entry`='17747';
UPDATE item_template set subclass='5' where `entry`='18287';
UPDATE item_template set subclass='5' where `entry`='18288';
UPDATE item_template set subclass='8' where `entry`='19007';
UPDATE item_template set subclass='8' where `entry`='19008';
UPDATE item_template set subclass='8' where `entry`='19009';
UPDATE item_template set subclass='8' where `entry`='19010';
UPDATE item_template set subclass='8' where `entry`='19011';
UPDATE item_template set subclass='8' where `entry`='19012';
UPDATE item_template set subclass='8' where `entry`='19183';
UPDATE item_template set subclass='7' where `entry`='20065';
UPDATE item_template set subclass='7' where `entry`='20067';
UPDATE item_template set subclass='5' where `entry`='20074';
UPDATE item_template set subclass='5' where `entry`='20709';
UPDATE item_template set subclass='12' where `entry`='20747';
UPDATE item_template set subclass='2' where `entry`='20769';
UPDATE item_template set subclass='8' where `entry`='21038';
UPDATE item_template set subclass='3' where `entry`='21267';
UPDATE item_template set subclass='3' where `entry`='21536';
UPDATE item_template set subclass='5' where `entry`='21721';
UPDATE item_template set subclass='3' where `entry`='21747';
UPDATE item_template set subclass='3' where `entry`='21816';
UPDATE item_template set subclass='3' where `entry`='21817';
UPDATE item_template set subclass='3' where `entry`='21818';
UPDATE item_template set subclass='3' where `entry`='21819';
UPDATE item_template set subclass='3' where `entry`='21820';
UPDATE item_template set subclass='3' where `entry`='21821';
UPDATE item_template set subclass='3' where `entry`='21822';
UPDATE item_template set subclass='3' where `entry`='21823';
UPDATE item_template set subclass='3' where `entry`='21829';
UPDATE item_template set subclass='3' where `entry`='21830';
UPDATE item_template set subclass='3' where `entry`='21831';
UPDATE item_template set subclass='3' where `entry`='21833';
UPDATE item_template set subclass='3' where `entry`='21960';
UPDATE item_template set subclass='3' where `entry`='21975';
UPDATE item_template set subclass='3' where `entry`='21981';
UPDATE item_template set subclass='3' where `entry`='22117';
UPDATE item_template set subclass='3' where `entry`='22119';
UPDATE item_template set subclass='3' where `entry`='22120';
UPDATE item_template set subclass='3' where `entry`='22121';
UPDATE item_template set subclass='3' where `entry`='22122';
UPDATE item_template set subclass='3' where `entry`='22123';
UPDATE item_template set subclass='3' where `entry`='22131';
UPDATE item_template set subclass='3' where `entry`='22132';
UPDATE item_template set subclass='3' where `entry`='22133';
UPDATE item_template set subclass='3' where `entry`='22134';
UPDATE item_template set subclass='3' where `entry`='22135';
UPDATE item_template set subclass='3' where `entry`='22136';
UPDATE item_template set subclass='3' where `entry`='22140';
UPDATE item_template set subclass='3' where `entry`='22141';
UPDATE item_template set subclass='3' where `entry`='22142';
UPDATE item_template set subclass='3' where `entry`='22143';
UPDATE item_template set subclass='3' where `entry`='22144';
UPDATE item_template set subclass='3' where `entry`='22145';
UPDATE item_template set subclass='3' where `entry`='22173';
UPDATE item_template set subclass='3' where `entry`='22174';
UPDATE item_template set subclass='3' where `entry`='22175';
UPDATE item_template set subclass='3' where `entry`='22176';
UPDATE item_template set subclass='3' where `entry`='22177';
UPDATE item_template set subclass='3' where `entry`='22262';
UPDATE item_template set subclass='3' where `entry`='22263';
UPDATE item_template set subclass='3' where `entry`='22283';
UPDATE item_template set subclass='3' where `entry`='22284';
UPDATE item_template set subclass='3' where `entry`='22285';
UPDATE item_template set subclass='3' where `entry`='22286';
UPDATE item_template set subclass='3' where `entry`='22287';
UPDATE item_template set subclass='3' where `entry`='22288';
UPDATE item_template set subclass='3' where `entry`='22289';
UPDATE item_template set subclass='3' where `entry`='22290';
UPDATE item_template set subclass='3' where `entry`='22291';
UPDATE item_template set subclass='3' where `entry`='22292';
UPDATE item_template set subclass='3' where `entry`='22293';
UPDATE item_template set subclass='3' where `entry`='22294';
UPDATE item_template set subclass='3' where `entry`='22295';
UPDATE item_template set subclass='3' where `entry`='22296';
UPDATE item_template set subclass='3' where `entry`='22297';
UPDATE item_template set subclass='3' where `entry`='22298';
UPDATE item_template set subclass='3' where `entry`='22299';
UPDATE item_template set subclass='3' where `entry`='22300';
UPDATE item_template set subclass='5' where `entry`='22324';
UPDATE item_template set subclass='11' where `entry`='22682';
UPDATE item_template set subclass='2' where `entry`='22830';
UPDATE item_template set subclass='1' where `entry`='22849';
UPDATE item_template set subclass='5' where `entry`='23160';
UPDATE item_template set subclass='4' where `entry`='23233';
UPDATE item_template set subclass='4' where `entry`='23235';
UPDATE item_template set subclass='8' where `entry`='23381';
UPDATE item_template set subclass='8' where `entry`='23386';
UPDATE item_template set subclass='5' where `entry`='23495';
UPDATE item_template set subclass='8' where `entry`='23576';
UPDATE item_template set subclass='8' where `entry`='23822';
UPDATE item_template set subclass='8' where `entry`='23823';
UPDATE item_template set subclass='2' where `entry`='23871';
UPDATE item_template set subclass='8' where `entry`='25679';
UPDATE item_template set subclass='5' where `entry`='27635';
UPDATE item_template set subclass='8' where `entry`='27669';
UPDATE item_template set subclass='5' where `entry`='29394';
UPDATE item_template set subclass='5' where `entry`='29401';
UPDATE item_template set subclass='5' where `entry`='29412';
UPDATE item_template set subclass='5' where `entry`='29454';
UPDATE item_template set subclass='2' where `entry`='29960';
UPDATE item_template set subclass='5' where `entry`='30357';
UPDATE item_template set subclass='5' where `entry`='30359';
UPDATE item_template set subclass='5' where `entry`='32667';
UPDATE item_template set subclass='5' where `entry`='32668';
UPDATE item_template set subclass='1' where `entry`='32840';
UPDATE item_template set subclass='1' where `entry`='32845';
UPDATE item_template set subclass='1' where `entry`='32847';
UPDATE item_template set subclass='8' where `entry`='32850';
UPDATE item_template set `class`='12' where `entry`='5052';
UPDATE item_template set `class`='7' where `entry`='6317';
UPDATE item_template set `class`='15' where `entry`='6643';
UPDATE item_template set `class`='15' where `entry`='6645';
UPDATE item_template set `class`='15' where `entry`='6647';
UPDATE item_template set `class`='12' where `entry`='7135';
UPDATE item_template set `class`='15' where `entry`='8366';
UPDATE item_template set `class`='7' where `entry`='8959';
UPDATE item_template set `class`='13' where `entry`='11197';
UPDATE item_template set `class`='0' where `entry`='12645';
UPDATE item_template set `class`='15' where `entry`='13881';
UPDATE item_template set `class`='15' where `entry`='15996';
UPDATE item_template set `class`='12' where `entry`='18258';
UPDATE item_template set `class`='12' where `entry`='19263';
UPDATE item_template set `class`='12' where `entry`='19960';
UPDATE item_template set `class`='12' where `entry`='20405';
UPDATE item_template set `class`='12' where `entry`='20416';
UPDATE item_template set `class`='12' where `entry`='20418';
UPDATE item_template set `class`='12' where `entry`='20419';
UPDATE item_template set `class`='12' where `entry`='20420';
UPDATE item_template set `class`='12' where `entry`='20432';
UPDATE item_template set `class`='12' where `entry`='20433';
UPDATE item_template set `class`='12' where `entry`='20435';
UPDATE item_template set `class`='12' where `entry`='20436';
UPDATE item_template set `class`='12' where `entry`='20447';
UPDATE item_template set `class`='12' where `entry`='20448';
UPDATE item_template set `class`='12' where `entry`='20449';
UPDATE item_template set `class`='12' where `entry`='20450';
UPDATE item_template set `class`='12' where `entry`='20451';
UPDATE item_template set `class`='12' where `entry`='20518';
UPDATE item_template set `class`='12' where `entry`='20526';
UPDATE item_template set `class`='12' where `entry`='20527';
UPDATE item_template set `class`='12' where `entry`='20528';
UPDATE item_template set `class`='12' where `entry`='20531';
UPDATE item_template set `class`='12' where `entry`='20532';
UPDATE item_template set `class`='12' where `entry`='20533';
UPDATE item_template set `class`='12' where `entry`='20535';
UPDATE item_template set `class`='12' where `entry`='20540';
UPDATE item_template set `class`='12' where `entry`='20541';
UPDATE item_template set `class`='12' where `entry`='20542';
UPDATE item_template set `class`='12' where `entry`='20543';
UPDATE item_template set `class`='12' where `entry`='20544';
UPDATE item_template set `class`='12' where `entry`='20545';
UPDATE item_template set `class`='12' where `entry`='20552';
UPDATE item_template set `class`='12' where `entry`='20676';
UPDATE item_template set `class`='12' where `entry`='20677';
UPDATE item_template set `class`='12' where `entry`='20678';
UPDATE item_template set `class`='12' where `entry`='20679';
UPDATE item_template set `class`='15' where `entry`='21267';
UPDATE item_template set `class`='15' where `entry`='21536';
UPDATE item_template set `class`='15' where `entry`='21747';
UPDATE item_template set `class`='15' where `entry`='21829';
UPDATE item_template set `class`='15' where `entry`='21833';
UPDATE item_template set `class`='12' where `entry`='21939';
UPDATE item_template set `class`='15' where `entry`='21960';
UPDATE item_template set `class`='15' where `entry`='21975';
UPDATE item_template set `class`='15' where `entry`='21981';
UPDATE item_template set `class`='15' where `entry`='22117';
UPDATE item_template set `class`='15' where `entry`='22119';
UPDATE item_template set `class`='15' where `entry`='22120';
UPDATE item_template set `class`='15' where `entry`='22121';
UPDATE item_template set `class`='15' where `entry`='22122';
UPDATE item_template set `class`='15' where `entry`='22123';
UPDATE item_template set `class`='15' where `entry`='22140';
UPDATE item_template set `class`='15' where `entry`='22141';
UPDATE item_template set `class`='15' where `entry`='22142';
UPDATE item_template set `class`='15' where `entry`='22143';
UPDATE item_template set `class`='15' where `entry`='22144';
UPDATE item_template set `class`='15' where `entry`='22145';
UPDATE item_template set `class`='15' where `entry`='22173';
UPDATE item_template set `class`='15' where `entry`='22174';
UPDATE item_template set `class`='15' where `entry`='22175';
UPDATE item_template set `class`='15' where `entry`='22176';
UPDATE item_template set `class`='15' where `entry`='22177';
UPDATE item_template set `class`='15' where `entry`='22283';
UPDATE item_template set `class`='15' where `entry`='22284';
UPDATE item_template set `class`='15' where `entry`='22285';
UPDATE item_template set `class`='15' where `entry`='22286';
UPDATE item_template set `class`='15' where `entry`='22287';
UPDATE item_template set `class`='15' where `entry`='22288';
UPDATE item_template set `class`='15' where `entry`='22289';
UPDATE item_template set `class`='15' where `entry`='22290';
UPDATE item_template set `class`='15' where `entry`='22291';
UPDATE item_template set `class`='15' where `entry`='22292';
UPDATE item_template set `class`='15' where `entry`='22293';
UPDATE item_template set `class`='15' where `entry`='22294';
UPDATE item_template set `class`='15' where `entry`='22295';
UPDATE item_template set `class`='15' where `entry`='22296';
UPDATE item_template set `class`='15' where `entry`='22297';
UPDATE item_template set `class`='15' where `entry`='22298';
UPDATE item_template set `class`='15' where `entry`='22299';
UPDATE item_template set `class`='15' where `entry`='22300';
UPDATE item_template set `class`='12' where `entry`='22601';
UPDATE item_template set `class`='12' where `entry`='22602';
UPDATE item_template set `class`='12' where `entry`='22603';
UPDATE item_template set `class`='12' where `entry`='22605';
UPDATE item_template set `class`='12' where `entry`='22607';
UPDATE item_template set `class`='12' where `entry`='22608';
UPDATE item_template set `class`='12' where `entry`='22609';
UPDATE item_template set `class`='12' where `entry`='22610';
UPDATE item_template set `class`='12' where `entry`='22611';
UPDATE item_template set `class`='12' where `entry`='22612';
UPDATE item_template set `class`='12' where `entry`='22613';
UPDATE item_template set `class`='12' where `entry`='22615';
UPDATE item_template set `class`='12' where `entry`='22616';
UPDATE item_template set `class`='12' where `entry`='22617';
UPDATE item_template set `class`='12' where `entry`='22618';
UPDATE item_template set `class`='12' where `entry`='22620';
UPDATE item_template set `class`='12' where `entry`='22621';
UPDATE item_template set `class`='12' where `entry`='22623';
UPDATE item_template set `class`='0' where `entry`='23576';
UPDATE item_template set `class`='15' where `entry`='24188';
UPDATE item_template set `class`='15' where `entry`='24190';
UPDATE item_template set `class`='15' where `entry`='24234';
UPDATE item_template set `class`='12' where `entry`='24401';
UPDATE item_template set `class`='15' where `entry`='25703';
UPDATE item_template set `class`='15' where `entry`='29110';
UPDATE item_template set `class`='12' where `entry`='30539';
INSERT IGNORE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ExtendedCost`, `RequiredArenaRank`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('33925','9','5','-1','Recipe: Delicious Chocolate Cake','6270','3','64','1','20000','5000','0','-1','-1','5','0','185','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','43780','0','-1','-1','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
UPDATE item_template set buyprice='49693' where entry='4507';
UPDATE item_template set sellprice='9938' where entry='4507';
UPDATE item_template set flags='196608' where entry='33226';
UPDATE item_template set flags='65600' where entry='22200';
UPDATE item_template set flags='65536' where entry='22261';
UPDATE item_template set flags='65600' where entry='22218';
UPDATE item_template set flags='65536' where entry='22237';
UPDATE item_template set flags='65536' where entry='22236';
UPDATE item_template set flags='65536' where entry='22239';
UPDATE item_template set flags='65536' where entry='22238';
UPDATE item_template set flags='65536' where entry='23211';
UPDATE item_template set flags='65536' where entry='23326';
UPDATE item_template set flags='65536' where entry='23327';
UPDATE item_template set flags='65536' where entry='23435';
UPDATE item_template set flags='65600' where entry='23247';
UPDATE item_template set displayid='48212' where entry='33332';
UPDATE item_template set displayid='48219' where entry='33453';
-- data for RepObject
UPDATE quest_template set RepObjectiveValue='3000' where entry='1036';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1367';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1368';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1369';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1370';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1371';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1373';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1374';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1375';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1380';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1381';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1382';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1384';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1385';
UPDATE quest_template set RepObjectiveValue='3000' where entry='1386';
UPDATE quest_template set RepObjectiveValue='3000' where entry='4621';
UPDATE quest_template set RepObjectiveValue='21000' where entry='5504';
UPDATE quest_template set RepObjectiveValue='21000' where entry='5507';
UPDATE quest_template set RepObjectiveValue='21000' where entry='5513';
UPDATE quest_template set RepObjectiveValue='42000' where entry='5517';
UPDATE quest_template set RepObjectiveValue='42000' where entry='5521';
UPDATE quest_template set RepObjectiveValue='42000' where entry='5524';
UPDATE quest_template set RepObjectiveValue='2100' where entry='5530';
UPDATE quest_template set RepObjectiveValue='900' where entry='5532';
UPDATE quest_template set RepObjectiveValue='9000' where entry='6823';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8053';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8054';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8055';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8056';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8057';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8058';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8059';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8060';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8061';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8062';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8063';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8064';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8065';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8066';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8067';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8068';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8069';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8070';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8071';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8072';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8073';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8074';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8075';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8076';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8077';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8078';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8079';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8196';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8243';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8244';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8245';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8246';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8260';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8261';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8263';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8264';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8265';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8481';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8484';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8485';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8548';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8556';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8557';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8558';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8560';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8561';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8562';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8572';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8573';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8574';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8592';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8593';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8603';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8622';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8623';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8624';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8627';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8628';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8629';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8631';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8632';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8633';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8638';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8639';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8640';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8656';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8657';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8658';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8661';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8662';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8663';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8666';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8667';
UPDATE quest_template set RepObjectiveValue='3000' where entry='8668';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8689';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8690';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8691';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8692';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8693';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8694';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8695';
UPDATE quest_template set RepObjectiveValue='21000' where entry='8696';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8697';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8698';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8699';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8700';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8701';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8702';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8703';
UPDATE quest_template set RepObjectiveValue='9000' where entry='8704';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8705';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8706';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8707';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8708';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8709';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8710';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8711';
UPDATE quest_template set RepObjectiveValue='42000' where entry='8712';
UPDATE quest_template set RepObjectiveValue='9000' where entry='9121';
UPDATE quest_template set RepObjectiveValue='21000' where entry='9122';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9123';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9236';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9237';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9240';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9243';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9246';
UPDATE quest_template set RepObjectiveValue='9000' where entry='9248';
UPDATE quest_template set RepObjectiveValue='42000' where entry='9378';
UPDATE quest_template set RepObjectiveValue='3000' where entry='9563';
UPDATE quest_template set RepObjectiveValue='9000' where entry='9613';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10459';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10464';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10465';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10466';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10467';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10468';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10469';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10470';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10471';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10472';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10473';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10474';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10475';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10558';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10559';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10560';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10561';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10725';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10726';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10727';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10728';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10733';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10734';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10735';
UPDATE quest_template set RepObjectiveValue='9000' where entry='10736';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10738';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10739';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10740';
UPDATE quest_template set RepObjectiveValue='21000' where entry='10741';
UPDATE quest_template set RepObjectiveValue='42000' where entry='10746';

UPDATE quest_template set RepObjectiveFaction='87' where entry='1036';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1367';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1368';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1369';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1370';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1371';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1373';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1374';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1375';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1380';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1381';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1382';
UPDATE quest_template set RepObjectiveFaction='92' where entry='1384';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1385';
UPDATE quest_template set RepObjectiveFaction='93' where entry='1386';
UPDATE quest_template set RepObjectiveFaction='87' where entry='4621';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5504';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5507';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5513';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5517';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5521';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5524';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5530';
UPDATE quest_template set RepObjectiveFaction='529' where entry='5532';
UPDATE quest_template set RepObjectiveFaction='749' where entry='6823';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8053';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8054';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8055';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8056';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8057';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8058';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8059';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8060';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8061';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8062';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8063';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8064';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8065';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8066';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8067';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8068';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8069';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8070';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8071';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8072';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8073';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8074';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8075';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8076';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8077';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8078';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8079';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8196';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8243';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8244';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8245';
UPDATE quest_template set RepObjectiveFaction='270' where entry='8246';
UPDATE quest_template set RepObjectiveFaction='509' where entry='8260';
UPDATE quest_template set RepObjectiveFaction='509' where entry='8261';
UPDATE quest_template set RepObjectiveFaction='510' where entry='8263';
UPDATE quest_template set RepObjectiveFaction='510' where entry='8264';
UPDATE quest_template set RepObjectiveFaction='510' where entry='8265';
UPDATE quest_template set RepObjectiveFaction='576' where entry='8481';
UPDATE quest_template set RepObjectiveFaction='576' where entry='8484';
UPDATE quest_template set RepObjectiveFaction='576' where entry='8485';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8548';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8556';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8557';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8558';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8560';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8561';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8562';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8572';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8573';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8574';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8592';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8593';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8603';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8622';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8623';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8624';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8627';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8628';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8629';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8631';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8632';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8633';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8638';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8639';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8640';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8656';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8657';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8658';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8661';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8662';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8663';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8666';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8667';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8668';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8689';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8690';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8691';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8692';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8693';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8694';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8695';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8696';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8697';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8698';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8699';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8700';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8701';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8702';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8703';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8704';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8705';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8706';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8707';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8708';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8709';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8710';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8711';
UPDATE quest_template set RepObjectiveFaction='609' where entry='8712';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9121';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9122';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9123';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9236';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9237';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9240';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9243';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9246';
UPDATE quest_template set RepObjectiveFaction='609' where entry='9248';
UPDATE quest_template set RepObjectiveFaction='529' where entry='9378';
UPDATE quest_template set RepObjectiveFaction='946' where entry='9563';
UPDATE quest_template set RepObjectiveFaction='967' where entry='9613';
UPDATE quest_template set RepObjectiveFaction='942' where entry='10459';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10464';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10465';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10466';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10467';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10468';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10469';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10470';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10471';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10472';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10473';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10474';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10475';
UPDATE quest_template set RepObjectiveFaction='946' where entry='10558';
UPDATE quest_template set RepObjectiveFaction='947' where entry='10559';
UPDATE quest_template set RepObjectiveFaction='935' where entry='10560';
UPDATE quest_template set RepObjectiveFaction='989' where entry='10561';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10725';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10726';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10727';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10728';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10733';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10734';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10735';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10736';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10738';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10739';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10740';
UPDATE quest_template set RepObjectiveFaction='967' where entry='10741';
UPDATE quest_template set RepObjectiveFaction='990' where entry='10746';

UPDATE quest_template set RepObjectiveValue='0' where entry='8470';
UPDATE quest_template set RepObjectiveValue='0' where entry='8471';
UPDATE quest_template set RepObjectiveValue='0' where entry='8544';
UPDATE quest_template set RepObjectiveValue='0' where entry='8559';
UPDATE quest_template set RepObjectiveValue='0' where entry='8594';
UPDATE quest_template set RepObjectiveValue='0' where entry='8596';
UPDATE quest_template set RepObjectiveValue='0' where entry='8602';
UPDATE quest_template set RepObjectiveValue='0' where entry='8621';
UPDATE quest_template set RepObjectiveValue='0' where entry='8625';
UPDATE quest_template set RepObjectiveValue='0' where entry='8626';
UPDATE quest_template set RepObjectiveValue='0' where entry='8630';
UPDATE quest_template set RepObjectiveValue='0' where entry='8634';
UPDATE quest_template set RepObjectiveValue='0' where entry='8637';
UPDATE quest_template set RepObjectiveValue='0' where entry='8641';
UPDATE quest_template set RepObjectiveValue='0' where entry='8655';
UPDATE quest_template set RepObjectiveValue='0' where entry='8659';
UPDATE quest_template set RepObjectiveValue='0' where entry='8660';
UPDATE quest_template set RepObjectiveValue='0' where entry='8664';
UPDATE quest_template set RepObjectiveValue='0' where entry='8665';
UPDATE quest_template set RepObjectiveValue='0' where entry='8669';
UPDATE quest_template set RepObjectiveValue='0' where entry='9871';
UPDATE quest_template set RepObjectiveValue='0' where entry='9872';

UPDATE quest_template set RepObjectiveFaction='576' where entry='8470';
UPDATE quest_template set RepObjectiveFaction='576' where entry='8471';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8544';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8559';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8594';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8596';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8602';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8621';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8625';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8626';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8630';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8634';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8637';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8641';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8655';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8659';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8660';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8664';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8665';
UPDATE quest_template set RepObjectiveFaction='910' where entry='8669';
UPDATE quest_template set RepObjectiveFaction='978' where entry='9871';
UPDATE quest_template set RepObjectiveFaction='941' where entry='9872';

-- update quest_template set requiredminrepvalue=0, requiredminrepfaction=0 where requiredminrepvalue=repobjectivevalue and requiredminrepfaction=RepObjectivefaction and RepObjectivefaction>0 or entry=6823;
-- This one is wrong
-- update quest_template set requiredminrepvalue=0, requiredminrepfaction=0 where requiredminrepfaction=RepObjectivefaction and RepObjectivefaction>0 or entry=6823;
update quest_template set requiredminrepvalue=0 where requiredminrepfaction=0 and requiredminrepvalue<>0;
-- nf
update `quest_template` set `StartScript` = 4265 where `entry` = 4265;

-- gnome/goblin engy skill req
update `quest_template` set `RequiredSkillValue` = 200 where `entry` in (3630, 3632, 3634, 3635, 3637, 3526, 3629, 3633, 4181, 3638, 3639, 3640, 3641, 3642, 3643);

-- GNOME
-- I
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 3640, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3630;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 3640, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3632;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 3640, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3634;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 3642, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3635;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 3642, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3637;
-- II
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 3638, `NextQuestInChain` = 3641 where `entry` = 3640;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 3638, `NextQuestInChain` = 3643 where `entry` = 3642;
-- III
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 3640, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3641;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 0, `PrevQuestId` = 3642, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3643;

-- GOBLI.N
-- I
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 3638, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3526;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 3638, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3629;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 3638, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 3633;
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 3638, `ExclusiveGroup` = 3526, `NextQuestInChain` = 0 where `entry` = 4181;
-- II
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 3638, `NextQuestInChain` = 3639 where `entry` = 3638;
-- III
update `quest_template` set `MinLevel` = 30, `RequiredRaces` = 0, `PrevQuestId` = 3638, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3639;

-- Pristine/Perfect Yeti Hide
update `quest_template` set `SpecialFlags` = `SpecialFlags`|1 where `entry` in (7735, 7738);
-- A Threat in Ferala.s
update `quest_template` set `RequiredRaces` = 690 where `entry` = 2981;

-- ferala.s
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 2867, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 2869 where `entry` = 3130;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 4127, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 4130 where `entry` = 4129;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 4129, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 4131 where `entry` = 4130;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 4130, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 4135 where `entry` = 4131;
update `quest_template` set `MinLevel` = 44, `RequiredRaces` = 1101, `PrevQuestId` = 2844, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2845;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2821;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 2821, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 7733;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 7735;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2939;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 2940, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 2944 where `entry` = 2941;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 2944, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2943;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 2943, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 2942 where `entry` = 2879;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 2879, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2942;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2969;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 2970, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2972;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 2972, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3842 where `entry` = 3841;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 3841, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3842;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 3842, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 4297 where `entry` = 3843;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 3843, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 4298 where `entry` = 4297;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 1101, `PrevQuestId` = 4297, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 4298;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2982;
update `quest_template` set `MinLevel` = 46, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 3444, `ExclusiveGroup` = 0, `NextQuestInChain` = 3444 where `entry` = 3445;
update `quest_template` set `MinLevel` = 46, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 3444, `ExclusiveGroup` = 0, `NextQuestInChain` = 3444 where `entry` = 3380;
update `quest_template` set `MinLevel` = 46, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3444;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 690, `PrevQuestId` = 2862, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 2902 where `entry` = 2863;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 690, `PrevQuestId` = 2863, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 2903 where `entry` = 2902;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 690, `PrevQuestId` = 2902, `NextQuestId` = 7732, `ExclusiveGroup` = -2903, `NextQuestInChain` = 0 where `entry` = 2903;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 690, `PrevQuestId` = 2903, `NextQuestId` = 7732, `ExclusiveGroup` = -2903, `NextQuestInChain` = 0 where `entry` = 7730;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 690, `PrevQuestId` = 2903, `NextQuestId` = 7732, `ExclusiveGroup` = -2903, `NextQuestInChain` = 0 where `entry` = 7731;
update `quest_template` set `MinLevel` = 38, `RequiredRaces` = 690, `PrevQuestId` = 2974, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2976;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 3121, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3122;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 3122, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3124 where `entry` = 3123;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 3123, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3125 where `entry` = 3124;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 3124, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3126 where `entry` = 3125;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 3125, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3127 where `entry` = 3126;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 3126, `NextQuestId` = 3129, `ExclusiveGroup` = -3129, `NextQuestInChain` = 0 where `entry` = 3127;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3129;
update `quest_template` set `MinLevel` = 38, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 2980 where `entry` = 2975;
update `quest_template` set `MinLevel` = 38, `RequiredRaces` = 690, `PrevQuestId` = 2975, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2980;
update `quest_template` set `MinLevel` = 45, `RequiredRaces` = 690, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3062;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 690, `PrevQuestId` = 2822, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 7734;
update `quest_template` set `MinLevel` = 45, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 7003;
update `quest_template` set `MinLevel` = 45, `RequiredRaces` = 0, `PrevQuestId` = 7726, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 7726;
update `quest_template` set `MinLevel` = 25, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3567;

-- Searing Gorge
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 0, `PrevQuestId` = 3441, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3443 where `entry` = 3442;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 0, `PrevQuestId` = 3452, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3454 where `entry` = 3453;
update `quest_template` set `MinLevel` = 40, `RequiredRaces` = 0, `PrevQuestId` = 3454, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3463 where `entry` = 3462;
update `quest_template` set `MinLevel` = 43, `RequiredRaces` = 0, `PrevQuestId` = 4451, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 4450 where `entry` = 4449;
update `quest_template` set `MinLevel` = 41, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3368 where `entry` = 3367;
update `quest_template` set `MinLevel` = 41, `RequiredRaces` = 1101, `PrevQuestId` = 3367, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3371 where `entry` = 3368;
update `quest_template` set `MinLevel` = 41, `RequiredRaces` = 1101, `PrevQuestId` = 3371, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3372;
update `quest_template` set `MinLevel` = 45, `RequiredRaces` = 1101, `PrevQuestId` = 3372, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3566;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 3378 where `entry` = 3377;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 1101, `PrevQuestId` = 3377, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 3378;

-- tanaris + Scepter of the Shifting Sands quest chai.n
update `quest_template` set `MinLevel` = 38, `RequiredRaces` = 0, `PrevQuestId` = 992, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 82;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 0, `PrevQuestId` = 10, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 113 where `entry` = 110;
update `quest_template` set `MinLevel` = 50, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 4496;
update `quest_template` set `MinLevel` = 39, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2741;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 0, `PrevQuestId` = 2741, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8893;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 0, `PrevQuestId` = 2741, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2747;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 0, `PrevQuestId` = 2741, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2748;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 0, `PrevQuestId` = 2741, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2749;
update `quest_template` set `MinLevel` = 42, `RequiredRaces` = 0, `PrevQuestId` = 2741, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 2750;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8286;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8286, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8301 where `entry` = 8288;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8288, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8301;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8301, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8302;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8301, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8305 where `entry` = 8303;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8303, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8519 where `entry` = 8305;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8305, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8519;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8519, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8555;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8555, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8734 where `entry` = 8733;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8733, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8735 where `entry` = 8734;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8734, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8735;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8735, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8741 where `entry` = 8736;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8736, `NextQuestId` = 8742, `ExclusiveGroup` = -8729, `NextQuestInChain` = 0 where `entry` = 8741;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8555, `NextQuestId` = 8742, `ExclusiveGroup` = -8729, `NextQuestInChain` = 0 where `entry` = 8730;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8555, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8575;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8575, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8576;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8576, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8585 where `entry` = 8584;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8584, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8586 where `entry` = 8585;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8585, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8587 where `entry` = 8586;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8586, `NextQuestId` = 8728, `ExclusiveGroup` = -8578, `NextQuestInChain` = 0 where `entry` = 8587;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8576, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8578 where `entry` = 8577;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8577, `NextQuestId` = 8728, `ExclusiveGroup` = -8578, `NextQuestInChain` = 0 where `entry` = 8578;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8576, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8598 where `entry` = 8597;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8597, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8606 where `entry` = 8598;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8598, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8620 where `entry` = 8606;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8606, `NextQuestId` = 8728, `ExclusiveGroup` = -8578, `NextQuestInChain` = 0 where `entry` = 8620;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = -8597, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8599;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 8729 where `entry` = 8728;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8728, `NextQuestId` = 8742, `ExclusiveGroup` = -8729, `NextQuestInChain` = 0 where `entry` = 8729;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8742;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8742, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8743;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8742, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8745;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8747;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8747, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8748;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8748, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8749;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8749, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8750;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8750, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8751;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8751, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8764;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8752;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8752, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8753;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8753, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8754;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8754, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8755;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8755, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8756;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8756, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8766;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8757;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8757, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8758;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8758, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8759;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8759, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8760;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8760, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8761;
update `quest_template` set `MinLevel` = 60, `RequiredRaces` = 0, `PrevQuestId` = 8761, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestInChain` = 0 where `entry` = 8765;

update `quest_template` set `SpecialFlags` = `SpecialFlags`|1 where `entry` in (8893, 2747, 2748, 2749, 2750, 9268);
update `quest_template` set `SpecialFlags` = `SpecialFlags` & ~1 where `entry` = 2741;
update `quest_template` set `RewRepFaction2` = 87, `RewRepValue2` = -500 where `entry` = 9268;

update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 500 where `entry` in (8301, 8302, 8736, 8730, 8585, 8586, 8587, 8729, 8742, 8743, 8745);
update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 250 where `entry` in (8286, 8735, 8741, 8728);
update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 200 where `entry` in (8288, 8303, 8519);
update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 150 where `entry` in (8620);
update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 50 where `entry` in (8305);
update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 25 where `entry` in (8733, 8606);
update `quest_template` set `RewRepFaction1` = 910, `RewRepValue1` = 10 where `entry` in (8555, 8734, 8575, 8577, 8578, 8597, 8599, 8598);

-- misc
update `quest_template` set `MinLevel` = 52 where `entry` in (4741, 4721);
update `quest_template` set `MinLevel` = 40 where `entry` in (3528);

-- spell target
-- spell target
-- spell target

-- Gameobjects
-- Gameobjects
-- Gameobjects

-- Egg-O-Matic clearely not alliance
update `gameobject_template` set `faction` = 474 where `entry` = 142071;

-- loot
-- loot
-- loot

-- Pristine/Perfect Yeti Hide
update `creature_loot_template` set `ChanceOrRef` = 25, `QuestChanceOrGroup` = 0, `lootcondition` = 6, `condition_value1` = 469, `condition_value2` = 0 where `item` = 18969;
update `creature_loot_template` set `ChanceOrRef` = 25, `QuestChanceOrGroup` = 0, `lootcondition` = 6, `condition_value1` = 67, `condition_value2` = 0 where `item` = 18972;
-- Black Dragonflight Molt
update `item_loot_template` set `ChanceOrRef` = 100, `QuestChanceOrGroup` = 0 where `item` = 18972 and `entry` = 10569;
update `creature_loot_template` set `ChanceOrRef` = 100, `QuestChanceOrGroup` = 0 where `item` = 18972 and `entry` = 9461;
-- Grimesilt Outhouse Key
update `creature_loot_template` set `ChanceOrRef` = 3, `QuestChanceOrGroup` = 0 where `item` = 11818;
-- Incendosaur Scale
update `creature_loot_template` set `ChanceOrRef` = 100 where `item` = 18944;
-- Egg Crate
update `item_loot_template` set `ChanceOrRef` = 5, `QuestChanceOrGroup` = -1 where `item` = 8643 and `entry` = 8647;
update `item_loot_template` set `ChanceOrRef` = 20, `QuestChanceOrGroup` = -1 where `item` = 8644 and `entry` = 8647;
update `item_loot_template` set `ChanceOrRef` = 50, `QuestChanceOrGroup` = -1 where `item` = 8645 and `entry` = 8647;
update `item_loot_template` set `ChanceOrRef` = 25, `QuestChanceOrGroup` = -1 where `item` = 8646 and `entry` = 8647;
-- Hippogryph Egg
update `gameobject_loot_template` set `ChanceOrRef` = 100, `QuestChanceOrGroup` = 0 where `item` = 8564;
-- Ship Schedule
delete from `item_loot_template` where `entry` in (9539, 16884) and `item` = 9250;

-- Patch of Tainted Ski.n
update `creature_loot_template` set `ChanceOrRef` = 35, `QuestChanceOrGroup` = 0, `lootcondition` = 2, `condition_value1` = 11511, `condition_value2` = 1 where `item` = 11512;
update `skinning_loot_template` set `ChanceOrRef` = 50, `QuestChanceOrGroup` = 0, `lootcondition` = 2, `condition_value1` = 11511, `condition_value2` = 1 where `item` = 11512;
-- Tainted Vitriol
delete from `creature_loot_template` where `item` = 11513;
delete from `npc_vendor` where `item` = 11513;
update `gameobject_loot_template` set `ChanceOrRef` = 50, `QuestChanceOrGroup` = 0, `lootcondition` = 2, `condition_value1` = 11511, `condition_value2` = 1 where `item` = 11513;
-- Fel Creep
update `gameobject_loot_template` set `ChanceOrRef` = 50, `QuestChanceOrGroup` = 0, `lootcondition` = 2, `condition_value1` = 11511, `condition_value2` = 1 where `item` = 11514;
-- Corrupted Soul Shard
update `creature_loot_template` set `ChanceOrRef` = 35, `QuestChanceOrGroup` = 0, `lootcondition` = 2, `condition_value1` = 11511, `condition_value2` = 1 where `item` = 11515;

-- item
-- item
-- item

-- Flawed Power Stone
update `item_template` set `Duration` = 1800 where `entry` = 4986;

-- quest relations
-- quest relations
-- quest relations

delete from `creature_questrelation` where `quest` in (3526, 3629, 3633, 4181, 3634, 3635, 3637, 8742, 8736, 8741, 8745, 8747, 8748, 8749, 8750, 8751, 8764, 8752, 8753, 8754, 8755, 8756, 8766, 8757, 8758, 8759, 8760, 8761, 8765);
delete from `creature_involvedrelation` where `quest` in (3526, 3629, 3633, 4181, 3634, 3635, 3637, 8742, 8736, 8741, 8745, 8747, 8748, 8749, 8750, 8751, 8764, 8752, 8753, 8754, 8755, 8756, 8766, 8757, 8758, 8759, 8760, 8761, 8765);
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) values
(4586, 3526),
(5174, 3629),
(3494, 3633),
(5518, 4181),
(3494, 3634),
(4586, 3635),
(3494, 3637),
(15192, 8742),
(11832, 8736),
(11832, 8741),
(15693, 8745),
(15192, 8747),
(15192, 8748),
(15192, 8749),
(15192, 8750),
(15192, 8751),
(15192, 8764),
(15192, 8752),
(15192, 8753),
(15192, 8754),
(15192, 8755),
(15192, 8756),
(15192, 8766),
(15192, 8757),
(15192, 8758),
(15192, 8759),
(15192, 8760),
(15192, 8761),
(15192, 8765);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) values
(8126, 3526),
(8126, 3629),
(8126, 3633),
(8126, 4181),
(7944, 3634),
(7406, 3635),
(7406, 3637),
(15192, 8742),
(11832, 8736),
(15192, 8741),
(15693, 8745),
(15192, 8747),
(15192, 8748),
(15192, 8749),
(15192, 8750),
(15192, 8751),
(15192, 8764),
(15192, 8752),
(15192, 8753),
(15192, 8754),
(15192, 8755),
(15192, 8756),
(15192, 8766),
(15192, 8757),
(15192, 8758),
(15192, 8759),
(15192, 8760),
(15192, 8761),
(15192, 8765);
delete from `gameobject_questrelation` where `quest` in (2781, 8893);
delete from `gameobject_involvedrelation` where `quest` in (8893);
INSERT IGNORE INTO `gameobject_questrelation` (`id`, `quest`) values
(142071, 8893),
(150075, 2781);
INSERT IGNORE INTO `gameobject_involvedrelation` (`id`, `quest`) values
(142071, 8893);

-- creature
-- creature
-- creature

-- reverting flag that was removed in 335
update `creature_template` set `flags` = `flags`|33554432 where `entry` in (18110, 18142, 18143, 18144, 16592, 17378, 17407, 17998, 17999, 18000, 18002, 18162, 18818, 19009, 19866, 19867, 19868, 21182, 21236, 21237, 22395, 22401, 22402, 22403);

-- Steward of Time NOT a regular flight master
update `creature_template` set `npcflag` = `npcflag` & ~8192 where `entry` = 20142;
-- enable gossip for some
update `creature_template` set `npcflag`=`npcflag`|1 where `entry` in (1745, 20142, 23413);
-- Jonathan the Revelator
update `creature_template` set `npcflag` = `npcflag`|2 where `entry` = 15693;

-- scripts
-- scripts
-- scripts

DELETE FROM `quest_start_scripts` WHERE `id` = 4265;
INSERT IGNORE INTO `quest_start_scripts` (id, delay, command, datalong, datalong2, datatext, x, y, z, o) VALUES
(4265, 5, 10, 9546, 25000, '', '-5314.81', '430.89', '11.79', '3.46'),
(4265, 30, 7, 4265, 0, '', 0, 0, 0, 0);


update `quest_template` set `RequestItemsText` = 'I can smell fresh recruits much like I can an excellent blasting powder - from a mile away. Have you come seeking to learn about the mastery of the explosion?' where `entry` in (3526, 3629, 3633, 4181);
update `quest_template` set `OfferRewardText` = 'Well $N, you were wise to seek my tutelage! Any schlep can become an expert at the basics of engineering - the gnomes and their irradiated home of Gnomeregan are proof of that. It takes a strong mind and a steady hand (emphasis on STEADY) though to master the discipline of Goblin Engineering.$B$BKeep your ears perked $N, and you might learn something.' where `entry` in (3526, 3629, 3633, 4181);
update `quest_template` set `RequestItemsText` = 'Yes, yes, what needs of yours might I address today? Clearly, I have the time to do such since all I do is stand here while our beloved city lies in a cloud of irradiated death.' where `entry` in (3630, 3632, 3634);
update `quest_template` set `OfferRewardText` = 'Ah, a young engineer interested in pursuing the one, true discipline of engineering! Well forgive my melodrama, friend. While our situation remains dire, it still is always a good day to see another engineer respond to the clarion call of true engineering!' where `entry` in (3630, 3632, 3634);
update `quest_template` set `RequestItemsText` = 'Hello there! If you\'ve come about a homing robot that may have smashed through a wall of your domicile, then I will refer you to my barrister in advance. Otherwise, what can I do for you today?' where `entry` in (3635, 3637);
update `quest_template` set `OfferRewardText` = 'You\'ve come to learn about gnome engineering, eh? Well, you\'ve come to the right gnome. While the ruling faction of Gnomeregan may use politics to ostracize those they view as an intellectual threat, they know that knowledge is something they cannot control.$B$BThey and I both know that when I left Gnomeregan, they lost one of their greatest gnome engineers alive today. If you\'re a capable student, I\'ll teach you what I know.' where `entry` in (3635, 3637);
update `quest_template` set `Details` = '' where `entry` in (7737, 7736, 8241, 8242);
update `quest_template` set `Objectives` = '' where `entry` in (7737, 7736, 8241, 8242);
update `quest_template` set `RequestItemsText` = 'Let\'s not waste more of my precious time with jibber jabber, $R. It\'s time to focus on replenishing our dwindling fiery flux supply.$B$BWhat I\'m gonna need from you is the following:$B$B*Incendosaur scales.$B$B*Kingsblood.$B$B*Coal.$B$BI\'ll take all that you can offer!$B$BAnd you\'ll do it fast if you wanna get in good with the Brotherhood.' where `entry` = 7736;
update `quest_template` set `RequestItemsText` = 'Let\'s not waste more of my precious time with jibber jabber, $R. It\'s time to focus on replenishing our dwindling fiery flux supply.$B$BWhat I\'m gonna need from you is the following:$B$B*Incendosaur scales.$B$B*Iron bars.$B$B*Coal.$B$BI\'ll take all that you can offer!$B$BAnd you\'ll do it fast if you wanna get in good with the Brotherhood.' where `entry` = 8241;
update `quest_template` set `RequestItemsText` = 'Let\'s not waste more of my precious time with jibber jabber, $R. It\'s time to focus on replenishing our dwindling fiery flux supply.$B$BWhat I\'m gonna need from you is the following:$B$B*Incendosaur scales.$B$B*Heavy Leather.$B$B*Coal.$B$BI\'ll take all that you can offer!$B$BAnd you\'ll do it fast if you wanna get in good with the Brotherhood.' where `entry` = 8242;
update `quest_template` set `Objectives` = ' ' where `entry` = 2741;
update `quest_template` set `RequestItemsText` = 'The Super Egg-O-Matic is the latest of Curgle Cranklehop\'s inventions. It is quite an impressive piece of machinery.$B$BThe Super Egg-O-Matic sputters wildly as you approach the control panel.' where `entry` = 8893;
update `quest_template` set `OfferRewardText` = 'You place the hippogryph egg into the machine. A series of beeps follows along with some strange mechanical sounds.$B$BIt appears that the Eggometer has weighed, measured, and packaged your egg. Now that\'s speedy service!' where `entry` = 8893;
update `quest_template` set `Details` = '' where `entry` = 9268;
update `quest_template` set `RequestItemsText` = 'You seek to befriend the goblins of Tanaris once again, $N? We\'re in need of materials for sails and guns to fight off our old enemies, the Bloodsail Buccaneers. Bring me mageweave and strong flux and we\'ll be on our way to pardoning your trespasses.' where `entry` = 9268;
update `quest_template` set `OfferRewardText` = 'A thousand years has passed and just as it was fated, one stands before me. One who shall lead their people to a new age.$B$BThe Old God trembles, $N. Oh yes, it fears your faith. Shatter the prophecy of C\'Thun.$B$BIt knows you come, champion - and with you comes the might of Kalimdor. You have only to let me know when you are prepared and I shall grant you the Scepter of the Shifting Sands.' where `entry` = 8742;
update `quest_template` set `RequestItemsText` = 'The Scarab Gong looms ominously before you. Steel yourself, $N; for once the Scarab Gong is rung, the gates of Ahn\'Qiraj will be opened.$B$BFrom the slackened maw of the beast can only come chaos and destruction. Defend your people!' where `entry` = 8743;
update `quest_template` set `OfferRewardText` = 'From the ground near the gong springs a special crystal. Perhaps favor from the Brood.' where `entry` = 8743;
update `quest_template` set `OfferRewardText` = 'First things first, $N! We need to figure out what Azuregos wrote in this ledger.$B$BYou say that he\'s told you to make an arcanite buoy and that this is the schematic? Strange that he would write this in Draconic. That old goat knows I can\'t read this nonsense.$B$BIf this is going to work, I\'m going to need my scrying goggles, a five hundred pound chicken and volume II of "Draconic for Dummies." Not necessarily in that order.' where `entry` = 8576;

-- Copper
DELETE FROM `prospecting_loot_template` WHERE `entry` = 2770;
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(2770, 774, 50, -2, 1, 1, 0, 0, 0, 0),
(2770, 818, 50, -2, 1, 1, 0, 0, 0, 0),
(2770, 1210, 10, -1, 1, 1, 0, 0, 0, 0),
(2770, 24186, 100, 0, 1, 1, 0, 0, 0, 0);
-- Ti.n
DELETE FROM `prospecting_loot_template` WHERE `entry` IN (2, 2771);
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(2771, 24188, 100, 0, 1, 1, 0, 0, 0, 0),
(2771, 1206, 33.3, -3, 1, 2, 0, 0, 0, 0),
(2771, 1210, 33.3, -3, 1, 2, 0, 0, 0, 0),
(2771, 1705, 33.4, -3, 1, 2, 0, 0, 0, 0),
(2771, 1529, 3.33, -2, 1, 1, 0, 0, 0, 0),
(2771, 3864, 3.33, -2, 1, 1, 0, 0, 0, 0),
(2771, 7909, 3.33, -2, 1, 1, 0, 0, 0, 0),
(2771, 2, -2, -1, 0, 0, 0, 0, 0, 0),
(2, 1206, 4.15, -1, 1, 1, 0, 0, 0, 0),
(2, 1210, 4.15, -1, 1, 1, 0, 0, 0, 0),
(2, 1705, 4.15, -1, 1, 1, 0, 0, 0, 0);
-- Iron
DELETE FROM `prospecting_loot_template` WHERE `entry` = 2772;
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(2772, 1529, 33.3, -2, 1, 2, 0, 0, 0, 0),
(2772, 1705, 33.3, -2, 1, 2, 0, 0, 0, 0),
(2772, 3864, 33.4, -2, 1, 2, 0, 0, 0, 0),
(2772, 7909, 5, -1, 1, 1, 0, 0, 0, 0),
(2772, 7910, 5, -1, 1, 1, 0, 0, 0, 0),
(2772, 24190, 100, 0, 1, 1, 0, 0, 0, 0);
-- Mithril
DELETE FROM `prospecting_loot_template` WHERE `entry` = 3858;
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(3858, 3864, 33.3, -2, 1, 2, 0, 0, 0, 0),
(3858, 7909, 33.3, -2, 1, 2, 0, 0, 0, 0),
(3858, 7910, 33.4, -2, 1, 2, 0, 0, 0, 0),
(3858, 12361, 2.5, -1, 1, 1, 0, 0, 0, 0),
(3858, 12364, 2.5, -1, 1, 1, 0, 0, 0, 0),
(3858, 12799, 2.5, -1, 1, 1, 0, 0, 0, 0),
(3858, 12800, 2.5, -1, 1, 1, 0, 0, 0, 0),
(3858, 24234, 100, 0, 1, 1, 0, 0, 0, 0);
-- Thorium
DELETE FROM `prospecting_loot_template` WHERE `entry` = 10620;
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(10620, 7910, 28, -2, 1, 2, 0, 0, 0, 0),
(10620, 12361, 18, -2, 1, 2, 0, 0, 0, 0),
(10620, 12364, 18, -2, 1, 2, 0, 0, 0, 0),
(10620, 12799, 18, -2, 1, 2, 0, 0, 0, 0),
(10620, 12800, 18, -2, 1, 2, 0, 0, 0, 0),
(10620, 21929, 1, -1, 1, 1, 0, 0, 0, 0),
(10620, 23077, 1, -1, 1, 1, 0, 0, 0, 0),
(10620, 23079, 1, -1, 1, 1, 0, 0, 0, 0),
(10620, 23107, 1, -1, 1, 1, 0, 0, 0, 0),
(10620, 23112, 1, -1, 1, 1, 0, 0, 0, 0),
(10620, 23117, 1, -1, 1, 1, 0, 0, 0, 0),
(10620, 24235, 100, 0, 1, 1, 0, 0, 0, 0);
-- Fel iron
DELETE FROM `prospecting_loot_template` WHERE `entry` = 23424;
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(23424, 21929, 16.66, -2, 1, 2, 0, 0, 0, 0),
(23424, 23077, 16.67, -2, 1, 2, 0, 0, 0, 0),
(23424, 23079, 16.67, -2, 1, 2, 0, 0, 0, 0),
(23424, 23107, 16.67, -2, 1, 2, 0, 0, 0, 0),
(23424, 23112, 16.67, -2, 1, 2, 0, 0, 0, 0),
(23424, 23117, 16.66, -2, 1, 2, 0, 0, 0, 0),
(23424, 23436, 1, -1, 1, 1, 0, 0, 0, 0),
(23424, 23437, 1, -1, 1, 1, 0, 0, 0, 0),
(23424, 23438, 1, -1, 1, 1, 0, 0, 0, 0),
(23424, 23439, 1, -1, 1, 1, 0, 0, 0, 0),
(23424, 23440, 1, -1, 1, 1, 0, 0, 0, 0),
(23424, 23441, 1, -1, 1, 1, 0, 0, 0, 0),
(23424, 24242, 100, 0, 1, 1, 0, 0, 0, 0);
-- Adamantite
DELETE FROM `prospecting_loot_template` WHERE `entry` IN (6, 7, 23425);
INSERT IGNORE INTO `prospecting_loot_template` VALUES
(23425, 24243, 100, 0, 1, 1, 0, 0, 0, 0),
(23425, 23436, 3.66, -3, 1, 1, 0, 0, 0, 0),
(23425, 23437, 3.66, -3, 1, 1, 0, 0, 0, 0),
(23425, 23438, 3.66, -3, 1, 1, 0, 0, 0, 0),
(23425, 23439, 3.66, -3, 1, 1, 0, 0, 0, 0),
(23425, 23440, 3.66, -3, 1, 1, 0, 0, 0, 0),
(23425, 23441, 3.66, -3, 1, 1, 0, 0, 0, 0),
(23425, 6, -6, -2, 0, 0, 0, 0, 0, 0),
(23425, 7, -7, -1, 0, 0, 0, 0, 0, 0),
(7, 21929, 3.33, -1, 1, 1, 0, 0, 0, 0),
(7, 23077, 3.33, -1, 1, 1, 0, 0, 0, 0),
(7, 23079, 3.33, -1, 1, 1, 0, 0, 0, 0),
(7, 23107, 3.33, -1, 1, 1, 0, 0, 0, 0),
(7, 23112, 3.33, -1, 1, 1, 0, 0, 0, 0),
(7, 23117, 3.33, -1, 1, 1, 0, 0, 0, 0),
(6, 21929, 16.67, -2, 1, 2, 0, 0, 0, 0),
(6, 23077, 16.67, -2, 1, 2, 0, 0, 0, 0),
(6, 23079, 16.66, -2, 1, 2, 0, 0, 0, 0),
(6, 23107, 16.66, -2, 1, 2, 0, 0, 0, 0),
(6, 23112, 16.67, -2, 1, 2, 0, 0, 0, 0),
(6, 23117, 16.67, -2, 1, 2, 0, 0, 0, 0);

update `quest_template` set `RequiredMinRepValue` = 0 where `entry` in (9717, 9719, 9806, 9807, 11049, 11035, 11020, 10106, 10110, 6701);
update `quest_template` set `RequiredMinRepValue` = 9000 where `entry` in (11092, 10969, 10970, 10971);
update `quest_template` set `RequiredMaxRepValue` = 3000 where `entry` in (7736, 8241, 8242);
update `quest_template` set `RequiredMaxRepValue` = 9000 where `entry` = 7737;
update `quest_template` set `RequiredMaxRepValue` = 3000 where `entry` = 6701;
update `quest_template` set `RequiredMaxRepFaction` = 369, `RequiredMaxRepValue` = 0 where `entry` = 9268;
update `quest_template` set `RequiredMinRepFaction` = 910, `RequiredMinRepValue` = 0 where `entry` in (8303, 8305, 8519, 8555, 8733, 8734, 8735, 8736, 8741, 8730, 8575, 8576, 8584, 8585, 8586, 8587, 8577, 8578, 8597, 8598, 8606, 8620, 8599, 8728, 8729, 8742, 8743, 8745);
update `quest_template` set `RequiredMaxRepFaction` = 910, `RequiredMaxRepValue` = 0 where `entry` = 8302;
update `quest_template` set `RequiredMinRepFaction` = 910, `RequiredMinRepValue` = 0 where `entry` in (8747, 8752, 8757);
update `quest_template` set `RequiredMinRepFaction` = 910, `RequiredMinRepValue` = 3000 where `entry` in (8748, 8753, 8758);
update `quest_template` set `RequiredMinRepFaction` = 910, `RequiredMinRepValue` = 9000 where `entry` in (8749, 8754, 8759);
update `quest_template` set `RequiredMinRepFaction` = 910, `RequiredMinRepValue` = 21000 where `entry` in (8750, 8755, 8760);
update `quest_template` set `RequiredMinRepFaction` = 910, `RequiredMinRepValue` = 42000 where `entry` in (8751, 8764, 8756, 8766, 8761, 8765);
update `quest_template` set
-- `RepObjectiveFaction` = 87, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0, `RequiredMaxRepFaction` = 21, `RequiredMaxRepValue` = 1 where `entry` = 1036;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1367;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1368;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1369;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1370;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1371;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1373;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1374;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1375;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1380;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1381;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1382;
update `quest_template` set
-- `RepObjectiveFaction` = 92, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1384;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1385;
update `quest_template` set
-- `RepObjectiveFaction` = 93, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 1386;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 10471;
update `quest_template` set
-- `RepObjectiveFaction` = 87, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0, `RequiredMaxRepFaction` = 21, `RequiredMaxRepValue` = 1 where `entry` = 4621;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 10467;
update `quest_template` set
-- `RepObjectiveFaction` = 749, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 6823;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8053;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8054;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8055;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8056;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8057;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8058;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8059;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8060;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8061;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8062;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8063;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8064;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8065;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8066;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8067;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8068;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8069;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8070;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8071;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8072;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8073;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8074;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8075;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8076;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8077;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8078;
update `quest_template` set
-- `RepObjectiveFaction` = 270, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8079;
update `quest_template` set
-- `RepObjectiveFaction` = 576, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8470;
update `quest_template` set
-- `RepObjectiveFaction` = 576, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8471;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8544;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8548;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8556;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8557;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8558;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8559;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8560;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8561;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8562;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8572;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8573;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8574;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8592;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8593;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8594;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8596;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8602;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8603;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8621;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8622;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8623;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8624;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8625;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8626;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8627;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8628;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8629;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8630;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8631;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8632;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8633;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8634;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8637;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8638;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8639;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8640;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8641;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8655;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8656;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8657;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8658;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8659;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8660;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8661;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8662;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8663;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8664;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8665;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8666;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8667;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8668;
update `quest_template` set
-- `RepObjectiveFaction` = 910, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 8669;
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` in (8689, 8690, 8691, 8692, 8693, 8694, 8695, 8696);
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` in (8697, 8698, 8699, 8700, 8701, 8702, 8703, 8704);
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` in (8705, 8706, 8707, 8708, 8709, 8710, 8711, 8712);
update `quest_template` set
-- `RepObjectiveFaction` = 609, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 9248;
update `quest_template` set `RequiredMinRepFaction` = 21, `RequiredMinRepValue` = 0, `RequiredMaxRepFaction` = 87, `RequiredMaxRepValue` = 1 where `entry` = 9272;
update `quest_template` set `RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 9378;
update `quest_template` set
-- `RepObjectiveFaction` = 978, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 9871;
update `quest_template` set
-- `RepObjectiveFaction` = 941, `RepObjectiveValue` = 0,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 9872;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 10474;
update `quest_template` set
-- `RepObjectiveFaction` = 946, `RepObjectiveValue` = 3000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 9563;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 21000 where `entry` = 10725;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 21000 where `entry` = 10726;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 21000 where `entry` = 10727;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 21000 where `entry` = 10728;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000 where `entry` = 10733;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000 where `entry` = 10734;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000 where `entry` = 10735;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 3000 where `entry` = 10736;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000 where `entry` = 10738;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000 where `entry` = 10739;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000 where `entry` = 10740;
update `quest_template` set
-- `RepObjectiveFaction` = 967, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 967, `RequiredMinRepValue` = 9000 where `entry` = 10741;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 10470;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 where `entry` = 10466;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 21000 where `entry` = 10475;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 9000 where `entry` = 10465;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 9000 where `entry` = 10469;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 21000 where `entry` = 10473;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 9000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 3000 where `entry` = 10464;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 21000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 9000 where `entry` = 10468;
update `quest_template` set
-- `RepObjectiveFaction` = 990, `RepObjectiveValue` = 42000,
`RequiredMinRepFaction` = 990, `RequiredMinRepValue` = 21000 where `entry` = 10472;
update `quest_template` set `RequiredMinRepFaction` = 932, `RequiredMinRepValue` = 3000 where `entry` in (10017, 10019, 10020, 10021, 10241, 10243, 10245, 10246, 10299, 10313, 10321, 10322, 10323, 10328, 10380, 10381, 10407, 10409, 10410, 10431, 10551, 10554, 10568, 10571, 10574, 10575, 10587, 10619, 10637, 10640, 10650, 10651, 10816, 11038);
update `quest_template` set `RequiredMinRepFaction` = 934, `RequiredMinRepValue` = 3000 where `entry` in (10024, 10025, 10169, 10189, 10193, 10194, 10197, 10198, 10202, 10204, 10329, 10330, 10338, 10341, 10365, 10432, 10507, 10508, 10509, 10552, 10553, 10652, 10683, 10684, 10685, 10686, 10687, 10688, 10689, 10691, 10692, 10807, 10817);
update `quest_template` set `RewRepFaction1` = 67, `RewRepValue1` = 75, `RewRepFaction2` = 469, `RewRepValue2` = 75, `RewRepFaction3` = 0, `RewRepValue3` = 0, `RewRepFaction4` = 0, `RewRepValue4` = 0, `RewRepFaction5` = 0, `RewRepValue5` = 0 where `entry` in (8619, 8642, 8643, 8644, 8645, 8646, 8647, 8648, 8649, 8650, 8651, 8652, 8653, 8654, 8866, 8635, 8636, 8670, 8671, 8672, 8673, 8674, 8675, 8676, 8677, 8678, 8679, 8680, 8681, 8682, 8683, 8684, 8685, 8686, 8688, 8713, 8714, 8715, 8716, 8717, 8718, 8719, 8720, 8721, 8722, 8723, 8724, 8725, 8726, 8727);
update `quest_template` set `MinLevel` = 1, `RequiredRaces` = 0 where `entry` in (8619, 8642, 8643, 8644, 8645, 8646, 8647, 8648, 8649, 8650, 8651, 8652, 8653, 8654, 8866, 8635, 8636, 8670, 8671, 8672, 8673, 8674, 8675, 8676, 8677, 8678, 8679, 8680, 8681, 8682, 8683, 8684, 8685, 8686, 8688, 8713, 8714, 8715, 8716, 8717, 8718, 8719, 8720, 8721, 8722, 8723, 8724, 8725, 8726, 8727);
update `quest_template` set `ExclusiveGroup` = 8870, `MinLevel` = 1 where `entry` in (8870, 8871, 8872, 8873, 8874, 8875);

update `quest_template` set `OfferRewardText` = 'It is good to know the people of this land still pay homage to the olden races. I bid you well, $N, and offer you this token...' where `entry` in (8619, 8642, 8643, 8644, 8645, 8646, 8647, 8648, 8649, 8650, 8651, 8652, 8653, 8654, 8866);
update `quest_template` set `OfferRewardText` = 'The battles of ages past are seeds from which legends grow. Yours is a time of heroes, young one. May your legend take root, thrive.$B$BI bid you well, $N, and offer you this token...' where `entry` = 8635;
update `quest_template` set `OfferRewardText` = 'The stuff of life is doomed to die and return to the earth, but the stuff of spirit lives eternal. I bid you well, $N, and offer you this token...' where `entry` = 8636;
update `quest_template` set `OfferRewardText` = 'Your spirit burns with life, young $C. I accept the homage you pay, and offer in return this token...' where `entry` in (8670, 8671, 8672, 8673, 8674, 8675, 8676, 8677, 8678, 8679, 8680, 8681, 8682, 8683, 8684, 8685, 8686);
update `quest_template` set `OfferRewardText` = 'The heavens, in their countless stars, hold answers to earthly mysteries, $N. Might, then, the wise, and the lucky, gaze up and find truth?' where `entry` in (8688, 8713, 8714, 8715, 8716, 8717, 8718, 8719, 8720, 8721, 8722, 8723, 8724, 8725, 8726, 8727);

update `quest_template` set `RequestItemsText` = 'Did you find the launchers, $N?' where `entry` = 8867;
update `quest_template` set `OfferRewardText` = 'Well done, $N.$B$BNow that you\'re in the spirit of things, why don\'t you take this invitation to the festival in Moonglade.$B$BIt\'s quite an enjoyable celebration, if you have the time to spare. We share food, drink, stories and of course... more fireworks!$B$BOpen the invitation while standing inside the circle of greater moonlight and you\'ll be transported to Moonglade.' where `entry` = 8867;
update `quest_template` set `OfferRewardText` = 'Excellent - please enjoy these dumplings with my compliments. While they are but a small token of appreciation for the honor you have brought upon yourself through your actions, I think you will enjoy them all the same.$B$BShould you have any more coins of ancestry, I stand ready to offer you a wide array of items in exchange.' where `entry` = 8863;
update `quest_template` set `OfferRewardText` = 'Very well then - I accept these coins of ancestry. Please take your dress with my blessing. Also, please enjoy these complimentary fireworks.$B$BAs you have honored your elders, you honor me with your mere presence. Thank you, and may your Lunar Festival be joyous.' where `entry` = 8864;
update `quest_template` set `OfferRewardText` = 'Very well then - I accept these coins of ancestry. Please take your pant suit with my blessing. Also, please enjoy these complimentary fireworks.$B$BShould you have more coins of ancestry to trade, then speak with me again. I will be offering various items throughout the entirety of the Lunar Festival.' where `entry` = 8865;
update `quest_template` set `OfferRewardText` = 'Ah, very well. Here are your recipes, $N, and my Elune bless you.' where `entry` = 8876;
update `quest_template` set `OfferRewardText` = 'Here you are, $N. Here is the schematic to create a firework launcher. Place launchers where you wish to celebrate, and then welcome your friends to join you!' where `entry` = 8877;
update `quest_template` set `OfferRewardText` = 'Here are the patterns, $N. I am sure you will find the product of this knowledge quite beautiful.' where `entry` = 8878;
update `quest_template` set `OfferRewardText` = 'Very well - I accept these coins of ancestry. Here are your recipes, $N. May you use them to spread Elune\'s glory!' where `entry` = 8879;
update `quest_template` set `OfferRewardText` = 'Here you are, $N. Take these recipes and learn their secrets. I bid you fortune, and I look forward to seeing your magnificent creations.' where `entry` = 8880;
update `quest_template` set `OfferRewardText` = 'Thank you, $N. Here is the recipe for large cluster rockets. May your products bring joy and luck to all those who gaze up them.' where `entry` = 8881;
update `quest_template` set `OfferRewardText` = 'Here is your schematic. Study it closely, and learn...$B$BGood luck, $N. May your celebrations rival that of the Lunar Festival itself!' where `entry` = 8882;
update `quest_template` set `OfferRewardText` = '$N, welcome to Nighthaven, host of the Lunar Festival! Although our village is normally remote and sequestered from the peoples of Azeroth, during this time of celebration we open our arms and hearts to all.$B$BEnjoy your visit, $N, and speak with me or my sister again when ready.' where `entry` = 8883;
update `quest_template` set `OfferRewardText` = 'Welcome, $N. Are you here to join in the festivities?' where `entry` in (8870, 8871, 8872, 8873, 8874, 8875);
-- random data for outland quest emotes
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9775';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='6000', `RewSpell`='0', `SrcItemId`='24382', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Report to Shadow Hunter Denjai', `Objectives`='Bring Zurai\'s Report to Shadow Hunter Denjai in Zabra\'jin', `Details`='Shadow Hunter Denjai will no doubt expect to receive a report about my progress in establishing our outpost. I\'ve prepared a short summary of what we\'ve accomplished here already, but with the loss of Scout Jyoba, I can\'t spare a runner to take the report to Denjai\'s base of Zabra\'jin to the west.$B$BIf you\'re headed that way, would you mind bringing this to him? Shadow Hunter Denjai can be a little intimidating at first, but once you get used to him, he\'s not so bad.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24382', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9775';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9774';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9771', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='25539', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Thick Hydra Scales', `Objectives`='Zurai at Swamprat Post wants you to bring him 12 Thick Hydra Scales.', `Details`='Reavij was wise to bring leather armor. This swamp will render my mail useless before long.$B$BI\'ve been replacing the scales bit by bit as I\'m able. The hydra in the marsh have thick, protective scales that stand up well to the dampness of their home.$B$BFinding suitable ones is a tedious process, though. All too often, the best scales are torn or worn too thin for use in armor. Bring me any good ones that you might get from the hydra in the larger lakes.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24375', `ReqItemCount1`='12', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9774';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9796';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='6000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='News from Zangarmarsh', `Objectives`='Speak with Mokasa at Stonebreaker Hold in Terokkar Forest.', `Details`='Shadow Hunter Denjai isn\'t the only one expecting a report from me. Mokasa at Stonebreaker Hold in Terokkar is eager to hear of our progress, especially since most of her messengers travel through here.$B$BShe asked me to send word once Swamprat Post was completed. If you wouldn\'t mind delivering the news, I\'d be very grateful. We may be up and running, but there is still much to be done.$B$BTo get to Stonebreaker Hold, follow the road south out of Zangarmarsh, into Terokkar Forest and beyond Tuurem.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9796';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='25', `DetailsEmote4`='0' WHERE `entry`='9770';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9898', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Menacing Marshfangs', `Objectives`='Reavij at Swamprat Post wants you to kill 10 Marshfang Rippers.', `Details`='Sometimes I wish Denjai had sent a shaman with us, or at least given us a totem to keep the marshfang rippers at bay.$B$BThe whole place is crawling with the pests! It\'s just not right. Shouldn\'t something be eating these despicable things?$B$BWe\'ve all been taking turns playing exterminator. You showed up at just the right time, $N. Congratulations! Now get out there and mop up some marshfangs!', `EndText`='', `ReqCreatureOrGOId1`='18130', `ReqCreatureOrGOCount1`='10', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9770';
UPDATE `quest_template` SET `DetailsEmote1`='5', `DetailsEmote2`='5', `DetailsEmote3`='1', `DetailsEmote4`='1' WHERE `entry`='9773';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='61', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='20000', `RewXpOrMoney`='11700', `RewSpell`='0', `SrcItemId`='25539', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='No More Mushrooms!', `Objectives`='Gather 8 Eel Filets from Umbrafen Eels and bring them to Magasha at Swamprat Post.', `Details`='Mushroom soup, mushroom stew, mushroom sauce!$B$BMushroom, mushroom, mushroom! It\'s all there is to eat around here. If you say you\'re hungry, the cook hands you an axe and tells you to go chop down your dinner!$B$BWell, I\'m tired of mushrooms. I\'ve seen fish in the lakes around here. Sure, they look like a nasty piece of work, but they\'ve got to be better than mushrooms!$B$BHow much will it cost me to hire you to bring me my first decent meal in weeks?', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24374', `ReqItemCount1`='8', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9773';
UPDATE `quest_template` SET `DetailsEmote1`='11', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9769';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='There\'s No Explanation for Fashion', `Objectives`='Bring 8 Diaphanous Wings from any species of Zangarmarsh fireflies to Magasha in Swamprat Post.', `Details`='<Magasha chuckles softly to herself.>$B$BI bet if they knew they were wearing bug parts, the fashion trend would end very quickly.$B$BWe first started killing the bugs \'round here \'cause they were getting in the way of our construction. Some enterprising merchant stops here, spends the night, and next thing you know he\'s buyin\' up all the bug wings we have!$B$BSays he makes clothes out of \'em. I be stickin\' to my armor, thanks. But if you gather the wings of any of the fireflies, I\'ll gladly buy \'em.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24372', `ReqItemCount1`='8', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9769';
UPDATE `quest_template` SET `RequestItemsText`='I see you smirking. Yes, my armor\'s going to look a bit odd until I\'ve replaced all the old metal, but it\'s better this than unprotected.', `CompleteEmote`='1' WHERE `entry`='9774';
UPDATE `quest_template` SET `RequestItemsText`='I still see marshfangs, $N. Surely you can\'t be done so soon.', `IncompleteEmote`='1' WHERE `entry`='9770';
UPDATE `quest_template` SET `RequestItemsText`='Tell me you haven\'t come back empty-handed. $N.', `CompleteEmote`='20' WHERE `entry`='9773';
UPDATE `quest_template` SET `RequestItemsText`='What\'s that, there? Been bitten by the wing bug, have ya?$B$B<Magasha chuckles at her own joke.>', `CompleteEmote`='1' WHERE `entry`='9769';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9802';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='24402', `RewItemCount1`='1', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Plants of Zangarmarsh', `Objectives`='Bring 10 Unidentified Plant Parts to Lauranna Thar\'well at the Cenarion Refuge in Zangarmarsh.', `Details`='The lakes of Zangarmarsh are slowly being drained of their water.  We don\'t quite know why, but we do know that many plants species are in danger of becoming extinct.$B$BAs the expedition\'s cataloguer, it is my job to track and identify these plants so we can better understand what\'s happening to them.$B$BIf you\'d like to help, bring me unidentified plant parts.  They can be picked right from the ground if you\'re an herbalist, and the indigenous creatures of the swamp may also carry plant parts on them.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24401', `ReqItemCount1`='10', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9802';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9747';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9788', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Umbrafen Tribe', `Objectives`='Ikeyen at the Cenarion Refuge wants you to travel to Umbrafen Village and slay Kataru, 8 Umbrafen Seers, 6 Umbrafen Witchdoctors and 6 Umbrafen Oracles.', `Details`='The naga are terrible, yes.  But even more terrible are the traitor tribes of Broken and Lost Ones that helped them!$B$BThe worst of all are the Lost Ones of the Umbrafen tribe; they use dark magic to trap and enslave others. They\'re especially cruel to escaped slaves and would slit my throat if I left the refuge even for a day.$B$BTravel to Umbrafen Village south of here and kill them and their leader, Kataru.  Until then I will fear for my life every single day.', `EndText`='', `ReqCreatureOrGOId1`='18080', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='18077', `ReqCreatureOrGOCount2`='6', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='18079', `ReqCreatureOrGOCount3`='8', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='20115', `ReqCreatureOrGOCount4`='6', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9747';
UPDATE `quest_template` SET `RequestItemsText`='You\'ve returned; are Kataru and the Umbrafen slavers dead?', `IncompleteEmote`='0' WHERE `entry`='9747';
UPDATE `quest_template` SET `RequestItemsText`='Did you find any plant parts, $N?', `CompleteEmote`='0' WHERE `entry`='9802';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9730';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9817';
UPDATE `quest_template` SET `RequestItemsText`='Did you find any plant parts, $N?', `CompleteEmote`='0' WHERE `entry`='9802';
UPDATE `quest_template` SET `OfferRewardText`='The decrease in native species is certainly a cause for concern.  The increase in invasive species could be related to the recent disturbance in the ecosystem.  I don\'t have enough information to make a conclusion, yet.$B$B<Lauranna jots down some notes on a journal as she goes through the plant parts.>$B$BTake these, $N.  They might be of some use to you.$B$BBring me any other plant parts you find.  I\'ll incorporate them into my statistics.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9802';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9728';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='64200', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='28100', `RewItemCount1`='5', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='A Warm Welcome', `Objectives`='Warden Hamoot at the Cenarion Refuge wants you to bring him 30 Naga Claws.', `Details`='While the druids from the expedition have made themselves busy studying plants and researching the lakes, I\'ve made it my business to deal with the hostiles in the area.$B$BEver since we set foot in Zangarmarsh, the naga have launched lethal attacks against us without warning.  We\'ve done our best to keep them at bay, but our resources are limited.$B$BI want you to go to the various naga strongholds in Zangarmarsh and show them that we\'re not to be crossed.  Bring me their claws as proof of your victories.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24280', `ReqItemCount1`='30', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9728';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9895';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9716';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9718', `RewOrReqMoney`='29000', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='140', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Disturbance at Umbrafen Lake', `Objectives`='Investigate the cause of the water depletion at Umbrafen Lake.  Then return to Ysiel Windsinger at the Cenarion Refuge in Zangarmarsh.', `Details`='We came to Outland expecting to find small pockets of life.  What we discovered in Zangarmarsh was a lush environment with a thriving ecosystem.$B$BOur initial assessment of the area was deceiving, however.  The water levels at the lakes and marshes have consistently been going down since we started taking measurements.$B$BThe impact this could have on the local animal and plant life is disastrous.  Go to Umbrafen Lake, southwest of here, and look for clues related to this water depletion.', `EndText`='Umbrafen Lake Investigated', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9716';
UPDATE `quest_template` SET `RequestItemsText`='Did you discover anything, $N?', `IncompleteEmote`='0' WHERE `entry`='9716';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9895';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Had your fill already?$B$B<Reavij laughs.>$B$BThere\'s a reason why our visitors don\'t stay long.$B$BIf I had a choice, I\'d find a more agreeable spot for the post, but I\'ll take marshfangs over Denjai\'s temper any day.', `OfferRewardEmote1` = '11', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9770';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='23', `DetailsEmote3`='23', `DetailsEmote4`='0' WHERE `entry`='9898';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='31786', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='31787', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='31788', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='31789', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Nothin\' Says Lovin\' Like a Big Stinger', `Objectives`='Bring Blacksting\'s Stinger to Reavij at Swamprat Post.', `Details`='She will be mine. Oh yes - she will be mine.$B$BIsn\'t Magasha the most beautiful troll you\'ve ever seen? I have to find a way to win her heart. Sure, she has her eye on Zurai, but that is about to change. My foolproof plan will see to that.$B$BAll I need is a way to demonstrate my superior hunting skills, and that\'s where you come in my friend. There\'s a gigantic bog wasp known as Blacksting that roams the area south of the glowing draenei towers to the west. Bring me its stinger and I\'ll work my magic.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='25448', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9898';
UPDATE `quest_template` SET `RequestItemsText`='I see you smirking. Yes, my armor\'s going to look a bit odd until I\'ve replaced all the old metal, but it\'s better this than unprotected.', `CompleteEmote`='1' WHERE `entry`='9774';
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N. Every little bit helps.$B$BI\'ve still got a long way to go, but let\'s face it, what else am I going to do between patrols?', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9774';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9771';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9772', `RewOrReqMoney`='0', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Searching for Scout Jyoba', `Objectives`='Search for Scout Jyoba.', `Details`='Now that you\'re familiar with the terrain, I\'d like to ask your help with something else. The Dead Mire, we\'ve taken to calling the area to the northwest, is an eerie place. No one has ever reported seeing anything alive there, but they didn\'t stay for very long, either.$B$BScout Jyoba volunteered to investigate the area and report on his findings. He left the post three days ago and hasn\'t returned. It\'s not like him to be gone that long without sending some kind of report. Will you search for him, $N?', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9771';
UPDATE `quest_template` SET `RequestItemsText`='My luck is about to change - I can feel it.', `CompleteEmote`='1' WHERE `entry`='9898';
UPDATE `quest_template` SET `RequestItemsText`='Tell me you haven\'t come back empty-handed. $N.', `CompleteEmote`='20' WHERE `entry`='9773';
UPDATE `quest_template` SET `OfferRewardText`='Finally, a break from the monotony of mushrooms! If you didn\'t smell like fish, I\'d hug you.$B$BLet\'s see how jealous the others get when they smell the meat cooking over the fire.', `OfferRewardEmote1` = '21', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9773';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9899';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='27498', `RewChoiceItemCount1`='5', `RewChoiceItemId2`='27503', `RewChoiceItemCount2`='5', `RewChoiceItemId3`='27502', `RewChoiceItemCount3`='5', `RewChoiceItemId4`='27499', `RewChoiceItemCount4`='5', `RewChoiceItemId5`='27501', `RewChoiceItemCount5`='5', `RewChoiceItemId6`='27500', `RewChoiceItemCount6`='5', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='A Job Undone', `Objectives`='Magasha at Swamprat Post wants you to kill Sporewing.', `Details`='Someone needs to find a way to make Reavij come to his senses! He\'s ignoring his duty and instead, he\'s devoting all his energy to getting my attention. I\'ve tried ignoring him and telling him to stop. Nothing seems to work.$B$BUntil he gets over this, I\'m left cleaning up after him. He was supposed to have dealt with Sporewing, but I\'ll bet the monster is alive and well. If you have time, would you mind going to the western part of the Dead Mire and killing the bat? I\'ll deal with Reavij in the meantime.', `EndText`='', `ReqCreatureOrGOId1`='18280', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9899';
UPDATE `quest_template` SET `RequestItemsText`='There\'s no changing his mind, I swear. I think I\'m going to have to ask Shadow Hunter Denjai for a transfer back to Zabra\'jin.', `IncompleteEmote`='1' WHERE `entry`='9899';
UPDATE `quest_template` SET `RequestItemsText`='What\'s that, there? Been bitten by the wing bug, have ya?$B$B<Magasha chuckles at her own joke.>', `CompleteEmote`='1' WHERE `entry`='9769';
UPDATE `quest_template` SET `OfferRewardText`='These be fine ones, $N. Here\'s your payment.$B$B<Magasha bends one of the wings and holds it up to her head.>$B$BNope, not my thing, but who\'m I to complain?$B$B<Magasha shrugs.>$B$BCoin speaks.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '6', `OfferRewardEmote3` = '11', `OfferRewardEmote4` = '0' WHERE `entry`='9769';
UPDATE `quest_template` SET `RequestItemsText`='There\'s no changing his mind, I swear. I think I\'m going to have to ask Shadow Hunter Denjai for a transfer back to Zabra\'jin.', `IncompleteEmote`='1' WHERE `entry`='9899';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9828';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='24484', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Withered Basidium', `Objectives`='Bring the Withered Basidium to Reavij at Swamprat Post.', `Details`='A close inspection of the basidium reveals a number of indentations that might have once held something. The alien mass of fungus presents something of a puzzle. It\'s far from healthy, but you have little clue as to what function it might normally perform.$B$BPerhaps someone more familiar with the denizens of Zangarmarsh would be able to tell you more about the basidium.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24484', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9828';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Excellent.  Keep bringing me more plant parts if you find any.$B$B<This quest is repeatable up to Honored reputation.>', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9784';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9752';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='29000', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='138', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25518', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25517', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25519', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Escape from Umbrafen', `Objectives`='Escort Kayra Longmane to the Cenarion Refuge in Zangarmarsh.  Report to Ysiel Windsinger when you\'ve completed this task.', `Details`='You must help me get out of here!$B$BI was gathering herbs nearby when a handful of these little savages abducted me.  I tried to fight them off, but there were too many of them.$B$BHelp me return to the Cenarion Refuge and away from these cruel wretches and their vile magic!', `EndText`='Escort Kayra Longmane to safety', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9752';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Excellent.  Keep bringing me more plant parts if you find any.$B$B<This quest is repeatable up to Honored reputation.>', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $N.  I will finally sleep comfortably at night.  Were I not so old and weakened I would deal with my own enemies.$B$BTake this gold.  It is not much, but your kindness cannot go unpaid.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9747';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9788';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25516', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25515', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25514', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='27716', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='A Damp, Dark Place', `Objectives`='Look for Ikeyen\'s Belongings inside a cave south of Umbrafen.  Return them to Ikeyen at Cenarion Refuge in Zangarmarsh.', `Details`='Soon after I escaped the Umbrafen tribe, I holed up in a cave south of their village.  Little did I know that the cave was being fought over by marsh beasts and spore men!$B$BI had to leave in a hurry and left behind a box containing my only worldly possessions.$B$BAfter managing to sneak out of Umbrafen with my belongings it was terrible irony that I would lose them so soon after.  If you\'re willing to bring them back to me I\'ll give you one of my very own personal items.  What do you say, $N?', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24411', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9788';
UPDATE `quest_template` SET `RequestItemsText`='Did you find my belongings, $N?  The cave is not far from Umbrafen, near the border with Nagrand.', `CompleteEmote`='0' WHERE `entry`='9788';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='6', `DetailsEmote4`='0' WHERE `entry`='10096';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='27717', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='31657', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='27715', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='31658', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Saving the Sporeloks', `Objectives`='Slay 10 Marsh Dredgers and 10 Marsh Lurkers, and then return to Lauranna Thar\'well at the Cenarion Refuge in Zangarmarsh.', `Details`='Ikeyen\'s been telling me stories about what happened to him down in those caves and I think it\'s just awful!$B$BYou know, maybe we should do something to help out those poor sporeloks.  Ikeyen says that they live there in the Funggor Cavern, but that the marsh beasts have recently invaded.$B$BWhy don\'t you go down there and see if you can clear some of those marsh beasts out?  It\'s just to the southwest.', `EndText`='', `ReqCreatureOrGOId1`='18137', `ReqCreatureOrGOCount1`='10', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='18136', `ReqCreatureOrGOCount2`='10', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='10096';
UPDATE `quest_template` SET `RequestItemsText`='What?  Back so soon?  How did it go?', `IncompleteEmote`='6' WHERE `entry`='10096';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9894';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='1', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Safeguarding the Watchers', `Objectives`='Kill Lord Klaq and return to Windcaller Blackhoof at the Cenarion Refuge.', `Details`='In your travels, you might have encountered some of the expedition\'s watchers. They do the majority of the field work: documenting the unique inhabitants of the marsh, collecting samples, and making contact with sentient species.$B$BThe safety of the watchers is paramount, $c. We\'ve had to recall the watchers we sent to explore Funggor Cavern to the south, because of marshbeast attacks. Warden Hamoot believes that killing their leader, Lord Klaq, will bring a swift end to the attacks. ', `EndText`='', `ReqCreatureOrGOId1`='18282', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='2', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9894';
UPDATE `quest_template` SET `RequestItemsText`='Have you located and dealt with Lord Klaq?', `IncompleteEmote`='1' WHERE `entry`='9894';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9785';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='25800', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Blessings of the Ancients', `Objectives`='Windcaller Blackhoof wants you to speak to the ancients Ashyen and Keleth at Cenarion Refuge and obtain their blessings.', `Details`='You\'ve earned the trust of the Cenarion Expedition, $N.  It is time you spoke to the ancients allied with our cause, Ashyen and Keleth, and asked for their blessing.$B$BCarrying the mark of an ancient will fill you with great power.  These boons will become more powerful as your renown among us increases.$B$BGo, $N, and ask the ancients for their blessing. ', `EndText`='', `ReqCreatureOrGOId1`='17900', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='17901', `ReqCreatureOrGOCount2`='1', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='Mark of Lore', `ObjectiveText2`='Mark of War', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9785';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9697';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9701', `RewOrReqMoney`='0', `RewXpOrMoney`='18900', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Watcher Leesa\'oh', `Objectives`='Speak with Watcher Leesa\'oh at the Cenarion Watchpost in Zangarmarsh.', `Details`='There\'s important research to be conducted into the ecology of the local creatures, especially the sporelings and bog lords of the marsh.  And trust me, once you get out into the field, you\'ll find the work to be challenging.$B$BSeek out Watcher Leesa\'oh at the Cenarion Watchpost in the western region of the marsh toward the south.  Follow the path west and you will eventually find her.  She can be a bit -- studious -- but don\'t let that get to you.$B$BOh, and watch out for her cat.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9697';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9895';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9957';
UPDATE `quest_template` SET `OfferRewardText`='You rescued one of my druids.  We could never repay you, $N.$B$BYou have my thanks as well as that of the expedition.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9752';
UPDATE `quest_template` SET `OfferRewardText`='The naga are behind this!  But why?  From what you describe, that steam pump must be part of the cause for the water levels dropping in the marsh!$B$BNo matter - this explains their open hostility towards us.  Let\'s not waste any time, I need you to perform another task for us.', `OfferRewardEmote1` = '6', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9716';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9718';
UPDATE `quest_template` SET `OfferRewardText`='At least someone is pulling $g his:her; weight around here. Thank you for taking care of that matter, $N. I need to have a word with Zurai about Reavij. His scheming and daydreaming have gone on long enough.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9899';
UPDATE `quest_template` SET `RequestItemsText`='What is it you have there, $N?', `CompleteEmote`='1' WHERE `entry`='9828';
UPDATE `quest_template` SET `OfferRewardText`='It looks like the basidium of a boglord, but I haven\'t seen one in this condition before. I\'d heard that the giants in the Dead Mire had begun to wither, but it\'s far more advanced than I expected.$B$BThe Dead Mire was once a lake like the others in the marsh, and it served as the spawning ground for the giants. With the waters receding, it seems the changes are preventing the giants from sporing. If this continues, the giants may disappear entirely.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9828';
UPDATE `quest_template` SET `RequestItemsText`='My luck is about to change - I can feel it.', `CompleteEmote`='1' WHERE `entry`='9898';
UPDATE `quest_template` SET `RequestItemsText`='Just because we\'re on this pilgrimage doesn\'t mean we have to give up all of life\'s pleasures.  It\'s been ages since I had a good wine.$B$BI\'d literally kill for a bottle of cenarion spirits!$B$BI know, I know, how unfashionable of me to enjoy a drink brewed by night elves.', `CompleteEmote`='0' WHERE `entry`='9483';
UPDATE `quest_template` SET `OfferRewardText`='You know, maybe we can become friends after all.  Follow me; we don\'t want to have to share this with the others now, do we?', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9483';
-- UPDATE `quest_template` SET `ZoneOrSort`='3483', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='0', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Life\'s Finer Pleasures', `Objectives`='', `Details`='', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='29112', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='0', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9483';
UPDATE `quest_template` SET `OfferRewardText`='Excellent!  That little backstabber won\'t be running off with anyone\'s husband any time soon.$B$BHere\'s a little something for your troubles.  I trust we can keep this incident between us, $N.', `OfferRewardEmote1` = '274', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9472';
UPDATE `quest_template` SET `OfferRewardText`='The battered corpse matches Zurai\'s description perfectly. Whatever killed the scout appears to have taken him by surprise, as his weapon is sheathed and the contents of a small inkwell stain the nearby ground.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9771';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9772';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25600', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25601', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25602', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='31768', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Jyoba\'s Report', `Objectives`='Retrieve Scout Jyoba\'s Report from the Withered Giants and return it to Zurai at Swamprat Post.', `Details`='Flecks of withered fungus dot the body of Scout Jyoba. Whatever killed him must\'ve been made of the same dying fungus as the giant wilting mushrooms of the Dead Mire. Perhaps one of the withered giants caught him by surprise as he sat writing his report.$B$BWithout the text of the report, it\'s nearly impossible to tell what the scout discovered. If the report can be found, it should be returned to Zurai.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24373', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9772';
UPDATE `quest_template` SET `RequestItemsText`='You\'re back, but Jyoba\'s not with you. What became of him?', `CompleteEmote`='1' WHERE `entry`='9772';
UPDATE `quest_template` SET `OfferRewardText`='<Zurai accepts the report from you and glances over it.>$B$BMuch of this is information we already know. Everything in the area seems to be dried or wilting, but here\'s something new.$B$BHe says the fungal giants seem to have gone berserk from the lack of moisture. From your description, that must be what killed him.$B$BI\'ll instruct my men to avoid the area. We can\'t afford any more casualties.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9772';
UPDATE `quest_template` SET `RequestItemsText`='What?  Back so soon?  How did it go?', `IncompleteEmote`='6' WHERE `entry`='10096';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9718';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9720', `RewOrReqMoney`='0', `RewXpOrMoney`='28200', `RewSpell`='0', `SrcItemId`='25465', `SpecialFlags`='130', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='As the Crow Flies', `Objectives`='Ysiel Windsinger wants you to use the Stormcrow Amulet to explore the major lakes in Zangarmarsh.', `Details`='We must determine how widespread the naga\'s activity truly is and react accordingly.$B$BExploring each body of water in Zangarmarsh could be a lengthy undertaking.  If you allow me to, I will use my magic to mold your shape to one more suited to scouting the marsh.$B$BHold this amulet above the balcony near me when you\'re ready to begin.  I will guide your way back to safety after we\'re done.', `EndText`='Lakes of Zangarmarsh Explored', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='25465', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9718';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9957';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9895';
UPDATE `quest_template` SET `OfferRewardText`='You\'ve returned.  Did you receive the ancients\' blessings?', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9785';
UPDATE `quest_template` SET `RequestItemsText`='Have you located and dealt with Lord Klaq?', `IncompleteEmote`='1' WHERE `entry`='9894';
UPDATE `quest_template` SET `RequestItemsText`='Hail, $N.', `CompleteEmote`='0' WHERE `entry`='9718';
UPDATE `quest_template` SET `OfferRewardText`='It is as I suspected.  The naga have set up pumping stations at all the major lakes in Zangarmarsh. $B$BThey must be stopped if the marsh is to have a future.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9718';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9720';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='64200', `RewSpell`='0', `SrcItemId`='24355', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Balance Must Be Preserved', `Objectives`='Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon.  Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.', `Details`='I cannot begin to comprehend why the naga would drain the water out of their own habitat.  What I do understand is a need to put a stop to their operations.$B$BThese seeds carry with them the rage of the earth.  Take them to the steam pumps operated by the naga and use them on their controls.$B$BThe vines that grow from the seeds will be as thick as your arm and as strong as iron.  Go, $N.  Restore the balance that the naga have upset.', `EndText`='', `ReqCreatureOrGOId1`='17998', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='24355', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='18002', `ReqCreatureOrGOCount2`='1', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='18000', `ReqCreatureOrGOCount3`='1', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='17999', `ReqCreatureOrGOCount4`='1', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='Umbrafen Lake Controls Disabled', `ObjectiveText2`='Marshlight Lake Controls Disabled', `ObjectiveText3`='Serpent Lake Controls Disabled', `ObjectiveText4`='Lagoon Controls Disabled', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9720';
UPDATE `quest_template` SET `OfferRewardText`='You have my gratitude, $N, and that of the watchers. They will be heartened to hear that they can continue their work to the south without fear of attack.', `OfferRewardEmote1` = '2', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9894';
UPDATE `quest_template` SET `RequestItemsText`='Did you find my belongings, $N?  The cave is not far from Umbrafen, near the border with Nagrand.', `CompleteEmote`='0' WHERE `entry`='9788';
UPDATE `quest_template` SET `OfferRewardText`='My things!  They\'re all here!$B$BI thank you, $N.  As promised, I\'ll let you pick one of the items for yourself.  I don\'t have much to offer, but my people have always shared what little we have.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9788';
UPDATE `quest_template` SET `OfferRewardText`='Good!  Those marsh beasts have no right to invade the home of the sporeloks!$B$BIt would be better if these creatures would learn to live in harmony, but when that\'s not possible, we\'ll be here to take care of the situation!$B$BHere, please take one of these as thanks for your help.', `OfferRewardEmote1` = '5', `OfferRewardEmote2` = '274', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='10096';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9817';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='1', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='58000', `RewXpOrMoney`='46500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='27724', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='27722', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='27723', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='27721', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Leader of the Bloodscale', `Objectives`='Slay Rajis Fyashe at Serpent Lake and return to Warden Hamoot at the Cenarion Refuge in Zangarmarsh for a reward.', `Details`='A bounty is hereby declared by the Cenarion Expedition on Rajis Fyashe, leader of the Bloodscale naga.  The naga sorceress was last sighted at Serpent Lake, in the northern region of Zangarmarsh.$B$BThe Bloodscale are to be considered extremely dangerous and their leader is to be approached with extreme caution.$B$BThose seeking to claim the bounty are advised to report to Warden Hamoot at Cenarion Refuge.', `EndText`='', `ReqCreatureOrGOId1`='18044', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='2', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9817';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9730';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='1', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='62000', `RewXpOrMoney`='64200', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='27728', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='27725', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='27727', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='27726', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Leader of the Darkcrest', `Objectives`='Slay Rajah Haghazed at the Lagoon and return to Warden Hamoot at the Cenarion Expedition in Zangarmarsh for a reward.', `Details`='A bounty is hereby declared by the Cenarion Expedition on Rajah Haghazed, leader of the Darkcrest naga.  Haghazed was last sighted by Cenarion scouts at the Lagoon, in the central southern region of Zangarmarsh.$B$BThe Darkcrest have been linked to numerous attacks against the Cenarion Expedition and their leader is considered extremely dangerous.$B$BThose seeking to claim the bounty are advised to report to Warden Hamoot.', `EndText`='', `ReqCreatureOrGOId1`='18046', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='2', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9730';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9957';
-- UPDATE `quest_template` SET `ZoneOrSort`='3519', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='9300', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='What\'s Wrong at Cenarion Thicket?', `Objectives`='Speak with one of the druids at the Cenarion Thicket in Terokkar Forest.', `Details`='We haven\'t heard from the druids at the Cenarion Thicket of Terokkar Forest in quite some time.$B$B$N, I\'d like for you to go down there and check in with them to see what\'s happening.  There are several ways to get there, but the fastest is to head south along the path, and then take the road that branches east from Shattrath City once you\'re in the forest.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9957';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9895';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='1', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='27000', `RewXpOrMoney`='30300', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Dying Balance', `Objectives`='Locate and deal with Boglash, then return to Lethyn Moonfire at Cenarion Refuge.', `Details`='Have you observed your surroundings closely, $N? This is an ailing landscape, struggling to keep itself in balance and losing the fight.$B$BIf you know where to look, you can see the symptoms. Members of some species rapidly outgrow their peers and become more aggressive.$B$BA good example of this uncontrolled growth is the marshtrekker Boglash. If you wish to see it for yourself, look no further than the waterways south of the refuge.$B$BBe prepared to defend yourself. The creature knows no mercy.', `EndText`='', `ReqCreatureOrGOId1`='18281', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='2', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9895';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9731';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='29000', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='24330', `SpecialFlags`='132', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='27734', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='27735', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='27733', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='27730', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Drain Schematics', `Objectives`='Search Serpent Lake for signs of a drain.  Return to Ysiel Windsinger at Cenarion Refuge with news of your discovery.', `Details`='The schematics you\'ve obtained show an underground system of drains and pumps that connect the lakes in the region to Serpent Lake.$B$BIf the schematics are correct, there is a giant drain in the center of Serpent Lake.  Confirm this and bring the news to Cenarion Refuge.', `EndText`='Drain Located', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24330', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9731';
UPDATE `quest_template` SET `RequestItemsText`='You don\'t look like one of my men. Speak your piece, $r.', `CompleteEmote`='0' WHERE `entry`='9775';
UPDATE `quest_template` SET `OfferRewardText`='Why didn\'t you say you had a report from Zurai? I\'ve been waiting to hear from him.$B$BI sent him out there to give us a presence on the eastern border, not sit on his hands. Let\'s see what he has to say.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9775';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9730';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Excellent.  Keep bringing me more plant parts if you find any.$B$B<This quest is repeatable up to Honored reputation.>', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9784';
UPDATE `quest_template` SET `RequestItemsText`='It\'s good to see you again, $N.  How\'s your hunt for the naga going?', `CompleteEmote`='0' WHERE `entry`='9728';
UPDATE `quest_template` SET `OfferRewardText`='Good job, $N.  You\'d do well to shed any feelings of remorse you might harbor.  These naga are vicious creatures - even more so than the Azerothian ones.', `OfferRewardEmote1` = '4', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9728';
UPDATE `quest_template` SET `OfferRewardText`='I didn\'t like the naga in Azeroth and I like them less here.  It\'s a real shame our mission could not remain a peaceful one, but you won\'t see me shedding tears for dead naga.$B$BHere\'s your reward for taking care of the Darkcrest leader, $N.', `OfferRewardEmote1` = '273', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9730';
UPDATE `quest_template` SET `OfferRewardText`='I\'ll bet the Bloodscale will think twice about attacking expedition scouts again.  Take this as a reward, $N.  You\'ve earned it.', `OfferRewardEmote1` = '2', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9817';
UPDATE `quest_template` SET `OfferRewardText`='Now that you\'ve seen the symptoms of imbalance with your own eyes, be mindful of them in your travels. ', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9895';
UPDATE `quest_template` SET `RequestItemsText`='My luck is about to change - I can feel it.', `CompleteEmote`='1' WHERE `entry`='9898';
UPDATE `quest_template` SET `OfferRewardText`='Fantastic! I\'ll never forget how you helped me to win her heart. In fact, you can be a guest of honor at our wedding.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9898';
UPDATE `quest_template` SET `RequestItemsText`='What news do you bring, $N?', `CompleteEmote`='0' WHERE `entry`='9731';
UPDATE `quest_template` SET `OfferRewardText`='The naga have turned Serpent Lake into a giant water sink for the rest of Zangarmarsh.  What could they possibly be doing?$B$BYou\'ve done well in bringing this news to us, $N.  We will send a team to investigate this drain you\'ve discovered.  I have a different task for you in the meanwhile.', `OfferRewardEmote1` = '6', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9731';
UPDATE `quest_template` SET `RequestItemsText`='Is it done, $c?', `IncompleteEmote`='0' WHERE `entry`='9720';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9724';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9732', `RewOrReqMoney`='16000', `RewXpOrMoney`='25800', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Warning the Cenarion Circle', `Objectives`='Speak to Amythiel Mistwalker at Cenarion Post in Hellfire Peninsula.', `Details`='The Cenarion Expedition has become a large organization with a good degree of autonomy.  These events are important enough that we need to warn the Cenarion Circle.$B$BDo not worry, I will not ask you to travel back to Moonglade; we have emissaries as nearby as Hellfire Peninsula.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9724';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Excellent.  Keep bringing me more plant parts if you find any.$B$B<This quest is repeatable up to Honored reputation.>', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='The news you bring about the naga activity in Zangarmarsh is dire.  Ysiel was wise in sending word to us.  She hasn\'t forgotten that the Expedition cannot exist without the Circle\'s support.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9724';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9732';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25524', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25523', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25522', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Return to the Marsh', `Objectives`='Return to Ysiel Windsinger at the Cenarion Refuge in Zangarmarsh.', `Details`='Return to Ysiel and let her know that help will be extended to her as soon as it is possible.$B$BAffairs in Moonglade and Silithus have kept our members occupied, but we will do our best to send the necessary resources to the Cenarion Refuge.  ', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9732';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9845';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9903', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='25539', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Angling to Beat the Competition', `Objectives`='Kill 10 Fenclaw Thrashers and return to Zurjaya at Zabra\'jin.', `Details`='It\'s a relief to be in someplace with water after trekking through the wasteland of Hellfire Peninsula. I was worried there might not be any respectable fishing holes in Outland.$B$BNow I\'m glad I lugged my fishing supplies along. For the most part, the fishing\'s been good, except for those no good fenclaw thrashers in Serpent Lake.$B$BNot only do they scare the fish away, but they\'re bold enough to snap the bait right off my hook. I spend more time re-baiting the hook than I do catching anything!', `EndText`='', `ReqCreatureOrGOId1`='18214', `ReqCreatureOrGOCount1`='10', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9845';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10117';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='1', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='62000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Wanted: Chieftain Mummaki', `Objectives`='Bring Chieftain Mummaki\'s Totem to Shadow Hunter Denjai.', `Details`='Wanted: Chieftain Mummaki - leader of the foul and degenerate Lost One tribe of the Daggerfen, for his brutal attacks against Zabra\'jin and its inhabitants.$B$BThe chieftain and his band of assassins are responsible for the deaths of numerous scouts and messengers and should only be approached by seasoned combatants.$B$BTravelers are advised to avoid the Daggerfen Village area to the northwest of Zabra\'jin.$B$BTo claim the bounty, present proof of the chietain\'s demise to Shadow Hunter Denjai.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='27943', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='2', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='10117';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9820';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9822', `RewOrReqMoney`='31000', `RewXpOrMoney`='64200', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='WANTED: Boss Grog\'ak', `Objectives`='Bring Boss Grog\'ak\'s Head to Shadow Hunter Denjai in Zabra\'jin.', `Details`='Wanted - Dead or Alive: Boss Grog\'ak, overseer of the Ango\'rosh mushroom-cutting operation.$B$BThis brute and his axe-wielding cronies are responsible for chopping down the mushrooms to the north of town. Unless he is stopped, he and his band will cut a path to the walls of Zabra\'jin.$B$B$g He:She; who presents the head of Boss Grog\'ak to Shadow Hunter Denjai shall be well-rewarded.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24472', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9820';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9841';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9842', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Stinging the Stingers', `Objectives`='Kill 8 Marshlight Bleeders and return to Gambarinka at Zabra\'jin.', `Details`='It\'s impossible to work with all this infernal buzzing! Do you hear it?$B$BI can\'t get it out of my head! I know exactly what\'s making the noise, too. It\'s those damnable marshlight bleeders! The noise always comes from the south and west of the village.$B$BThey\'re too big to swat, crush underfoot, or wave away. The only way to stop that unholy droning is to kill them. I don\'t care how you do it, $N, just quiet them!', `EndText`='', `ReqCreatureOrGOId1`='18133', `ReqCreatureOrGOCount1`='8', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9841';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='5', `DetailsEmote3`='5', `DetailsEmote4`='0' WHERE `entry`='9814';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9816', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Burstcap Mushrooms, Mon!', `Objectives`='Bring Witch Doctor Tor\'gash 6 Burstcap Mushrooms.', `Details`='You like mushrooms, mon? There be a powerful one here in Zangarmarsh, growin\' real close to Zabra\'jin.$B$BYou gotta be careful, though, mon. They be callin\' it the burstcap for a reason. If you be gettin\' too close without takin\' the proper precautions, it\'ll blow right up on you! Poof! Right into a cloud o\' toxic spores.$B$BI been usin\' them for readin\' the omens, but they be almost gone now.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24468', `ReqItemCount1`='6', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9814';
UPDATE `quest_template` SET `RequestItemsText`='The sound seems to have receded into the distance. Is that wishful thinking or have you really done something about the problem?', `IncompleteEmote`='1' WHERE `entry`='9841';
UPDATE `quest_template` SET `OfferRewardText`='I can\'t wait to return to fishing! Now I\'ll be able to return to town with some real fish in my bucket and Gambarinka won\'t be able to make fun of me anymore!', `OfferRewardEmote1` = '71', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9845';
UPDATE `quest_template` SET `OfferRewardText`='I can\'t wait to return to fishing! Now I\'ll be able to return to town with some real fish in my bucket and Gambarinka won\'t be able to make fun of me anymore!', `OfferRewardEmote1` = '71', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9845';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9903';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='25539', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='28103', `RewChoiceItemCount1`='5', `RewChoiceItemId2`='28102', `RewChoiceItemCount2`='5', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Biggest of Them All', `Objectives`='Slay Mragesh and return to Zurjaya in Zabra\'jin.', `Details`='You\'ve dealt with most of the little hydra, but I doubt Mragesh was impressed by your display. He\'s a cunning, ferocious beast and he\'s dogged many an angler in his time.$B$BI intend to be the last one he\'ll ever bother. He\'s bound to be hiding deep in the waters of Serpent Lake, to the northeast. He\'s a has-been; he just doesn\'t know it yet.', `EndText`='', `ReqCreatureOrGOId1`='18286', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9903';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='22', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9904';
UPDATE `quest_template` SET `RequestItemsText`='Have you "retired" old Mragesh?', `IncompleteEmote`='1' WHERE `entry`='9903';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='22', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9904';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='25539', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25924', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25923', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25922', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='25925', `RewChoiceItemCount4`='1', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Pursuing Terrorclaw', `Objectives`='Kill Terrorclaw and return to Zurjaya at Zabra\'jin.', `Details`='I\'ve caught every kind of fish that lives in the marsh, but there\'s one that eludes me. Sure, I\'ve caught eels and mudfin frenzies. But the last time I was out on one of the islands in Marshlight Lake, I hooked a gigantic bogstrok that snapped my line and got away.$B$BTerrorclaw, he\'s called, and I won\'t rest until he\'s dead. He\'s too big for any fisherman to catch, so I suppose we\'ll just have to kill him the old-fashioned way.', `EndText`='', `ReqCreatureOrGOId1`='20477', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9904';
UPDATE `quest_template` SET `RequestItemsText`='I take it Terrorclaw lives no more?', `IncompleteEmote`='1' WHERE `entry`='9904';
UPDATE `quest_template` SET `RequestItemsText`='I take it Terrorclaw lives no more?', `IncompleteEmote`='1' WHERE `entry`='9904';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9846';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='62', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9847', `RewOrReqMoney`='27000', `RewXpOrMoney`='24000', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Spirits of the Feralfen', `Objectives`='Bring 10 Feralfen Protection Totems to Seer Janidi at Zabra\'jin.', `Details`='The most powerful tribe of Lost Ones in the marsh, the Feralfen, are said to possess powerful medicine. There may be no truth to such rumors, but anything that might help me channel the spirits of this world cannot be ignored.$B$BFind the Feralfen mystics, hunters and druids, $N, and capture their totems. Everything I need to know should be apparent from the carvings.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24497', `ReqItemCount1`='10', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9846';
UPDATE `quest_template` SET `RequestItemsText`='What do you have there, $N?', `CompleteEmote`='1' WHERE `entry`='9820';
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. The presence of these ogres so close to our outpost does have me worried, though. It seems like they\'ve been filtering down from the northern mountains for some time.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9820';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9822';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9823', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Impending Attack', `Objectives`='Bring the Ango\'rosh Attack Plans to Shadow Hunter Denjai in Zabra\'jin.', `Details`='The position of the ogres\' mushroom-cutting operation can\'t be an accident. I can\'t escape the suspicion that they\'re preparing for an attack on Zabra\'jin.$B$BI must know for certain, $N. The ogres have another outpost to the northwest, the Ango\'rosh Grounds. If they\'re staging for an attack, there will be evidence of their plans there. Go there, $N and search the camp for signs of their intentions. Return to me with anything that might be suspicious.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24471', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9822';
UPDATE `quest_template` SET `RequestItemsText`='So you wish to claim the bounty on Chieftain Mummaki?', `CompleteEmote`='1' WHERE `entry`='10117';
UPDATE `quest_template` SET `RequestItemsText`='Have you found proof of the ogres\' intentions?', `CompleteEmote`='1' WHERE `entry`='9822';
UPDATE `quest_template` SET `RequestItemsText`='The sound seems to have receded into the distance. Is that wishful thinking or have you really done something about the problem?', `IncompleteEmote`='1' WHERE `entry`='9841';
UPDATE `quest_template` SET `RequestItemsText`='Have you got the mushrooms, mon?', `CompleteEmote`='1' WHERE `entry`='9814';
UPDATE `quest_template` SET `RequestItemsText`='Have you got the mushrooms, mon?', `CompleteEmote`='1' WHERE `entry`='9814';
UPDATE `quest_template` SET `RequestItemsText`='Have you got the mushrooms, mon?', `CompleteEmote`='1' WHERE `entry`='9814';
UPDATE `quest_template` SET `OfferRewardText`='These be excellent, mon!$B$BI\'ll tell you what. Since you been a good sport and helped with the mushrooms, I\'ll let you in on the fun!', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '92', `OfferRewardEmote4` = '0' WHERE `entry`='9814';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9816';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='24470', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25611', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25612', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25610', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Have You Ever Seen One of These?', `Objectives`='Take the Murloc Cage and place it on the flat rock near Daggerfen Village.', `Details`='This marsh be missin\' one thing, mon! There be no murlocs here.$B$BDon\'t worry, mon, I got a plan to fix the problem. See Gargle \'n\' Gurgle over there? I plan to give the gift o\' murlocs to the Lost Ones!$B$BTake this cage with you to Daggerfen Village an\' release \'em in the northeastern cluster of huts. Now you know I can\'t be riskin\' Gargle \'n\' Gurgle with you, but I\'ll give you a cage full o\' colorful young murlocs. Just set it on the flat rock you be findin\' up there and open the door!', `EndText`='', `ReqCreatureOrGOId1`='18152', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='Release Murlocs at Daggerfen Village', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9816';
UPDATE `quest_template` SET `RequestItemsText`='<Witch Doctor Tor\'gash grins.>$B$BDid the lil\' Lost Ones like their gift?', `IncompleteEmote`='11' WHERE `entry`='9816';
UPDATE `quest_template` SET `RequestItemsText`='Have you gathered those totems?', `CompleteEmote`='1' WHERE `entry`='9846';
UPDATE `quest_template` SET `OfferRewardText`='Hmm... They seem to be divided between images of a serpent spirit and a bird spirit. No self-respecting Darkspear troll engages in bird worship. Their spirits are weak, capricious, and best left to the Amani.$B$BBut the serpent, $N, the serpent wields considerable power and this is the spirit I shall study.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9846';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9847';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='24498', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25620', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25621', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='31770', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='A Spirit Ally?', `Objectives`='Take the Feralfen Totem to the foot of the stairs at the Boha\'mu Ruins and plant it in the ground. Report your findings to Seer Janidi at Zabra\'jin.', `Details`='We must find out how much power this Feralfen snake spirit possesses and whether it can be bent to our will. Imagine what I could do with the powers of an Outland spirit at my command!$B$BTake this totem with you and make your way to the foot of the stairs leading to the Boha\'mu Ruins. Plant the totem in the ground and it should do the rest. The spirit should not be able to tell who has used the totem until it has manifested.', `EndText`='', `ReqCreatureOrGOId1`='18185', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='24498', `ReqItemCount2`='1', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='Summon Serpent Spirit', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9847';
UPDATE `quest_template` SET `RequestItemsText`='Were you able to summon the Feralfen spirit?', `IncompleteEmote`='1' WHERE `entry`='9847';
UPDATE `quest_template` SET `OfferRewardText`='Oh, good... help finally!  There\'s just so much to do, and I need to stay here to organize it all.$B$BI hope that you\'re ready to get your hands dirty.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9697';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9701';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9702', `RewOrReqMoney`='29000', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='140', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Observing the Sporelings', `Objectives`='Investigate the Spawning Glen in Zangarmarsh, and then report back to Watcher Leesa\'oh at the Cenarion Watchpost in Zangarmarsh with your findings.', `Details`='We need to learn all that we can of the sporelings at Sporeggar and their relationship to the creatures around them.  One way to do that is what I\'m doing; passive observation while making a note of their interactions.$B$BI need you to head over to the Spawning Glen to the west.  Investigate the whole area and then return to tell me what you saw.', `EndText`='Investigate the Spawning Glen', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9701';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9743';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Natural Enemies', `Objectives`='Fahssn at the Spawning Glen in Zangarmarsh wants you to bring him 6 Bog Lord Tendrils.', `Details`='Us sporelings and the bog lords have never gotten along well.  In the past, we\'ve managed to keep them at bay with spears and stones.  Lately they seem to have become more aggressive... or more desperate.  They do not fear us or our weapons.$B$BYou are much scarier and better armed than us.  If you were to fight the boglords for us, we\'d be forever in your debt!  Bring me their tendrils so I know how many you\'ve killed.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24291', `ReqItemCount1`='6', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9743';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9739';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='63', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='37500', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Sporelings\' Plight', `Objectives`='Fahssn at the Spawning Glen wants you to collect 10 Mature Spore Sacs.', `Details`='You there!  You must help us!$B$BThe fungal giants are devouring all of our spore sacs!  You must do something, or we\'ll lose our young!$B$BThe spore sacs start out large and become smaller as the air inside them is depleted.  Look for the small, mature spore sacs and save as many of them as you can!', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24290', `ReqItemCount1`='10', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9739';
UPDATE `quest_template` SET `RequestItemsText`='How\'s the bog lord slaying going?  Teach those brutes not to come into sporeling territory!', `CompleteEmote`='0' WHERE `entry`='9743';
UPDATE `quest_template` SET `RequestItemsText`='The spore sacs!  Did you get them?', `CompleteEmote`='0' WHERE `entry`='9739';
UPDATE `quest_template` SET `OfferRewardText`='What?!  The bog lords of Quagg Ridge are EATING the sporelings\' pods?  This isn\'t good!', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9701';
UPDATE `quest_template` SET `DetailsEmote1`='6', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9702';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9708', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='A Question of Gluttony', `Objectives`='Collect 10 pieces of Discarded Nutriment and then return to Watcher Leesa\'oh at the Cenarion Watchpost in Zangarmarsh.', `Details`='I was wondering why the bog lords were crossing the road to go to the Spawning Glen - they must be starving for some reason.  This just will not do!$B$BI mean, normally I wouldn\'t get involved, but if they continue to eat all of the sporeling pods they\'ll wipe them out!$B$BHere\'s what we\'ll do: I\'ll stay here and you head to the Quagg Ridge to the east and look for dietary clues as to why they\'re raiding the sporelings.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24233', `ReqItemCount1`='10', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9702';
UPDATE `quest_template` SET `RequestItemsText`='Be sure that you collect all of the evidence carefully, $c!  We\'re fitting the pieces of a giant puzzle together here.  A mistake on your part could lead us to the wrong conclusions.$B$BThen where would we be in our understanding of Zangarmarsh\'s ecology?', `CompleteEmote`='5' WHERE `entry`='9702';
UPDATE `quest_template` SET `RequestItemsText`='How\'s the bog lord slaying going?  Teach those brutes not to come into sporeling territory!', `CompleteEmote`='0' WHERE `entry`='9743';
UPDATE `quest_template` SET `OfferRewardText`='You made it back alive!  I\'ll let the other sporelings know about you!  $N, the giant slayer!', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9743';
UPDATE `quest_template` SET `RequestItemsText`='The spore sacs!  Did you get them?', `CompleteEmote`='0' WHERE `entry`='9739';
UPDATE `quest_template` SET `OfferRewardText`='You\'ve done it!  You have my people\'s thanks.$B$BI hope you understand... this is where our young ones come from.  We can\'t let these beasts devour the sacs!', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9739';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9919';
UPDATE `quest_template` SET `RequestItemsText`='You killed many giants, but there are still many more left.  And they\'re still attacking our spore sacs!', `CompleteEmote`='0' WHERE `entry`='9744';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9797';
UPDATE `quest_template` SET `OfferRewardText`='I thought so. I can hear the difference already. I\'ll finally be able to get back to work, thanks to you. If you ever find yourself in need of tradeskill supplies, don\'t forget ol\' Gambarinka!', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9841';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9842';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='27756', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='27753', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='27754', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Sharpest Blades', `Objectives`='Bring 10 Marshfang Slicer Blades to Gambarinka at Zabra\'jin.', `Details`='The damp atmosphere of the marsh has taken a toll on my metal tools. It\'s made woodworking a lot more difficult than it ought to be, so I\'ve given up on metal blades.$B$BIt turns out that the marshfang slicers living to the south and west of town grow blades that are sharper than any steel I\'ve ever owned. They\'re also resistant to rust and wear. It\'s just a little tricky to attach them to a handle, but I think I\'ve got it figured out. I\'d appreciate any blades you could bring me.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24493', `ReqItemCount1`='10', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9842';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9797';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9795';
UPDATE `quest_template` SET `RequestItemsText`='Have you found proof of the ogres\' intentions?', `CompleteEmote`='1' WHERE `entry`='9822';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9911';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='25459', `SpecialFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Count of the Marshes', `Objectives`='Bring "Count" Ungula\'s Mandible to Watcher Leesa\'oh.', `Details`='This bloody mandible comes from an unbelievably large creature. The nether ray that it belonged to has to be the largest ever seen in Zangarmarsh. Judging from the condition of the mandible, the count must\'ve abandoned a diet of carrion in favor of living flesh.$B$BSurely the Cenarion Expedition would be interested in such a specimen. Watcher Leesa\'oh has a small camp to the west of Quagg Ridge.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='25459', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9911';
UPDATE `quest_template` SET `OfferRewardText`='At last! They say every great fisherman has a story of "the one that got away," but I haven\'t yet met a creature I couldn\'t beat one way or another.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9904';
UPDATE `quest_template` SET `OfferRewardText`='I\'m sure the old boy must\'ve seen his days coming to an end. With all these new arrivals, the old order couldn\'t stand. It\'s just as well his spirit is at rest now.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9903';
UPDATE `quest_template` SET `RequestItemsText`='Have you managed to scare up some of those marshfang blades?', `CompleteEmote`='1' WHERE `entry`='9842';
UPDATE `quest_template` SET `OfferRewardText`='These should keep me supplied for some time to come! I think some of the others have begun to take notice. I\'ve had several offers to buy my blades already. Selling them on the side might provide better business than my customary goods.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9842';
UPDATE `quest_template` SET `RequestItemsText`='So you wish to claim the bounty on Chieftain Mummaki?', `CompleteEmote`='1' WHERE `entry`='10117';
UPDATE `quest_template` SET `RequestItemsText`='Have you found proof of the ogres\' intentions?', `CompleteEmote`='1' WHERE `entry`='9822';
UPDATE `quest_template` SET `OfferRewardText`='<Shadow Hunter Denjai examines the plans.>$B$BI knew it! The stench of ogres always carries an implicit threat. Now that we have proof of their intentions, we must act before they do.', `OfferRewardEmote1` = '5', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9822';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9823';
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, mon! I do hope they had a good time!', `OfferRewardEmote1` = '11', `OfferRewardEmote2` = '153', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9816';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9823';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='62000', `RewXpOrMoney`='64200', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='25617', `RewItemCount1`='1', `RewItemId2`='27553', `RewItemCount2`='5', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Us or Them', `Objectives`='Kill Overlord Gorefist, 10 Ango\'rosh Maulers, and 10 Ango\'rosh Souleaters and report back to Shadow Hunter Denjai in Zabra\'jin.', `Details`='In order to end the Ango\'rosh threat, we must kill their leader, Overlord Gorefist. We\'ll do better than that, though. We\'ll make an example of the overlord and his followers.$B$BGo to the Ango\'rosh Stronghold and deal with our foes. The stronghold is located in a cave on a small island to the northwest of Zabra\'jin. You\'ll see a bridge made from a fallen mushroom beyond the Ango\'rosh Camp.$B$BShow no mercy, $N. They certainly wouldn\'t spare any of us.', `EndText`='', `ReqCreatureOrGOId1`='18160', `ReqCreatureOrGOCount1`='1', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='18120', `ReqCreatureOrGOCount2`='10', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='18121', `ReqCreatureOrGOCount3`='10', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9823';
UPDATE `quest_template` SET `RequestItemsText`='The threat of the Ango\'rosh looms over us. Have you eliminated their leader?', `IncompleteEmote`='1' WHERE `entry`='9823';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10118';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='31000', `RewXpOrMoney`='51600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Message to the Daggerfen', `Objectives`='Slay 3 Daggerfen Assassins and 15 Daggerfen Muckdwellers and return to Shadow Hunter Denjai at Zabra\'jin.', `Details`='Of all the Lost One tribes in Zangarmarsh, the Daggerfen are the most cunning and most aggressive. They are highly organized and make no secret of the fact that they desire control over the other Lost Ones in the marsh.$B$BTheir attacks have already taken quite a toll on my scouts and messengers. I cannot afford to lose any more men.$B$BIf we don\'t act soon, they\'ll have complete control over the roads and Zabra\'jin will effectively be surrounded.', `EndText`='', `ReqCreatureOrGOId1`='18116', `ReqCreatureOrGOCount1`='3', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='18115', `ReqCreatureOrGOCount2`='15', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='10118';
UPDATE `quest_template` SET `RequestItemsText`='The only thing the Daggerfen understand is swift and brutal action. They should know that we will not let them have their way.', `IncompleteEmote`='1' WHERE `entry`='10118';
UPDATE `quest_template` SET `RequestItemsText`='So you wish to claim the bounty on Chieftain Mummaki?', `CompleteEmote`='1' WHERE `entry`='10117';
UPDATE `quest_template` SET `OfferRewardText`='You have my thanks, $N. I was beginning to think that I was going to have to take a substantial part of the garrison up there and deal with Mummaki myself. Of course, there\'s no telling what might have happened to Zabra\'jin then.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='10117';
UPDATE `quest_template` SET `RequestItemsText`='Were you able to summon the Feralfen spirit?', `CompleteEmote`='1' WHERE `entry`='9847';
UPDATE `quest_template` SET `OfferRewardText`='<You tell Seer Janidi about what happened when you used the totem.>$B$BThe spirit attacked you? It must have a higher affinity for those Lost Ones than I\'d thought. There\'s no way to compel it to serve me without expending considerable effort. I\'ll have to search for a new source of power in this wretched world.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9847';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Excellent.  Keep bringing me more plant parts if you find any.$B$B<This quest is repeatable up to Honored reputation.>', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9784';
-- UPDATE `quest_template` SET `ZoneOrSort`='3521', `QuestLevel`='64', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='0', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='24402', `RewItemCount1`='1', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Identify Plant Parts', `Objectives`='', `Details`='', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24401', `ReqItemCount1`='10', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='0', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `RequestItemsText`='I could still use some more plant parts.  With the lakes losing their water, I\'ve a feeling the number of invasive species is on the rise.  I need more numbers to back up my theory, however.', `CompleteEmote`='0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='Excellent.  Keep bringing me more plant parts if you find any.$B$B<This quest is repeatable up to Honored reputation.>', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9784';
UPDATE `quest_template` SET `OfferRewardText`='You are a welcome sight, $N.  Matters at the Cenarion Refuge have only gotten worse since you left.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9732';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9876';
-- UPDATE `quest_template` SET `ZoneOrSort`='3905', `QuestLevel`='65', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewXpOrMoney`='6600', `RewSpell`='0', `SrcItemId`='0', `SpecialFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Failed Incursion', `Objectives`='Ysiel Windsinger wants you to look for signs of Cenarion Expedition Druids near the entrance to Coilfang Reservoir.', `Details`='I sent a small group of our druids to investigate the drain you discovered inside of Serpent Lake.  They were expected to return shortly after.  Needless to say, they did not.$B$BYou are amongst our most capable allies; I ask you to seek them and find out what became of them.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9876';
UPDATE `quest_template` SET `RequestItemsText`='Is it done, $c?', `CompleteEmote`='0' WHERE `entry`='9720';
UPDATE `quest_template` SET `OfferRewardText`='It is done, then.  The marsh has been saved for now.$B$BDon\'t think for a second that this will be the last we hear of the naga.  We must remain vigilant of our enemy as we continue with our mission in Outland.  ', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9720';
-- random stuff:
update creature_addon set auras='30831 0' where guid in (select guid from creature where id=684);
delete from `item_loot_template` where `entry` in (11422, 11423);
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11423','10559','33','-1','1','3','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11423','10560','33','-1','2','4','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11423','10561','34','-1','1','3','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11423','10603','5','0','1','1','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11423','10606','5','0','1','1','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11423','11827','5','0','1','1','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11422','4394','33','-1','4','6','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11422','4417','5','0','1','1','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11422','4461','5','0','1','1','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11422','10514','33','-1','6','8','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11422','10562','34','-1','3','5','0','0','0','0');
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values('11422','11828','5','0','1','1','0','0','0','0');
UPDATE `gameobject_template` SET `size` = '1.500000' WHERE `entry` = '187334';
UPDATE `gameobject_template` SET `size` = '1.500000' WHERE `entry` = '187365';

-- Guid-ed part
-- dont forget gameevent go guid !!!
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('12029','179697','0','-13204.4','276.63','21.857','4.12372','0','0','0.881833','-0.471562','8000','0','1');
insert ignore into `game_event_gameobject` (`guid`, `event`) values('12029','16');

INSERT IGNORE INTO `gameobject` (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs,animprogress,state) VALUES 
('31232','187365','530','-1709.686279','5461.005859','-7.927668','1.850049','0.000000','0.000000','0.798636','0.601815','180','100','1'),
('42950','187365','530','-1745.807495','5533.837891','-7.926137','-0.977384','0.000000','0.000000','0.469472','-0.882948','180','100','1'),
('42951','187334','530','-1987.361084','5320.466309','-6.776728','-1.239184','0.000000','0.000000','0.580703','-0.814116','180','100','1'),
('42952','187334','530','-2025.808228','5396.902832','-6.562429','2.111848','0.000000','0.000000','0.870356','0.492424','180','100','1'),
('42953','187299','530','2936.958252','3644.469971','132.578217','-1.466077','0.000000','0.000000','0.669131','-0.743145','180','100','1'),
('42954','187299','530','2936.460205','3663.392334','132.578217','1.989675','0.000000','0.000000','0.838671','0.544639','180','100','1');

-- cosmetical issue, adds missing control panel
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(42955, 182107, 530, -213.254, 6302.23, 21.7091, 3.9619, 0, 0, 0.91706, -0.39875, 25, 0, 1);

INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(19, 1061, 0, 0, 0, -11514, 724.968, 61.104, 3.381, 540, 0, 0, -11514, 724.968, 61.104, 3.381, 2000, 0, 0, 0);

DELETE FROM `creature` WHERE `id` = '22941';
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('1448', '22941', '530', '19755', '0', '2785.99', '5835.66', '36.052', '1.84254', '360', '0', '0', '2785.99', '5835.66', '36.052', '1.84254', '9100', '0', '0', '0');

-- notice same guid for addon table!!
INSERT IGNORE INTO `creature` (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, spawn_position_x, spawn_position_y, spawn_position_z, spawn_orientation, MovementType) VALUES
('4216','7024','0','-11035.215820','619.353577','35.419643','3.979351','180','5','-11035.215820','619.353577','35.419643','3.979351','0');
REPLACE INTO `creature_addon` (guid,mount,bytes0,bytes1,bytes2,emote,auras) VALUES
('4216','0','16843008','33554440','4097','0','9572 0');

delete from `gameobject` where `id` = 2068;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(42956, 2068,0,169.068,-4708.97,14.496,1.77217,0,0,0.774602,0.63245,600,0,1),
(42957, 2068,0,110.5,-4731.39,6.0799,6.01725,0,0,0.132577,-0.991173,600,0,1),
(42958, 2068,0,73.8652,-4731,6.83987,4.63888,0,0,0.732612,-0.680647,600,0,1),
(42959, 2068,0,42.3367,-4696.65,8.92782,1.4698,0,0,0.670512,0.741898,600,0,1),
(42960, 2068,0,-2.20092,-4708.89,5.64225,4.18336,0,0,0.867381,-0.497645,600,0,1),
(42961, 2068,0,-4.95718,-4677.2,10.6736,4.18728,0,0,0.866402,-0.499347,600,0,1),
(42962, 2068,0,-32.7115,-4565.69,13.3694,5.83269,0,0,0.22335,-0.974738,600,0,1),
(42963, 2068,0,-150.19,-4500.43,10.3708,4.19121,0,0,0.865421,-0.501046,600,0,1),
(42964, 2068,0,-139.114,-4504.97,11.8086,5.64812,0,0,0.312224,-0.950009,600,0,1),
(42965, 2068,0,-185.429,-4490.78,12.7965,1.61117,0,0,0.721237,0.692689,600,0,1),
(42966, 2068,0,-87.335,-4628.46,12.0125,0.0482286,0,0,0.024112,0.999709,600,0,1),
(42967, 2068,0,202.78,-4719.58,4.38119,0.264205,0,0,0.131719,0.991287,600,0,1),
(42968, 2068,0,-109.803,-4657.7,6.07268,5.98584,0,0,0.148126,-0.988968,600,0,1),
(42969, 2068,0,-212.407,-4574.24,10.6317,6.20182,0,0,0.0406693,-0.999173,600,0,1),
(42970, 2068,0,-299.459,-4593.36,10.0664,2.82068,0,0,0.987155,0.159767,600,0,1),
(42971, 2068,0,-334.099,-4638.44,9.2996,6.06831,0,0,0.107233,-0.994234,600,0,1),
(42972, 2068,0,-348.294,-4609.19,8.82804,6.11543,0,0,0.0837808,-0.996484,600,0,1),
(42973, 2068,0,-490.843,-4609.44,7.49358,1.92533,0,0,0.820716,0.571337,600,0,1),
(42974, 2068,0,-629.203,-4639.44,10.8329,4.5839,0,0,0.751045,-0.660252,600,0,1),
(42975, 2068,0,-633.948,-4504.96,13.3788,1.5562,0,0,0.701926,0.712249,600,0,1),
(42976, 2068,0,-646.094,-4597.34,9.45819,4.87059,0,0,0.649023,-0.760769,600,0,1),
(10643, 2068,0,-670.827,-4558.45,5.34784,4.68209,0,0,0.717738,-0.696314,600,0,1),
(10644, 2068,0,-728.32,-4509.5,6.94957,2.84818,0,0,0.989258,0.146179,600,0,1),
(10645, 2068,0,-797.81,-4462.06,10.0952,0.900396,0,0,0.435144,0.900361,600,0,1),
(10646, 2068,0,-668.192,-4494.08,13.4311,2.95028,0,0,0.995429,0.0955085,600,0,1),
(10647, 2068,0,-601.148,-4565.05,9.35443,1.13846,0,0,0.538983,0.842317,600,0,1),
(10648, 2068,0,-530.033,-4595.79,9.43865,1.57196,0,0,0.707517,0.706696,600,0,1),
(10649, 2068,0,-337.308,-4556.04,11.4174,4.85493,0,0,0.65496,-0.755664,600,0,1),
(10650, 2068,0,-485.742,-4545.81,10.5028,1.45807,0,0,0.666152,0.745816,600,0,1),
(10651, 2068,0,-455.84,-4549.19,6.53984,1.45415,0,0,0.664686,0.747123,600,0,1),
(10652, 2068,0,-411.132,-4508.54,10.3806,1.43844,0,0,0.658798,0.75232,600,0,1),
(10653, 2068,0,-338.875,-4485.37,10.8434,1.43059,0,0,0.655838,0.754901,600,0,1),
(42977, 2068,0,-375.889,-4431.58,12.225,1.43844,0,0,0.658798,0.75232,600,0,1),
(42978, 2068,0,-875.652,-4402.97,10.0883,1.39917,0,0,0.643899,0.76511,600,0,1),
(42979, 2068,0,-933.706,-4412.86,4.63069,1.44236,0,0,0.660273,0.751026,600,0,1),
(42980, 2068,0,-827.062,-4406.71,10.6547,1.42273,0,0,0.652868,0.757471,600,0,1),
(42981, 2068,0,-985.493,-4394.47,10.8431,1.30928,0,0,0.608876,0.793266,600,0,1),
(42982, 2068,0,-1017.96,-4393.38,8.72369,0.472835,0,0,0.234222,0.972183,600,0,1);

DELETE FROM `gameobject` WHERE `id` = '181758';
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('42983', '181758', '530', '-1836.19', '-12074.9', '31.9298', '6.18632', '0', '0', '0', '0', '240', '100', '1');

-- Slaag spawn
DELETE FROM `creature` WHERE `id` = '22199';
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`,`position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`,`curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('4222', '22199', '530', '0', '0', '-1651.75', '5994.35', '209.355', '6.21465', '1500', '0', '0', '-1651.75', '5994.35', '209.355', '0', '140000', '0', '0', '0');

delete from gameobject where id IN (176545, 176544);
INSERT IGNORE INTO `gameobject` (guid, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
-- Remains of Eva Sarkhoff
(42984, '176544','289','196.037','-73.308','85.2283','0.0848238','0','0','0.0423992','0.999101','180','0','1'),
-- Remains of Lucien Sarkhoff
(42985, '176545','289','167.531','-75.2098','85.2283','3.18715','0','0','0.999741','-0.0227755','180','0','1');

-- spawned cage for the princess
INSERT IGNORE INTO `gameobject` (`guid`,`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`) VALUES
(42986,181928, 530, -2519.77, -12301.9, 14.2378, 3.19395, 0, 0, 0.999657, -0.0261757, 180, 0);

-- Spirit Healer for Raven Hill
INSERT IGNORE INTO `creature` VALUES (12783,6491,0,0,0,-10602.4,293.623,31.7491,3.09761,25,0,0,-10602.4,293.623,31.7491,0,4900,0,0,1);

-- Spirit Healer (Twilight Ridge)
INSERT IGNORE INTO `creature` VALUES (16466,6491,530,0,0,-1295.76,9170.33,217.797,0.295307,25,0,0,-1295.76,9170.33,217.797,0,4900,0,0,1);

-- Let's backup tele table
CREATE TABLE IF NOT EXISTS `game_tele_backup` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `map` int(10) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='Tele Command';

INSERT IGNORE INTO `game_tele_backup` SELECT * FROM `game_tele`;

-- new game_tele
delete from `game_tele`;
insert  into `game_tele`(`id`,`position_x`,`position_y`,`position_z`,`orientation`,`map`,`name`) values (1,1400.61,-1493.87,54.7844,4.08661,0,'RuinsOfAndorhal'),(2,1728.65,-1602.25,63.429,1.6558,0,'WesternPlaguelands'),(3,659.762,-959.316,164.404,0.433716,0,'Strahnbrad'),(4,1269.64,-2556.21,93.6088,0.620623,0,'Scholomance'),(5,1869.13,-3213.89,124.624,1.9126,0,'TheMarrisStead'),(6,-1256.99,-1189.47,38.9804,3.82979,0,'DunGarok'),(7,-483.455,-1426.23,89.1916,1.93697,0,'DurnholdeKeep'),(8,-34.1467,-923.366,54.5576,0.15019,0,'TarrenMill'),(9,-436.657,-581.254,53.5944,1.25917,0,'HillsbradFoothills'),(10,-853.221,-533.529,9.98556,0.242866,0,'Southshore'),(11,629.684,-348.068,151.105,2.85588,0,'RuinsOfAlterac'),(12,335.479,204.771,42.1124,3.42294,0,'Dalaran'),(13,370.763,-491.355,175.361,5.37858,0,'AlteracMountains'),(14,7360.86,-6803.3,44.2942,5.83679,530,'Ghostlands'),(15,-1993.62,-11475.8,63.9657,5.29437,530,'BloodmystIsle'),(16,-2474.89,-11380.1,37.3419,1.59514,530,'Nazzivian'),(17,-1897.51,-10710.7,110.708,1.17888,530,'TheVectorCoil'),(18,-1944.5,-11873.7,49.3983,6.04835,530,'BloodWatch'),(19,-1512.97,-11378.7,67.4006,0.326728,530,'Axxarien'),(20,-1205.72,-12428.7,94.8675,6.23292,530,'WyrmscarIsland'),(21,-1933.1,-12871.3,85.896,5.32971,530,'BloodcurseIsle'),(22,-2676.89,-12141.3,17.2281,5.52763,530,'Kessel\'sCrossing'),(23,-5094.34,-11129.6,25.058,2.78659,530,'SilvermystIsle'),(24,-4216.87,-12336.9,4.34247,6.02008,530,'AzuremystIsle'),(25,-3965.7,-11653.6,-138.844,0.852154,530,'TheExodar'),(26,-3378.24,-12347.1,22.5696,0.068326,530,'StillpineHold'),(27,-4190.85,-12516.5,44.5276,1.34225,530,'AzureWatch'),(28,-1551.2,-1808.1,67.5219,3.119,0,'StromgardeKeep'),(29,-4021.4,-13582.1,54.7153,2.06953,530,'AmmenVale'),(30,-4042.22,-13779.5,74.8069,2.37976,530,'CrashSite'),(31,6545.51,-6406.76,32.4218,2.39547,530,'Deatholme'),(32,120.7,1776,43.46,4.7713,568,'za'),(33,6851.78,-7972.57,179.242,4.64691,530,'Zul\'Aman'),(34,7169.99,-7082.62,56.1741,5.68364,530,'SanctumOfTheSun'),(35,7534.77,-6413.43,13.0591,2.45016,530,'SanctumOfTheMoon'),(36,7895.49,-6188.39,19.5624,2.39911,530,'GoldenmistVillage'),(37,7564.25,-6872.23,96.0413,4.3579,530,'Tranquillien'),(38,-4074.39,-3459.53,281.388,0.859539,0,'GrimBatol'),(39,-4086.41,-2604.38,44.7943,1.58996,0,'DunAlgaz'),(40,-2600.48,-2350.81,82.9572,0.914501,0,'DunModr'),(41,-1508.51,-2732.06,32.4986,3.35708,0,'ArathiHighlands'),(42,-941.007,-3526.66,70.935,3.48668,0,'Hammerfall'),(43,-1246.61,-2529.32,20.6098,0.741709,0,'RefugePointe'),(44,-3769.32,-744.26,8.01027,1.95752,0,'MenethilHarbor'),(45,-3242.81,-2469.04,15.9226,6.03924,0,'Wetlands'),(46,1811.78,-4410.5,-18.4704,5.20165,1,'RagefireChasm'),(47,7960.27,-7257.01,136.908,0.234555,530,'SuncrownVillage'),(48,8561.26,-7920.25,154.912,3.21279,530,'Tor\'Watha'),(49,9079.92,-7193.23,55.6013,5.94597,530,'EversongWoods'),(50,-1419.13,2908.14,137.464,1.57366,1,'Maraudon'),(51,8664.16,-6357.99,55.1721,2.0504,530,'Saltheril\'sHaven'),(52,-4817.04,-2656.26,327.12,4.68835,0,'AlgazStation'),(53,-5163.54,925.423,257.181,1.57423,0,'Gnomeregan'),(54,8714.14,-6650.33,72.7517,2.39205,530,'FairbreezeVillage'),(55,9144.45,-6273.75,22.6069,5.69229,530,'WestSanctum'),(56,10331.1,-6235.42,26.7759,1.94594,530,'SunstriderIsle'),(57,10353.4,-6395.35,38.5292,1.45664,530,'TheSunspire'),(58,9738.47,-6678.72,0.626843,1.08358,530,'RuinsOfSilvermoon'),(59,9514.33,-6822.1,16.4907,1.60979,530,'FalconwingSquare'),(60,9013.29,-6930.75,17.8158,2.99131,530,'TheDeadScar'),(61,-6071.37,-2955.16,209.782,0.015708,0,'Uldaman'),(62,-5289.82,-3482.56,297.605,6.2238,0,'TheLoch'),(63,-5202.94,-2855.18,336.822,0.37651,0,'LochModan'),(64,-5352.54,-2948.53,323.78,5.34258,0,'Thelsamar'),(65,-4750.07,-3328.02,310.257,4.61609,0,'StonewroughtDam'),(66,-5451.55,-656.992,392.675,0.66789,0,'DunMorogh'),(67,-4918.88,-940.406,501.564,5.42347,0,'Ironforge'),(68,-5597.31,-483.398,396.981,3.17566,0,'Kharanos'),(69,-5385.04,310.278,394.151,5.19649,0,'BrewnallVillage'),(70,-6231.77,332.993,383.171,0.480178,0,'ColdridgeValley'),(71,9317.38,-7856.4,63.2953,5.35693,530,'DuskwitherSpire'),(72,9487.69,-7279.2,14.2866,6.16478,530,'SilvermoonCity'),(73,4968.71,2938,122.667,3.55118,530,'Eco-DomeFarfield'),(74,4492.85,3026.12,133.597,5.21622,530,'Eco-DomeSutheron'),(75,4150.19,3015.92,339.188,4.0499,530,'TheStormspire'),(76,3830.23,3426.5,88.6145,5.16677,530,'Netherstorm'),(77,-6398.46,-3166.67,299.812,0.769213,0,'AngorFortress'),(78,-6779.2,-3423.64,241.667,0.647481,0,'Badlands'),(79,-6692.48,-2175.31,244.145,0.427571,0,'Kargath'),(80,3449.08,2948.37,144.564,1.35366,530,'Eco-DomeMidrealm'),(81,4035.83,1435.5,-123.376,5.73225,530,'CelestialRidge'),(82,-1.23165,0.014346,-0.204293,0.00984,552,'arca'),(83,3308.92,1340.72,505.56,4.94686,530,'TheArcatraz'),(84,3407.11,1488.48,182.838,5.59559,530,'TheBotanica'),(85,40.0395,-28.613,-1.1189,2.35856,553,'bota'),(86,2867.12,1549.42,252.159,3.82218,530,'TheMechanar'),(87,-28.906,0.680314,-1.81282,6.26827,554,'mech'),(88,3088.49,1381.57,184.863,4.61973,530,'TheEye'),(89,-4657.3,-2519.35,81.0529,4.54808,1,'RazorfenDowns'),(90,-10.8021,-1.15045,-2.42833,6.22821,550,'eye'),(91,2280.68,2273.98,94.6903,4.34107,530,'Kirin\'VarVillage'),(92,3099.36,1518.73,190.3,4.72592,530,'TempestKeep'),(93,2498.92,2368.74,134.379,4.71414,530,'SunfuryHold'),(94,3043.33,3681.33,143.065,5.07464,530,'Area52'),(95,2210.93,4763.72,157.42,4.60576,530,'Mok\'NathalVillage'),(96,1713.82,4920.47,169.989,5.92915,530,'VekhaarStand'),(97,2033.17,5415.61,144.698,0.117995,530,'Death\'sDoor'),(98,1910.63,5556.25,263.017,6.25981,530,'Toshley\'sStation'),(99,2830.32,5252.84,264.143,5.26235,530,'Razaan\'sLanding'),(100,3815.16,6110.93,265.862,1.15472,530,'Bash\'irLanding'),(101,3037.67,5962.86,130.774,1.27253,530,'Blade\'sEdgeMountains'),(102,2976.85,5511.01,144.637,3.86042,530,'Evergrove'),(103,3253.49,5333.48,145.558,5.27728,530,'VeilRuuan'),(104,62.7842,35.462,-3.9835,1.41844,565,'gruul'),(105,3530.06,5104.08,3.50861,5.51117,530,'Gruul\'sLair'),(106,2839.44,5930.17,11.1002,3.16284,530,'CircleOfBloodArena'),(107,3616.06,6635.92,130.007,4.95354,530,'Grishnath'),(108,3565.61,6890.04,141.477,4.50586,530,'Raven\'sWood'),(109,-601.294,-4296.76,37.8115,1.65401,1,'ValleyOfTrials'),(110,2297.68,7293.12,365.617,1.28888,530,'Ogri\'la'),(111,2018.91,6854.47,171.409,0.087216,530,'Sylvanaar'),(112,-8372.77,-2754.46,186.622,3.43486,0,'Morgan\'sVigil'),(113,-6939.52,-1263.21,179.709,0.200595,0,'TheCauldron'),(114,-6506.47,-1149.95,307.708,4.18256,0,'ThoriumPoint'),(115,-813.097,-4880.08,18.995,4.42647,1,'Sen\'jinVillage'),(116,-1041.59,-5346.67,0.218679,4.0102,1,'EchoIsles'),(117,326.81,-4706.65,15.3665,4.16414,1,'RazorHill'),(118,1629.36,-4373.39,31.2564,3.54839,1,'Orgrimmar'),(119,1623.51,6344.2,-2.54653,3.86891,530,'BloodmaulOutpost'),(120,1340.98,-4638.58,53.5445,5.0328,1,'DurotarZeppelin'),(121,-452.84,-2650.76,95.5209,0.241081,1,'TheCrossroads'),(122,2639.37,6526.93,0.818903,6.17248,530,'BladespireHold'),(123,2314.75,6041.96,142.417,6.24317,530,'ThunderlordStronghold'),(124,-4472.37,1671.36,162.888,3.88687,530,'EclipsePoint'),(125,48.9976,-2715.55,91.6677,0.158612,1,'TheBarrens'),(126,-7012.47,-1065.13,241.786,5.63162,0,'SearingGorge'),(127,1007.78,-4446.22,11.2022,0.20797,1,'Durotar'),(128,-32.7738,2123.59,110.62,0.264264,530,'Reaver\'sFall'),(129,-247.29,910.638,84.3798,1.49341,530,'TheDarkPortalOutland'),(130,-731.607,-2218.39,17.0281,2.78486,1,'WailingCaverns'),(131,-2363.11,-1913.78,95.7829,0.165556,1,'CampTaurajo'),(132,-248,956,84.3628,1.58766,530,'TheStairOfDestiny'),(133,-818.155,-623.043,54.0884,2.15276,30,'AlteracValleyHorde'),(134,-215.738,-309.394,6.66761,3.07325,30,'av'),(135,-4470.28,-1677.77,81.3925,1.16302,1,'RazorfenKraul'),(136,-215.738,-309.394,6.66761,3.07325,30,'AlteracValley'),(137,-3707.79,-2530.37,68.2635,3.31945,1,'ShadyRestInn'),(138,883.187,-489.375,96.7618,3.06932,30,'AlteracValleyAlliance'),(139,-4043.65,-2991.32,36.3984,3.37443,1,'DustwallowMarsh'),(140,-4573.79,-3173.15,34.0877,3.1231,1,'Mudsprocket'),(141,1308.68,1306.03,-9.0107,3.91285,529,'ArathiBasinAlliance'),(142,1054.94,1055.23,-48.2358,0.313367,529,'ab'),(143,-4708.27,-3727.64,54.5589,3.72786,1,'Onyxia\'sLair'),(144,-7390.69,-941.553,169.43,3.90454,0,'TheGrindingQuarry'),(145,-3130.67,-2908.43,34.0976,1.42798,1,'BrackenwallVillage'),(146,-3641.3,-4358.93,8.35467,3.81559,1,'Theramore'),(147,-4969.02,-1726.89,-62.1269,3.7933,1,'ThousandNeedles'),(148,686.053,683.165,-12.9149,0.816022,529,'ArathiBasinHorde'),(149,-4525.63,-791.364,-42.3639,1.09938,1,'Thalanaar'),(150,1017.16,1040.59,-44.9017,0.325149,529,'ArathiBasin'),(151,-5431.78,-2449.38,89.2848,2.32854,1,'FreewindPost'),(152,-7179.34,-921.212,165.821,5.09599,0,'BlackrockDepths'),(153,-6221.35,-3927.64,-58.7495,0.757735,1,'MirageRaceway'),(154,1525.95,1481.66,352.001,3.20756,489,'WarsongGulchAlliance'),(155,-7177.15,-3785.34,8.36981,6.10237,1,'Gadgetzan'),(156,1304.63,1455.89,317.694,0.08639,489,'wsg'),(157,-7931.2,-3414.28,80.7365,0.66522,1,'Tanaris'),(158,-6908.08,-4801.39,8.15214,5.07916,1,'SteamwheedlePort'),(159,1235.54,1427.1,309.715,0.557629,489,'WarsongGulch'),(160,-6801.19,-2893.02,9.00388,0.158639,1,'Zul\'Farrak'),(161,-7943.22,-2119.09,-218.343,6.0727,1,'Un\'GoroCrater'),(162,-7512.38,-1043.39,181.55,0.909809,0,'LothosRiftwaker'),(163,-7538.51,-1063.45,180.981,0.03409,0,'TheMoltenSpan'),(164,930.851,1431.57,345.537,0.015704,489,'WarsongGulchHorde'),(165,-6152.25,-1087.6,-201.435,0.707637,1,'Marshal\'sRefuge'),(166,-11916.9,-1248.36,92.5334,4.72417,309,'zg'),(167,-319.24,99.9,-131.85,3.19,109,'st'),(168,-6382.67,-291.916,-3.07818,4.47432,1,'Valor\'sRest'),(169,-226.8,49.09,-46.03,1.39,70,'ulda'),(170,-229.135,2109.18,76.8898,1.267,33,'sfk'),(171,-11091.2,-1992.38,49.816,0.95178,532,'kara'),(172,-6818.09,733.814,41.5661,2.3082,1,'CenarionHold'),(173,-332.22,-2.28,-150.86,2.77,90,'gnome'),(174,-16.4,-383.07,61.78,2.52637,36,'deadmines'),(175,-7663.74,-1217.4,287.789,5.33945,0,'OrbOfCommand'),(176,-7527.05,-1226.77,285.732,5.29626,0,'BlackrockSpire'),(177,-7426.87,1005.31,1.13359,2.96086,1,'Silithus'),(178,-7664.76,-1100.87,399.679,0.561981,469,'bwl'),(179,164.789,-475.305,116.842,0.022714,229,'BlackwingLair'),(180,138.726,-318.182,70.9562,0.116645,229,'ubrs'),(181,-7494.94,-1123.49,265.547,3.3092,0,'BlackrockMountain'),(182,-8098.67,1525.15,2.77194,3.01977,1,'TheScarabWall'),(183,78.2437,-239.341,55.3424,4.77799,229,'lbrs'),(184,-7733.43,-1510.24,132.792,1.01584,0,'BlackrockStronghold'),(185,-8216.06,1536.36,1.30797,3.0826,1,'GatesOfAhn\'Giraj'),(186,-8409.82,1499.06,27.7179,2.51868,1,'TheRuinsOfAhn\'Qiraj'),(187,-8240.09,1991.32,129.072,0.941603,1,'TheTempleOfAhn\'Qiraj'),(188,-8118.54,-1633.83,132.996,0.089067,0,'BurningSteppes'),(189,1126.64,-459.94,-102.535,3.46095,230,'MoltenCore'),(190,1082.04,-474.596,-107.762,5.02623,409,'mc'),(191,458.32,26.52,-70.67,4.95,230,'brd'),(192,-8213.48,2016,129.072,1.28414,531,'aq40'),(193,-8204.88,-4495.25,9.0091,4.72574,1,'CavernsOfTime'),(194,-8437.74,1516.91,31.9074,2.73319,509,'aq20'),(195,29.1607,-71.3372,-8.18032,4.43584,249,'onyxia'),(196,751.254,-606.421,-33.2458,0.089788,349,'marapurple'),(197,-8404.3,-4070.62,-208.586,0.237038,1,'OldHillsbradFoothills'),(198,1019.69,-458.31,-43.43,0.31,349,'maraorange'),(199,-67.3581,163.341,-3.46468,2.13943,429,'dmwest'),(200,255.249,-16.0561,-2.58737,4.7,429,'dmnorth'),(201,-201.11,-328.66,-2.72386,5.22313,429,'dmeast'),(202,-151.89,106.96,-39.87,4.53,48,'bfd'),(203,2592.55,1107.5,51.29,4.74,129,'rfd'),(204,1943,1544.63,82,1.38,47,'rfk'),(205,-163.49,132.9,-73.66,5.83,43,'wc'),(206,-8177.89,-4181.23,-167.552,0.913338,1,'HyjalSummit'),(207,-4396.7,224.841,25.4136,4.93684,1,'CampMojache'),(208,-4841.19,1309.44,81.3937,1.48501,1,'Feralas'),(209,3.81,-14.82,-17.84,4.23745,389,'rfc'),(210,1610.83,-323.433,18.6738,6.28022,189,'smarmory'),(211,-3980.8,789.005,161.007,4.71945,1,'DireMaulEast'),(212,855.683,1321.5,18.6709,0.001747,189,'smcath'),(213,1702.01,1053.5,18.4922,1.46594,189,'smgy'),(214,255.346,-209.09,18.6773,6.26656,189,'smlib'),(215,2872.6,-764.398,160.332,5.05735,0,'ScarletMonastery'),(216,-3828.01,1250.22,160.226,3.20835,1,'DireMaulWest'),(217,-7501.51,-2183.08,165.926,6.07144,0,'FlameCrest'),(218,-3521.29,1085.2,161.097,4.7281,1,'DireMaulNorth'),(219,-4347.46,2415.11,8.00515,1.52603,1,'TheForgottenCoast'),(220,1711.99,-719.761,54.3351,4.66387,0,'TheBulwark'),(221,1843.5,1590,93.2971,3.08757,0,'Deathknell'),(222,2259.25,290.43,34.1137,0.987414,0,'Brill'),(223,2036.02,161.331,33.8674,0.143896,0,'TirisfalGlades'),(224,2063.35,273.607,94.1076,5.30632,0,'TirisfalGladesZeppelin'),(225,1584.07,241.987,-52.1534,0.049647,0,'Undercity'),(226,878.74,1359.33,50.355,5.89929,0,'SilverpineForest'),(227,-4317.47,3287.35,18.2864,3.12825,1,'FeathermoonStronghold'),(228,-129.094,835.621,63.598,4.83351,0,'Ambermill'),(229,-606.395,2211.75,92.9818,0.809746,1,'Desolace'),(230,-1464.14,2615.21,76.7172,3.21357,1,'MaraudonOrange'),(231,-234.675,1561.63,76.8921,1.24031,0,'ShadowFangKeep'),(232,-1188.37,2879.61,85.7888,5.07366,1,'MaraudonPurple'),(233,-388.146,1543.67,18.1592,3.10171,0,'PyrewoodVillage'),(234,-1664.79,3091.67,30.5552,6.07818,1,'ShadowpreyVillage'),(235,504.534,1539.08,129.502,1.35812,0,'TheSepulcher'),(236,-1224.46,1728.53,90.0592,0.831707,1,'GhostWalkerPost'),(237,-7734.77,-2609.01,165.137,4.22183,0,'DreadmaulRock'),(238,998.173,736.541,59.2738,6.16398,0,'FenrisIsle'),(239,-9284.76,-3346.89,109.759,1.52871,0,'TowerOfIlgalar'),(240,-9323.5,-3030.84,132.559,2.94713,0,'Stonewatch'),(241,176.426,1309.76,190.18,0.556817,1,'Nijel\'sPoint'),(242,-9266.59,-2188.77,64.0892,2.10205,0,'Lakeshire'),(243,-9551.81,-2204.73,93.473,5.47141,0,'RedridgeMountains'),(244,-8921.09,-119.135,82.195,5.82878,0,'NorthshireValley'),(245,-9448.55,68.236,56.3225,2.1115,0,'Goldshire'),(246,-8833.38,628.628,94.0066,1.06535,0,'Stormwind'),(247,2678.38,1497.46,233.869,6.26038,1,'StonetalonPeak'),(248,1570.92,1031.52,137.959,3.33006,1,'StonetalonMountains'),(249,966.147,926.499,104.649,1.27231,1,'SunRockRetreat'),(250,799.721,-3995.68,122.007,3.77399,0,'Seradane'),(251,369.856,-3802.84,170.093,3.58942,0,'SkulkRock'),(252,-44.6129,-505.122,-46.1274,1.84172,1,'CampAparaje'),(253,1035.62,-2106,122.946,1.60767,1,'Mor\'shanBaseCamp'),(254,1928.34,-2165.95,93.7896,0.205731,1,'Ashenvale'),(255,-557.226,-4581.27,9.5884,1.01724,0,'RevantuskVillage'),(256,-233.765,-4121.89,117.635,3.39306,0,'Jintha\'Alor'),(257,-9617.06,-288.949,57.3053,4.72687,0,'ElwynnForest'),(258,-271.689,-3438.52,187.18,3.93027,0,'TheAltarOfZul'),(259,2270.94,-2538.19,93.9198,0.060429,1,'SplintertreePost'),(260,226.318,-2777.59,123.356,0.59469,0,'Quel\'DanilLodge'),(261,-11892.7,-2647.08,-4.68415,3.69096,0,'TheTaintedScar'),(262,-10999.8,-3380.08,62.2525,4.63501,0,'NethergardeKeep'),(263,-11840.1,-3196.63,-29.6059,3.3391,0,'TheDarkPortal'),(264,260.366,-2125.21,119.565,3.18494,0,'AeariePeak'),(265,119.387,-3190.37,117.331,2.34064,0,'TheHinterlands'),(266,2676.19,-422.905,107.123,0.648691,1,'Astranaar'),(267,2957.87,-2794.79,110.464,1.19003,0,'Terrordale'),(268,3352.92,-3379.03,144.782,6.25978,0,'Stratholme'),(269,4249.99,740.102,-25.671,1.34062,1,'BlackfathomDeeps'),(270,3120.16,-3724.93,137.66,5.83567,0,'Naxxramas'),(271,3986.71,-1293.58,250.144,5.74591,1,'EmeraldSanctuary'),(272,3065.36,-3704,120.931,1.21752,0,'Plaguewood'),(273,3194.88,-4038.96,107.991,6.27156,0,'EastwallGate'),(274,4102.25,-1006.79,272.717,0.790048,1,'Felwood'),(275,3021.64,-3402.99,298.22,2.97352,533,'nax'),(276,-10895,-2933.24,12.8408,6.26628,0,'DreadmaulHold'),(277,2279.65,-5310.01,87.0759,5.07618,0,'Light\'sHopeChapel'),(278,2300.97,-4613.36,73.6231,0.367722,0,'EasternPlaguelands'),(279,6209.51,-1927.01,569.393,3.82137,1,'TalonbranchGlade'),(280,6808.73,-2091.08,624.962,5.93802,1,'TimbermawHold'),(281,-11182.5,-3016.67,7.42235,4.0004,0,'BlastedLands'),(282,1684.77,-5320.44,73.6126,4.52641,0,'Tyr\'sHand'),(283,2012.28,-4470.7,73.6229,5.15472,0,'Corin\'sCrossing'),(284,2448.89,-3708.71,177.867,5.66288,0,'TheFungalVale'),(285,1248.8,-2604.13,90.961,0.255412,0,'CaerDarrow'),(286,2793.09,-1621.4,129.333,1.98722,0,'Hearthglen'),(287,5128.91,-343.506,355.035,3.39176,1,'BloodvenomPost'),(288,-11208.7,1673.52,24.6361,1.51067,0,'TheDeadmines'),(289,7486.41,-2124.22,490.738,3.11294,1,'MoongladeHordeFlypoint'),(290,7654.3,-2232.87,462.107,5.96786,1,'Moonglade'),(291,7966.85,-2491.04,487.734,3.20562,1,'Nighthaven'),(292,6759.18,-4419.63,763.214,4.43476,1,'Winterspring'),(293,6725.69,-4619.44,720.909,4.66802,1,'Everlook'),(294,3608.59,-4414.43,113.047,1.62303,1,'Valormok'),(295,-12644.3,-377.411,10.1021,6.09978,0,'StranglethornVale'),(296,3341.36,-4603.79,92.5027,5.28142,1,'Azshara'),(297,-10898.3,-364.784,39.2681,3.04614,0,'Duskwood'),(298,2735.06,-3867.44,98.6548,3.56139,1,'TalrendisPoint'),(299,-2192.62,-736.317,-13.3274,0.487569,1,'Mulgore'),(300,-10177.9,-3994.9,-111.239,6.01885,0,'TheSunkenTemple'),(301,-2240.91,-399.174,-9.42446,2.53353,1,'BloodhoofVillage'),(302,-10235.2,1222.47,43.6252,6.2427,0,'Westfall'),(303,-2919.35,-264.535,53.6197,0.409027,1,'CampNarache'),(304,-10624.5,1096.66,33.7641,1.31041,0,'SentinelHill'),(305,-10986.7,1542.75,44.7858,2.62438,0,'Moonbrook'),(306,-10742.2,330.574,38.2503,0.551712,0,'RavenHill'),(307,-10361.1,-1529.87,91.4594,5.96075,0,'Beggar\'sHaunt'),(308,-10573,-1182.51,28.0148,0.309022,0,'Darkshire'),(309,-1277.37,124.804,131.287,5.22274,1,'ThunderBluff'),(310,-10450.3,-3825.44,18.0679,6.03616,0,'TempleOfAtal\'Hakkar'),(311,-10384.3,-421.588,63.6179,3.23856,0,'TwilightGrove'),(312,5756.25,298.505,20.6049,5.96504,1,'Darkshore'),(313,-10446.9,-3261.91,20.1795,5.02142,0,'Stonard'),(314,6501.4,481.607,6.27062,1.70033,1,'Auberdine'),(315,-11322.4,-202.492,75.6362,0.432339,0,'RebelCamp'),(316,9848.37,966.953,1306.38,3.77457,1,'Dolanaar'),(317,-11916.7,-1215.72,92.289,4.72454,0,'Zul\'Gurub'),(318,-14297.2,530.993,8.77916,3.98863,0,'BootyBay'),(319,10334,833.902,1326.11,3.62142,1,'Shadowglen'),(320,-10126,-2834.73,22.2157,0.674244,0,'TheHarborage'),(321,-13277.4,127.372,26.1418,1.11878,0,'GurubashiArena'),(322,-12388.9,172.578,2.83358,1.91753,0,'Grom\'golBaseCamp'),(323,-5098.7,505.358,84.97,3.41328,530,'NetherwingLedge'),(324,-4115.51,1120.54,44.5242,2.6318,530,'SanctumOfTheStars'),(325,-3750.85,1059.38,70.921,3.49973,530,'Warden\'sCage'),(326,96.4462,1002.35,-86.9984,6.26671,564,'bt'),(327,-3649.92,317.469,35.2827,2.94285,530,'BlackTemple'),(328,-3053.96,828.896,-10.4689,5.53466,530,'AltarOfSha\'tar'),(329,-3989.47,2168.39,105.35,3.08422,530,'Wildhammer Stronghold'),(330,-2998.66,2568.9,76.6306,0.551303,530,'ShadowmoonVillage'),(331,-2949.27,3958.32,0.285465,1.37205,530,'AllerianStronghold'),(332,-2345.07,3253.53,-3.37535,4.84822,530,'FirewingPoint'),(333,-2640.08,4404.38,35.1,4.14529,530,'StonebreakerHold'),(334,-2162.03,4218.48,6.33299,5.20557,530,'Tuurem'),(335,-1838.16,5301.79,-12.428,5.9517,530,'ShattrathCity'),(336,-1816.67,4691.8,10.6813,0.383229,530,'CenarionThicket'),(337,10111.3,1557.73,1324.33,4.04239,1,'Teldrassil'),(338,-2000.47,4451.54,8.37917,4.40447,530,'TerokkarForest'),(339,-2458.16,4935.8,33.7396,0.969919,530,'Grangol\'varVillage'),(340,-2807.36,5077.65,-12.2418,3.23972,530,'RefugeeCaravan'),(341,-5.10147,0.126865,-1.12788,3.08034,555,'sl'),(342,-3627.9,4941.98,-101.049,3.16039,530,'ShadowLabyrinth'),(343,-11.1808,0.991746,-0.9543,3.13767,557,'mt'),(344,-3104.18,4945.52,-101.507,6.22344,530,'ManaTombs'),(345,-3362.2,4664.12,-101.049,4.6605,530,'SethekkHalls'),(346,-21.8975,0.16,-0.1206,6.28318,558,'ac'),(347,-3362.04,5209.85,-101.05,1.60924,530,'AuchenaiCrypts'),(348,-4.6811,-0.09308,0.0062,0.035342,556,'sethekk'),(349,-3324.49,4943.45,-101.239,4.63901,530,'Auchindoun'),(350,-2850.34,6405.81,77.0322,3.64548,530,'Kil\'sorrowFortress'),(351,-1999.94,6581.71,11.32,2.36528,530,'TheRingOfTrials'),(352,-1446.49,6346.65,37.5461,2.77876,530,'NesingwarySafari'),(353,-1321.34,7239.12,32.7371,4.04169,530,'Garadar'),(354,-1520.44,8552.38,7.26028,1.69728,530,'SunspringPost'),(355,-1145.95,8182.35,3.60249,6.13478,530,'Nagrand'),(356,-1563.05,7945.67,-22.5568,1.13572,530,'Halaa'),(357,-2560.76,7300.72,13.9485,2.18422,530,'Telaar'),(358,-2417.03,8314.75,-37.5225,3.13613,530,'Oshu\'gun'),(359,-1376.82,9616.71,201.301,2.64604,530,'TheTwilightRidge'),(360,958.66,7374.02,27.9079,6.12064,530,'OreborHarborage'),(361,820.025,6864.93,-66.7556,6.28127,530,'SerpentshrineCavern'),(362,717.282,6979.87,-73.0281,1.50287,530,'TheSlavePens'),(363,130.446,-127.482,-1.59053,1.86731,547,'sp'),(364,794.537,6927.81,-80.4757,0.159089,530,'TheSteamvault'),(365,1.60675,8.07684,-4.12796,4.467,545,'sv'),(366,735.066,6883.45,-66.2913,5.89172,530,'CoilfangReservoir'),(367,9.83957,2.74496,822.096,0.106614,548,'ssc'),(368,763.307,6767.81,-67.7695,5.99726,530,'TheUnderbog'),(369,9.71391,-16.2008,-2.75334,5.62187,546,'underbog'),(370,260.28,7860.4,23.3231,3.77545,530,'Zabra\'jin'),(371,209.095,8547.4,23.1083,5.33054,530,'Sporeggar'),(372,-100.415,8775,18.7677,0.508193,530,'TheSpawningGlen'),(373,278.582,6001.27,144.73,1.53156,530,'Telredor'),(374,664.515,5349.82,-23.1373,0.875759,530,'TheDeadMire'),(375,104.534,5199.31,21.1033,4.22156,530,'SwampratPost'),(376,-54.8621,5813.44,20.9764,0.081722,530,'Zangarmarsh'),(377,-223.541,5487.99,23.2281,0.886755,530,'CenarionRefuge'),(378,-211.237,4278.54,86.5678,4.59776,530,'HellfirePeninsula'),(379,190.035,3.38458,67.9651,3.15819,544,'magtheridon'),(380,-291.324,3149.1,31.5541,2.27147,530,'TheBloodFurnace'),(381,-3.9967,14.6363,-44.8009,1.21574,542,'bf'),(382,-305.79,3061.63,-2.53847,1.88888,530,'TheShatteredHalls'),(383,-10345.4,-2773.42,21.99,5.08426,0,'SwampOfSorrows'),(384,-40.8716,-19.7538,-13.8065,1.11133,540,'sh'),(385,-1346.58,1653.44,68.8313,0.486942,543,'ramp'),(386,-11118.9,-2010.33,47.0819,0.649895,0,'Karazhan'),(387,-360.671,3071.9,-15.0977,1.89389,530,'HellfireRamparts'),(388,512.08,3879.32,191.494,0.027839,530,'Mag\'harPost'),(389,-10879.6,-2206.99,122.514,3.74515,0,'TheVice'),(390,78.9769,4333.58,101.553,0.011347,530,'TempleOfTelhamar'),(391,3376.86,1013.05,3.34387,3.81699,1,'Zoram\'garOutpost'),(392,-318.842,4718.99,18.4132,6.21599,530,'CenarionPost'),(393,-600.782,4100.1,90.5571,0.207697,530,'FalconWatch'),(394,282.878,3479.82,63.4083,0.305086,530,'PoolsOfAggonar'),(395,-312.7,3087.26,-116.52,5.19026,530,'Magtheridon\'sLair'),(396,-390.863,3130.64,4.51327,0.218692,530,'HellfireCitadel'),(397,-1088.38,2998.27,8.18949,2.73983,530,'ZeppelinCrash'),(398,-1384.5,2724.56,-28.568,3.37207,530,'ExpeditionArmory'),(399,-748.211,2681.52,100.35,5.7479,530,'HonorHold'),(400,-1326.36,2371.99,88.9503,6.19165,530,'SpinebreakerPost'),(401,-1005.37,2030.91,67.873,3.12703,530,'Zeth\'Gor'),(402,809.937,2332.9,281.37,5.77383,530,'ThroneOfKil\'jaeden'),(403,-10438.8,-1932.75,104.617,4.77402,0,'DeadwindPass'),(404,9949.56,2284.21,1341.4,1.59587,1,'Darnassus'),(405,156.251,2673.45,85.1587,0.382074,530,'Thrallmar'),(406,-8734.3,-4230.11,-209.5,2.16212,1,'TheBlackMorass'),(407,3387.95,-3380.34,142.76,0.005913,329,'strat'),(408,2063.11,1547.38,1162.1,1.87623,566,'eots'),(409,2167.44,1564.11,1159.35,0.254382,566,'EyeOfTheStorm'),(410,1843.73,1529.77,1224.43,0.297579,566,'EyeOfTheStormHorde'),(411,2487.72,1609.12,1224.64,3.35671,566,'EyeOfTheStormAlliance'),(412,16226.2,16257,13.2022,1.65007,1,'GMIsland'),(413,-0.310414,0.107129,-100.538,2.94612,13,'ScottTest'),(414,28.3835,10.1348,-141.316,3.26421,29,'CrashTest'),(415,128.205,135.136,236.11,4.59132,37,'AzsharaCrater'),(416,-11052.9,-1568.93,27.233,4.64509,0,'Crypt');

-- netherwing changes from gvc
-- Netherwing quest fixes
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 10866;
UPDATE `quest_template` SET `RewChoiceItemId1` = 31493, `RewChoiceItemId2` = 31494, `RewChoiceItemId3` = 31490, `RewChoiceItemId4` = 31491, `RewChoiceItemId5` = 31492, `RewChoiceItemCount1` = 1, `RewChoiceItemCount2` = 1, `RewChoiceItemCount3` = 1, `RewChoiceItemCount4` = 1, `RewChoiceItemCount5` = 1 WHERE `entry` = 10870;
UPDATE `quest_template` SET `RequiredMinRepValue` = 0, `RewRepFaction1` = 1015, `RewRepValue1` = 350 WHERE `entry` = 11049;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `PrevQuestId` = 10870, `OfferRewardText` = 'Our lands are lost. Our children stolen in the night, forced into slavery - or worse...$B$B<Mordenai''s voice tenses.>$B$BThe time is now, my ally. The time to retake what was once ours has come! You have proven yourself a capable combatant and compassionate soul.$B$BWill you swear to assist the Netherwing Dragonflight in retaking our lands and rebuilding our homes? Will you swear to watch over the flight and allow the bloodline to be born anew? Swear this and let us battle for our home and our loved ones!' WHERE `entry` = 11012;
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (22113, 11012);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (22113, 11012);
UPDATE `quest_template` SET `PrevQuestId` = 11012, `RequiredMinRepFaction` = 1015, `RewRepFaction1` = 1015, `RewRepValue1` = 250 WHERE `entry` = 11013;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015 WHERE `entry` = 11014;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `PrevQuestId` = 11014 WHERE `entry` = 11041;
UPDATE `creature_loot_template` SET `ChanceOrRef` = 100, `QuestChanceOrGroup` = 0, `lootcondition` = 8, `condition_value1` = 11014 WHERE `item` = 32621;
UPDATE `quest_template` SET `RequiredRaces` = 0, `RequiredMinRepFaction` = 1015, `PrevQuestId` = 11014 WHERE `entry` IN (11018, 11017, 11016, 11015);
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `PrevQuestId` = 11014, `OfferRewardText` = 'Didn''t think we''d leave you to face the fel orc army by yourself, did you?$B$B<Yarzill''s eyes flicker a translucent blue.>$B$BAye, we are here with you, $N. For every service you perform for the fel orcs in your quest to reclaim Netherwing lands, we''ll be at your side to make sure that they suffer a sufficient setback.$B$BYou''ll need to keep a low profile so as not to draw any unwanted attention to yourself during your sabotage missions.' WHERE `entry` = 11019;
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (23141, 11019);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23141, 11019);
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepValue` = 0, `SpecialFlags` = 1, `PrevQuestId` = 11019, `RewRepFaction1` = 1015, `RewRepValue1` = 250 WHERE `entry` = 11020;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepValue` = 0, `SpecialFlags` = 1, `PrevQuestId` = 11019, `RewRepFaction1` = 1015, `RewRepValue1` = 250 WHERE `entry` = 11035;
UPDATE `quest_template` SET `MinLevel` = 70, `PrevQuestId` = 11019, `RewRepFaction1` = 1015, `RewRepValue1` = 350 WHERE `entry` = 11049;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `SpecialFlags` = 1, `PrevQuestId` = 11049, `Details` = 'We don''t need those eggs to get into the wrong hands, $N. Bring me any additional eggs that you may find.$B$BJust remember to keep a low profile and avoid raising suspicion!', `OfferRewardText` = 'You are a true hero, $N.', `RewRepFaction1` = 1015, `RewRepValue1` = 250 WHERE `entry` = 11050;
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (23141, 11050);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (23141, 11050);
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 11075;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 3000, `SpecialFlags` = 1, `RewRepFaction1` = 1015, `RewRepValue1` = 350 WHERE `entry` = 11077;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 3000, `RewRepFaction1` = 1015, `RewRepValue1` = 350 WHERE `entry` = 11083;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 3000, `PrevQuestId` = 11075 WHERE `entry` = 11081;
UPDATE `item_loot_template` SET `lootcondition` = 8, `condition_value1` = 11075 WHERE `item` = 32726;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 3000, `PrevQuestId` = 11053 WHERE `entry` = 11054;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 6000, `SpecialFlags` = 1, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11086;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 6000, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11089;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 6000, `OfferRewardText` = 'He will be back, but for now the Legion''s war against Lord Illidan is weakened. He shall know of your deeds, captain.', `RequestItemsText` = 'Is it done?', `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11090;
INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) VALUES (11063, 3520, 70, 70, 0, 0, 0, 1015, 9000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Earning Your Wings...', '', '', 'So you wanna join the Skybreakers, eh? You\'ve certainly proven yourself an able Dragonmaw but that means nothing in the skies of Outland. The question has to be answered: CAN YOU FLY?$B$BAnd I don\'t just mean being able to mount up on a nether drake and delivering a shipment of crystals to the fort like those transporter scrubs. I\'m talking about being the best... The top orc...$B$BOver to the west there are six riders. Defeat them all and I will grant you Skybreaker wings.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (22433, 11063);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (22433, 11063);
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `RewRepFaction1` = 1015, `RewRepValue1` = 350 WHERE `entry` = 11064;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `RewRepFaction1` = 1015, `RewRepValue1` = 350 WHERE `entry` = 11067;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11068;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11069;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11070;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 9000, `RewRepFaction1` = 1015, `RewRepValue1` = 1000 WHERE `entry` = 11071;
UPDATE `quest_template` SET `RequiredMinRepValue` = 21000 WHERE `entry` = 11092;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 934, `RequiredMinRepValue` = 1, `RewRepFaction1` = 1015, `RewRepValue1` = 250 WHERE `entry` = 11094;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 932, `RequiredMinRepValue` = 1, `RewRepFaction1` = 1015, `RewRepValue1` = 250 WHERE `entry` = 11099;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 934, `RequiredMinRepValue` = 1 WHERE `entry` = 11095;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 932, `RequiredMinRepValue` = 1 WHERE `entry` = 11100;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 934, `RequiredMinRepValue` = 1, `SpecialFlags` = 3, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11097;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 932, `RequiredMinRepValue` = 1, `SpecialFlags` = 3, `RewRepFaction1` = 1015, `RewRepValue1` = 500 WHERE `entry` = 11101;
UPDATE `quest_template` SET `RequiredMinRepValue` = 42000, `RewRepFaction1` = 0, `RewRepValue1` = 0 WHERE `entry` = 11107;
UPDATE `quest_template` SET `MinLevel` = 70, `RequiredMinRepFaction` = 1015, `RequiredMinRepValue` = 42000, `PrevQuestId` = 11107, `RewRepFaction1` = 1015, `RewRepValue1` = 1000 WHERE `entry` = 11108;
INSERT IGNORE INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) VALUES 
(11109, 3703, 70, 70, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 11109, 0, 0, 0, 0, 'Jorus the Cobalt Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32859, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11110, 3703, 70, 70, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 11109, 0, 0, 0, 0, 'Malfas the Purple Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32860, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11111, 3703, 70, 70, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 11109, 0, 0, 0, 0, 'Onyxien the Onyx Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32857, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11112, 3703, 70, 70, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 11109, 0, 0, 0, 0, 'Suraku the Azure Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32858, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11113, 3703, 70, 70, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 11109, 0, 0, 0, 0, 'Voranaku the Violet Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32862, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11114, 3703, 70, 70, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 11109, 0, 0, 0, 0, 'Zoya the Veridian Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32861, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES 
(23462, 11109),
(23464, 11110),
(23463, 11111),
(23461, 11112),
(23466, 11113),
(23465, 11114);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(23462, 11109),
(23464, 11110),
(23463, 11111),
(23461, 11112),
(23466, 11113),
(23465, 11114);

-- 3 new quests
insert ignore into `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `SuggestedPlayers`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `LimitTime`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) values('11012','3520','0','70','0','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','Blood Oath of the Netherwing','','',NULL,NULL,'','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','1','1','1','0','0','0','0','0');
insert ignore into `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `SuggestedPlayers`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `LimitTime`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) values('11019','3520','0','70','0','0','0','0','0','0','0','0','0','136','0','0','0','0','0','0','0','Your Friend On The Inside','','',NULL,NULL,'','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','1','1','1','0','0','0','0','0');
insert ignore into `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `SuggestedPlayers`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `LimitTime`, `QuestFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqSourceRef1`, `ReqSourceRef2`, `ReqSourceRef3`, `ReqSourceRef4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `StartScript`, `CompleteScript`) values('11050','3520','0','70','0','0','0','0','0','0','0','0','0','136','0','0','0','0','0','0','0','Accepting All Eggs','','',NULL,NULL,'','','','','','32506','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','1','1','1','0','0','0','0','0');

-- Fix start errors
UPDATE `quest_template` SET `RequiredMaxRepValue`=1,`RequiredMinRepFaction`=0,`RequiredMinRepValue`=0 WHERE `entry` IN (10017,10024,10019,10025);

-- compatible with SD2
UPDATE `creature_template` SET `flags` = `flags`|4096 WHERE `entry` IN (12936, 12937, 12938, 12923, 12924, 12925);

-- END

-- SD2
-- 237
-- new
UPDATE `creature_template` SET `ScriptName` = 'guard_azuremyst' WHERE `entry` = 18038;
UPDATE `creature_template` SET `ScriptName` = 'guard_eversong' WHERE `entry` = 16221;
-- UPDATE
UPDATE `creature_template` SET `ScriptName` = 'guard_durotar' WHERE `entry` = 5953;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (3210, 3211, 3213, 3214, 1736, 1739, 1737);

-- 238
-- revert previously bad sql
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` LIKE '%innkeeper%' AND `npcflag` & 128<>0;

-- 239
UPDATE `item_template` SET `ScriptName` = '' WHERE `entry` = 23268;

-- 241
UPDATE `creature_template` SET `ScriptName` = 'npc_skyguard_handler_irena' WHERE `entry` = 23413;
UPDATE `creature_template` SET `ScriptName` = 'npc_skyguard_handler_deesak' WHERE `entry` = 23415;

-- 242
UPDATE `creature_template` SET `ScriptName` = 'npc_zamael_lunthistle' WHERE `entry` = 8436;
UPDATE `creature_template` SET `ScriptName` = 'npc_lothos_riftwaker' WHERE `entry` = 14387;

-- 243
UPDATE `creature_template` SET `ScriptName` = 'npc_marin_noggenfogger' WHERE `entry` = 7564;

-- 249
UPDATE `creature_template` SET `ScriptName` = 'mob_flamewaker_priest' WHERE `entry` = 11662;
UPDATE `creature_template` SET `ScriptName` = 'boss_datrohan_balnazzar' WHERE `entry` = 10812;

-- Cleanup
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
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.9.1 (338) with SD2 calls rev.249');
-- END
