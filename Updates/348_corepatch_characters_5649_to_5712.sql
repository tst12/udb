-- 5651
alter table `character_social`
change `guid` `guid` int(11) unsigned NOT NULL DEFAULT '0' comment 'Character Global Unique Identifier' first,
change `friend` `friend` int(11) unsigned NOT NULL DEFAULT '0' comment 'Friend Global Unique Identifier' after `guid`,
change `flags` `flags` tinyint(1) unsigned NOT NULL DEFAULT '0' comment 'Friend flags' after `friend`,
change `name` `note` varchar(21) NOT NULL DEFAULT '' collate utf8_general_ci comment 'Friend Note' after `flags`;
UPDATE characters
SET data = CONCAT(
  SUBSTRING_INDEX(data,' ',225+1),
  ' 1 0 ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',315+1),' ',225-315),
  ' 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',621+1),' ',315-621),
  ' 0 ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',822+1),' ',621-822),
  ' 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',1319+1),' ',822-1319),
  ' 0 ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',1351+1),' ',1319-1351),
  ' 0 ',
  SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',1447+1),' ',1351-1447),
  ' 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',
  SUBSTRING_INDEX(data,' ',-1449+1447+1)
)
WHERE SUBSTRING_INDEX(data,' ',1448)=data;
alter table guild_bank_tab add column TabText varchar(100) NOT NULL default '' COLLATE utf8_general_ci after TabIcon;

-- 5711
DROP TABLE IF EXISTS `character_kill`;