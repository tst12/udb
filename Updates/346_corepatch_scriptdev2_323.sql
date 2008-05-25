-- 298
-- EVENT_T_SPELLHIT
UPDATE eventai_scripts SET event_param3 = event_param2, event_param2 = -1 WHERE event_type = 10;
-- 299
CREATE TABLE IF NOT EXISTS `eventai_summons` (
`id` int(11) unsigned NOT NULL COMMENT 'Location Identifier' AUTO_INCREMENT,
`position_x` float NOT NULL default '0',
`position_y` float NOT NULL default '0',
`position_z` float NOT NULL default '0',
`orientation` float NOT NULL default '0',
`spawntimesecs` int(11) unsigned NOT NULL default '120',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';
-- 306
DROP TABLE IF EXISTS `db_version`;
CREATE TABLE `db_version` (
`version` varchar(255) NOT NULL default '' COMMENT 'Database version string'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
