-- 4704
--
-- Definition of table `battlemaster_entry`
--

DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE `battlemaster_entry` (
  `entry` int(11) unsigned NOT NULL default '0' COMMENT 'Entry of a creature',
  `bg_template` int(11) unsigned NOT NULL default '0' COMMENT 'Battleground template id',
  
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 4714
/*Heroic Strike*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('29707', '196');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('30324', '220');
/*Maul*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('26996', '176');
/*Shield Slam*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('25258', '286');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('30356', '323');
/*Revenge*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('25269', '400');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('30357', '483');
/*Shield Bash*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('29704', '230');
/*Sunder Armor*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('25225', '300');
/*Cleave*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('20569', '100');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('25231', '130');
/*Lacerate*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('33745', '285');
/*Faerie Fire*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('26993', '127');
/*Faerie Fire(feral)*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('16857', '108');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('17390', '108');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('17391', '108');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('17392', '108');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('27011', '127');
/*Thunder Clap: multiplier = 1.75*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('6343', '17');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('8198', '40');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('8204', '64');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('8205', '96');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('11580', '143');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('11581', '180');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('25264', '215');
/*Mangle (Bear): multiplier = 1.5*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('33878', '129');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('33986', '180');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('33987', '232');
/*Holy Shield: multiplier = 0.35*/
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('20925', '20');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('20927', '30');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('20928', '40');
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES ('27179', '54');

-- 4718
ALTER TABLE `uptime` ENGINE=MyISAM;

-- 4737
DELETE FROM command WHERE name IN ('lookupitem','lookupitemset','lookupcreature','lookupobject','lookupquest','lookupskill','lookupspell','lookuptele');
INSERT INTO `command` VALUES 
 ('lookup creature',3,'Syntax: .lookup creature $namepart\r\n\r\nLooks up a creature by $namepart, and returns all matches with their creature ID\'s.'),
 ('lookup item',3,'Syntax: .lookup item $itemname\r\n\r\nLooks up an item by $itemname, and returns all matches with their Item ID\'s.'),
 ('lookup itemset',3,'Syntax: .lookup itemset $itemname\r\n\r\nLooks up an item set by $itemname, and returns all matches with their Item set ID\'s.'),
 ('lookup object',3,'Syntax: .lookup object $objname\r\n\r\nLooks up an gameobject by $objname, and returns all matches with their Gameobject ID\'s.'),
 ('lookup quest',3,'Syntax: .lookup quest $namepart\r\n\r\nLooks up a quest by $namepart, and returns all matches with their quest ID\'s.'),
 ('lookup skill',3,'Syntax: .lookup skill $$namepart\r\n\r\nLooks up a skill by $namepart, and returns all matches with their skill ID\'s.'),
 ('lookup spell',3,'Syntax: .lookup spell $namepart\r\n\r\nLooks up a spell by $namepart, and returns all matches with their spell ID\'s.'),
 ('lookup tele',1,'Syntax: .lookup tele $substring\r\n\r\nSearch and output all .tele command locations with provide $substring in name.');
