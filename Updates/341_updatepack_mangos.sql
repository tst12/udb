-- Start update pack 341 -- 2008-02-18

-- nerf rain!

update game_weather set winter_snow_chance='30' where `zone`='36';
update game_weather set winter_snow_chance='25' where `zone`='1';
update game_weather set winter_snow_chance='25' where `zone`='618';

update game_weather set fall_snow_chance='20' where `zone`='618';

update game_weather set spring_snow_chance='20' where `zone`='36';

update game_weather set spring_storm_chance='20' where `zone`='3';
update game_weather set spring_storm_chance='15' where `zone`='440';

update game_weather set fall_storm_chance='20' where `zone`='1377';
update game_weather set fall_storm_chance='15' where `zone`='440';

update game_weather set winter_rain_chance='23' where `zone`='45';
update game_weather set winter_rain_chance='10' where `zone`='3358';
update game_weather set winter_rain_chance='15' where `zone`='148';
update game_weather set winter_rain_chance='20' where `zone`='85';
update game_weather set winter_rain_chance='15' where `zone`='41';
update game_weather set winter_rain_chance='25' where `zone`='15';
update game_weather set winter_rain_chance='15' where `zone`='10';
update game_weather set winter_rain_chance='10' where `zone`='139';
update game_weather set winter_rain_chance='10' where `zone`='28';
update game_weather set winter_rain_chance='5' where `zone`='2017';
update game_weather set winter_rain_chance='15' where `zone`='357';
update game_weather set winter_rain_chance='15' where `zone`='267';
update game_weather set winter_rain_chance='10' where `zone`='47';
update game_weather set winter_rain_chance='15' where `zone`='38';
update game_weather set winter_rain_chance='15' where `zone`='215';
update game_weather set winter_rain_chance='15' where `zone`='44';
update game_weather set winter_rain_chance='20' where `zone`='33';
update game_weather set winter_rain_chance='15' where `zone`='141';
update game_weather set winter_rain_chance='5' where `zone`='796';
update game_weather set winter_rain_chance='10' where `zone`='3521';

update game_weather set winter_storm_chance='15' where `zone`='3';
update game_weather set winter_storm_chance='15' where `zone`='1377';
update game_weather set winter_storm_chance='15' where `zone`='440';

update game_weather set spring_rain_chance='23' where `zone`='45';
update game_weather set spring_rain_chance='10' where `zone`='3358';
update game_weather set spring_rain_chance='15' where `zone`='148';
update game_weather set spring_rain_chance='20' where `zone`='85';
update game_weather set spring_rain_chance='15' where `zone`='41';
update game_weather set spring_rain_chance='25' where `zone`='15';
update game_weather set spring_rain_chance='15' where `zone`='10';
update game_weather set spring_rain_chance='10' where `zone`='139';
update game_weather set spring_rain_chance='10' where `zone`='28';
update game_weather set spring_rain_chance='5' where `zone`='2017';
update game_weather set spring_rain_chance='20' where `zone`='12';
update game_weather set spring_rain_chance='15' where `zone`='357';
update game_weather set spring_rain_chance='15' where `zone`='267';
update game_weather set spring_rain_chance='10' where `zone`='47';
update game_weather set spring_rain_chance='15' where `zone`='38';
update game_weather set spring_rain_chance='15' where `zone`='215';
update game_weather set spring_rain_chance='15' where `zone`='44';
update game_weather set spring_rain_chance='20' where `zone`='33';
update game_weather set spring_rain_chance='15' where `zone`='1977';
update game_weather set spring_rain_chance='15' where `zone`='141';
update game_weather set spring_rain_chance='5' where `zone`='796';
update game_weather set spring_rain_chance='15' where `zone`='490';
update game_weather set spring_rain_chance='25' where `zone`='11';
update game_weather set spring_rain_chance='10' where `zone`='3521';

update game_weather set fall_rain_chance='23' where `zone`='45';
update game_weather set fall_rain_chance='10' where `zone`='3358';
update game_weather set fall_rain_chance='20' where `zone`='148';
update game_weather set fall_rain_chance='20' where `zone`='85';
update game_weather set fall_rain_chance='5' where `zone`='405';
update game_weather set fall_rain_chance='15' where `zone`='41';
update game_weather set fall_rain_chance='25' where `zone`='15';
update game_weather set fall_rain_chance='20' where `zone`='10';
update game_weather set fall_rain_chance='15' where `zone`='139';
update game_weather set fall_rain_chance='15' where `zone`='28';
update game_weather set fall_rain_chance='5' where `zone`='2017';
update game_weather set fall_rain_chance='20' where `zone`='12';
update game_weather set fall_rain_chance='15' where `zone`='357';
update game_weather set fall_rain_chance='15' where `zone`='267';
update game_weather set fall_rain_chance='15' where `zone`='47';
update game_weather set fall_rain_chance='15' where `zone`='38';
update game_weather set fall_rain_chance='20' where `zone`='215';
update game_weather set fall_rain_chance='15' where `zone`='44';
update game_weather set fall_rain_chance='25' where `zone`='33';
update game_weather set fall_rain_chance='15' where `zone`='1977';
update game_weather set fall_rain_chance='15' where `zone`='141';
update game_weather set fall_rain_chance='25' where `zone`='796';
update game_weather set fall_rain_chance='20' where `zone`='490';
update game_weather set fall_rain_chance='25' where `zone`='11';
update game_weather set fall_rain_chance='20' where `zone`='3521';

update game_weather set summer_storm_chance='25' where `zone`='1377';
update game_weather set summer_storm_chance='15' where `zone`='440';

update game_weather set summer_rain_chance='15' where `zone`='45';
update game_weather set summer_rain_chance='10' where `zone`='3358';
update game_weather set summer_rain_chance='10' where `zone`='148';
update game_weather set summer_rain_chance='15' where `zone`='85';
update game_weather set summer_rain_chance='5' where `zone`='41';
update game_weather set summer_rain_chance='20' where `zone`='15';
update game_weather set summer_rain_chance='15' where `zone`='10';
update game_weather set summer_rain_chance='15' where `zone`='139';
update game_weather set summer_rain_chance='15' where `zone`='28';
update game_weather set summer_rain_chance='5' where `zone`='2017';
update game_weather set summer_rain_chance='15' where `zone`='12';
update game_weather set summer_rain_chance='15' where `zone`='357';
update game_weather set summer_rain_chance='10' where `zone`='267';
update game_weather set summer_rain_chance='10' where `zone`='47';
update game_weather set summer_rain_chance='15' where `zone`='38';
update game_weather set summer_rain_chance='15' where `zone`='44';
update game_weather set summer_rain_chance='25' where `zone`='33';
update game_weather set summer_rain_chance='5' where `zone`='1977';
update game_weather set summer_rain_chance='5' where `zone`='141';
update game_weather set summer_rain_chance='10' where `zone`='796';
update game_weather set summer_rain_chance='10' where `zone`='490';
update game_weather set summer_rain_chance='15' where `zone`='11';
update game_weather set summer_rain_chance='15' where `zone`='3521';
-- forum starts
update quest_template set specialflags=specialflags|1 where entry in (9338, 8363, 8362);

DELETE FROM `npc_trainer` WHERE `spell`=19346;
INSERT IGNORE INTO `npc_trainer` values
(5142,19346,500,0,0,30),
(5484,19346,500,0,0,30),
(5489,19346,500,0,0,30),
(376,19346,500,0,0,30),
(377,19346,500,0,0,30),
(5143,19346,500,0,0,30);

DELETE FROM `npc_trainer` WHERE `spell`=19347;
INSERT IGNORE INTO `npc_trainer` values
(5142,19347,900,0,0,40),
(5484,19347,900,0,0,40),
(5489,19347,900,0,0,40),
(11406,19347,900,0,0,40),
(376,19347,900,0,0,40),
(377,19347,900,0,0,40),
(5143,19347,900,0,0,40);

DELETE FROM `npc_trainer` WHERE `spell`=19348;
INSERT IGNORE INTO `npc_trainer` values
(5142,19348,1500,0,0,50),
(5484,19348,1500,0,0,50),
(5489,19348,1350,0,0,50),
(11406,19348,1500,0,0,50),
(4091,19348,1500,0,0,50),
(376,19348,1500,0,0,50),
(377,19348,1500,0,0,50),
(5143,19348,1500,0,0,50);

DELETE FROM `npc_trainer` WHERE `spell`=19349;
INSERT IGNORE INTO `npc_trainer` values
(5142,19349,2300,0,0,60),
(5484,19349,2300,0,0,60),
(5489,19349,2300,0,0,60),
(11406,19349,2300,0,0,60),
(4091,19349,2300,0,0,60),
(376,19349,2300,0,0,60),
(377,19349,2300,0,0,60),
(5143,19349,2300,0,0,60);

DELETE FROM `npc_trainer` WHERE `spell`=25443;
INSERT IGNORE INTO `npc_trainer` values
(5142,25443,6500,0,0,70),
(5484,25443,6500,0,0,70),
(5489,25443,6500,0,0,70),
(11406,25443,6500,0,0,70),
(4091,25443,6500,0,0,70),
(376,25443,6500,0,0,70),
(377,25443,6500,0,0,70),
(5143,25443,6500,0,0,70);
UPDATE `quest_template` SET `RequiredRaces`='512' WHERE `entry`=10788;
-- all horde paladin trainer

delete from `npc_trainer` where `spell` = 31894;
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(16275,31894,50000,0,0,64),
(16679,31894,50000,0,0,64),
(16680,31894,50000,0,0,64),
(23128,31894,50000,0,0,64),
(20406,31894,50000,0,0,64),
(16681,31894,50000,0,0,64);


delete from `npc_trainer` where spell = 39521;
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) SELECT `entry`, '39521', '3000', '0', '0', '30' FROM `creature_template` WHERE `entry` in (543, 2878, 2879, 3306, 3545, 3620, 3622, 3624, 3688, 3698, 4320, 10086, 10088, 10089, 10090, 16271, 16675, 16712, 17484);

-- rank2
delete from `npc_trainer` where spell = 39522;
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) SELECT `entry`, '39522', '10000', '0', '0', '30' FROM `creature_template` WHERE `entry` in (543, 2878, 2879, 3306, 3545, 3620, 3622, 3624, 3688, 3698, 4320, 10086, 10088, 10089, 10090, 16271, 16675, 16712, 17484);

