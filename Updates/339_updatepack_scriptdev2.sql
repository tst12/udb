-- ScriptDev2 DB EventAI Release 0.0.1
-- -----------------------------------


-- Initial Table Structure for EAI DB
-- ----------------------------------

CREATE TABLE IF NOT EXISTS `eventai_scripts` (
`id` int(11) unsigned NOT NULL COMMENT 'Identifier' AUTO_INCREMENT,
`creature_id` int(11) unsigned NOT NULL default '0' COMMENT 'Creature Template Identifier',

`event_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Event Type',
`event_inverse_phase_mask` int(11) signed NOT NULL default '0' COMMENT 'Mask which phases this event will not trigger in',
`event_param1` int(11) signed NOT NULL default '0',
`event_param2` int(11) signed NOT NULL default '0',
`event_param3` int(11) signed NOT NULL default '0',

`action1_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
`action1_param1` int(11) signed NOT NULL default '0',
`action1_param2` int(11) signed NOT NULL default '0',
`action1_param3` int(11) signed NOT NULL default '0',

`action2_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
`action2_param1` int(11) signed NOT NULL default '0',
`action2_param2` int(11) signed NOT NULL default '0',
`action2_param3` int(11) signed NOT NULL default '0',

`action3_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
`action3_param1` int(11) signed NOT NULL default '0',
`action3_param2` int(11) signed NOT NULL default '0',
`action3_param3` int(11) signed NOT NULL default '0',

`comment` varchar(255) NOT NULL default '' COMMENT 'Event Comment',

  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Scripts';

CREATE TABLE IF NOT EXISTS `localized_texts` (
`id` int(11) unsigned NOT NULL COMMENT 'Identifier' AUTO_INCREMENT,
`locale_0` varchar(255) NOT NULL default '',
`locale_1` varchar(255) NOT NULL default '',
`locale_2` varchar(255) NOT NULL default '',
`locale_3` varchar(255) NOT NULL default '',
`locale_4` varchar(255) NOT NULL default '',
`locale_5` varchar(255) NOT NULL default '',
`locale_6` varchar(255) NOT NULL default '',
`locale_7` varchar(255) NOT NULL default '',
`comment` varchar(255) NOT NULL default '' COMMENT 'Text Comment',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Localized Text';


-- Initial ID Deletes to prevent any conflicts
-- -------------------------------------------
DELETE from `localized_texts` WHERE `id` between 1 AND 5000;


-- Free up IDs and move all other IDs into the untouched range
-- -----------------------------------------------------------
ALTER TABLE `eventai_scripts` AUTO_INCREMENT = 100001;
INSERT INTO `eventai_scripts` (`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) 
SELECT `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment` FROM `eventai_scripts` WHERE `id` <= 100000;
DELETE FROM `eventai_scripts` WHERE `id` <= 100000;

-- Remove any previously existing scripts for the creatures we are adding
-- ------------------------------------------------------------------------
DELETE FROM `eventai_scripts` WHERE `creature_id` IN (103, 38, 97, 448, 79, 46, 40, 6, 80, 257, 475, 116, 17978, 17975, 19958, 19964, 19969, 19962, 19953, 641, 644, 11517, 11518, 11318, 11320, 11322, 11323, 11324, 476, 642, 17942, 17882, 20886, 11519, 11319, 299, 20870, 11520, 5450, 5451, 18313, 18311, 18317, 18331, 18312, 18309, 18314, 19307, 18315, 18429, 18394, 17895, 17897, 17899, 17898, 17907, 17905, 17906, 17908, 17916, 17976, 23035, 478, 15547, 15548, 15551, 16411, 16409, 16415, 16407, 16414, 16408, 16406, 16410, 16425, 17067, 16424, 16460, 16461, 16459, 16171, 16170, 16173, 16174, 16177, 16176, 16178, 16472, 16471, 16473, 16468, 16470, 16481, 16482, 16485, 16488, 16492, 16504, 17283, 16489, 16491, 16530, 16529, 16525, 16540, 16526, 16544, 16545, 16595, 21694, 17721, 21338, 17800, 17803, 17801, 17805, 17722, 17802, 17917, 21696, 21695, 17731, 19632, 17732, 17730, 17771, 17729, 17724, 17734, 17725, 17871, 17726, 17727, 17735, 18064, 20885, 19166, 19735, 20059, 19167, 19510, 20990, 19712, 19713, 19716);
DELETE FROM `eventai_scripts` WHERE `creature_id` IN (19231, 20988, 19168);

-- EventAI Scripts
-- ---------------

INSERT INTO `eventai_scripts` (`id`,`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES

-- Garrick Padfoot
('1', '103', '6', '2', '100', '0', '0', '11', '71', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Garrick Padfoot - Defensive Stance Spell (Phase 1)'),
('2', '103', '1', '2', '1000', '100', '0', '23', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Garrick Padfoot - 1 Second Delay and Increment Phase'),
('3', '103', '1', '1', '0', '100', '0', '6', '1', '1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Garrick Padfoot - Random Say (Phase 2)'),

-- Defias Thug
('4', '38', '6', '0', '40', '0', '0', '6', '2', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Thug - Random Chance Say'),

-- Riverpaw Runt
('5', '97', '6', '0', '50', '0', '0', '6', '5', '6', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Riverpaw Runt - Random Say'),
('6', '97', '4', '0', '15', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Riverpaw Runt - Low HP Flee'),

-- Hogger
('7', '448', '6', '0', '75', '0', '0', '6', '5', '6', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hogger - Chance Random Say'),
('8', '448', '6', '0', '0', '0', '0', '11', '8260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hogger - Rushing Charge'),
('9', '448', '0', '0', '6000', '6000', '-50', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hogger - Armor Pierce'),
('10', '448', '0', '0', '10000', '10000', '-50', '11', '6730', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hogger - Head Butt'),

-- Narg The Taskmaster
('11', '79', '6', '0', '0', '0', '0', '11', '9128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Narg the Taskmaster - Cast Battleshout'),
('12', '79', '0', '0', '4000', '4000', '-50', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Narg the Taskmaster - Cast Pierce Armor'),

-- Murloc Forager
('13', '46', '4', '0', '40', '0', '0', '11', '2050', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murloc Forager - Lesser Heal'),

-- Kobold Miner
('14', '40', '6', '0', '25', '0', '0', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Miner - Random Chance Say'),
('15', '40', '1', '0', '4000', '0', '0', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Miner - Pierce Armor'),

-- Kobold Vermin/Worker/Labourer/Tunneler
('16', '6', '6', '0', '50', '0', '0', '6', '7', '8', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Vermin - Random Chance Say'),
('17', '80', '6', '0', '50', '0', '0', '6', '7', '8', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Worker - Random Chance Say'),
('18', '257', '6', '0', '50', '0', '0', '6', '7', '8', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Labourer - Random Chance Say'),
('19', '475', '6', '0', '25', '0', '0', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Tunneler - Chance Say'),

-- Defias Bandit
('20', '116', '0', '0', '5000', '5000', '-50', '11', '15618', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Bandit - Cast Snap Kick'),
('21', '116', '6', '0', '25', '0', '0', '6', '2', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Bandit - Random Chance Say'),

-- Thorngrin the Tender
('22', '17978', '6', '0', '100', '0', '0', '2', '9', '0', '0', '4', '11205', '0', '0', '0', '0', '0', '0', 'Thorngrin the Tender - Aggro Yell and Sound'),
('23', '17978', '7', '0', '0', '100', '0', '2', '15', '0', '0', '4', '11207', '0', '0', '0', '0', '0', '0', 'Thorngrin the Tender - Player Death Yell and Sound'),
('24', '17978', '8', '0', '100', '0', '0', '2', '16', '0', '0', '4', '11212', '0', '0', '0', '0', '0', '0', 'Thorngrin the Tender - Creature Death Yell and Sound'),
('25', '17978', '4', '0', '50', '21', '0', '2', '12', '0', '0', '4', '11209', '0', '0', '0', '0', '0', '0', 'Thorngrin the Tender - Creature 50% Health Yell and Sound'),
('26', '17978', '4', '0', '20', '1', '0', '2', '13', '0', '0', '4', '11206', '0', '0', '0', '0', '0', '0', 'Thorngrin the Tender - Creature 20% Health Yell and Sound'),
('27', '17978', '0', '0', '25000', '25000', '0', '11', '34661', '5', '0', '4', '11208', '0', '0', '2', '14', '0', '0', 'Thorngrin the Tender - Cast Sacrifice with Sound and Yell'),
('28', '17978', '0', '0', '18000', '18000', '0', '11', '39132', '1', '0', '9', '11211', '11210', '-1', '7', '10', '11', '-1', 'Thorngrin the Tender - Cast Hellfire with Random Yell and Sound'),
('29', '17978', '0', '0', '45000', '45000', '0', '11', '26527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Thorngrin the Tender - Cast Enrage'),

-- High Botanist Freywinn with Seedlings and Protector
('30', '17975','6','0','100','0','0','2','17','0','0','4','11144','0','0','0','0','0','0','High Botanist Freywinn - Aggro Yell and Sound'),
('31', '17975','7','0','100','0','0','2','20','0','0','4','11145','0','0','0','0','0','0','High Botanist Freywinn - Player Death Yell and Sound'),
('32', '17975','8','0','100','0','0','2','21','0','0','4','11149','0','0','0','0','0','0','High Botanist Freywinn - Creature Death Yell and Sound '),
('33', '17975','0','0','20000','2000','0','11','34759','0','0','2','18','0','0','4','11148','0','0','High Botanist Freywinn - Cast Plant White Seedling'),
('34', '17975','0','0','20500','20500','0','11','34761','0','0','0','0','0','0','0','0','0','0','High Botanist Freywinn - Cast Plant Green Seedling'),
('35', '17975','0','0','21000','21000','0','11','34762','0','0','0','0','0','0','0','0','0','0','High Botanist Freywinn - Cast Plant Blue Seedling'),
('36', '17975','0','0','21500','21500','0','11','34763','0','0','0','0','0','0','4','0','0','0','High Botanist Freywinn - Cast Plant Red Seedling'),
('37', '17975','4','0','20','0','0','11','33891','0','0','2','19','0','0','4','11147','0','0','High Botanist Freywinn - Cast Tree of Life'),
('38', '17975','4','0','15','0','0','11','34550','0','0','0','0','0','0','0','0','0','0','High Botanist Freywinn - Cast Tranquility'),
('39', '19958','0','0','10000','12000','0','11','34782','1','0','0','0','0','0','0','0','0','0','White Seedling - Cast Freeze'),
('40', '17975','0','0','45000','45000','0','11','34557','1','0','0','0','0','0','0','0','0','0','High Botanist Freywinn - Cast Summon Frayer Protector'),
('41', '19964','0','0','13000','9000','0','11','25028','1','0','0','0','0','0','0','0','0','0','Red Seedling - Cast Fire Blast'),
('42', '19969','0','0','20000','5000','0','11','25812','1','0','0','0','0','0','0','0','0','0','Green Seedling - Cast Toxic Volley'),
('43', '19962','0','0','15000','10000','0','11','22357','1','0','0','0','0','0','0','0','0','0','Blue Seedling - Cast Icebolt'),
('44', '19953','0','0','10000','5000','0','11','34663','4','0','0','0','0','0','0','0','0','0','Frayer Protector - Cast Thorns'),

-- Goblin Wood Carver
('45', '641', '0', '0', '8000', '0', '0', '11', '16075', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Goblin Woodcarver - Cast Throw Axe'),

-- Rhahk'zor
('46', '644', '0', '0', '15000', '0', '0', '11', '6304', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rhahk\'Zor - Casts Rhahk\'Zor Slam'),
('47', '644', '6', '0', '0', '0', '0', '2', '22', '0', '0', '4', '5774', '0', '0', '0', '0', '0', '0', 'Rhahk\'Zor - Aggro Yell and Sound'),

-- Oggleflint
('48', '11517', '0', '0', '8000', '0', '0', '11', '5532', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Oggleflint - Adds Cleave'),

-- Jergosh The Invoker
('49', '11518', '0', '0', '30000', '0', '0', '11', '9034', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Jergosh the Invoker - Cast Immolate'),
('50', '11518', '0', '0', '120000', '0', '0', '11', '8552', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Jergosh the Invoker - Cast Curse of Weakness'),

-- Ragefire Trogg
('51', '11318', '0', '0', '8000', '0', '0', '11', '11976', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ragefire Trogg - Casts Strike'),

-- Earthborer
('52', '11320', '0', '0', '10000', '0', '0', '11', '18070', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthborer - Casts Earthborer Acid'),

-- Searing Blade Cultist
('53', '11322', '0', '0', '30000', '0', '0', '11', '14868', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Searing Blade Cultist - Casts Curse of Agony'),

-- Searing Blade Enforcer
('54', '11323', '0', '0', '10000', '0', '0', '11', '8242', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Searing Blade Enforcer - Casts Shield Slam'),

-- Searing Blade Warlock
('55', '11324', '0', '0', '8000', '0', '0', '11', '9613', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Searing Blade Warlock - Casts Shadow Bolt'),

-- Kobold Geomancer
('56', '476', '6', '2', '100', '0', '0', '11', '168', '0', '0', '6', '7', '-1', '-1', '0', '0', '0', '0', 'Kobold Geomancer - Self Cast Frost Armor (Phase 1)'),
('57', '476', '1', '2', '1000', '100', '0', '23', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Geomancer - 1 Second Delay and Increment Phase'),
('58', '476', '1', '1', '0', '40', '0', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Geomancer - Random Chance Say (Phase 2)'),
('59', '476', '0', '0', '4000', '1500', '-50', '11', '133', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kobold Geomancer - Casts Fireball'),

-- Sneed's Shredder
('60', '642', '0', '0', '20000', '0', '0', '11', '3603', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sneed\'s shredder - Casts Distracting Pain'),
('61', '642', '0', '0', '30000', '0', '0', '11', '7399', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sneed\'s Shredder - Casts Terrify'),
('62', '642', '8', '0', '100', '0', '0', '12', '643', '1', '60000', '0', '0', '0', '0', '0', '0', '0', '0', 'Sneed\'s Shredder - Spawns Sneed After Shredder is Destroyed (Workaround)'),

-- Quagmirran
('63', '17942', '0', '0', '13000', '0', '0', '11', '38655', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Quagmirran - Cast Poison Volley'),
('64', '17942', '0', '0', '20000', '0', '0', '13', '100', '5', '0', '11', '38739', '1', '0', '0', '0', '0', '0', 'Quagmirran - Threat Mod and Cast Acid Geyser'),

-- The Black Stalker
('65', '17882', '0', '0', '10500', '0', '0', '11', '31715', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Black Stalker - Cast Static Charge'),
('66', '17882', '0', '0', '7000', '0', '0', '11', '31330', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Black Stalker - Cast Chain Lightning'),
('67', '17882', '0', '0', '12000', '0', '0', '11', '31704', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Black Stalker - Cast Levitate'),

-- Wrath-Scryer Soccothrates
('68', '20886','1','0','0','1000','0','11','36051','1','0','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Cast Fel Immolation'),
('69', '20886','0','0','45000','13000','0','11','35759','1','0','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Cast Felfire Shock'),
('70', '20886','0','0','35000','25000','0','11','40434','1','1','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Cast Knock Away'),
('71', '20886','0','0','35000','25100','0','21','0','0','0','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Stop move'),
('72', '20886','0','0','35000','25500','0','11','35770','1','0','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Cast Felfire Line Up'),
('73', '20886','0','0','35000','26500','0','11','20508','4','0','7','23','24','24','9','11241','11242','11242','Wrath-Scryer Soccothrates - Cast Charge and Random Say/Sound'),
('74', '20886','0','0','35000','28000','0','21','1','0','0','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Start move'),
('75', '20886','8','0','100','0','0','2','25','0','0','4','11243','0','0','0','0','0','0','Wrath-Scryer Soccothrates - On Creature Death Say/Sound'),
('76', '20886','7','0','0','100','0','2','26','0','0','4','11239','0','0','0','0','0','0','Wrath-Scryer Soccothrates - On Player Death Say/Sound'),
('77', '20886','6','0','100','0','0','2','27','0','0','4','11238','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Aggro Say/Sound'),
('78', '20886','3','0','31000','100','0','4','11237','0','0','2','28','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Not in Combat Sound/Yell'),
('79', '20886','3','0','5000','40','0','4','11236','0','0','0','0','0','0','0','0','0','0','Wrath-Scryer Soccothrates - Not in Combat Sound'),

-- Bazzalan
('80', '11519','0','0', '20000','3000','0','11','2818','1','0','0','0','0','0','0','0','0','0','Bazzalan - Casts Poison'),
('81', '11519','0','0', '16000','8000','0','11','15581','1','0','0','0','0','0','0','0','0','0','Bazzalan - Casts Sinister Strike'),

-- Ragefire Shaman
('82', '11319', '0', '0', '15000', '0', '0', '11', '12167', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ragefire Shamen - Casts Lightning Bolt'),
('83', '11319', '4', '0', '15000', '40', '33000', '11', '11986', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ragefire Shamen - Casts Healing Wave'),

-- Young WOlf
('84', '299', '3', '0', '120000', '70', '0', '4', '1018', '0', '0', '5', '393', '0', '0', '0', '0', '0', '0', 'Young Wolf - Out of Combat Sound and Emote'),

-- Zereketh The Unbound
('85', '20870', '6', '0', '0', '0', '0', '2', '29', '0', '0', '4', '11250', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Yell and Sound on Aggro'),
('86', '20870', '7', '0', '0', '0', '0', '7', '31', '32', '-1', '9', '11251', '11252', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Yell and Sound at Player Death'),
('87', '20870', '8', '0', '0', '0', '0', '2', '33', '0', '0', '4', '11255', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Yell and Sound on Creature Death'),
('88', '20870', '4', '0', '50', '0', '0', '2', '30', '0', '0', '4', '11253', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Yell and Sound at 50% '),
('89', '20870', '0', '0', '32000', '0', '0', '11', '30533', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Casts Void Zone'),
('90', '20870', '0', '0', '15000', '0', '0', '11', '32863', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Casts Seed of Corruption'),
('91', '20870', '0', '0', '40000', '0', '0', '11', '36127', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Casts Shadow Nova'),
('92', '20870', '4', '0', '98', '0', '0', '11', '36127', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Zereketh The Unbound - Casts Shadow Nova'),

-- Taragaman The Hungerer
('93', '11520', '0', '0', '8000', '8000', '-80', '11', '8502', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Taragaman the Hungerer - Fire Nova'),
('94', '11520', '0', '0', '7000', '7000', '-80', '11', '10966', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Taragaman the Hungerer - Uppercut'),

-- Hazzali Stinger And Hazzali Swarmer
('95', '5450', '8', '0', '0', '0', '0', '11', '11023', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Stinger - Summon Hazzali Parasites'),
('96', '5451', '8', '0', '0', '0', '0', '11', '11023', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Stinger - Summon Hazzali Parasites'),

-- Full Mana Tombs Trash Mobs
('97', '18313', '0', '0', '7000', '2000', '1000', '11', '31742', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Sorcerer - Cast Arcane Missiles'),
('98', '18313', '1', '0', '8200', '0', '0', '12', '18429', '4', '30000', '12', '18429', '4', '300000', '0', '0', '0', '0', 'Ethereal Sorcerer - Summon 2 Arcane Fiends'),
('99', '18311', '0', '0', '6000', '3000', '2000', '11', '31911', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Crypt Raider - Cast Mortal Strike'),
('100', '18311', '0', '0', '7000', '4000', '2000', '11', '37359', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Crypt Raider - Cast Charge with Interrupt'),
('101', '18317', '4', '0', '50', '1', '5000', '11', '39378', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Priest - Cast Heal Self'),
('102', '18317', '0', '0', '8000', '1000', '2000', '11', '36052', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Priest - Shield Self'),
('103', '18331', '0', '0', '4000', '3000', '2000', '11', '27992', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Darkcaster - Cast Mana Burn'),
('104', '18331', '0', '0', '4000', '1000', '2000', '11', '30854', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Darkcaster - Shadow Word Pain'),
('105', '18312', '0', '0', '4000', '1000', '2000', '11', '20294', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Spellbinder - Immolate'),
('106', '18312', '1', '0', '8000', '0', '0', '12', '18394', '4', '300000', '12', '18394', '4', '300000', '0', '0', '0', '0', 'Ethereal Spellbinder - Summons 2 Wraiths'),
('107', '18309', '0', '0', '3000', '3000', '1000', '11', '38233', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Scavenger - Shield Bash'),
('108', '18314', '0', '0', '6000', '5000', '2000', '11', '29425', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nexus Stalker - Gouge'),
('109', '18314', '0', '0', '11000', '3000', '1000', '11', '36872', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nexus Stalker - Deadly Poison'),
('110', '19307', '0', '0', '7000', '7000', '2000', '11', '34322', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nexus Terror - Psychic Scream'),
('111', '18315', '0', '0', '10000', '2000', '2000', '11', '30838', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Theurgist - Polymorph'),
('112', '18315', '0', '0', '8000', '7000', '2000', '11', '30092', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Theurgist - Blast Wave'),
('113', '18429', '0', '0', '3000', '1000', '1000', '11', '30266', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Fiend - Arcane Explosion'),
('114', '18394', '0', '0', '6000', '1000', '2000', '11', '30267', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summoned Wraith - Shadowbolt Volley'),
('115', '18312', '1', '0', '8000', '0', '0', '11', '32316', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Spellbinder - summons 1 wraith'),
('116', '18312', '1', '0', '8200', '0', '0', '11', '32316', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Spellbinder - summons 2 wraith'),
('117', '18313', '1', '0', '8000', '0', '0', '11', '32353', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Sorcerer - summon 1 arcane fiend'),
('118', '18313', '1', '0', '8200', '0', '0', '11', '32353', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ethereal Sorcerer - summon 2 arcane fiend'),

-- Hyjal Summit Trash Mobs
('119', '17895','4','0','7','0','0','11','20578','0','0','0','0','0','0','0','0','0','0','Ghoul - Cannibalize'),
('120', '17897','0','0','25000','0','0','11','28991','1','0','0','0','0','0','0','0','0','0','Crypt Fiend - Casts Web'),
('121', '17899','0','0','30000','0','0','11','24672','0','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Unholy Frenzy'),
('122', '17899','0','0','20000','0','0','11','36986','1','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Shadow Bolt'),
('123', '17899','0','0','25000','0','0','11','20812','4','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Cripple'),
('124', '17899','4','0','30','0','0','11','17204','0','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Summon Skeleton'),
('125', '17898','0','0','10000','0','0','11','29865','0','0','0','0','0','0','0','0','0','0','Abomination - Poison Aura'),
('126', '17898','6','0','0','0','0','11','39168','0','0','0','0','0','0','0','0','0','0','Abomination - Casts Vertex Color Green'),
('127', '17898','0','0','12000','0','0','11','39168','0','0','0','0','0','0','0','0','0','0','Abomination - Casts Vertex Color Green'), 
('128', '17907','0','0','14000','0','0','11','31688','1','0','0','0','0','0','0','0','0','0','Frost Wyrm - Casts Frost Breath'),
('129', '17905','0','0','22000','0','0','11','31651','1','0','0','0','0','0','0','0','0','0','Banshee - Casts Banshee Curse'),
('130', '17905','0','0','15000','0','0','11','38183','1','0','0','0','0','0','0','0','0','0','Banshee - Casts Banshee Wail'),
('131', '17905','0','0','60000','0','0','11','31662','0','0','0','0','0','0','0','0','0','0','Banshee - Casts Anti-Magic Shell'), 
('132', '17906','0','0','14000','0','0','11','31664','1','0','0','0','0','0','0','0','0','0','Gargoyle - Casts Gargoyle Strike'), 
('133', '17908','6','0','0','0','0','11','40719','0','0','0','0','0','0','0','0','0','0','Giant Infernal - Casts Flame Buffet'),
('134', '17908','0','0','24000','0','0','11','40719','0','0','0','0','0','0','0','0','0','0','Giant Infernal - Casts Flame Buffet'),
('135', '17908','0','0','14000','0','0','11','37059','0','0','0','0','0','0','0','0','0','0','Giant Infernal - Casts Immolation'),
('136', '17916','0','0','9000','0','0','11','22947','4','0','0','0','0','0','0','0','0','0','Fel Stalker - Casts Mana Burn'),

-- Commander Sarannis
('137', '17976', '6', '0', '0', '0', '0', '2', '34', '0', '0', '4', '11071', '0', '0', '0', '0', '0', '0', 'Commander Sarannis - Aggro Say and Sound'),
('138', '17976', '7', '0', '0', '0', '0', '2', '35', '0', '0', '4', '11072', '0', '0', '0', '0', '0', '0', 'Commander Sarannis - Player Kill Say and Sound'),
('139', '17976', '8', '0', '0', '0', '0', '2', '36', '0', '0', '4', '11079', '0', '0', '0', '0', '0', '0', 'Commander Sarannis - Creature Death Say and Sound'),
('140', '17976', '0', '0', '22000', '0', '0', '11', '34794', '1', '0', '2', '37', '0', '0', '4', '11076', '0', '0', 'Commander Sarannis - Cast Arcane Resonance with Say and Sound'),
('141', '17976', '0', '0', '45000', '0', '0', '11', '31457', '1', '0', '2', '38', '0', '0', '4', '11077', '0', '0', 'Commander Sarannis - Cast Arcane Blast with Say and Sound'),
('142', '17976', '4', '0', '50', '0', '0', '2', '39', '0', '0', '4', '11078', '0', '0', '12', '20078', '4', '600000', 'Commander Sarannis - at 50% Health Say and Sound with Creature Summon'),
('143', '17976', '4', '0', '50', '0', '0', '12', '20078', '4', '600000', '12', '20078', '4', '600000', '12', '19633', '4', '600000', 'Commander Sarannis - More Creature Summons'),

-- Anzu
('144', '23035', '0', '0', '17000', '0', '0', '11', '22120', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Anzu - Casts Charge'),
('145', '23035', '4', '0', '33', '0', '0', '12', '23132', '4', '46000', '12', '23132', '4', '46000', '12', '23132', '4', '46000', 'Anzu - 33% Summon 3 Brood of Anzu'),
('146', '23035', '4', '0', '66', '0', '0', '12', '23132', '4', '46000', '12', '23132', '4', '46000', '12', '23132', '4', '46000', 'Anzu - 66% Summon 3 Brood of Anzu'),
('147', '23035', '4', '0', '33', '0', '0', '12', '23132', '4', '46000', '12', '23132', '4', '46000', '11', '42354', '0', '0', 'Anzu - 33% Summon 2 Brood of Anzu and Cast Banish on self'),
('148', '23035', '4', '0', '66', '0', '0', '12', '23132', '4', '46000', '12', '23132', '4', '46000', '11', '42354', '0', '0', 'Anzu - 66% summon 2 Brood of Anzu and Cast banish on self'),
('149', '23035', '0', '0', '26000', '0', '0', '11', '40184', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Anzu - Casts Paralyzing Screech'),
('150', '23035', '0', '0', '21000', '0', '0', '11', '40321', '5', '0', '0', '0', '5', '0', '0', '0', '0', '0', 'Anzu - Casts Cyclone of Feathers'),
('151', '23035', '0', '0', '30000', '0', '0', '11', '40303', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Anzu - Casts Spell Bomb'),
('152', '23035', '6', '0', '0', '0', '0', '11', '40184', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Anzu - Casts Paralyzing Screech'),

-- Riverpaw Outrunner
('153', '478', '6', '0', '50', '0', '0', '6', '5', '6', '-1', '0', '0', '0', '0', '0', '0', '0', '0', 'Riverpaw Outrunner - Random Chance Say'),
('154', '478', '0', '0', '2000', '2000', '-60', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Riverpaw Outrunner - Cast Thrash Spell'),

-- Spectral Charger
('155', '15547','0','0','300000','0','0','11','15547','1','0','0','0','0','0','0','0','0','0','Spectral Charger - Howl of Terror'),
('156', '15547','0','0','15000','0','0','11','36140','3','0','0','0','0','0','0','0','0','0','Spectral Charger - Charge'),

-- Spectral Stallion
('157', '15548','0','0','13000','0','0','11','29323','1','0','0','0','0','0','0','0','0','0','Spectral Stallion - Cast Absorb Vitality'),

-- Spectral Stable Hand
('158', '15551','0','0','15000','0','0','11','5164','1','0','0','0','0','0','0','0','0','0','Spectral Stable Hand - Cast Knockdown'),
('159', '15551','8','0','100','0','0','7','40','41','-1','0','0','0','0','0','0','0','0','Spectral Stable Hand - Yell on Creature Death'),

-- Spectral Chef
('160', '16411','0','0','20000','0','0','11','29675','1','0','0','0','0','0','0','0','0','0','Spectral Chef - Cast Roast'),

-- Phantom Guest
('161', '16409','0','0','40000','0','0','11','29521','0','0','0','0','0','0','0','0','0','0','Phantom Guest - Cast Dance Vibe'),
('162', '16409','0','0','17000','0','0','11','29582','5','0','0','0','0','0','0','0','0','0','Phantom Guest - Cast Throw'),
('163', '16409','0','0','20000','0','0','11','8812','0','0','0','0','0','0','0','0','0','0','Phantom Guest - Heal self'),
('164', '16409','0','0','13000','0','0','11','29583','4','0','0','0','0','0','0','0','0','0','Phantom Guest - Cast Impale'),
('165', '16409','0','0','22000','0','0','11','36638','4','0','0','0','0','0','0','0','0','0','Phantom Guest - Cast Immolate'),
('166', '16409','0','0','30000','0','0','11','29492','4','0','0','0','0','0','0','0','0','0','Phantom Guest - Cast Searing Pain'),
('167', '16409','0','0','45000','0','0','11','29930','4','0','0','0','0','0','0','0','0','0','Phantom Guest - Cast Curse of Agony'),
('168', '16409','8','0','100','0','0','2','50','0','0','0','0','0','0','0','0','0','0','Phantom Guest - Yell on Creature Death'),

-- Skeletal Waiter
('169', '16415','0','0','120000','0','-10','11','32441','1','0','0','0','0','0','0','0','0','0','Skeletal Waiter - Cast Brittle Bones'),

-- Spectral Servant
('170', '16407','6','0','100','0','0','11','29540','1','0','0','0','0','0','0','0','0','0','Spectral Servant - Cast Curse of Past Burdens'),
('171', '16407','0','0','30000','0','0','11','29540','1','0','0','0','0','0','0','0','0','0','Spectral Servant - Cast Curse of Past Burdens'),
('172', '16407','8','0','100','0','0','7','43','44','45','0','0','0','0','0','0','0','0','Spectral Servant - On Creature Death Random Yell'),

-- Ghostly Steward
('173', '16414','0','0','15000','0','0','11','29690','1','0','0','0','0','0','0','0','0','0','Ghostly Steward - Cast Drunken Skull Crack'),
('174', '16414','4','0','22','20','0','11','26527','0','0','0','0','0','0','0','0','0','0','Ghostly Steward - Cast Enrage'),
('175', '16414','8','0','100','0','0','2','49','0','0','0','0','0','0','0','0','0','0','Ghostly Steward - Yell on Creature Death'),

-- Phantom Valet
('176', '16408','0','0','35000','0','0','11','19778','1','0','0','0','0','0','0','0','0','0','Phantom Valet - Cast Demoralizing Shout'),
('177', '16408','8','0','100','0','0','2','51','0','0','0','0','0','0','0','0','0','0','Phantom Valet - Yell on Creature Death'),

-- Phantom Attendant
('178', '16406','8','0','100','0','0','7','52','53','-1','0','0','0','0','0','0','0','0','Phantom Attendant - Yell on Creature Death'),
('179', '16406','0','0','25000','0','0','11','29543','0','0','0','0','0','0','0','0','0','0','Phantom Attendant - Cast Shadow Rejuvantation'),
('180', '16406','0','0','30000','0','0','11','29930','4','0','0','0','0','0','0','0','0','0','Phantom Attendant - Cast Curse of Agony'),

-- Spectral Retainer
('181', '16410','0','0','25000','0','0','11','29543','0','0','0','0','0','0','0','0','0','0','Spectral Retainer - Cast Shadow Rejuvanation'),
('182', '16410','0','0','30000','0','0','11','39897','1','0','0','0','0','0','0','0','0','0','Spectral Retainer - Cast Mass Dispel'),
('183', '16410','0','0','20000','0','0','11','36798','4','0','0','0','0','0','0','0','0','0','Spectral Retainer - Cast Mind Control'),

-- Phantom Guardsman
('184', '16425','4','0','75','74','0','11','29537','0','0','0','0','0','0','0','0','0','0','Phantom Guardsman - Cast Summon Phantom Hound'),
('185', '16425','0','0','15000','0','0','11','5164','1','0','0','0','0','0','0','0','0','0','Phantom Guardsman - Cast Knockdown'),

-- Phantom Hound
('186', '17067','0','0','10000','0','0','11','29574','1','0','0','0','0','0','0','0','0','0','Phantom Hound - Cast Rend'),

-- Spectral Sentry
('187', '16424','0','0','20000','0','0','11','30990','4','0','0','0','0','0','0','0','0','0','Spectral Sentry - Cast Multishot'),
('188', '16424','8','0','100','0','0','7','54','55','-1','0','0','0','0','0','0','0','0','Spectral Sentry - Yell on Creature Death'),

-- Night Mistress
('189', '16460','4','0','50','48','0','11','29488','1','0','0','0','0','0','0','0','0','0','Night Mistress - Transforms at 50% HP'),
('190', '16460','4','0','90','88','0','11','29491','1','0','0','0','0','0','0','0','0','0','Night Mistress - Cast Impending Betrayal'),
('191', '16460','0','0','15000','0','0','11','36714','1','0','0','0','0','0','0','0','0','0','Night Mistress - Cast Shadow Bolt'),
('192', '16460','0','0','25000','0','0','11','29492','1','0','0','0','0','0','0','0','0','0','Night Mistress - Cast Searing Pain'),
('193', '16460','0','0','30000','0','0','7','56','57','58','0','0','0','0','0','0','0','0','Night Mistress - Random Yells'),

-- Concubine
('194', '16461','4','0','50','45','0','11','29489','1','0','0','0','0','0','0','0','0','0','Concubine - Transform at 50%'),
('195', '16461','0','0','20000','0','0','11','29494','1','0','0','0','0','0','0','0','0','0','Concubine - Cast Temptation'),
('196', '16461','4','0','35','30','0','11','29497','1','0','0','0','0','0','0','0','0','0','Concubine - Cast Jealousy (in trasformed form)'),
('197', '16461','8','0','100','0','0','2','59','0','0','0','0','0','0','0','0','0','0','Concubine - Yell at Creature Death'),
('198', '16461','3','0','40000','0','0','2','60','0','0','0','0','0','0','0','0','0','0','Concubine - Yell'),

-- Wanton Hostess
('199', '16459','4','0','80','78','0','11','29485','0','0','0','0','0','0','0','0','0','0','Wanton Hostess - Cast Alluring Aura'),
('200', '16459','4','0','60','58','0','11','29486','0','0','0','0','0','0','0','0','0','0','Wanton Hostess - Cast Bewitching Aura'),
('201', '16459','4','0','50','48','0','11','29472','1','0','0','0','0','0','0','0','0','0','Wanton Hostess - Cast Transform'),
('202', '16459','0','0','20000','0','0','11','38183','1','0','0','0','0','0','0','0','0','0','Wanton Hostess - Cast Banshee Wail'),

-- Coldmist Widow
('203', '16171','0','0','20000','0','0','11','29292','1','0','0','0','0','0','0','0','0','0','Coldmist Widow - Cast Frost Mist'),
('204', '16171','6','0','100','0','0','11','29292','1','0','0','0','0','0','0','0','0','0','Coldmist Widow - Cast Frost Mist (On Aggro)'),
('205', '16171','0','0','25000','0','0','11','29293','1','0','0','0','0','0','0','0','0','0','Coldmist Widow - Cast Poison Volley'),

-- Coldmist Stalker
('206', '16170','0','0','8000','0','0','11','29290','4','0','0','0','0','0','0','0','0','0','Coldmist Stalker - Cast Chilling Poison'),

-- Shadowbat
('207', '16173','0','0','15000','0','0','11','36841','1','0','0','0','0','0','0','0','0','0','Shadowbat - Cast Sonic Boom'),

-- Greater Shadowbat
('208', '16174','0','0','15000','0','0','11','29303','1','0','0','0','0','0','0','0','0','0','Greater Shadowbat - Cast Wing Beat'),

-- Dreadbeast
('209', '16177','0','0','12000','0','0','11','15284','1','0','0','0','0','0','0','0','0','0','Dreadbeast - Cast Cleave'),

-- Shadowbeast
('210', '16176','6','0','100','0','0','11','29304','1','0','0','0','0','0','0','0','0','0','Shaodowbeast - Cast Howl of the Broken Hills'),

-- Phase Hound
('211', '16178','0','0','10000','0','0','11','32942','0','0','0','0','0','0','0','0','0','0','Phase Hound - Cast Phasing'),

-- Phantom Stagehand
('212', '16472','0','0','15000','0','0','11','29677','4','0','0','0','0','0','0','0','0','0','Phantom Stagehand - Cast Mallet Toss'),
('213', '16472','0','0','20000','0','0','11','29673','1','0','0','0','0','0','0','0','0','0','Phantom Stagehand - Cast Sandbag'),
('214', '16472','0','0','32000','0','0','11','31290','4','0','0','0','0','0','0','0','0','0','Phantom Stagehand - Cast Net'),

-- Skeletal Usher
('215', '16471','0','0','20000','0','0','11','29666','1','0','0','0','0','0','0','0','0','0','Skeletal Usher - Cast Frost Shock'),
('216', '16471','0','0','13000','0','0','11','29670','4','0','0','0','0','0','0','0','0','0','Skeletal Usher - Cast Frost Tomb'),

-- Spectral Performer
('217', '16473','0','0','30000','0','0','11','29679','1','0','0','0','0','0','0','0','0','0','Spectral Performer - Cast Bad Poetry'),
('218', '16473','0','0','20000','0','0','11','29680','4','0','0','0','0','0','0','0','0','0','Spectral Performer - Cast Curtain Call'),
('219', '16473','4','0','50','47','0','11','29683','1','0','0','0','0','0','0','0','0','0','Spectral Performer - Cast Spotlight'),

-- Spectral Patron
('220', '16468','0','0','10000','0','0','11','29555','1','0','0','0','0','0','0','0','0','0','Spectral Patron - Cast Left-Hook'),
('221', '16468','8','0','100','0','0','7','61','62','-1','0','0','0','0','0','0','0','0','Spectral Patron - Random yell at Creature Death'),

-- Ghostly Philanthropist
('222', '16470','0','0','30000','0','0','11','29612','0','0','0','0','0','0','0','0','0','0','Ghostly Philanthropist - Cast Incite Rage'),
('223', '16470','0','0','15000','0','0','11','29609','4','0','0','0','0','0','0','0','0','0','Ghostly Philanthropist - Ill Gift'),
('224', '16470','8','0','100','0','0','7','63','64','-1','0','0','0','0','0','0','0','0','Ghostly Philanthropist - Yell on Creature Death'),

-- Ghastly Haunt
('225', '16481','0','0','19000','0','0','11','29716','1','0','0','0','0','0','0','0','0','0','Ghastly Haunt - Cast Ethereal Curse'),
('226', '16481','0','0','23000','0','0','11','29712','1','0','0','0','0','0','0','0','0','0','Ghastly Haunt - Cast Shadow Shock'),
('227', '16481','8','0','100','0','0','7','65','66','-1','0','0','0','0','0','0','0','0','Ghastly Haunt - Yell on Creature Death (Same as Trapped Soul)'),

-- Trapped Soul
('228', '16482','0','0','20000','0','0','11','29717','1','0','0','0','0','0','0','0','0','0','Trapped Soul - Cast Cone of Cold'),
('229', '16482','6','0','100','0','0','11','29718','0','0','0','0','0','0','0','0','0','0','Trapped Soul - Cast Elemental Armor'),
('230', '16482','8','0','100','0','0','7','65','66','-1','0','0','0','0','0','0','0','0','Trapped Soul - Yell on Creature Death (Same as Ghostly Haunt)'),

-- Arcane Watchman
('231', '16485','0','0','12000','0','0','11','29768','1','0','0','0','0','0','0','0','0','0','Arcane Watchman - Cast Overload'),
('232', '16485','7','0','100','0','0','7','67','68','-1','0','0','0','0','0','0','0','0','Arcane Watchman - Yell on Player Kill'),
('233', '16485','8','0','100','0','0','7','69','70','-1','0','0','0','0','0','0','0','0','Arcane Watchman - Yell on Creature Death'),

-- Arcane Anomaly
('234', '16488','0','0','15000','0','0','11','29885','1','0','0','0','0','0','0','0','0','0','Arcane Anomaly - Cast Arcane Volley'),
('235', '16488','4','0','75','73','0','11','38151','1','0','0','0','0','0','0','0','0','0','Arcane Anomaly - Cast Mana Shield'),
('236', '16488','0','0','45000','0','0','11','34673','4','0','0','0','0','0','0','0','0','0','Arcane Anomaly - Teleport to Random Player'),

-- Syphoner
('237', '16492','0','0','10000','0','0','11','35332','1','0','0','0','0','0','0','0','0','0','Syphoner - Cast Drain Mana'),

-- Arcane Protector
('238', '16504','10','0','0','0','0','11','29788','5','0','0','0','0','0','0','0','0','0','Arcane Protector - Cast Return Fire'),
('239', '16504','1','0','15000','0','0','12','17283','4','600000','0','0','0','0','0','0','0','0','Arcane Protector - Summon Spark'),
('240', '16504','3','0','1000','0','0','11','11649','0','0','0','0','0','0','0','0','0','0','Arcane Protector - Detect Invisibility'),

-- Astral Spark
('241', '17283','0','0','30000','0','0','11','31472','1','0','0','0','0','0','0','0','0','0','Astral Spark - Cast Arcane Discharge'),

-- Chaotic Sentience
('242', '16489','0','0','30000','10000','0','11','29900','1','0','0','0','0','0','0','0','0','0','Chaotic Sentience - Cast Unstable Magic'),

-- Mana Feeder
('243', '16491','0','0','10000','0','0','11','29907','1','0','0','0','0','0','0','0','0','0','Mana Feeder - Cast Astral Bite'),

-- Mana Warp
('244', '16530','0','0','25000','0','0','11','29919','1','0','0','0','0','0','0','0','0','0','Mana Warp - Cast Warp Breach'),

-- Magical Horror
('245', '16529','0','0','20000','0','0','11','29911','5','0','0','0','0','0','0','0','0','0','Magical Horror - Cast Power Distortion'),
('246', '16529','0','0','15000','0','0','11','36738','1','0','0','0','0','0','0','0','0','0','Magical Horror - Cast Arcane Volley'),

-- Spell Shade
('247', '16525','0','0','12000','0','0','11','28479','4','1','0','0','0','0','0','0','0','0','Spell Shade - Cast Frostbolt'),
('248', '16525','0','0','20000','0','0','11','26006','4','1','0','0','0','0','0','0','0','0','Spell Shade - Cast Shadow Bolt'),
('249', '16525','0','0','22000','0','0','11','40554','4','1','0','0','0','0','0','0','0','0','Spell Shade - Cast Fireball'),
('250', '16525','0','0','10000','0','0','11','6634','0','0','0','0','0','0','0','0','0','0','Spell Shade - Cast Phasing'),

-- Shadow Pillager
('251', '16540','0','0','20000','0','0','11','29930','4','0','0','0','0','0','0','0','0','0','Shadow Pillager - Cast Curse of Agony'),
('252', '16540','0','0','12000','0','0','11','29492','4','0','0','0','0','0','0','0','0','0','Shadow Pillager - Cast Searing Pain'),
('253', '16540','0','0','22000','0','0','11','29317','4','0','0','0','0','0','0','0','0','0','Shadow Pillager - Cast Shadowbolt'),
('254', '16540','6','0','100','0','0','11','29928','4','0','0','0','0','0','0','0','0','0','Shadow Pillager - Cast Immolate'),

-- Sorcerous Shade
('255', '16526','6','0','100','0','0','11','29923','1','0','0','0','0','0','0','0','0','0','Sorcerous Shade - Cast Frostbolt Volley (On Aggro)'),
('256', '16526','0','0','10000','0','0','11','29923','1','0','0','0','0','0','0','0','0','0','Sorcerous Shade - Cast Frostbolr Volley'),
('257', '16526','0','0','16000','0','0','11','27383','1','0','0','0','0','0','0','0','0','0','Sorcerous Shade - Cast Shadowbolt Volley'),
('258', '16526','0','0','22000','0','0','11','29922','1','0','0','0','0','0','0','0','0','0','Sorcerous Shade - Cast Fireball Volley'),

-- Ethereal Thief
('259', '16544','0','0','20000','0','0','11','40505','1','0','0','0','0','0','0','0','0','0','Ethereal Thief - Cast Cleave'),
('260', '16544','0','0','45000','0','0','11','29982','4','0','0','0','0','0','0','0','0','0','Ethereal Thief - Cast Spatial Distortion'),
('261', '16544','7','0','100','0','0','2','71','0','0','0','0','0','0','0','0','0','0','Ethereal Thief - Yell on Player Kill'),
('262', '16544','8','0','100','0','0','2','72','0','0','0','0','0','0','0','0','0','0','Ethereal Thief - Yell on Creature Death'),

-- Ethereal Spellfilcher
('263', '16545','0','0','40000','0','0','11','29982','4','0','0','0','0','0','0','0','0','0','Ethereal Spellfilcher - Cast Spatial Distortion'),
('264', '16545','0','0','25000','0','0','11','36705','1','0','0','0','0','0','0','0','0','0','Ethereal Spellfilcher - Cast Arcane Volley'),
('265', '16545','0','0','60000','10000','0','11','30037','0','0','0','0','0','0','0','0','0','0','Ethereal Spellfilcher - Cast Steal Magic'),
('266', '16545','0','0','16000','0','0','11','30039','1','0','0','0','0','0','0','0','0','0','Ethereal Spellfilcher - Cast Transference'),

-- Fleshbeast
('267', '16595','0','0','20000','5000','0','11','29935','1','0','0','0','0','0','0','0','0','0','Fleshbeast - Cast Gaping Maw'),
('268', '16595','0','0','15000','10000','0','11','29942','1','0','0','0','0','0','0','0','0','0','Fleshbeast - Cast Infected Blood'),

-- Update here

-- Bog Overlord
('269', '21694','0','0','5000','0','0','11','32065','4','0','0','0','0','0','0','0','0','0','Bog Overlord - Casts Fungal Decay'),
('270', '21694','0','0','7000','0','0','11','15550','4','0','0','0','0','0','0','0','0','0','Bog Overlord - Casts Trample'),
('271', '21694','1','0','55000','0','0','11','8599','0','0','0','0','0','0','0','0','0','0','Bog Overlord - Casts Enrage'),
('272', '21694','1','0','100','0','0','11','37266','0','0','0','0','0','0','0','0','0','0','Bog Overlord - Casts Disease Cloud'),

-- Coilfang Engineer
('273', '17721','0','0','10000','0','0','11','22334','1','0','0','0','0','0','0','0','0','0','Coilfang Engineer - Casts Throw Bomb'),
('274', '17721','0','0','5000','0','0','11','6533','1','0','0','0','0','0','0','0','0','0','Coilfang Engineer - Casts Throw Net'),

-- Coilfang Leper
('275', '21338','0','0','5000','0','0','11','9613','1','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Shadow Bolt'),
('276', '21338','0','0','7000','0','0','11','13339','1','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Fire Blast'),
('277', '21338','0','0','12000','0','0','11','13446','1','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Strike'),
('278', '21338','0','0','9000','0','0','11','11831','1','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Frost Nova'),
('279', '21338','0','0','7500','0','0','11','11642','0','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Heal'),
('280', '21338','0','0','10500','0','0','11','13444','1','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Sunder Armor'),
('281', '21338','0','0','7200','0','0','11','15547','1','0','0','0','0','0','0','0','0','0','Coilfang Leper - Casts Shoot'),

-- Coilfang Myrmidon
('282', '17800','0','0','7000','0','0','11','18765','0','0','0','0','0','0','0','0','0','0','Coilfang Myrmidon - Casts Sweeping Strikes'),
('283', '17800','0','0','6500','0','0','11','15622','4','0','0','0','0','0','0','0','0','0','Coilfang Myrmidon - Casts Cleave'),
('284', '17800','0','0','12000','0','0','11','7160','1','0','0','0','0','0','0','0','0','0','Coilfang Myrmidon - Casts Execute'),

-- Coilfang Oracle
('285', '17803','0','0','18000','0','0','11','8281','0','0','0','0','0','0','0','0','0','0','Coilfang Oracle - Casts Sonic Boom'),
('286', '17803','0','0','21000','0','0','11','22582','1','0','0','0','0','0','0','0','0','0','Coilfang Oracle - Casts Frost Shock'),
('287', '17803','0','0','7500','0','0','11','31730','0','0','0','0','0','0','0','0','0','0','Coilfang Oracle - Casts Heal'),

-- Coilfang Siren
('288', '17801','0','0','24000','0','0','11','20690','1','0','0','0','0','0','0','0','0','0','Coilfang Siren - Casts Moonfire'),
('289', '17801','0','0','25000','0','0','11','29321','4','0','0','0','0','0','0','0','0','0','Coilfang Siren - Casts AOE Fear'),
('290', '17801','0','0','10000','0','0','11','15234','1','0','0','0','0','0','0','0','0','0','Coilfang Siren - Casts Lightning Bolt'),
('291', '17801','0','0','15000','0','0','11','35106','1','0','0','0','0','0','0','0','0','0','Coilfang Siren - Casts Arcane Flare'),

-- Coilfang Slavemaster
('292', '17805','0','0','17000','0','0','11','10987','4','0','0','0','0','0','0','0','0','0','Coilfang Slavemaster - Casts Geyser'),
('293', '17805','1','0','35000','0','0','11','8269','0','0','0','0','0','0','0','0','0','0','Coilfang Slavemaster - Casts Enrage'),

-- Coilfang Sorceress
('294', '17722','0','0','19000','0','0','11','12675','1','0','0','0','0','0','0','0','0','0','Coilfang Sorceress - Casts Frostbolt'),
('295', '17722','0','0','25000','0','0','11','39416','1','0','0','0','0','0','0','0','0','0','Coilfang Sorceress - Casts Blizzard'),
('296', '17722','0','0','15000','0','0','11','15063','0','0','0','0','0','0','0','0','0','0','Coilfang Sorceress - Casts Frost Nova'),

-- Coilfang Warrior
('297', '17802','0','0','12000','0','0','11','29572','1','0','0','0','0','0','0','0','0','0','Coilfang Warrior - Casts Mortal Strike'),
('298', '17802','0','0','12000','0','0','11','35105','1','0','0','0','0','0','0','0','0','0','Coilfang Warrior - Casts Mortal Blow'),
('299', '17802','1','0','100','0','0','11','31403','0','0','0','0','0','0','0','0','0','0','Coilfang Warrior - Casts Battle Shout'),

-- Steam Surger
('302', '21696','0','0','15000','0','0','11','37252','1','0','0','0','0','0','0','0','0','0','Steam Surger - Casts Water Bolt'),

-- Tidal Surger
('303', '21695','0','0','10000','0','0','11','30056','1','0','0','0','0','0','0','0','0','0','Tidal Surger - Casts Knockback'),
('304', '21695','0','0','17000','0','0','11','37250','1','0','0','0','0','0','0','0','0','0','Tidal Surger - Casts Water Spout'),
('305', '21695','0','0','12000','0','0','11','15531','0','0','0','0','0','0','0','0','0','0','Tidal Surger - Casts Frost Nova'),

-- Fen Ray
('306', '17731', '0', '0', '10000', '8000', '2000', '11', '34984', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Fen Ray - Cast Psychic Horror'),

-- Lykul Stinger
('307', '19632', '0', '0', '15000', '15000', '2500', '11', '39204', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Lykul Stinger - Cast Poison Spit'),

-- Lykul Wasp
('308', '17732', '0', '0', '7500', '7500', '1500', '11', '39204', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Lykul Wasp - Cast Poison Spit'),

-- Murkblood Healer
('309', '17730', '4', '0', '65', '1', '15000', '11', '32769', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Healer - Cast Holy Light on self'),
('310', '17730', '4', '0', '30', '1', '15000', '11', '38209', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Healer - Cast Heal on self'),
('311', '17730', '0', '0', '15000', '15000', '5000', '11', '30604', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Healer - Cast Prayer of Healing'),

-- Murkblood Oracle
('312', '17771', '0', '0', '15000', '15000', '5000', '11', '32363', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Oracle - Cast Fireball'),

-- Murkblood Spearman
('313', '17729', '0', '0', '18000', '18000', '5000', '11', '31407', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Spearman - Cast Viper Sting'),

-- Underbat
('314', '17724', '0', '0', '21000', '20000', '5000', '11', '37317', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbat - Cast Knockback'),

-- Underbog Lord
('315', '17734', '0', '0', '20000', '25000', '5000', '11', '32077', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Lord - Cast Boglord Bash'),

-- Underbog Lurker
('316', '17725', '0', '0', '30000', '30000', '15000', '11', '34161', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Lurker - Cast Wild Growth on self'),

-- Underbog Shambler
('317', '17871', '0', '0', '15000', '15000', '5000', '11', '34163', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Shambler - Cast Fungal Regrowth on self'),

-- Wrathfin Myrmidon
('318', '17726', '0', '0', '20000', '20000', '7500', '11', '37662', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Myrmidon - Cast Rend'),

-- Wrathfin Sentry
('319', '17727', '0', '0', '18000', '18000', '7500', '11', '37662', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Sentry - Cast Rend'),

-- Wrathfin Warrior
('320', '17735', '0', '0', '22000', '22000', '7500', '11', '37662', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Warrior - Cast Rend'),

-- Warmaul Shaman
('321', '18064', '0', '0', '20000', '2000', '1', '11', '15038', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Warmaul Shaman - Casts Scorching Totem'),
('322', '18064', '4', '0', '20', '0', '3000', '11', '25396', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Warmaul Shaman - Casts Sealf Heal'),

-- Dalliah The Doomsayer
('323', '20885','6','0','100','0','0','2','73','0','0','4','11086','0','0','0','0','0','0','Dalliah the Doomsayer - Yell with Sound on Aggro'),
('324', '20885','7','0','100','0','0','7','74','75','-1','9','11087','11088','-1','0','0','0','0','Dalliah the Doomsayer - Yell with Sound on Player Death'),
('325', '20885','8','0','100','0','0','2','76','0','0','4','11093','0','0','0','0','0','0','Dalliah the Doomsayer - Yell with Sound on Creature Death'),
('326', '20885','0','0','18000','7000','0','11','36173','1','0','0','0','0','0','0','0','0','0','Dalliah the Doomsayer - Casts Gift of the Doomsayer'),
('327', '20885','0','0','30000','15000','0','11','36132','1','0','7','79','80','-1','9','11089','11090','-1','Dalliah the Doomsayer - Casts Whirlwind'),
('328', '20885','0','0','30000','21200','0','11','36144','0','0','7','77','78','-1','9','11091','11092','-1','Dalliah the Doomsayer - Casts Heal'),

-- Forge Patroler
('329', '19166', '0', '0', '90000', '0', '0', '11', '35012', '1', '0','0', '0', '0', '0', '0', '0', '0', '0', 'Tempest-Forge Patroler - Casts Charged Arcane Missle'),
('330', '19166', '0', '0', '14000', '0', '0', '11', '35011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempest-Forge Patroler - Casts Knockdown'),

-- Forge Destroyer
('331', '19735', '0', '0', '17000', '0', '0', '11', '36582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempets-Forge Destroyer - Casts Charged Fist'),
('332', '19735', '0', '0', '10000', '0', '0', '11', '35783', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempets-Forge Destroyer - Casts Knockdown'),

-- Sunseeker Netherbinder
('333', '20059', '0', '0', '11000', '0', '0', '11', '35261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Netherbinder - Casts Arcane Nova'),
('334', '20059', '0', '0', '14000', '0', '0', '11', '35243', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Netherbinder - Casts Starfire'),
('335', '20059', '0', '0', '5000', '0', '0', '11', '23859', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Netherbinder - Casts Dispel Magic'),

-- Bloodwarder slayer
('336', '19167', '0', '0', '12000', '0', '0', '11', '13736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Slayer - Casts Whirlwind'),
('337', '19167', '0', '0', '15000', '0', '0', '11', '15708', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Slayer - Casts Mortal Strike'),

-- Bloodwarder centurion
('338', '19510', '0', '0', '9000', '0', '0', '11', '35178', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Centurion - Casts Shield Bash'),

-- Bloodwarder Physician
('339', '20990', '0', '0', '9000', '0', '0', '11', '36340', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Physician - Casts Holy Shock'),
('340', '20990', '0', '0', '5000', '0', '0', '11', '36333', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Physician - Casts Anesthetic'),
('341', '20990', '0', '0', '12000', '0', '0', '11', '36348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Physician - Casts Bandage'),

-- Mechanar Driller
('342', '19712', '0', '0', '20000', '0', '0', '11', '35049', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Driller - Casts Pound'),
('343', '19712', '0', '0', '6000', '0', '0', '11', '35047', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Driller - Casts Drill'),
('344', '19712', '0', '0', '15000', '0', '0', '11', '30981', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Driller - Casts Crippling Poison'),

-- Mechanar Wrecker
('345', '19713', '0', '0', '18000', '0', '0', '11', '35049', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Wrecker - Casts Pound'),

-- Mechanar Tinkerer
('346', '19716', '0', '0', '10000', '0', '0', '11', '35057', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Tinkerer - Casts Netherbomb'),
('347', '19716', '4', '0', '20', '0', '0', '11', '35062', '4', '0', '11', '35058', '0', '0', '0', '0', '0', '0', 'Mechanar Tinkerer - Casts Maniacal Charge and Nether Explosion'),

-- Mechanar Crusher
('348', '19231', '0', '0', '10000', '0', '0', '11', '31955', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Crusher - Casts Disarm'),

-- Sunseeker Engineer
('349', '20988', '0', '0', '10000', '0', '0', '11', '36341', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Engineer - Casts Super Shrink Ray'),
('350', '20988', '0', '0', '8000', '0', '0', '11', '36345', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Engineer - Casts Death Ray'),
('351', '20988', '0', '0', '14000', '0', '0', '11', '36346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Engineer - Casts Growth Ray'),

-- Sunseeker Astromage
('352', '19168', '0', '0', '9000', '0', '0', '11', '35185', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Melt Armor'),
('353', '19168', '0', '0', '6000', '0', '0', '11', '17195', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Scorch'),
('354', '19168', '0', '0', '10000', '0', '0', '11', '35267', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Solar burn'),
('355', '19168', '0', '0', '120000', '1000', '0', '11', '35265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Fire Shield');






-- Current Complete Local Text Table for all Accepted Scripts
-- ----------------------------------------------------------
INSERT into `localized_texts` (`id`, `locale_0`, `comment`) VALUES
('1', 'I see those fools at the Abbey sent some fresh meat for us.', '103'),
('2', 'The Brotherhood will not tolerate your actions.', '38,116'),
('3', 'Ah, a chance to use this freshly sharpened blade.', '38,116'),
('4', 'Feel the power of the Brotherhood!', '38,116'),
('5', 'More bones to gnaw on...', '97,448,478'),
('6', 'Grrrr... fresh meat!','97,448,478'),
('7', 'You no take candle!', '6,40,80,257'),
('8', 'Yiieeeee! Me run!.', '6,80,257,475'),
('9', 'What aggravation is this? You will die!', '17978'),
('10', 'Scream while you burn! ', '17978'),
('11', 'I\'ll incinerate you!', '17978'),
('12', 'I revel in your pain!', '17978'),
('13', 'You seek a prize, eh? How about death?', '17978'),
('14', 'Your life will be mine!', '17978'),
('15', 'I hate to say I told you so...', '17978'),
('16', 'You won\'t... get far', '17978'),
('17','What are you doing? These specimens are very delicate!','17975'),
('18','Nature bends to my will!','17975'),
('19','Endorel aluminor!','17975'),
('20','Your lifecycle is now concluded!','17975'),
('21','The specimens...must be...preserved','17975'),
('22', 'VanCleef pay big for your heads!', '644'),
('23', 'On guard!', '20886'),
('24', 'Defend yourself, for all the good it will do...', '20886'),
('25', 'Knew this was... the only way out', '20886'),
('26', 'Yes, that was quite satisfying', '20886'),
('27', 'At last, a target for my frustrations!', '20886'),
('28', 'Have you come to kill Dalliah? Can I watch?', '20886'),
('29', 'Life energy to... consume', '20870'),
('30', 'The shadow... will engulf you', '20870'),
('31', 'This vessel... is empty', '20870'),
('32', 'No...more...life', '20870'),
('33', 'The void...beckons', '20870'),
('34', 'Step forward! I will see that you are properly welcomed', '17976'),
('35', 'Oh stop your whimpering', '17976'),
('36', 'I\'ve not yet.. begun to..', '17976'),
('37', 'You are no longer dealing with some underling.', '17976'),
('38', 'Band\'or shorel\'aran!', '17976'),
('39', 'Guards! Come and kill these intruders!', '17976'),
('40', 'Is this the end?', 'Spectral Stable Hand: Death2'),
('41', 'What will become of...', 'Spectral Stable Hand: Death (1)'),
-- ('1640701', 'Intruders in the tower!', 'Spectral Servant: Aggro'),
('43', 'No!', 'Spectral Servant: Death(1)'),
('44', 'I am finished!', 'Sepctral Servant: Death(2)'),
('45', 'The master... will be angry...', 'Spectral Servant: Death(3)'),
-- ('1641401', 'That was wasted on the likes of you! ', 'Ghostly Steward: Special(1)'),
-- ('1641402', 'How dare you spill the master\'s wine!', 'Ghostly Steward: Special(2)'),
-- ('1641403', 'That was a 200 year old Puppelyvos Port!', 'Ghostly Steward: Special(3)'),
('49', 'Wait--no! No!', 'Ghostly Steward: Death'),
('50', 'Not... Fair...', 'Phantom Guest: Death'),
('51', 'The fates have turned against me!', 'Phantom Valet: Death'),
('52', 'Where am I? What--', 'Phantom Attendant: Death(1)'),
('53', 'What is happening?', 'Phantom Attendant: Death(2)'),
('54', 'You... will... pay...', 'Spectral Sentry: Death (1)'),
('55', 'You will be punished!', 'Spectral Sentry: Death (2)'),
('56', 'Five seconds! I\'m not kidding!', 'Night Mistress: Random'),
('57', 'So I said, \"Yeah, but that\'ll cost you extra.\"', 'Night Mistress: Random'),
('58', 'He asked if the imp could join in... can you believe it? Actually, it wasn\'t half bad...', 'Night Mistress: Random'),
('59', 'We could have had so much fun!', 'Concubine: Death'),
('60', 'They fall asleep after. Me, I fall asleep during....', 'Concubine: Random'),
('61', 'I\'ll miss the show!', 'Spectral Patron: Death (1)'),
('62', 'Yes... I think I remember now...', 'Spectral Patron: Death (2)'),
('63', 'It\'s all... coming back to me', 'Ghostly Philanthropist: Death (1)'),
('64', 'Is it really over?', 'Ghostly Philanthropist: Death (2)'),
('65', 'Free... at last', 'Ghastly Haunt: Death(1)'),
('66', 'Time to move on...', 'Ghastly Haunt: Death(2)'),
('67', 'Death is far too merciful for your kind', 'Arcane Watchman: Kill(1)'),
('68', 'The same fate awaits all who would steal from the master', 'Arcane Watchman: Kill(2)'),
('69', 'Others will take my place!', 'Arcane Watchman: Death(1)'),
('70', 'This... changes nothing. Eternal damnation awaits you!', 'Arcane Watchman: Death(2)'),
('71', 'Turn your back while you can!', 'Ethereal Thief: Kill'),
('72', 'You will succeed only in damning yourselves!', 'Ethereal Thief: Death'),
('73','It is unwise to anger me.','20885'),
('74','Completely ineffective. Just like someone else I know.','20885'),
('75','You chose the wrong opponent.','20885'),
('76','Now I\'m really... angry...','20885'),
('77','Ahh... That is much better.','20885'),
('78','Ahh... Just what I needed.','20885'),
('79','Reap the Whirlwind!','20885'),
('80','I\'ll cut you to pieces!','20885');


-- This Section contains Scripts that have Official Custom SD2 Scripts as they take perference over EAI Scripts
-- ------------------------------------------------------------------------------------------------------------

-- Coilfang Water Elemental
-- ('300', '17917','0','0','16000','0','0','11','36741','0','0','0','0','0','0','0','0','0','0','Coilfang Water Elemental - Casts Frostbolt Volley'),
-- ('301', '17917','0','0','16000','0','0','11','34449','1','0','0','0','0','0','0','0','0','0','Coilfang Water Elemental - Casts Water Bolt Volley'),
