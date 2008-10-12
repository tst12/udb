-- 6668
DELETE FROM spell_proc_event WHERE entry IN (42135,42136);
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(42135,0,0,0,0,0x0000000000000000,0x00100402,0,90),
(42136,0,0,0,0,0x0000000000000000,0x00100402,0,90);

-- 6673
DROP TABLE IF EXISTS `areatrigger_scripts`; 
CREATE TABLE `areatrigger_scripts` (
    `entry` MEDIUMINT( 8 ) NOT NULL ,
    `ScriptName` CHAR( 64 ) NOT NULL ,
    PRIMARY KEY ( `entry` )
) ENGINE = MYISAM DEFAULT CHARSET=utf8;

-- 6676
DELETE FROM spell_proc_event where entry = 37447;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(37447,0,0,0,3,0x0000010000000000,0x00004000,0,0);

-- 6681
DELETE FROM `mangos_string` WHERE entry IN (3,711,712);
INSERT INTO `mangos_string` VALUES
(3,'|cffff0000[System Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(711,'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(712,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u (Need: %u), H: %u (Needs %u)|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6691
DELETE FROM spell_proc_event where entry = 37247;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(37247,8,0,0,0,0x0000000000000000,0x00004000,0,45);

-- 6693
DELETE FROM spell_affect WHERE entry = '12606';
INSERT INTO spell_affect (entry, effectId, SpellFamilyMask) VALUES
(12606,0,0x0000000000002000);
DELETE FROM spell_proc_event where entry = 44604;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(44604,0,0,0,0,0x0000000000000000,0x00004000,0,0);
DELETE FROM spell_proc_event where entry = 44599;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(44599,0,0,0,0,0x0000000000000000,0x00000001,0,5);
DELETE FROM spell_proc_event where entry = 46046;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(46046,0,0,0,0,0x0000000000000000,0x00000001,0,5); 

-- 6701
DELETE FROM command WHERE name IN ('lookup player account','lookup player ip','lookup player email');
INSERT INTO `command` VALUES ('lookup player account',2,'Syntax : .lookup player account $account ($limit) \r\n\r\n Searchs players, which account username is $account with optional parametr $limit of results.');
INSERT INTO `command` VALUES ('lookup player ip',2,'Syntax : .lookup player ip $ip ($limit) \r\n\r\n Searchs players, which account ast_ip is $ip with optional parametr $limit of results.');
INSERT INTO `command` VALUES ('lookup player email',2,'Syntax : .lookup player email $email ($limit) \r\n\r\n Searchs players, which account email is $email with optional parametr $limit of results.'); 
DELETE FROM mangos_string WHERE entry IN (328,329,330);
INSERT INTO mangos_string VALUES
(328,'Characters at account %s (Id: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(329,'  %s (GUID %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(330,'No players found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6708
DELETE FROM mangos_string WHERE entry IN (167,168,466);
INSERT INTO mangos_string VALUES
(168,'Locations found are:\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6715
DELETE FROM spell_affect WHERE entry = '12606';

-- 6728
ALTER TABLE `quest_template` ADD COLUMN `Method` tinyint(3) unsigned NOT NULL default '2' AFTER `entry`;

-- 6730
DELETE FROM mangos_string WHERE entry IN (331);
INSERT INTO mangos_string VALUES
(331,'Extended item cost %u not exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6740
DELETE FROM command WHERE name IN ('gm','gm chat');
INSERT INTO `command` VALUES
('gm',1,'Syntax: .gm [on/off]\r\n\r\nEnable or Disable in game GM MODE or show current state of on/off not provided.'),
('gm chat',1,'Syntax: .gm chat [on/off]\r\n\r\nEnable or disable chat GM MODE (show gm badge in messages) or show current state of on/off not provided.');
DELETE FROM mangos_string WHERE entry IN (332,333,334,335);
INSERT INTO mangos_string VALUES
(332,'GM mode is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(333,'GM mode is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(334,'GM Chat Badge is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(335,'GM Chat Badge is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM mangos_string WHERE entry IN (713,714,715,716);
INSERT INTO mangos_string VALUES
(713,'You must be level %u to join an arena team!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(714,'%s is not high enough level to join your team',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(715,'You don\'t meet Battleground level requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(716,'Your arena team is full, %s cannot join it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM mangos_string WHERE entry IN (800,801,802,803,804,805,806,807,808,809);
INSERT INTO mangos_string VALUES
(800,'Invalid name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(801,'You do not have enough gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(802,'You do not have enough free slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(803,'Your partner does not have enough free bag slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(804,'You do not have permission to perform that function',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(805,'Unknown language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(806,'You don\'t know that language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(807,'Please provide character name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(808,'Player %s not found or offline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(809,'Account for character %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6742
DELETE FROM command WHERE name = 'sendmail';
INSERT INTO `command` VALUES
('sendmail',1,'Syntax: .sendmail #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.');
DELETE FROM mangos_string WHERE entry IN (52,53);
INSERT INTO mangos_string VALUES
(52,'Invaid item count (%u) for item %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(53,'Mail can\'t have more %u item stacks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6748
DELETE FROM mangos_string WHERE entry IN (800);

-- 6750
DELETE FROM command WHERE name = 'reload all_locales';
INSERT INTO `command` VALUES
('reload all_locales',3,'Syntax: .reload all_locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.');

-- 6760
UPDATE creature_template SET flags_extra = flags_extra | 0x00000080 WHERE entry = 1; 