delete from `npc_trainer` where spell = 39520;
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) SELECT `entry`, '39520', '2500', '0', '0', '30' FROM `creature_template` WHERE `entry` in (543, 2878, 2879, 3306, 3545, 3620, 3622, 3624, 3688, 3698, 4320, 10086, 10088, 10089, 10090, 16271, 16675, 16712, 17484);
DELETE FROM `creature_template_addon` WHERE `entry`=16183;
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes0`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES ('16183', '0', '2048', '7', '4097', '65', null);
UPDATE `creature_template` SET `minhealth`=200 AND `maxhealth`=200 WHERE `entry`=16183;

-- DELETE FROM `spell_script_target` WHERE `entry`=28731;
-- INSERT IGNORE INTO `spell_script_target` (`entry`,`type`, `targetEntry`) VALUES ('28731', '2', '0');
update creature_addon set auras='' where auras='28731 0';
update creature_template_addon set auras='' where auras='28731 0';

ALTER TABLE quest_template MODIFY `PointOpt` int(2) unsigned NOT NULL default '0';

DELETE FROM `pet_levelstats` WHERE `creature_entry`=19668;
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','1','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','2','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','3','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','4','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','5','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','6','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','7','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','8','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','9','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','10','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','11','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','12','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','13','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','14','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','15','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','16','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','17','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','18','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','19','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','20','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','21','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','22','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','23','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','24','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','25','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','26','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','27','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','28','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','29','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','30','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','31','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','32','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','33','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','34','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','35','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','36','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','37','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','38','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','39','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','40','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','41','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','42','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','43','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','44','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','45','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','46','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','47','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','48','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','49','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','50','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','51','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','52','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','53','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','54','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','55','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','56','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','57','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','58','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','59','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','60','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','61','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','62','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','63','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','64','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','65','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','66','7500','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','67','8000','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','68','8500','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','69','9000','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('19668','70','9630','0','100','140','10','0','0','0');

DELETE FROM `pet_levelstats` WHERE `creature_entry`=575;

INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','1','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','2','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','3','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','4','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','5','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','6','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','7','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','8','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','9','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','10','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','11','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','12','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','13','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','14','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','15','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','16','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','17','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','18','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','19','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','20','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','21','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','22','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','23','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','24','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','25','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','26','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','27','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','28','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','29','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','30','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','31','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','32','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','33','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','34','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','35','1400','0','50','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','36','1700','0','50','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','37','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','38','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','39','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','40','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','41','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','42','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','43','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','44','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','45','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','46','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','47','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','48','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','49','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','50','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','51','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','52','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','53','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','54','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','55','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','56','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','57','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','58','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','59','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','60','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','61','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','62','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','63','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','64','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','65','100','0','100','10','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','66','7500','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','67','8000','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','68','8500','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','69','9000','0','100','140','10','0','0','0');
INSERT IGNORE INTO `pet_levelstats` (`creature_entry`,`level`,`hp`,`mana`,`armor`,`str`,`agi`,`sta`,`int`,`spi`) VALUES ('575','70','9630','0','100','140','10','0','0','0');
-- proper size for Nazzivus Monument Glyphs
UPDATE `gameobject_template` SET `size` = '1.3' WHERE `entry` =182532;
delete from creature_addon where guid=86510;
DELETE FROM `creature` WHERE (`guid`=86510);
UPDATE creature_loot_template SET ChanceOrRef=100 WHERE item=13873;
-- The Viewing Room Key is a guaranteed drop from Rattlegore;
delete from creature_addon where guid in (select guid from creature where id=2919);
DELETE FROM `creature` WHERE `id`=2919;
DELETE FROM quest_start_scripts WHERE id=778;
INSERT IGNORE INTO `quest_start_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) VALUES ('778','5','10','2919','240000','','-6666.2715','-2728.1184','243.136','6.28');
UPDATE `quest_template` SET `StartScript`='778' WHERE (`entry`='778');
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('18382', '34478', '0', '0');
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('18382', '31775', '0', '0');
-- Apothecary Enith
UPDATE `creature_template` SET `npcflag` = `npcflag`|'1' WHERE `entry` = '16208';
DELETE FROM `npc_trainer` WHERE `spell` = 12641;
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`)
VALUES
('18752', '12641', '2600', '202', '235', '0'),
('17222', '12641', '2600', '202', '235', '0'),
('1702', '12641', '2600', '202', '235', '0'),
('16667', '12641', '2600', '202', '235', '0'),
('3290', '12641', '2600', '202', '235', '0'),
('1676', '12641', '2600', '202', '235', '0'),
('11031', '12641', '2600', '202', '235', '0'),
('11037', '12641', '2600', '202', '235', '0'),
('17634', '12641', '2600', '202', '235', '0'),
('18775', '12641', '2600', '202', '235', '0'),
('5518', '12641', '2600', '202', '235', '0'),
('17637', '12641', '2600', '202', '235', '0'),
('11025', '12641', '2600', '202', '235', '0'),
('16726', '12641', '2600', '202', '235', '0'),
('11017', '12641', '2600', '202', '235', '0'),
('5174', '12641', '2600', '202', '235', '0'),
('3494', '12641', '2600', '202', '235', '0'),
('19576', '12641', '2600', '202', '235', '0'),
('8736', '12641', '2600', '202', '235', '0'),
('8738', '12641', '2600', '202', '235', '0');
DELETE FROM `gameobject` WHERE `guid` IN (5586, 42912);
update quest_template set `offerrewardtext` = 'Ah, this is splendid. This will have to be cleaned of course, but you really outdid yourself, $N. I will have someone prepare the tiara and place it within our collection posthaste.' where entry = 543;
update quest_template set `offerrewardtext` = 'You amaze me, $N. Well done again.$B$BGive me a moment to cast the proper spell to enchant the gem, an\' you\'ll be ready.' where entry = 694;
update quest_template set `offerrewardtext` = 'Malin couldn\'t\'ve asked a worthier person to come here an\' aid us, $N. You\'ve done a grand job!$B$BHe\'ll be pleased to see what an overwhelming success our mission\'s been.' where entry = 696;
update quest_template set `offerrewardtext` = '<Archmage Malin opens the letter, and his eyes grow wide.>$B$BBy the Light, you\'ve done it. How wonderful. Trelane will be so pleased. I\'m sure Kryten and Skuerto are just as excited as I am to have them on their way back to Stormwind.$B$BThank you, $N. Please, take this to help you in your journeys.' where entry = 697;

update quest_template set `requestitemstext` = 'Do you have those fetishes, $N? They might hold the secret to Kurzen\'s degradation...I must know!' where `entry` = 205;
update quest_template set `requestitemstext` = 'Salutations, $N. Do try to avoid stepping on my pant cuffs. This outfit is newly tailored.' where `entry` = 543;
update quest_template set `requestitemstext` = 'I\'d never been beat before, you know, $N? Sure I\'d been cut, can\'t get in a knife fight without that, but he just smacked me on the side of the head, blacked me out. When I came to my blade was gone.$B$BAs much as my nickname might indicate, I still need a knife to fight, and for me, it has to be that one.' where `entry` = 610;
update quest_template set `requestitemstext` = '$N, hello again. Have you found an azure agate yet?' where `entry` = 694;

update quest_template set RewRepFaction1=922, RewRepValue1=3000 where entry=9156;
update quest_template set offerRewardText="Ah... Luzran and Knucklerot! Not looking so tough anymore, are you? I can see you're still looking ugly as ever.$B$BTake one of these rewards, $N. You've earned it." where entry=9156;

update quest_template set specialflags=specialflags|2 where entry = 10166;
update creature_template set `minmana` = 150, `maxmana` = 150, `faction_a` = 91, `faction_h` = 91 where entry = 19456;
delete from creature_addon where guid in (select guid from creature where id=19456);
delete from `creature` where id = 19456;

-- delete from `spell_scripts` where `id` = 33980;
-- INSERT IGNORE INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES (33980,0,10,19456,120000,'',8216.545898,-6335.379395,64.509804,3.48);

delete from `event_scripts` where `id` = 12530;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES (12530,0,10,19456,120000,'',8216.545898,-6335.379395,64.509804,3.48);

delete from event_scripts where id = 6721;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) values
('6721','5','10','3749','180000','','2237.48','-1524.45','89.7827','0'),
('6721','5','10','3743','180000','','2202.16','-1544.48','87.796','0'),
('6721','25','10','3750','180000','','2208.93','-1567.59','87.2283','0'),
('6721','25','10','3749','180000','','2235.44','-1578.43','86.4944','0'),
('6721','25','10','3743','180000','','2260.9','-1547.91','89.1733','0'),
('6721','55','10','3750','180000','','2237.48','-1524.45','89.7827','0'),
('6721','55','10','3749','180000','','2202.16','-1544.48','87.796','0'),
('6721','75','10','3743','180000','','2208.93','-1567.59','87.2283','0'),
('6721','75','10','3750','180000','','2235.44','-1578.43','86.4944','0'),
('6721','75','10','3749','180000','','2260.9','-1547.91','89.1733','0'),
('6721','105','10','3743','180000','','2237.48','-1524.45','89.7827','0'),
('6721','105','10','3750','180000','','2202.16','-1544.48','87.796','0'),
('6721','125','10','3749','180000','','2208.93','-1567.59','87.2283','0'),
('6721','125','10','3743','180000','','2235.44','-1578.43','86.4944','0'),
('6721','125','10','3750','180000','','2260.9','-1547.91','89.1733','0'),
('6721','155','10','3749','180000','','2237.48','-1524.45','89.7827','0'),
('6721','155','10','3743','180000','','2202.16','-1544.48','87.796','0'),
('6721','180','10','12918','180000','','2208.93','-1567.59','87.2283','0');

UPDATE npc_trainer SET reqskill='762',reqskillvalue='150' WHERE spell=33950;
-- INSERT IGNORE INTO spell_learn_spell VALUES (33943,34090,0); for mangos guys...

UPDATE creature_template SET LootID=17899 where entry=17899;
DELETE FROM creature_loot_template WHERE entry = 17899;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17899, 21877, 14, 0, 2, 3, 0, 0, 0, 0),
(17899, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17899, 32428, 4, 0, 1, 1, 0, 0, 0, 0),
(17899, 32589, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17899, 32590, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17899, 34009, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17899, 32748, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17899, 34010, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17899, 32736, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17899, 32609, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17899, 32591, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17899, 32752, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17899, 32592, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17899, 31952, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17899, 32746, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17899, 32739, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17899, 25403, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17899, 25405, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17899, 32755, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17899, 32745, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17899, 25401, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25406, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25399, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 24670, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25068, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25307, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25363, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25404, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17899, 25343, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17895 where entry=17895;
DELETE FROM creature_loot_template WHERE entry = 17895;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17895, 21877, 13, 0, 2, 3, 0, 0, 0, 0),
(17895, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17895, 32428, 5, 0, 1, 1, 0, 0, 0, 0),
(17895, 32609, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17895, 32589, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17895, 32592, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17895, 34010, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17895, 32591, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17895, 34009, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17895, 32590, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17895, 32748, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17895, 32746, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17895, 32751, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17895, 32752, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17895, 32736, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17895, 32755, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17895, 31952, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17895, 32739, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17895, 32745, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17895, 25403, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17895, 25399, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25056, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25397, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25054, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25406, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25401, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 24890, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25405, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 23079, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25358, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25348, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17895, 25402, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17898 where entry=17898;
DELETE FROM creature_loot_template WHERE entry = 17898;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17898, 21877, 14, 0, 2, 3, 0, 0, 0, 0),
(17898, 32897, 5, 0, 1, 1, 0, 0, 0, 0),
(17898, 32428, 5, 0, 1, 1, 0, 0, 0, 0),
(17898, 32589, 1.2, 0, 1, 1, 0, 0, 0, 0),
(17898, 32609, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17898, 32592, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17898, 34010, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17898, 32746, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17898, 32590, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17898, 32752, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17898, 32736, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17898, 32591, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17898, 34009, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17898, 32748, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17898, 32745, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17898, 32739, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17898, 25403, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17898, 25406, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17898, 32757, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17898, 25398, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17898, 25376, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25393, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 32751, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 24913, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25343, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25405, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25400, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25055, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 24684, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25071, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25401, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25363, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25392, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25397, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17898, 25402, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17897 where entry=17897;
DELETE FROM creature_loot_template WHERE entry = 17897;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17897, 21881, 9, 0, 1, 3, 0, 0, 0, 0),
(17897, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17897, 32428, 4, 0, 1, 1, 0, 0, 0, 0),
(17897, 32590, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17897, 34010, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17897, 32592, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17897, 32589, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17897, 32591, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17897, 34009, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17897, 32609, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17897, 32736, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17897, 32752, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17897, 32746, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17897, 32748, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17897, 32739, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17897, 31952, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17897, 32751, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17897, 25358, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17897, 32755, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25056, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25397, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25402, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25401, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25361, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25394, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25400, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 32745, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25068, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 24665, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25404, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25399, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17897, 25398, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17905 where entry=17905;
DELETE FROM creature_loot_template WHERE entry = 17905;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17905, 21877, 13, 0, 2, 3, 0, 0, 0, 0),
(17905, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17905, 32428, 4, 0, 1, 1, 0, 0, 0, 0),
(17905, 32592, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17905, 32591, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17905, 34009, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17905, 32590, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17905, 32752, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17905, 32746, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17905, 32609, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17905, 32589, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17905, 31952, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17905, 32748, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 32736, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 32755, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 34010, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 24780, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 25306, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 24902, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 25399, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 25395, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 25400, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17905, 32751, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 32745, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 32739, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 24788, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 25224, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 25404, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 25394, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 25397, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17905, 25403, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17906 where entry=17906;
DELETE FROM creature_loot_template WHERE entry = 17906;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17906, 25418, 69, 0, 2, 4, 0, 0, 0, 0),
(17906, 25421, 17, 0, 2, 4, 0, 0, 0, 0),
(17906, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17906, 32428, 4, 0, 1, 1, 0, 0, 0, 0),
(17906, 32589, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17906, 32591, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17906, 32590, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17906, 34010, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17906, 32592, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17906, 34009, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17906, 32748, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17906, 32746, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17906, 32609, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17906, 32736, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17906, 25399, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17906, 32752, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 25322, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 25401, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 25400, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 25404, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 25395, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 25403, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17906, 32739, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25056, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 31952, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25379, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 32751, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 32755, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 24682, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25013, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25321, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 24664, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 24893, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 24891, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 24909, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25378, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25346, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17906, 25405, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17908 where entry=17908;
DELETE FROM creature_loot_template WHERE entry = 17908;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17908, 32897, 5, 0, 1, 1, 0, 0, 0, 0),
(17908, 32428, 3, 0, 1, 1, 0, 0, 0, 0),
(17908, 32589, 1, 0, 1, 1, 0, 0, 0, 0),
(17908, 34010, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17908, 32591, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17908, 32590, 0.6, 0, 1, 1, 0, 0, 0, 0),
(17908, 32609, 0.5, 0, 1, 1, 0, 0, 0, 0),
(17908, 32592, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17908, 32748, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17908, 34009, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17908, 32745, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17908, 32752, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17908, 32736, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17908, 32746, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17908, 32755, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17908, 25057, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17908, 25373, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17908, 25389, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17908, 25398, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17908, 32751, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25055, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24678, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24673, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24690, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25322, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25375, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25378, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25359, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25361, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25404, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25392, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25346, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25400, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 32739, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24680, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24681, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24679, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25006, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24802, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24674, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24688, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25069, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24796, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25295, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25141, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24785, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25015, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 24902, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25363, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25347, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17908, 25403, 0.1, 0, 1, 1, 0, 0, 0, 0);
UPDATE creature_template SET LootID=17916 where entry=17916;
DELETE FROM creature_loot_template WHERE entry = 17916;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17916, 25418, 68, 0, 2, 4, 0, 0, 0, 0),
(17916, 25421, 17, 0, 2, 4, 0, 0, 0, 0),
(17916, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17916, 32428, 4, 0, 1, 1, 0, 0, 0, 0),
(17916, 32592, 0.7, 0, 1, 1, 0, 0, 0, 0),
(17916, 34010, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17916, 32609, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 32590, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 32745, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 32736, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 31952, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 32748, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 32752, 0.3, 0, 1, 1, 0, 0, 0, 0),
(17916, 32591, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17916, 32589, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17916, 32746, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17916, 25293, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17916, 23112, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17916, 24891, 0.2, 0, 1, 1, 0, 0, 0, 0),
(17916, 34009, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 32751, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25194, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25375, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25362, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25363, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25392, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25400, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 29724, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25055, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25056, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25041, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24679, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24773, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24779, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24675, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24791, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25152, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25068, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25111, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24781, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25306, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24666, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24888, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24887, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24900, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 24908, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25357, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25360, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25361, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25399, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25390, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25344, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25347, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25405, 0.1, 0, 1, 1, 0, 0, 0, 0),
(17916, 25398, 0.1, 0, 1, 1, 0, 0, 0, 0);

UPDATE creature_template SET LootID=17907 where entry=17907;
DELETE FROM creature_loot_template WHERE entry = 17907;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(17907, 32897, 6, 0, 1, 1, 0, 0, 0, 0),
(17907, 32428, 4, 0, 1, 1, 0, 0, 0, 0),
(17907, 32589, 1.2, 0, 1, 1, 0, 0, 0, 0),
(17907, 24804, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17907, 24914, 0.8, 0, 1, 1, 0, 0, 0, 0),
(17907, 32592, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 32748, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 32751, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 24679, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25281, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25196, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25238, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25042, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25017, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25015, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25363, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25391, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25347, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25348, 0.4, 0, 1, 1, 0, 0, 0, 0),
(17907, 25402, 0.4, 0, 1, 1, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 15000, `maxhealth` = 15000 WHERE `entry` = 24780;
UPDATE `creature_template` SET `npcflag` = 4225 WHERE `entry` = 24780;
-- Data generated from WoWHead.com by JMAan's(aka jaman/generala) vendor list generator --
DELETE FROM npc_vendor WHERE entry = 24780;
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(24780, 17030, 0, 0),
(24780, 17020, 0, 0),
(24780, 28056, 0, 0),
(24780, 8925, 0, 0),
(24780, 5173, 0, 0),
(24780, 16583, 0, 0),
(24780, 8924, 0, 0),
(24780, 8923, 0, 0),
(24780, 5140, 0, 0),
(24780, 22147, 0, 0),
(24780, 17028, 0, 0),
(24780, 17037, 0, 0),
(24780, 18256, 0, 0),
(24780, 5565, 0, 0),
(24780, 28061, 0, 0),
(24780, 17038, 0, 0),
(24780, 3777, 0, 0),
(24780, 2931, 0, 0),
(24780, 17032, 0, 0),
(24780, 17031, 0, 0),
(24780, 17029, 0, 0),
(24780, 27498, 1, 3600),
(24780, 27499, 1, 3600),
(24780, 27503, 1, 3600),
(24780, 17033, 0, 0),
(24780, 21177, 0, 0),
(24780, 28101, 2, 3600),
(24780, 28100, 1, 3600),
(24780, 17021, 0, 0),
(24780, 22148, 0, 0),
(24780, 17026, 0, 0);
delete from creature_addon where guid in (select guid from creature where id=24780);
DELETE FROM `creature` WHERE `id` = 24780;
delete from `npc_trainer` where spell in (25417);
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(16646,25417,26000,0,0,62),
(5173,25417,26000,0,0,62),
(23534,25417,26000,0,0,62),
(5172,25417,26000,0,0,62),
(16266,25417,26000,0,0,62),
(461,25417,26000,0,0,62),
(3172,25417,26000,0,0,62),
(5612,25417,26000,0,0,62),
(3324,25417,26000,0,0,62),
(4563,25417,26000,0,0,62),
(988,25417,26000,0,0,62),
(4564,25417,26000,0,0,62),
(906,25417,26000,0,0,62),
(3325,25417,26000,0,0,62),
(4565,25417,26000,0,0,62),
(2127,25417,26000,0,0,62),
(5496,25417,26000,0,0,62),
(6251,25417,26000,0,0,62),
(16647,25417,26000,0,0,62),
(5171,25417,26000,0,0,62),
(5495,25417,26000,0,0,62),
(16648,25417,26000,0,0,62),
(3326,25417,26000,0,0,62);
-- DELETE FROM `spell_script_target` WHERE `entry` = '23675';
-- INSERT IGNORE INTO `spell_script_target` VALUES ('23675', '0', '181825');
DELETE FROM npc_vendor WHERE item=28238;
INSERT IGNORE INTO `npc_vendor` (`entry`,`item`) VALUES ('12781','28238');
update quest_template set specialflags=specialflags|2 where entry = 10166;
update creature_template set `minmana` = 150, `maxmana` = 150, `faction_a` = 91, `faction_h` = 91 where entry = 19456;

delete from `creature` where id = 19456;

-- delete from `spell_scripts` where `id` = 33980;
-- INSERT IGNORE INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES (33980,0,10,19456,120000,'',8216.545898,-6335.379395,64.509804,3.48);

delete from `event_scripts` where `id` = 12530;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES (12530,0,10,19456,120000,'',8216.545898,-6335.379395,64.509804,3.48);
DELETE FROM npc_vendor where entry=23896;
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`)
VALUES
('23896', '4593', '0', '0'),
('23896', '4592', '0', '0'),
('23896', '4594', '0', '0'),
('23896', '787', '0', '0'),
('23896', '8957', '0', '0'),
('23896', '21552', '0', '0');
-- Hyjal HUMAN base
update `creature_template` set faction_A=1716, Faction_H=1716 where entry in (17772,17919,17920,17921,17922,17928,17931);
-- Hyjal HORD base
update `creature_template` set faction_A=1719, Faction_H=1719 where entry in (17852,17932,17933,17934,17935,17936,17937);
-- Hyjal Night ELF base
update `creature_template` set faction_A=1718, Faction_H=1718 where entry in (3794,3795,17943,17944,17945,17948,18485,18486,18487,18502);
-- Curently spawned hostyle creatures
update `creature_template` set faction_A=1720, Faction_H=1720 where entry in (17808,17842,17888,17895,17897,17898,17899,17968);
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =9900, maxhealth =12100, minmana =17037, maxmana =20823, rank =0 where entry =3794;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =4950, maxhealth =6050, minmana =17037, maxmana =20823, rank =0 where entry =3795;
UPDATE creature_template SET minlevel =73, maxlevel =73, minhealth =180000, maxhealth =220000, minmana =60966, maxmana =74514, rank =3 where entry =17772;
UPDATE creature_template SET minlevel =73, maxlevel =73, minhealth =162000, maxhealth =198000, minmana =45724, maxmana =55885, rank =3 where entry =17852;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =20700, maxhealth =25300, minmana =0, maxmana =0, rank =1 where entry =17919;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =26100, maxhealth =31900, minmana =0, maxmana =0, rank =1 where entry =17920;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =16200, maxhealth =19800, minmana =0, maxmana =0, rank =1 where entry =17921;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =18000, maxhealth =22000, minmana =32382, maxmana =39578, rank =1 where entry =17922;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =26100, maxhealth =31900, minmana =32382, maxmana =39578, rank =1 where entry =17928;
UPDATE creature_template SET minlevel =69, maxlevel =70, minhealth =10000 , maxhealth = 19000, minmana =0, maxmana =0, rank =1 where entry =17931;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =20700, maxhealth =25300, minmana =0, maxmana =0, rank =1 where entry =17932;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =24300, maxhealth =29700, minmana =0, maxmana =0, rank =1 where entry =17933;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =9900, maxhealth =12100, minmana =0, maxmana =0, rank =1 where entry =17934;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =18000, maxhealth =22000, minmana =22716, maxmana =27764, rank =1 where entry =17935;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =20700, maxhealth =25300, minmana =22716, maxmana =27764, rank =1 where entry =17936;
UPDATE creature_template SET minlevel =69, maxlevel =70, minhealth =12000 ,maxhealth = 19000, minmana =0, maxmana =0, rank =1 where entry =17937;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =9900, maxhealth =12100, minmana =0, maxmana =0, rank =1 where entry =17943;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =13500, maxhealth =16500, minmana =17037, maxmana =20823, rank =1 where entry =17944;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =17100, maxhealth =20900, minmana =0, maxmana =0, rank =1 where entry =17945;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =8730, maxhealth =10670, minmana =0, maxmana =0, rank =0 where entry =18485;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =23400, maxhealth =28600, minmana =0, maxmana =0, rank =0 where entry =18486;
UPDATE creature_template SET minlevel =70, maxlevel =70, minhealth =14400, maxhealth =17600, minmana =0, maxmana =0, rank =0 where entry =18487;
UPDATE creature_template SET minlevel =69, maxlevel =70, minhealth =12000 , maxhealth =18000, minmana =0, maxmana =0, rank =1 where entry =18502;
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (11955, 11953, 100, 0, 10, 10, 0, 0, 0, 0);

