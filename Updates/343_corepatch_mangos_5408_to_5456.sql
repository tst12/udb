-- 5411_mangos_spell_affect.sql
DELETE FROM spell_affect WHERE `entry` IN (33167, 33171, 33172);
INSERT INTO spell_affect VALUES
 (33167,0,0,0,0,0,0,0x0000008100000000,0),
 (33171,0,0,0,0,0,0,0x0000008100000000,0),
 (33172,0,0,0,0,0,0,0x0000008100000000,0);

-- 5419_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (29723,29724,29725);
INSERT INTO `spell_affect` VALUES
 (29723,0,0,0,0,0,0,0x0000000800002010,0),
 (29723,1,0,0,0,0,0,0x0000000800002010,0),
 (29724,0,0,0,0,0,0,0x0000000800002010,0),
 (29724,1,0,0,0,0,0,0x0000000800002010,0),
 (29725,0,0,0,0,0,0,0x0000000800002010,0),
 (29725,1,0,0,0,0,0,0x0000000800002010,0);

-- 5422_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN ( 15600 );
INSERT INTO `spell_proc_event` VALUES 
(15600,0,0,0,0,0x0000000000000000,0x00000001,0.6);

DELETE FROM `spell_proc_event` WHERE `entry` IN (33881,33882,33883);
INSERT INTO `spell_proc_event` VALUES 
(33881,0,0,0,0,0x0000000000000000,0x00842000,0),
(33882,0,0,0,0,0x0000000000000000,0x00842000,0),
(33883,0,0,0,0,0x0000000000000000,0x00842000,0); 

-- 5443_mangos_item_template.sql
ALTER TABLE item_template
  CHANGE COLUMN RequiredArenaRank CondExtendedCost int(10) unsigned NOT NULL default '0';

-- 5445_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (17815,17833,17834,17835,17836);
INSERT INTO `spell_affect` VALUES
 (17815,0,0,0,0,0,0,0x0000000000000004,0),
 (17833,0,0,0,0,0,0,0x0000000000000004,0),
 (17834,0,0,0,0,0,0,0x0000000000000004,0),
 (17835,0,0,0,0,0,0,0x0000000000000004,0),
 (17836,0,0,0,0,0,0,0x0000000000000004,0);

-- 5446_mangos_creature_template.sql
ALTER TABLE `creature_template`
  ADD COLUMN IconName char(100) default NULL AFTER subname;
