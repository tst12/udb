-- 5813
INSERT INTO `mangos_string` VALUES ('614', 'The Alliance flag has been respawned!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('615', 'The Horde flag has been respawned!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('636', 'The battle begins in 1 minute.', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('637', 'The battle begins in 30 seconds.', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('638', 'The battle has begun!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('667', 'The Alliance has taken control of the Mage Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('668', 'The Horde has taken control of the Mage Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('669', 'The Alliance has taken control of the Draenei Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('670', 'The Horde has taken control of the Draenei Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('671', 'The Alliance has taken control of the Blood Elf Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('672', 'The Horde has taken control of the Blood Elf Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('673', 'The Alliance has taken control of the Fel Reaver Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('674', 'The Horde has taken control of the Fel Reaver Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('675', 'The Alliance has lost control of the Mage Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('676', 'The Horde has lost control of the Mage Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('677', 'The Alliance has lost control of the Draenei Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('678', 'The Horde has lost control of the Draenei Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('679', 'The Alliance has lost control of the Blood Elf Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('680', 'The Horde has lost control of the Blood Elf Tower!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('681', 'The Alliance has lost control of the Fel Reaver Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('682', 'The Horde has lost control of the Fel Reaver Ruins!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('683', '$N has taken the flag!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('684', 'The Alliance has captured the flag!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('685', 'The Horde has captured the flag!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('686', 'The Flag has been dropped!', null, null, null, null, null, null, null);
INSERT INTO `mangos_string` VALUES ('687', 'The flag has been reset', null, null, null, null, null, null, null);

-- 5827
DELETE FROM `spell_affect` WHERE `entry` IN (32043,35396,35397);
INSERT INTO `spell_affect` VALUES 
(32043,1,0x000004000A000000),
(35396,1,0x000004000A000000),
(35397,1,0x000004000A000000);
DELETE FROM spell_learn_spell WHERE entry IN (33872,33873);
INSERT INTO spell_learn_spell (entry,spellID) VALUES
(33872,47179),
(33873,47180);
DELETE FROM `spell_proc_event` WHERE `entry` = '33522';
INSERT INTO `spell_proc_event` VALUES
(33522,0,0,0,0,0x0000000000000000,0x00020000,0);
DELETE FROM `spell_proc_event` WHERE `entry` = '33648';
INSERT INTO `spell_proc_event` VALUES
(33648,0,0,0,0,0x0000000000000000,0x00401000,0);
-- wrong entry
DELETE FROM `spell_chain` WHERE `spell_id` IN (5159);
DELETE FROM `spell_chain` WHERE `spell_id` IN (5195,5196);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES
(5195,1062,339,3),
(5196,5195,339,4);

-- 5831
DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL default '0' COMMENT 'Base skill level requirement',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';

-- 5842
DELETE FROM `spell_affect` WHERE `entry` = 19245;
INSERT INTO `spell_affect` VALUES 
(19245,0,0x0000000000000018),
(19245,1,0x0000200000000004);

-- 5845
DELETE FROM `spell_proc_event` WHERE `entry` IN (20164,31895);
INSERT INTO `spell_proc_event` VALUES
(20164,0,0,0,0,0x0000000000000000,0x00000001,5),
(31895,0,0,0,0,0x0000000000000000,0x00000001,5);

-- 5847
DELETE FROM `command` WHERE `name` = 'damage';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('damage',3,'Syntax: .damage $damage_amount [$school [$spellid]]\r\n\r\nApply $damage to target. If not $school and $spellid provided then this flat clean melee damage without any modifiers. If $school provided then damage modified by armor reduction (if school physical), and target absorbing modifiers and result applied as melee damage to target. If spell provided then damage modified and applied as spell damage. $spellid can be shift-link.');

-- 5857
DELETE FROM `spell_proc_event` WHERE `entry` IN (32748);
INSERT INTO `spell_proc_event` VALUES
(32748,0,0,0,8,0x0000000100000000,0x00008000,0);

-- 5861
DELETE FROM `command` WHERE `name` = 'wp import';
DELETE FROM `command` WHERE `name` = 'wp export';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('wp import',3,'Syntax: .wp import $filename');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('wp export',3,'Syntax: .wp export [#creature_guid or Select a Creature] $filename');
UPDATE `command` SET `help` = 'Syntax: .wp modify [#creature_guid or Select a Creature]\r\nadd - Add a waypoint after the selected visual\r\nwaittime $time\r\nemote ID\r\nspell ID\r\ntext1| text2| text3| text4| text5 <text>\r\nmodel1 ID\r\nmodel2 ID\r\nmove(moves wp to player pos)\r\ndel (deletes the wp)\r\n\r\nOnly one parameter per time!' WHERE `name` = 'wp modify';

-- 5865
DELETE FROM `command` WHERE `name` = 'cast self';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('cast self',3,'Syntax: .cast self #spellid\r\nCast #spellid by target at target itself.');

-- 5867
DELETE FROM `spell_affect` WHERE `entry` IN (12472);
INSERT INTO `spell_affect` VALUES
 (12472, 1, 0x00000000E44008A5);

-- 5875
ALTER TABLE `quest_template` CHANGE `ClassOrSkill` `SkillOrClass` smallint(6) NOT NULL default '0';

-- 5880
DELETE FROM mangos_string WHERE entry in (297);
INSERT INTO `mangos_string` VALUES 
(297,'Spawn distance changed to: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5882
-- (17954) Emberstorm (Rank 1)
DELETE FROM `spell_affect` WHERE `entry` IN (17954);
INSERT INTO `spell_affect` VALUES (17954, 0, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17954, 1, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17954, 2, 0x0000004000000000);
-- (17955) Emberstorm (Rank 2)
DELETE FROM `spell_affect` WHERE `entry` IN (17955);
INSERT INTO `spell_affect` VALUES (17955, 0, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17955, 1, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17955, 2, 0x0000004000000000);
-- (17956) Emberstorm (Rank 3)
DELETE FROM `spell_affect` WHERE `entry` IN (17956);
INSERT INTO `spell_affect` VALUES (17956, 0, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17956, 1, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17956, 2, 0x0000004000000000);
-- (17957) Emberstorm (Rank 4)
DELETE FROM `spell_affect` WHERE `entry` IN (17957);
INSERT INTO `spell_affect` VALUES (17957, 0, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17957, 1, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17957, 2, 0x0000004000000000);
-- (17958) Emberstorm (Rank 5)
DELETE FROM `spell_affect` WHERE `entry` IN (17958);
INSERT INTO `spell_affect` VALUES (17958, 0, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17958, 1, 0x000000C000001364);
INSERT INTO `spell_affect` VALUES (17958, 2, 0x0000004000000000);

-- 5890
UPDATE `quest_template` SET `SkillOrClass`=0 WHERE `ZoneOrSort` IN (-61,-81,-82,-141,-161,-162,-261,-262,-263);

-- 5896
DELETE FROM spell_proc_event WHERE entry IN (45054,45354);
INSERT INTO spell_proc_event VALUES
(45054,0,0,0,0,0x0000000000000000,0x00020000,0),
(45354,0,0,0,0,0x0000000000000000,0x00000001,0);

-- 5923
DELETE FROM `spell_affect` WHERE `entry` IN (41660);

-- 5940
-- (14177) Cold Blood ()
DELETE FROM `spell_affect` WHERE `entry` IN (14177);
INSERT INTO `spell_affect` VALUES (14177, 0, 0x0000000C6012031E);

-- 5946
-- (20216) Divine Favor ()
DELETE FROM `spell_affect` WHERE `entry` IN (20216);
INSERT INTO `spell_affect` VALUES (20216, 0, 0x00010000C0200000);

-- (37879) Blessing of Lower City ()
DELETE FROM `spell_affect` WHERE `entry` IN (37879);
INSERT INTO `spell_affect` VALUES (37879, 0, 0x00000000C0000000);

-- (20237) Healing Light (Rank 1)
DELETE FROM `spell_affect` WHERE `entry` IN (20237);
INSERT INTO `spell_affect` VALUES (20237, 0, 0x00000000C0000000);

-- (20238) Healing Light (Rank 2)
DELETE FROM `spell_affect` WHERE `entry` IN (20238);
INSERT INTO `spell_affect` VALUES (20238, 0, 0x00000000C0000000);

-- (20239) Healing Light (Rank 3)
DELETE FROM `spell_affect` WHERE `entry` IN (20239);
INSERT INTO `spell_affect` VALUES (20239, 0, 0x00000000C0000000);