-- Farseer Nobundo(17204)
INSERT IGNORE INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17204, 32183, 80000, 0, 0, 70);

-- Farseer Umbrua(20407)
INSERT IGNORE INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (20407, 32183, 80000, 0, 0, 70);

-- Gurrag(17520)
INSERT IGNORE INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17520, 32183, 80000, 0, 0, 70);

-- Hobahken(17519)
INSERT IGNORE INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17519, 32183, 80000, 0, 0, 70);

-- Sulaa(17219)
INSERT IGNORE INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17219, 32183, 80000, 0, 0, 70);

-- Tuluun(17212)
INSERT IGNORE INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17212, 32183, 80000, 0, 0, 70);
UPDATE `creature_template` SET `flags` = `flags`&~256 WHERE `entry` in (18707, 22441);
DELETE FROM `spell_script_target` WHERE `entry`=40447;
INSERT IGNORE INTO `spell_script_target` (`entry`,`type`, `targetEntry`) VALUES ('40447', '1', '22841');

DELETE FROM `spell_script_target` WHERE `entry`=40874;
INSERT IGNORE INTO `spell_script_target` (`entry`,`type`, `targetEntry`) VALUES ('40874', '1', '22841');
-- Shade Soul Channel
DELETE FROM `spell_script_target` WHERE `entry` = '40401';
INSERT IGNORE INTO `spell_script_target` (`entry`,`type`, `targetEntry`) VALUES ('40401', '1', '22841');
update quest_template set `offerrewardtext` = 'Aha! You got him!$b$bYou do your clan proud, $N. And because of you, Durotar is free of one more agent of evil.' where entry = 806;
update quest_template set `offerrewardtext` = 'Oh, my son... my beautiful son.$b$bUncertain of my son\'s fate, I have tormented myself since he left. Now that I know what\'s happened, perhaps I can finally begin to mourn.$b$bThank you, $N. Please take this. I was going to give it to Kron as a gift when he returned successful. Now that I know he is dead, I cannot bear to look at it.' where entry = 816;
update quest_template set `offerrewardtext` = 'Treacherous...treacherous and dangerous, that\'s what this land is.$B$BBut I\'m here to show the night elves that it\'s a little safer with the help of good ole engineering and a dash of magic.$B$BSee, swearing off magic completely won\'t help the night elves -- they need it. The world needs it. And with engineering and alchemy to boot, you can\'t go wrong. The possibilities are endless.' where entry = 1085;
update quest_template set `RequestItemsText` = 'Did you find Fizzle, $N? He, and and rest of the Burning Blade, must be scoured from our lands!' where `entry` = 806;
-- aliance footman sword and shield
update creature_template set equipment_id=653 where entry =17919;
-- alliance knight 1h sword
update creature_template set equipment_id=639 where entry =17920;
-- alliance peasant
update creature_template set equipment_id=319 where entry =17931;
-- tauren warrior totemic 2h mace
update creature_template set equipment_id=1343 where entry=17933;
-- Lady Jaina Proudmoore
update creature_template set equipment_id=1745 where entry=17772;
-- Thrall
update creature_template set equipment_id=1048 where entry=17852;
-- Hord peon
update creature_template set equipment_id=1103 where entry=17937;
-- Night Elf Huntress
update creature_template set equipment_id=818 where entry=17945;
-- Night Elf Huntress should be on a black nightsaber mount
INSERT IGNORE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(17945, 9991, 16843008, 0, 4097, 0, NULL);

UPDATE `quest_template` SET `ReqSourceId1` = 4639, `ReqSourceCount1` = 1, `ReqSourceRef1` = 2 WHERE `entry` = 736;
UPDATE `quest_template` SET `ExclusiveGroup` = 3763 WHERE `entry` IN (3763, 3789, 3790, 10520);
update `quest_template` set `SpecialFlags` = `SpecialFlags`|2 where `entry` in (5929, 5930);
INSERT IGNORE INTO `item_loot_template`(`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (24402, 24407, 5, 0, 1, 1, 0, 0, 0, 0);

-- delete duplicated spawn according go_t 175629
DELETE FROM `gameobject` WHERE (`guid`=18508);
INSERT IGNORE INTO `creature_questrelation` ( `id` , `quest` )
VALUES (
'16013', '10494'
);

INSERT IGNORE INTO `creature_involvedrelation` ( `id` , `quest` )
VALUES (
'16013', '10494'
);
-- Wrong faction for Npc "Summoned Bloodwarder Reservist".
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE `entry`='20078';

-- delete duplicated spawn according go_t 175629
DELETE FROM `gameobject` WHERE (`guid`=18508);
DELETE FROM `gameobject` WHERE (`guid`='35400');
UPDATE `creature` SET `spawndist`='0',`MovementType`='0' WHERE (`guid`='2703');
-- Correct the flags to can open tinkering
UPDATE `gameobject_template` SET `flags`='0' WHERE `Entry`='61936';
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(14139, 0, 10, 21894, 360000, '', 568.418, 8653.05, 19.9106, 1.18595);
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(14797, 0, 10, 23035, 9900000, '', -78.3603, 288.525, 26.4832, 3.21359);
UPDATE `quest_template` SET `ExclusiveGroup` = 3763 WHERE `entry` IN (3763, 3789, 3790, 10520);

DELETE FROM `creature_loot_template` WHERE (`entry`=14834) AND (`item`=19802);
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (14834, 19802, 100, 0, 1, 1, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=14834) AND (`item`= 14508);
DELETE FROM `creature_loot_template` WHERE (`entry`=14834) AND (`item`= 19726);
DELETE FROM `creature_loot_template` WHERE (`entry`=14834) AND (`item`= 20725);
-- Gift of The Wild (Rank 1)
DELETE FROM `npc_trainer` WHERE (`spell`=40375);

INSERT IGNORE INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqlevel`) VALUES
('4218','40375','30000','50'),
('4219','40375','30000','50'),
('3064','40375','30000','50'),
('16655','40375','30000','50'),
('8142','40375','30000','50'),
('3602','40375','30000','50'),
('3036','40375','30000','50'),
('12042','40375','30000','50'),
('4217','40375','30000','50'),
('16721','40375','30000','50'),
('3034','40375','30000','50'),
('5504','40375','30000','50'),
('5505','40375','30000','50'),
('3033','40375','30000','50');

-- Gift of The Wild (Rank 2)
DELETE FROM `npc_trainer` WHERE (`spell`=40376);

INSERT IGNORE INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqlevel`) VALUES
('4218','40376','40000','60'),
('4219','40376','40000','60'),
('3064','40376','40000','60'),
('16655','40376','40000','60'),
('8142','40376','40000','60'),
('3602','40376','40000','60'),
('3036','40376','40000','60'),
('12042','40376','40000','60'),
('4217','40376','40000','60'),
('16721','40376','40000','60'),
('3034','40376','40000','60'),
('5504','40376','40000','60'),
('5505','40376','40000','60'),
('3033','40376','40000','60'),
('9465','40376','40000','60');

DELETE FROM `game_graveyard_zone` WHERE `id`='1045' AND `ghost_zone`='3845';
DELETE FROM `game_graveyard_zone` WHERE `id`='1045' AND `ghost_zone`='3847';
DELETE FROM `game_graveyard_zone` WHERE `id`='1045' AND `ghost_zone`='3848';
DELETE FROM `game_graveyard_zone` WHERE `id`='1045' AND `ghost_zone`='3849';
INSERT IGNORE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
('1247','3845','0'),
('1247','3847','0'),
('1247','3848','0'),
('1247','3849','0');
delete from `gameobject` where `guid`=7225;

-- relocating Elder Mistvale Gorilla off the road
UPDATE `creature` SET `position_x` = -13635, `position_y` = 151.881, `position_z` = 21.9225, `orientation` = 5.99137, `spawn_position_x` = -13635, `spawn_position_y` = 151.881, `spawn_position_z` = 21.9221, `spawn_orientation` = 5.99137 WHERE `guid` = 2520;

UPDATE `quest_template` SET `ExclusiveGroup` = 936 WHERE `entry` IN (936, 3762, 3784);

-- Updates Reputation Rewards for the quest "Heart of Rage", Horde Side.
UPDATE `quest_template` SET RewRepFaction1=947, RewRepValue1=350 WHERE `entry`='9608';

-- The Right Piece of Lord Valthalak's Amulet
UPDATE `quest_template` SET `ReqSourceId1` = '22046', `ReqSourceCount1` = '1', `ReqSourceRef1` = '1' WHERE `entry` IN ('8989', '8990', '8991', '8992');

-- Minion of Gurok should not have loot
DELETE from `creature_loot_template` WHERE `entry`='18181';
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '18181';
-- All item loot are 100% (4 empty vials)
UPDATE `item_loot_template` SET `ChanceOrRef` = '100' WHERE `entry` = '10695';

INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (636, 7074);
update creature set movementtype=0, spawndist=0 where guid=636;

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 74397;
-- The Right Piece of Lord Valthalak's Amulet
UPDATE `quest_template` SET `ReqSourceId1` = '22046', `ReqSourceCount1` = '1', `ReqSourceRef1` = '1' WHERE `entry` IN ('8989', '8990', '8991', '8992');

insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44706','187390','530','9810.16','-7497.59','14.498','-0.017453','0','0', '0.008727','-0.999962','180','100','1');
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44707','187390','530','9810.25','-7478.58','14.5536','0','0','0','0','1', '180','100','1');
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44708','187390','530','9810.22','-7488.1','14.5327','-0.017453','0', '0','0.008727','-0.999962','180','100','1');
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44709','187390','530','9525.15','-7223.09','17.4742','-1.62316', '0', '0','0.725374','-0.688354','180','100','1');
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44710','187390','530','9534.72','-7223.15','17.4691','-1.64061','0','0', '0.731354','-0.681998','180','100','1');
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44711','187390','530','9515.66','-7223.01','17.4557','-1.6057','0','0','0.71934', '-0.694658','180','100','1');
insert ignore into `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
values('44712','187295','1','-1257.81','64.3735','127.625','1.48353','0','0','0.67559','0.737277','180','100','1');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('44713','187291', '530','-3904.36','-11558','-150.018','3.14159','0', '0','1','0','180','100','1');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('44714','187291', '530','-3909.75','-11548.9','-149.957','-2.32129', '0','0','0.91706', '-0.398749','180','100','1');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('44715','187294', '0','-4887.29','-977.446','503.94','-0.890118','0', '0','0.430511', '-0.902585','180','100','1');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('44716','187294', '0','-4905.44','-992.343','503.94','-0.959931','0', '0', '0.461749','-0.887011','180','100','1');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('44717','187337', '1','9944.14','2513.43', '1318.63','3.00197','0', '0','0.997564','0.069757','180', '100','1');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
values('44718','187337', '1','9935.95','2517.15','1318.54','-0.715585','0', '0','0.350207','-0.936672','180','100','1');

-- The Talon King's Coffer in Sethekk Halls
DELETE FROM `gameobject` WHERE `id` = '187372';
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`,`rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('44719', '187372', '556', '81.757767', '287.084686', '26.629337', '3.150180', '0.000000', '0.000000', '0.000000', '0.000000', '1', '100', '1');


INSERT IGNORE INTO `gameobject` (guid, `id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(44720, 4090, 530, -1844.56, 5227.63, -38.5276, 1.07634, 0, 0, 0.512566, 0.858648, 25, 100, 1);

INSERT IGNORE INTO `gameobject` (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs,animprogress,state) VALUES 
('44721','182115','530','-239.539658', '5499.490234','29.832872','-1.047198','0.000000', '0.000000','0.500000', '-0.866025','180','100','1');

INSERT IGNORE INTO `gameobject` (guid, `id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(44722, 185554, 556, -87.5742, 287.856, 26.4832, 0.0877018, 0, 0, 0.0438369, 0.999039, 480, 100, 1);

INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(44723, 186251, 530, 6821.59, -7778.09, 129.196, 1.0278, 0, 0, 0.491577, 0.870834, 25, 100, 1);

-- spawns for Nazzivus Monument and Nazzivus Monument Glyphs
DELETE FROM `gameobject` WHERE `id` IN (182532, 182212);
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44724, 182532, 530, -2306.23, -11266.3, 36.8, 3.2, 0, 0, 0.99905, 0.0435773, 180, 100, 1),
(44725, 182212, 530, -2298.93, -11267, 36.1106, 3.05441, 0, 0, 0.99905, 0.0435773, 25, 100, 1);
-- ---------------
-- few missing elders for lunar festival
-- hinterlands
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
values('91708','15559', '0', '15616','0','233.456', '-3499.97','161.033', '0.785398','350','5', '0','233.456','-3499.97', '161.033','0.785398', '1','0','0','0');
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`)
values('91709','0','2048','0','4097', '0','25824 0');
-- silverpineforest
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) 
values('91708','15561', '0','15625', '0','514.754','1560.97', '130.145','4.39823','275','5', '0','514.754', '1560.97','130.145', '4.39823','1', '0','0','0');
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) 
values('91709','0', '2048','0', '4097','0','25824 0');
-- wpl
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
values('91712','15602','0','15618','0', '1995.88','-2420.17','59.3823','2.72271', '315','5','0', '1995.88','-2420.17', '59.3823','2.72271','1','0', '0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
values('91713','15594','0','15620','0', '1261.16','-2558.27','118.29','0.506145', '315','5','0', '1261.16','-2558.27', '118.29','0.506145','1','0', '0','0');
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`)
values('91712','0','67584', '0','4097','0', '25824 0');
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`)
values('91713','0','67584', '0','4097','0', '25824 0');
-- epl
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
values('91710','15566','0','15636', '0','2237.86','-5340.41','84.7113','1.13446', '345','5','0', '2237.86','-5340.41','84.7113', '1.13446','1','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`)
values('91711','15592','0','15646', '0','1853.99','-3721.45','162.308','1.27409', '345','5','0', '1853.99','-3721.45','162.308', '1.27409','1','0','0','0');
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`)
values('91710','0','2048', '0','4097','0','25824 0');
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`)
values('91711','0','2048', '0','4097','0','25824 0');
insert ignore into game_event_creature (guid, event) values (91708 , 7);
insert ignore into game_event_creature (guid, event) values (91709, 7);
insert ignore into game_event_creature (guid, event) values (91710, 7);
insert ignore into game_event_creature (guid, event) values (91711, 7);
insert ignore into game_event_creature (guid, event) values (91712, 7);
insert ignore into game_event_creature (guid, event) values (91713, 7);
-- -------------------------
-- Spawn for the Npc "Budd Nedreck"
INSERT IGNORE INTO `creature` VALUES
(91703,'23559','530','0','0','6774.26','-7604.58','128.62','5.35','300','0','0','6774.26','-7604.58','128.62','5.35','10000','0','0','0');

-- one Warsong Shredder is definately not enough nor blizzlike (http://www.wowhead.com/?quest=9517)
delete from creature_addon where guid=86510;
DELETE FROM `creature` WHERE (`guid`=86510);
INSERT IGNORE INTO `creature` (guid, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(91704, 11684, 1, 0, 0, 1469.79, -2334, 91.079, 2.053, 250, 5, 0, 1469.79, -2334, 91.079, 2.053, 830, 0, 0, 1),
(91705, 11684, 1, 0, 0, 2512.22, -3389.39, 101.895, 5.58839, 250, 5, 0, 2512.22, -3389.39, 101.895, 5.58839, 830, 0, 0, 1),
(91706, 11684, 1, 0, 0, 2470.18, -3488.39, 92.3862, 2.27518, 250, 5, 0, 2470.18, -3488.39, 92.3862, 2.27518, 830, 0, 0, 1),
(91707, 11684, 1, 0, 0, 2301.74, -3278.24, 101.566, 0.0210564, 250, 5, 0, 2301.74, -3278.24, 101.566, 0.0210564, 830, 0, 0, 1);

-- and ends
-- seph
-- Azure Key was not lootable
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0', `QuestChanceOrGroup` = '100' WHERE `item` = '20022';
-- Yenniku should be questgiver
UPDATE `creature_template` SET `npcflag` = `npcflag`|'2' WHERE `entry` = '2530';
-- Underbog bosses and trash maxlevel
UPDATE `creature_template` SET `maxlevel` = '65', `maxmana` = `minmana`, `maxhealth` = `minhealth` WHERE `entry` IN ('17770', '18105', '17826', '17882', '17723', '17827', '17731', '19632', '17732', '17730', '17730', '17729', '17728', '17724', '20465', '17734', '17734', '17990', '17871', '17894', '17726', '17727', '17735', '17725');
-- Brain of the Black Stalker
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '100' WHERE `item` = '24248';
-- Mana Bomb Kill Credit Trigger quest invisibility
UPDATE `creature_template_addon` SET `auras` = '23196 0' WHERE `entry` = '21039';
-- Emissary Roman'khan stats
UPDATE `creature_template` SET `minlevel` = '63', `maxlevel` = '63', `minhealth` = '13000', `maxhealth` = '13000', `mingold` = '4055', `maxgold` = '4275', `spell1` = '23774', `ScriptName` = 'generic_creature' WHERE `entry` = '14862';
-- Emissary Roman'khan not a female on offi
UPDATE `creature_model_info` SET `gender` = '0' WHERE `modelid` = '15359';
-- Death Ravager should not be tameable anymore
UPDATE `creature_template` SET `family` = '0' WHERE `entry` = '17556';
-- Terokk's Mask
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '100' WHERE `item` = '27633';
-- Mage 1 was spawned in Hellfire Peninsula
delete from creature_addon where guid in (select guid from creature where id=1574);
DELETE FROM `creature` WHERE `id` = '1574';
-- Sergeant Dalton hp and not civilian
UPDATE `creature_template` SET `minhealth` = '4100', `maxhealth` = '4100', `civilian` = '0' WHERE `entry` = '19363';
-- Bleeding Hollow Skeleton is a summoned creature
delete from creature_addon where guid in (select guid from creature where id=19460);
DELETE FROM `creature` WHERE `id` = '19460';
-- Assign spells to Bleeding Hollow Necrolyte
UPDATE `creature_template` SET `spell1` = '15228', `spell2` = '34073', `spell3` = '34019', `ScriptName` = 'generic_creature' WHERE `entry` = '19422';
-- Bleeding Hollow Riding Worg is a summoned creature
delete from creature_addon where guid in (select guid from creature where id=19640);
DELETE FROM `creature` WHERE `id` = '19640';
-- Assign spell to the summoner
UPDATE `creature_template` SET `spell1` = '34368', `ScriptName` = 'generic_creature' WHERE `entry` = '19424';
-- Smoke Beacon
UPDATE `item_template` SET `Duration` = '7200' WHERE `entry` = '31739';
-- Shadow Labyrinth key
DELETE FROM `creature_loot_template` WHERE (`item` = '27991');
DELETE FROM `gameobject_loot_template` WHERE (`entry` = '23035');
INSERT IGNORE INTO `gameobject_loot_template` VALUES
('23035', '27991', '100', '0', '1', '1', '1', '0', '0', '0');
-- Murkblood Oracle was friendly
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE `entry` = '17771';

-- Large Spotlight was attacking
UPDATE `creature_template` SET `civilian` = '1' WHERE `entry` = '15897';
-- Grounding Totem alliance model
UPDATE `creature_template` SET `modelid_A` = '19071' WHERE `entry` = '5925';
-- Frost Resistane Totem III alliance model
UPDATE `creature_template` SET `modelid_A` = '19074' WHERE `entry` = '7413';
-- Stoneclaw Totem VI alliance model
UPDATE `creature_template` SET `modelid_A` = '19073' WHERE `entry` IN ('7399', '14870');
-- Earthbing Totem alliance model
UPDATE `creature_template` SET `modelid_A` = '19073' WHERE `entry` = '2630';
-- Tranquil Air Totem models were swapped
UPDATE `creature_template` SET `modelid_A` = '19071', `modelid_H` = '4590' WHERE `entry` = '15803';
-- Wrath of Air Totem alliance model
UPDATE `creature_template` SET `modelid_A` = '19071' WHERE `entry` = '15447';
-- Corrupted Air Totem only should have one model
UPDATE `creature_template` SET `modelid_H` = '4590' WHERE `entry` = '18236';
-- Fire Nova Totem VI alliance model
UPDATE `creature_template` SET `modelid_A` = '19074' WHERE `entry` = '15482';
-- Fire Nova Totem alliance model
UPDATE `creature_template` SET `modelid_A` = '19074' WHERE `entry` = '24320';
-- Mana Tide Totem II, III and IV models were swapped
UPDATE `creature_template` SET `modelid_A` = '19075', `modelid_H` = '4587' WHERE `entry` IN ('11100', '11101', '17061');
-- Mana Spring Totem V alliance model
UPDATE `creature_template` SET `modelid_A` = '19075' WHERE `entry` = '15489';
-- Stoneskin Totem VII alliance model
UPDATE `creature_template` SET `modelid_A` = '19073' WHERE `entry` = '15470';
-- Tremor Totem alliance model
UPDATE `creature_template` SET `modelid_A` = '19073' WHERE `entry` = '5913';
-- Warp Nether
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '100' WHERE `item` = '29051';
-- Unstable Voidwalker is summoned creature
delete from creature_addon where guid in (select guid from creature where id=20145);
DELETE FROM `creature` WHERE `id` = '20145';

-- Nether Spike look fix
DELETE FROM `item_loot_template` WHERE `entry` = '30320';
INSERT IGNORE INTO `item_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('30320', '30319', '100', '0', '1200', '1200', '0', '0', '0', '0');
-- Items duration fix
UPDATE `item_template` SET `Duration` = '-900' WHERE `entry` IN ('30311', '30313', '30318', '30312', '30316', '30317', '30320');
-- Kalithresh's Trident should only drop in heroic
DELETE FROM `creature_loot_template` WHERE (`entry` = '17798') AND (`item` = '31721');
-- Cookpot was too big
UPDATE `gameobject_template` SET `size` = '1' WHERE `entry` = '181790';
-- Colonel Jules template
UPDATE `creature_template` SET `minhealth` = '3900', `maxhealth` = '3918', `flags` = `flags`|'2' WHERE `entry` = '22432';
-- Solid Chests were in wrong position (inside ladder textures, etc)
UPDATE `gameobject` SET `position_x` = '-8171.069824', `position_y` = '-1563.589966', `position_z` = '139.121994' WHERE `guid` = '16970';
UPDATE `gameobject` SET `position_x` = '-8097.930176', `position_y` = '-1400.530029', `position_z` = '136.792999' WHERE `guid` = '16979';
UPDATE `gameobject` SET `position_x` = '-8122.620117', `position_y` = '-2496.629883', `position_z` = '139.938995' WHERE `guid` = '16974';
-- Terestian Illhoof fixes
-- Demon Chains
UPDATE `creature_template` SET `minhealth` = '14000', `maxhealth` = '14000', `faction_A` = '16', `faction_H` = '16', `MovementType` = '0' WHERE `entry` = '17248';
-- Sacrifice teleport
DELETE FROM `spell_teleport` WHERE `id` = '30115';
INSERT IGNORE INTO `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('30115', '532', '-11240.6', '-1704.27', '179.32', '0.663225');
-- Gurgthock should not be killed by mobs of Ring of Blood
UPDATE `creature_template` SET `flags` = `flags`|'2' WHERE `entry` = '18471';
-- Rin'ji should not have loot
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '7780';
DELETE FROM `creature_loot_template` WHERE `entry` = '7780';

-- random
UPDATE `page_text` SET `text` = 'This strange object appears to be some sort of engineered device, though nothing like anything you\'ve ever seen before.$B$B$B$BJudging by its appearance, you\'d say that whatever it is, it\'s already been used.$B$B$B$BAnd judging by the layout of the corpses hereabouts, you\'d have to guess that it was used to deadly effect, whatever it is.', `next_page` = '0' WHERE `entry` = '2988';
UPDATE `page_text` SET `text` = 'As Nahni glided up, the grizzled warrior gave her a hard stare.  "I suppose you\'re here to collect the reward for killing those murlocs?"$B$B$B$BHer eyes wandered down to the glowing broadsword at his side.  "That depends on what the reward is, Marcus."  She twirled her hair playfully, pretending not to notice how he shifted uncomfortably in her presence.  "I may not want it."', `next_page` = '2987' WHERE `entry` = '2986';
UPDATE `page_text` SET `text` = 'Marcus stepped toward her, bristling with a mixture of fear and anger. "The reward is not negotiable!"  He paused for a moment while gathering his nerve, and pressed himself against her diminutive form.  Their lips met hotly, melting her frost armor spell in a torrent of sweltering vapor.$B$B$B$B"So, is there another step to this quest?" she teased, her eyes glittering with excitement.$B$B$B$B<This goes on for several hundred more pages, without advancing the plot.>', `next_page` = '0' WHERE `entry` = '2987';
INSERT IGNORE  INTO `page_text` (`entry`, `text`, `next_page`) VALUES ('2988', 'This strange object appears to be some sort of engineered device, though nothing like anything you\'ve ever seen before.$B$B$B$BJudging by its appearance, you\'d say that whatever it is, it\'s already been used.$B$B$B$BAnd judging by the layout of the corpses hereabouts, you\'d have to guess that it was used to deadly effect, whatever it is.', '0');
INSERT IGNORE  INTO `page_text` (`entry`, `text`, `next_page`) VALUES ('2986', 'As Nahni glided up, the grizzled warrior gave her a hard stare.  "I suppose you\'re here to collect the reward for killing those murlocs?"$B$B$B$BHer eyes wandered down to the glowing broadsword at his side.  "That depends on what the reward is, Marcus."  She twirled her hair playfully, pretending not to notice how he shifted uncomfortably in her presence.  "I may not want it."', '2987');
INSERT IGNORE  INTO `page_text` (`entry`, `text`, `next_page`) VALUES ('2987', 'Marcus stepped toward her, bristling with a mixture of fear and anger. "The reward is not negotiable!"  He paused for a moment while gathering his nerve, and pressed himself against her diminutive form.  Their lips met hotly, melting her frost armor spell in a torrent of sweltering vapor.$B$B$B$B"So, is there another step to this quest?" she teased, her eyes glittering with excitement.$B$B$B$B<This goes on for several hundred more pages, without advancing the plot.>', '0');

UPDATE `npc_text` SET `text0_0` = 'Be careful going into the thicket, $c.  There is a harmful aura lingering about the place.  It must be the residue from whatever destroyed my fellow druids.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9391';
UPDATE `npc_text` SET `text0_0` = 'Who are you?  What do you want here?', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '25', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = 'Why did you do this to us?', `text1_1` = '', `lang1` = '0', `prob1` = '1.000000', `em1_0` = '0', `em1_1` = '6', `em1_2` = '500', `em1_3` = '18', `em1_4` = '0', `em1_5` = '0', `text2_0` = 'There are FOUR lights!', `text2_1` = '', `lang2` = '0', `prob2` = '1.000000', `em2_0` = '0', `em2_1` = '5', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = 'My vicious teromoths will avenge me!', `text3_1` = '', `lang3` = '0', `prob3` = '1.000000', `em3_0` = '0', `em3_1` = '5', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = 'Where did everyone go?', `text4_1` = '', `lang4` = '0', `prob4` = '1.000000', `em4_0` = '0', `em4_1` = '6', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = 'Dinner guests should show more respect!', `text5_1` = '', `lang5` = '0', `prob5` = '1.000000', `em5_0` = '0', `em5_1` = '5', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = 'Oh, what a sacred place is here overthrown!', `text6_1` = '', `lang6` = '0', `prob6` = '1.000000', `em6_0` = '0', `em6_1` = '5', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = 'Anoint my head with a healing balm.  Do you like my crown of thorns?', `text7_1` = '', `lang7` = '0', `prob7` = '1.000000', `em7_0` = '0', `em7_1` = '6', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9383';
UPDATE `npc_text` SET `text0_0` = 'The corpse of one of the Broken lies here.  Mysteriously, the cause of its death does not appear to be from one of the mutated moths.$B$BPerhaps it has something to do with the strange object resting right next to its outstretched hand?', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9401';
UPDATE `npc_text` SET `text0_0` = 'We\'ll get to the bottom of this massacre if it\'s the last thing we do!', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '5', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9407';
UPDATE `npc_text` SET `text0_0` = 'I spend all day retrieving parts for the zeppelin and Frezza doesn\'t even have the decency to pay me an hourly wage. But you\'re not here about that, are you? I bet you want to know where the zeppelin is located. Well, you\'re in luck - I have my zeppelin tracking device right here!', `text0_1` = 'I spend all day retrieving parts for the zeppelin and Frezza doesn\'t even have the decency to pay me an hourly wage. But you\'re not here about that, are you? I bet you want to know where the zeppelin is located. Well, you\'re in luck - I have my zeppelin tracking device right here!', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '11189';
UPDATE `npc_text` SET `text0_0` = 'The zeppelin should have just reached Orgrimmar.', `text0_1` = 'The zeppelin should have just reached Orgrimmar.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '11165';
UPDATE `npc_text` SET `text0_0` = 'You haven\'t lived until you\'ve looked down on the world from the back of a wind rider.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '5516';
UPDATE `npc_text` SET `text0_0` = 'The Stars of this time are bent on new paths, beacons of hope and strength for the coming ages.', `text0_1` = 'The Stars of this time are bent on new paths, beacons of hope and strength for the coming ages.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '7956';
UPDATE `npc_text` SET `text0_0` = 'Elder Primestone has spent many years in the Crystal Vale in Silithus.', `text0_1` = 'Elder Primestone has spent many years in the Crystal Vale in Silithus.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '8201';
UPDATE `npc_text` SET `text0_0` = 'For reasons I cannot understand, Elder Thunderhorn has gone to the Slithering Scar in Un\'Goro Crater.', `text0_1` = 'For reasons I cannot understand, Elder Thunderhorn has gone to the Slithering Scar in Un\'Goro Crater.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '8199';
UPDATE `npc_text` SET `text0_0` = 'The spirits of Silithus call out to us, $n.  The land weeps, for it has a woeful story to tell...', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '7779';
UPDATE `npc_text` SET `text0_0` = 'We have more than one enemy in Silithus, $N.$B$BWhile everyone\'s attention is focused on the silithid, my big brother and I have been keeping a close eye on the Twilight\'s Hammer crazies.$B$B$B$B', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '7797';
UPDATE `npc_text` SET `text0_0` = '', `text0_1` = 'Can ye hear it, stranger? The humming is gettin\' louder with each passing day. These crystals must be what\'s driving these bugs crazy.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '7734';
UPDATE `npc_text` SET `text0_0` = 'Now that the war is in full swing, we\'ve had no shortage of able-bodied combatants from the Horde and Alliance.$B$BIf only we could keep them off of each other\'s throats...', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '1', `em0_1` = '6', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '8114';
UPDATE `npc_text` SET `text0_0` = 'Bonelashers, I hate them all!$B$BIf it weren\'t for the loss of my eye, and the fainting spells that I get sometimes, I\'d be out there shooting them down all the time!', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '5', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9485';
UPDATE `npc_text` SET `text0_0` = 'I have seen many dangers in these wastes.  Who knows what creatures yet lurk in the dust to ambush the unwary?', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '10721';
UPDATE `npc_text` SET `text0_0` = 'Auchindoun is home to my ancestor\'s spirits.  We might not look it, but all Broken were once draenei... our spirits are all the same.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '10662';
UPDATE `npc_text` SET `text0_0` = 'These wastes are scarred by terrible magic.  We must do what we can to heal this great wound.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '396', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '10677';
UPDATE `npc_text` SET `text0_0` = '', `text0_1` = 'There\'s a whole vast forest out there, $c. Let the shaman play with the spirits and the warriors toy with their swords. Terokkar is where I\'ll make my fortune.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '11', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9487';
UPDATE `npc_text` SET `text0_0` = 'One note stands out from the other various pieces of parchment that are tacked onto this wanted poster.  It\'s a call to slay the bonelashers of the Bone Wastes.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9482';
UPDATE `npc_text` SET `text0_0` = '', `text0_1` = 'I must have made a misstep somewhere to be assigned here.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9522';
UPDATE `npc_text` SET `text0_0` = 'Malukaz chatters incessantly about the historical importance of this forest, but I don\'t have the luxury of indulging in history until our present problems are settled.$B$BI\'m not saying his work here isn\'t important, but someone has to see to the defenses and logistics of running the hold.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '1', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9488';
UPDATE `npc_text` SET `text0_0` = '<Kaide hisses at you.>$B$BBe quiet, or you\'ll bring the orcs and the Alliance down on us, you clumsy oaf!$B$BThat\'s right, nod your head, and when we\'re done speaking, you\'ll walk away and forget you found me here.', `text0_1` = '', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '1', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '9494';
UPDATE `npc_text` SET `text0_0` = '', `text0_1` = 'Leaving Kael\'thas was the best thing any of us ever did.  His followers are too blind or too scared to realize where he\'s leading them.$B$BWe, however, are not.', `lang0` = '0', `prob0` = '1.000000', `em0_0` = '0', `em0_1` = '0', `em0_2` = '0', `em0_3` = '0', `em0_4` = '0', `em0_5` = '0', `text1_0` = '', `text1_1` = '', `lang1` = '0', `prob1` = '0.000000', `em1_0` = '0', `em1_1` = '0', `em1_2` = '0', `em1_3` = '0', `em1_4` = '0', `em1_5` = '0', `text2_0` = '', `text2_1` = '', `lang2` = '0', `prob2` = '0.000000', `em2_0` = '0', `em2_1` = '0', `em2_2` = '0', `em2_3` = '0', `em2_4` = '0', `em2_5` = '0', `text3_0` = '', `text3_1` = '', `lang3` = '0', `prob3` = '0.000000', `em3_0` = '0', `em3_1` = '0', `em3_2` = '0', `em3_3` = '0', `em3_4` = '0', `em3_5` = '0', `text4_0` = '', `text4_1` = '', `lang4` = '0', `prob4` = '0.000000', `em4_0` = '0', `em4_1` = '0', `em4_2` = '0', `em4_3` = '0', `em4_4` = '0', `em4_5` = '0', `text5_0` = '', `text5_1` = '', `lang5` = '0', `prob5` = '0.000000', `em5_0` = '0', `em5_1` = '0', `em5_2` = '0', `em5_3` = '0', `em5_4` = '0', `em5_5` = '0', `text6_0` = '', `text6_1` = '', `lang6` = '0', `prob6` = '0.000000', `em6_0` = '0', `em6_1` = '0', `em6_2` = '0', `em6_3` = '0', `em6_4` = '0', `em6_5` = '0', `text7_0` = '', `text7_1` = '', `lang7` = '0', `prob7` = '0.000000', `em7_0` = '0', `em7_1` = '0', `em7_2` = '0', `em7_3` = '0', `em7_4` = '0', `em7_5` = '0' WHERE `ID` = '10153';
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9391', 'Be careful going into the thicket, $c.  There is a harmful aura lingering about the place.  It must be the residue from whatever destroyed my fellow druids.', '', '0', '1.000000', '0', '1', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9383', 'Who are you?  What do you want here?', '', '0', '1.000000', '0', '25', '0', '0', '0', '0', 'Why did you do this to us?', '', '0', '1.000000', '0', '6', '500', '18', '0', '0', 'There are FOUR lights!', '', '0', '1.000000', '0', '5', '0', '0', '0', '0', 'My vicious teromoths will avenge me!', '', '0', '1.000000', '0', '5', '0', '0', '0', '0', 'Where did everyone go?', '', '0', '1.000000', '0', '6', '0', '0', '0', '0', 'Dinner guests should show more respect!', '', '0', '1.000000', '0', '5', '0', '0', '0', '0', 'Oh, what a sacred place is here overthrown!', '', '0', '1.000000', '0', '5', '0', '0', '0', '0', 'Anoint my head with a healing balm.  Do you like my crown of thorns?', '', '0', '1.000000', '0', '6', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9401', 'The corpse of one of the Broken lies here.  Mysteriously, the cause of its death does not appear to be from one of the mutated moths.$B$BPerhaps it has something to do with the strange object resting right next to its outstretched hand?', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9407', 'We\'ll get to the bottom of this massacre if it\'s the last thing we do!', '', '0', '1.000000', '0', '5', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('11189', 'I spend all day retrieving parts for the zeppelin and Frezza doesn\'t even have the decency to pay me an hourly wage. But you\'re not here about that, are you? I bet you want to know where the zeppelin is located. Well, you\'re in luck - I have my zeppelin tracking device right here!', 'I spend all day retrieving parts for the zeppelin and Frezza doesn\'t even have the decency to pay me an hourly wage. But you\'re not here about that, are you? I bet you want to know where the zeppelin is located. Well, you\'re in luck - I have my zeppelin tracking device right here!', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('11165', 'The zeppelin should have just reached Orgrimmar.', 'The zeppelin should have just reached Orgrimmar.', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('5516', 'You haven\'t lived until you\'ve looked down on the world from the back of a wind rider.', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('7956', 'The Stars of this time are bent on new paths, beacons of hope and strength for the coming ages.', 'The Stars of this time are bent on new paths, beacons of hope and strength for the coming ages.', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('8201', 'Elder Primestone has spent many years in the Crystal Vale in Silithus.', 'Elder Primestone has spent many years in the Crystal Vale in Silithus.', '0', '1.000000', '0', '1', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('8199', 'For reasons I cannot understand, Elder Thunderhorn has gone to the Slithering Scar in Un\'Goro Crater.', 'For reasons I cannot understand, Elder Thunderhorn has gone to the Slithering Scar in Un\'Goro Crater.', '0', '1.000000', '0', '1', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('7779', 'The spirits of Silithus call out to us, $n.  The land weeps, for it has a woeful story to tell...', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('7797', 'We have more than one enemy in Silithus, $N.$B$BWhile everyone\'s attention is focused on the silithid, my big brother and I have been keeping a close eye on the Twilight\'s Hammer crazies.$B$B$B$B', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('7734', '', 'Can ye hear it, stranger? The humming is gettin\' louder with each passing day. These crystals must be what\'s driving these bugs crazy.', '0', '1.000000', '0', '1', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('8114', 'Now that the war is in full swing, we\'ve had no shortage of able-bodied combatants from the Horde and Alliance.$B$BIf only we could keep them off of each other\'s throats...', '', '0', '1.000000', '1', '6', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9485', 'Bonelashers, I hate them all!$B$BIf it weren\'t for the loss of my eye, and the fainting spells that I get sometimes, I\'d be out there shooting them down all the time!', '', '0', '1.000000', '0', '5', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('10721', 'I have seen many dangers in these wastes.  Who knows what creatures yet lurk in the dust to ambush the unwary?', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('10662', 'Auchindoun is home to my ancestor\'s spirits.  We might not look it, but all Broken were once draenei... our spirits are all the same.', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('10677', 'These wastes are scarred by terrible magic.  We must do what we can to heal this great wound.', '', '0', '1.000000', '0', '396', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9487', '', 'There\'s a whole vast forest out there, $c. Let the shaman play with the spirits and the warriors toy with their swords. Terokkar is where I\'ll make my fortune.', '0', '1.000000', '0', '1', '0', '11', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9482', 'One note stands out from the other various pieces of parchment that are tacked onto this wanted poster.  It\'s a call to slay the bonelashers of the Bone Wastes.', '', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9522', '', 'I must have made a misstep somewhere to be assigned here.', '0', '1.000000', '0', '1', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9488', 'Malukaz chatters incessantly about the historical importance of this forest, but I don\'t have the luxury of indulging in history until our present problems are settled.$B$BI\'m not saying his work here isn\'t important, but someone has to see to the defenses and logistics of running the hold.', '', '0', '1.000000', '0', '1', '0', '1', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('9494', '<Kaide hisses at you.>$B$BBe quiet, or you\'ll bring the orcs and the Alliance down on us, you clumsy oaf!$B$BThat\'s right, nod your head, and when we\'re done speaking, you\'ll walk away and forget you found me here.', '', '0', '1.000000', '0', '1', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES ('10153', '', 'Leaving Kael\'thas was the best thing any of us ever did.  His followers are too blind or too scared to realize where he\'s leading them.$B$BWe, however, are not.', '0', '1.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0', '', '', '0', '0.000000', '0', '0', '0', '0', '0', '0');
UPDATE `quest_template` SET `OfferRewardText`='I\'m glad that the refuge sent you.  The druids of the thicket have been slain!  Only myself and one other have survived, and he\'s insane.$B$BI don\'t know what happened, but I intend to get to the bottom of it.  Whatever it was, it happened quickly and feels unnatural.$B$BWill you help me?', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '6', `OfferRewardEmote4` = '0' WHERE `entry`='9957';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9968';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9971';
UPDATE `quest_template` SET `DetailsEmote1`='5', `DetailsEmote2`='1', `DetailsEmote3`='5', `DetailsEmote4`='0' WHERE `entry`='9951';
UPDATE `quest_template` SET `RequestItemsText`='We should never have invited them to dinner.  That much is certain!$B$BOr, at least, we should have insisted upon a couple of courses before the dessert that they brought.', `IncompleteEmote`='1' WHERE `entry`='9951';
UPDATE `quest_template` SET `RequestItemsText`='Do you have my samples?', `CompleteEmote`='6' WHERE `entry`='9968';
UPDATE `quest_template` SET `OfferRewardText`='Odd.  The samples from the vicious teromoths are infused with what feels to me to be pure mana.$B$BIt would seem that whatever caused all of this death also left behind that strong field of residual energy.  But for some reason the teromoths were not killed by it; instead being driven into an agitated state.$B$BIt seems apparent that this strange energy is the by-product of whatever attacked the thicket.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9968';
UPDATE `quest_template` SET `OfferRewardText`='So, I was right.  That was the corpse of one of the Broken?  And you can confirm that there was a strange object on the ground next to him?$B$BThis doesn\'t make any sense.  What would one of the Broken be doing here?  And what is that thing it had with him?$B$BIs it was caused all of this death?', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '6', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9971';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9978';
UPDATE `quest_template` SET `OfferRewardText`='It\'s for the best, really.  If it cannot civilly accept an invitation then it has no business attending.$B$B<Warden Treelos looks momentarily confused.>$B$BWho are you and what are you doing here?  You must get out of here quickly before it is too late!', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '5', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9951';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='8873';
UPDATE `quest_template` SET `OfferRewardText`='The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth?', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='8719';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='8321';
UPDATE `quest_template` SET `RequestItemsText`='Keep bringing me texts.  We\'ll soon force the Twilight\'s Hammer out of Silithus.', `CompleteEmote`='1' WHERE `entry`='8319';
UPDATE `quest_template` SET `OfferRewardText`='Excellent work!  I\'ll put a good word in for you.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='8319';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='8361';
UPDATE `quest_template` SET `DetailsEmote1`='396', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10920';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='1' WHERE `entry`='10922';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10877';
UPDATE `quest_template` SET `DetailsEmote1`='6', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='1' WHERE `entry`='10913';
UPDATE `quest_template` SET `RequestItemsText`='It\'s a terrible thing to ask, I know...', `CompleteEmote`='1' WHERE `entry`='10913';
UPDATE `quest_template` SET `OfferRewardText`='<Commander Ra\'vaj holds his head in his hands.>$B$BIt\'s not enough... It\'s just not enough.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='10913';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='6', `DetailsEmote4`='0' WHERE `entry`='10914';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='1' WHERE `entry`='10922';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='5' WHERE `entry`='10873';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10880';
UPDATE `quest_template` SET `RequestItemsText`='You wish to show me something, $N?', `CompleteEmote`='0' WHERE `entry`='10880';
UPDATE `quest_template` SET `RequestItemsText`='You wish to show me something, $N?', `CompleteEmote`='0' WHERE `entry`='10880';
UPDATE `quest_template` SET `OfferRewardText`='Ah, yes... this was written in a basic form of the shadow cypher.  My knowledge of it is not perfect but it should suffice to translate this.$B$BYou learn much about unsavory subjects when you live among outcasts and refugees in the Lower City.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='10880';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10881';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10896';
UPDATE `quest_template` SET `DetailsEmote1`='396', `DetailsEmote2`='396', `DetailsEmote3`='396', `DetailsEmote4`='0' WHERE `entry`='10908';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10878';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='6', `DetailsEmote4`='0' WHERE `entry`='10914';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9993';
UPDATE `quest_template` SET `RequestItemsText`='Do you have any seeds for me?', `CompleteEmote`='1' WHERE `entry`='9993';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10034';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10018';
UPDATE `quest_template` SET `RequestItemsText`='Were you able to find all the pelts that I need?', `CompleteEmote`='1' WHERE `entry`='10018';
UPDATE `quest_template` SET `RequestItemsText`='Is that bonelasher blood on your hands that I smell?', `IncompleteEmote`='6' WHERE `entry`='10034';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10027';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10000';
UPDATE `quest_template` SET `RequestItemsText`='Keb\'ezil wants to know if it\'s safe to hurl a fireball without embarrassing himself again.$B$B<The imp makes a few clicking sounds and the warlock turns toward him.>$B$BNo, it wasn\'t my shadow bolt! Take it back, you overgrown pixy!', `IncompleteEmote`='1' WHERE `entry`='10027';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10868';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9987';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10862';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='25', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10039';
UPDATE `quest_template` SET `RequestItemsText`='How many arakkoa have slain $N?  Did they run from you?  Did they run and hide when you stormed into their camp?  ', `IncompleteEmote`='0' WHERE `entry`='10868';
UPDATE `quest_template` SET `RequestItemsText`='Welcome back, $N. Have you dealt with the arakkoa leaders?', `IncompleteEmote`='1' WHERE `entry`='9987';
UPDATE `quest_template` SET `RequestItemsText`='I was about to send a message back to Rokag recommending an attack, but I see that won\'t be necessary.', `IncompleteEmote`='1' WHERE `entry`='10000';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10008';
UPDATE `quest_template` SET `RequestItemsText`='Tell me I wasn\'t wrong to trust you with this mission...', `IncompleteEmote`='1' WHERE `entry`='10008';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10412';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='10169';
UPDATE `quest_template` SET `RequestItemsText`='The smell of herbs and spices fills the air around the pot.', `CompleteEmote`='0' WHERE `entry`='10169';
UPDATE `quest_template` SET `OfferRewardText`='The Aldor marksmen appear distracted with their drill, allowing you ample time to place the contents of the vial into the stew.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='10169';
UPDATE `quest_template` SET `OfferRewardText`='Keb\'ezil is relieved that you\'ve taken care of that little problem, aren\'t you, Keb?$B$B<The imp ignores its master, presumably out of indignation.>$B$BYou\'ll have to forgive his bad manners. You know how demons can be...', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='10027';

delete from `creature_involvedrelation` where quest in (9957, 9968, 9971, 8719, 8319,10913, 10880,10027 );
delete from `creature_questrelation` where quest in (9968, 9971, 9951, 9978, 8873, 8321, 8361, 10920, 10922, 10877, 10914,10913 , 10873, 10881, 10896, 10908, 10878, 10914, 9993, 10018, 10027, 10000, 10868, 9987,10862 , 10039, 10008, 10169, 10412);
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('18446','9957');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18446','9968');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18446','9971');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18424','9951');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('18446','9968');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('18446','9971');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18446','9978');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('18424','9951');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('15891','8873');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('15599','8719');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('15270','8321');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('15306','8319');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('15306','8361');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22462','10920');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22456','10877');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22446','10913');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('22446','10913');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22446','10914');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22458','10922');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22364','10873');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('22370','10880');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22370','10881');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22420','10896');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22272','10908');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22370','10878');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('22446','10914');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18385','9993');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18384','10018');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18383','10027');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18383','10000');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18712','10868');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18386','9987');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18386','10862');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18712','10039');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18566','10008');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('18531','10412');
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES ('19485','10169');
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('18383','10027');
-- seizer!!
-- Blistering Oozeling way too high dmg
update creature_template set mindmg=18, maxdmg=67, attackpower=200 where entry=16903;
-- Too low droprate for these items
update creature_loot_template set QuestChanceOrGroup=35 where item=18590;
update creature_loot_template set QuestChanceOrGroup=100 where item=31374;
-- Fix Quest 10250 Bloody Vengeance
-- Spawn Urtak
INSERT IGNORE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) values ( '12823','2','10','19862','180000','','-1175.410400','2264.590820','53.173344','3.159046');
-- Spawn the helping footmans
INSERT IGNORE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) values ( '12823','2','10','20137','180000','','-1190.112183','2258.195801','46.687080','1.361357');
INSERT IGNORE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) values ( '12823','2','10','20137','180000','','-1196.746582','2264.755615','47.982601','6.195919');
INSERT IGNORE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) values ( '12823','2','10','20137','180000','','-1193.533936','2259.036133','47.483952','0.820305');
INSERT IGNORE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) values ( '12823','2','10','20137','180000','','-1190.237427','2269.197021','46.097301','4.974188');
-- and their captai.n
INSERT IGNORE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datatext`,`x`,`y`,`z`,`o`) values ( '12823','2','10','19864','180000','','-1199.3259','2279.08544','47.8900','5.632574');
-- Factions and damages right
update creature_template set faction_A=1935, faction_H=1935, attackpower=50 where entry=20137;
update creature_template set faction_A=1771, faction_H=1771, attackpower=50 where entry=19862;
update creature_template set faction_A=1935, faction_H=1935, attackpower=50 where entry=19864;


-- wdb missing stuff
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9487','1','','There\'s a whole vast forest out there, $c. Let the shaman play with the spirits and the warriors toy with their swords. Terokkar is where I\'ll make my fortune.','0','0','1','0','11','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9494','1','<Kaide hisses at you.>$B$BBe quiet, or you\'ll bring the orcs and the Alliance down on us, you clumsy oaf!$B$BThat\'s right, nod your head, and when we\'re done speaking, you\'ll walk away and forget you found me here.','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('8205','1','','Greetings, $N.  We\'ve travelled from Moonglade to spread the spirit of the Lunar Festival far and wide.$B$BWon\'t you join us in our celebration?','0','1','6','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('8188','1','Elder Proudhorn is enjoying the vistas above Mulgore at Thunder Bluff.','Elder Proudhorn is enjoying the vistas above Mulgore at Thunder Bluff.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('8157','1','Elder Ironband lives in Blackchar Cave in Searing Gorge.','Elder Ironband lives in Blackchar Cave in Searing Gorge.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('8189','1','Elder Darkhorn can be found among the red rocks of Orgrimmar.','Elder Darkhorn can be found among the red rocks of Orgrimmar.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9716','1','The most amazing of the Lunar Festival parties is in Moonglade. Don\'t walk there, though, the druids in the Valley of Wisdom can transport you.','The most amazing of the Lunar Festival parties is in Moonglade. Don\'t walk there, though, the druids in the Valley of Wisdom can transport you.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10634','1','The Lunar Festival is in full swing on Azeroth! Return there and honor your elders in this wonderful celebration! The main festivities can be found in Moonglade, but we\'ve provided easy transportation from Stormwind, Ironforge, Darnassus, Thunder Bluff, Orgrimmar, and the Undercity. We hope to see you there!','The Lunar Festival is in full swing on Azeroth! Return there and honor your elders in this wonderful celebration! The main festivities can be found in Moonglade, but we\'ve provided easy transportation from Stormwind, Ironforge, Darnassus, Thunder Bluff, Orgrimmar, and the Undercity. We hope to see you there!','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('5879','1','I do not believe you possess the mental acuity to grasp the nature of portal magic.','I do not believe you possess the mental acuity to grasp the nature of portal magic.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9320','1','What path do you wish to pursue?','What path do you wish to pursue?','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9322','1','If you\'re seeking a bank in the eastern part of the city, look no further than the Royal Exchange. It lies along the north wall therein.','If you\'re seeking a bank in the eastern part of the city, look no further than the Royal Exchange. It lies along the north wall therein.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9321','1','The Bank of Silvermoon can be found within the Bazaar. Seek it out in the southeast corner.','The Bank of Silvermoon can be found within the Bazaar. Seek it out in the southeast corner.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9323','1','Skymistress Gloaming and her bats are just outside and to the west of the Shepherd\'s Gate.','Skymistress Gloaming and her bats are just outside and to the west of the Shepherd\'s Gate.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9324','1','Tandrine is the guild master of Silvermoon. Her residence is along the Walk of Elders, close to the Magister\'s Gate.','Tandrine is the guild master of Silvermoon. Her residence is along the Walk of Elders, close to the Magister\'s Gate.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9602','1','Do you mean the Silvermoon City Inn, or the Wayfarer\'s Rest tavern?','Do you mean the Silvermoon City Inn, or the Wayfarer\'s Rest tavern?','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9325','1','The Silvermoon City Inn, located in the Royal Exchange, is run by a talented woman named Velandra. I\'m told that the renowned vinemaster can sometimes be found there, as well.','The Silvermoon City Inn, located in the Royal Exchange, is run by a talented woman named Velandra. I\'m told that the renowned vinemaster can sometimes be found there, as well.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9603','1','The Wayfarer\'s Rest Tavern is located between the Walk of Elders and the Bazaar. You can reach it from either location.','The Wayfarer\'s Rest Tavern is located between the Walk of Elders and the Bazaar. You can reach it from either location.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9327','1','Shalenn tends the animals within the city and prevents them from running amok while their masters continue to fritter their lives away. She stands in Farstriders\' Square, just outside the rangers\' hall.','Shalenn tends the animals within the city and prevents them from running amok while their masters continue to fritter their lives away. She stands in Farstriders\' Square, just outside the rangers\' hall.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9328','1','The Blood Knights in Farstriders\' Square graciously allow space within their halls for Ileda, the weapon master of Silvermoon. While her training is not cheap, you\'ll appreciate her expertise.','The Blood Knights in Farstriders\' Square graciously allow space within their halls for Ileda, the weapon master of Silvermoon. While her training is not cheap, you\'ll appreciate her expertise.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9332','1','Oh. You\'re seeking one of... them. Well, if you truly want to waste your time speaking with those backward individuals, you\'ll find the rangers in Farstriders\' Square. Zandine can take care of you.','Oh. You\'re seeking one of... them. Well, if you truly want to waste your time speaking with those backward individuals, you\'ll find the rangers in Farstriders\' Square. Zandine can take care of you.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9330','1','One of the druids? Our people don\'t walk that path... but you are in luck. A tauren woman - at least, I believe it\'s a woman - has set up a modest residence on the north end of the Walk of Elders. Harene Plainwalker is her name.$B','One of the druids? Our people don\'t walk that path... but you are in luck. A tauren woman - at least, I believe it\'s a woman - has set up a modest residence on the north end of the Walk of Elders. Harene Plainwalker is her name.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9336','1','The more agile among us can sometimes be difficult to spot, but nonetheless, you\'ll probably run across the rogue Zelanis and his cohorts deep within Murder Row.','The more agile among us can sometimes be difficult to spot, but nonetheless, you\'ll probably run across the rogue Zelanis and his cohorts deep within Murder Row.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9337','1','The summoning of demons is a dangerous practice, but the resulting power can be immense. Our resident expert is Alamma, who watches over the warlocks within Murder Row.','The summoning of demons is a dangerous practice, but the resulting power can be immense. Our resident expert is Alamma, who watches over the warlocks within Murder Row.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9335','1','The priests of our fair city can be found within the Sunfury Spire.  Seek out the lady Belestra.','The priests of our fair city can be found within the Sunfury Spire.  Seek out the lady Belestra.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9520','1','','We need to figure out what this shadowy group is doing here at Grangol\'var Village!','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9523','1','Did you hear that they lost total control of Murmur in the Shadow Labyrinth?!','Did you hear that they lost total control of Murmur in the Shadow Labyrinth?!','0','0','6','0','0','0','0','1','They don\'t pay us enough for this.  But this ruined village sure beats skulking around inside of Auchindoun.','They don\'t pay us enough for this.  But this ruined village sure beats skulking around inside of Auchindoun.','0','0','1','0','0','0','0','1','I joined up because they said they\'d pay my way into the academy.  My uncle says that I can go next season!','I joined up because they said they\'d pay my way into the academy.  My uncle says that I can go next season!','0','0','1','500','4','0','0','1','Hey there, you must be the new recruit!  Good to meet you!$B$BAny word from the Shadow Labyrinth in Auchindoun on whether we\'ve regained control of Murmur yet?','Hey there, you must be the new recruit!  Good to meet you!$B$BAny word from the Shadow Labyrinth in Auchindoun on whether we\'ve regained control of Murmur yet?','0','0','1','500','6','0','0','1','If you\'re interested, a couple of us are going into Shattrath for drinks later.','If you\'re interested, a couple of us are going into Shattrath for drinks later.','0','0','1','0','0','0','0','1','Interested in joining up for the leather ball league?  We play Monday through Wednesday, mostly. $B$BYou\'re welcome to join us after this shift.  We\'re going to toss it around.','Interested in joining up for the leather ball league?  We play Monday through Wednesday, mostly. $B$BYou\'re welcome to join us after this shift.  We\'re going to toss it around.','0','0','6','500','1','0','0','1','I hope this place pans out as a forward base for Shadow Council operations.  I know it sounds weird, but I kind of miss the Shadow Labyrinth.','I hope this place pans out as a forward base for Shadow Council operations.  I know it sounds weird, but I kind of miss the Shadow Labyrinth.','0','0','1','0','0','0','0','1','<He leans in closer.>$B$BJust between you and me, I\'m thinking about \'mustering\' out one of these nights.  You know what I mean?','<She leans in closer.>$B$BJust between you and me, I\'m thinking about \'mustering\' out one of these nights.  You know what I mean?','0','0','1','500','1','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9502','1','Yes?  Darn it all, now I\'ll have to start over from scratch!','Yes?  Darn it all, now I\'ll have to start over from scratch!','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9503','1','Practicing!  Soon I\'ll be good enough to join the other summoners and take my turn inside the Shadow Labyrinth at Auchindoun.$B$BI hope that I\'ll get the chance to summon something big!  Maybe something as big as Murmur, though I wouldn\'t lose control of him!','Practicing!  Soon I\'ll be good enough to join the other summoners and take my turn inside the Shadow Labyrinth at Auchindoun.$B$BI hope that I\'ll get the chance to summon something big!  Maybe something as big as Murmur, though I wouldn\'t lose control of him!','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9497','1','Yeah, what do you want?  Can\'t you see I\'m busy here?  The Shadow Council isn\'t paying me by the hour!','Yeah, what do you want?  Can\'t you see I\'m busy here?  The Shadow Council isn\'t paying me by the hour!','0','0','6','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9498','1','What\'s it look like I\'m doing?  I\'m fixing the place up - all on my own I might add - so that we can move in!$B$BWith a base of operations out here in the forest, it\'ll be easier to keep track of what Shattrath, Allerian, Stonebreaker and the Cenarion druids are all up to.  Our base in Auchindoun is just too inconvenient for that.$B$BWait a minute, do I know you?','What\'s it look like I\'m doing?  I\'m fixing the place up - all on my own I might add - so that we can move in!$B$BWith a base of operations out here in the forest, it\'ll be easier to keep track of what Shattrath, Allerian, Stonebreaker and the Cenarion druids are all up to.  Our base in Auchindoun is just too inconvenient for that.$B$BWait a minute, do I know you?','0','0','6','500','1','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9524','1','Who do you think you are that you can walk in here and address me?  I\'m the leader of the Shadow Council in this village.  Get out of my sight!$B$BIf I see you again, I\'ll be the last person that you ever see.  Understand?$B$BPerhaps you\'d like to be buried in the labyrinth of Auchindoun, or sacrificed to Murmur?','','0','0','6','500','1','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9505','1','And what is it exactly that you think I can do for you?  Can\'t you see that I\'m very busy here discussing matters of import with our illustrious leader?$B$BBe quick about your business or I\'ll have you beaten, dog!','And what is it exactly that you think I can do for you?  Can\'t you see that I\'m very busy here discussing matters of import with our illustrious leader?$B$BBe quick about your business or I\'ll have you beaten, dog!','0','0','5','500','25','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('9506','1','Well, I was just giving our leader here a progress report on how everything is proceeding according to plan.  It should only be a few more weeks and we\'ll have this place back in shape.$B$BWe may want the Shadow Council to only staff the village with orcs, however.  That way we can make an ancestral claim and work undercover.$B$BWait a minute.  Do I know you?  What\'s your name?','Well, I was just giving our leader here a progress report on how everything is proceeding according to plan.  It should only be a few more weeks and we\'ll have this place back in shape.$B$BWe may want the Shadow Council to only staff the village with orcs, however.  That way we can make an ancestral claim and work undercover.$B$BWait a minute.  Do I know you?  What\'s your name?','0','0','1','500','1','500','6','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10355','1','The footlockers of Kil\'sorrow Fortress in Nagrand would provide a considerable challenge to even a rogue of your notable skill.','The footlockers of Kil\'sorrow Fortress in Nagrand would provide a considerable challenge to even a rogue of your notable skill.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11174','1','The zeppelin should have just departed from Orgrimmar.','The zeppelin should have just departed from Orgrimmar.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');

INSERT IGNORE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ExtendedCost`, `RequiredArenaRank`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34425','15','3','-1','Clockwork Rocket Bot','47926','3','64','1','0','0','0','32767','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','45048','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
INSERT IGNORE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ExtendedCost`, `RequiredArenaRank`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34480','15','0','-1','Romantic Picnic Basket','47746','3','64','1','0','0','0','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','45094','0','0','0','180000','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');

INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('187267','10','7600','Romantic Basket','0','0','0','65536','0','0','0','0','0','0','45102','0','0','0','0','0','0','0','0','0','0','0','0','0');

update creature_template set minlevel=73, maxlevel=73 where entry in (21272, 21269, 21268, 21271, 21270, 21274, 21369);
update item_template set duration=86400 where entry=21711;
Update creature set movementtype=0 where id in (12099, 12057);
Update creature_template set movementtype=0 where entry in (12099, 12057);
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (49077, 7594);
update creature_movement set position_x='1011.05', position_y='-975.843', position_z='-181.28' where id=56607 and point=9;
update creature set spawndist=10 where guid=48801;
-- seizer
update creature_loot_template set QuestChanceOrGroup=15 where item=23483;

UPDATE `creature_template` SET `lootid` = 21268 WHERE `entry` = 21268;
UPDATE `creature_template` SET `lootid` = 21269 WHERE `entry` = 21269;
UPDATE `creature_template` SET `lootid` = 21270 WHERE `entry` = 21270;
UPDATE `creature_template` SET `lootid` = 21271 WHERE `entry` = 21271;
UPDATE `creature_template` SET `lootid` = 21272 WHERE `entry` = 21272;
UPDATE `creature_template` SET `lootid` = 21273 WHERE `entry` = 21273;
UPDATE `creature_template` SET `lootid` = 21274 WHERE `entry` = 21274;

INSERT IGNORE INTO creature_loot_template VALUES (21268, 30318, 100, 0, 1, 1, 1, 0, 0, 0);
INSERT IGNORE INTO creature_loot_template VALUES (21269, 30316, 100, 0, 1, 1, 1, 0, 0, 0);
INSERT IGNORE INTO creature_loot_template VALUES (21270, 30317, 100, 0, 1, 1, 1, 0, 0, 0);
INSERT IGNORE INTO creature_loot_template VALUES (21271, 30312, 100, 0, 1, 1, 1, 0, 0, 0);
INSERT IGNORE INTO creature_loot_template VALUES (21272, 30311, 100, 0, 1, 1, 1, 0, 0, 0);
INSERT IGNORE INTO creature_loot_template VALUES (21273, 30314, 100, 0, 1, 1, 1, 0, 0, 0);
INSERT IGNORE INTO creature_loot_template VALUES (21274, 30313, 100, 0, 1, 1, 1, 0, 0, 0);
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '187291';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '187295';
UPDATE `gameobject_template` SET `size` = '0.800000', `flags` = '0', `faction` = '0' WHERE `entry` = '187390';
UPDATE `gameobject_template` SET `size` = '0.330000', `flags` = '0', `faction` = '0' WHERE `entry` = '187337';
UPDATE `gameobject_template` SET `size` = '1.000000', `flags` = '0', `faction` = '0' WHERE `entry` = '187294';
update game_tele set name='AeriePeak' where name='AeariePeak';


-- Grace of Air totems spawned in world -- shouldn't be there.
delete from creature_addon where guid in (select guid from creature where id=15463);
DELETE FROM `creature` WHERE `id` = 15463;

-- asd imps
update creature_template set faction_a =7 , faction_h=7 where entry=10928 or entry=12922;

-- data for gameobject_scripts table
delete from `gameobject_scripts` where `id` = 15351; -- guid 161460
INSERT IGNORE INTO `gameobject_scripts` values
(15351, 0, 11, 15639, 60, '', 0, 0, 0, 0), -- entry 161461, giant door mechanism
(15351, 0, 12, 15576, 60, '', 0, 0, 0, 0), -- entry 157923, Giant Doors
(15351, 0, 12, 15352, 60, '', 0, 0, 0, 0); -- entry 161516, BigDoorDummyCollision02


-- SD2 stuff
-- 263
UPDATE `gameobject_template` SET `ScriptName` = 'go_northern_crystal_pylon' WHERE `entry` = 164955;
UPDATE `gameobject_template` SET `ScriptName` = 'go_western_crystal_pylon' WHERE `entry` = 164956;
UPDATE `gameobject_template` SET `ScriptName` = 'go_eastern_crystal_pylon' WHERE `entry` = 164957;
-- 264
UPDATE `creature_template` SET `ScriptName` = 'npc_astor_hadren' WHERE `entry` = 6497;
-- 265
UPDATE `item_template` SET `ScriptName` = 'item_nether_wraith_beacon' WHERE `entry` = 31742;
UPDATE `item_template` SET `ScriptName` = 'item_area_52_special' WHERE `entry` = 28132;
UPDATE `item_template` SET `ScriptName` = 'item_vorenthals_presence' WHERE `entry` = 30259;
UPDATE `item_template` SET `ScriptName` = 'item_draenei_fishing_net' WHERE `entry` = 23654;
UPDATE `item_template` SET `ScriptName` = 'item_skin_of_purest_water' WHERE `entry` = 23751;
UPDATE `item_template` SET `ScriptName` = 'item_yehkinyas_bramble' WHERE `entry` = 10699;
UPDATE `item_template` SET `ScriptName` = 'item_zezzaks_shard' WHERE `entry` = 31463;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (40100,40101,40102,40103,40104,40105,40106,40107,40108,40109,40110,40111,40112,40113);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (40200,40201,40202,40203,40204,40205,40206,40207,40208,40209,40210,40211,40212,40213);

-- Cleanup
-- this seems to be ok
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
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.9.2 (341) with SD2 calls rev.268');
-- END

