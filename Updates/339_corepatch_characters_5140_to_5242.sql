-- 5159_characters_guild_bank_eventlog.sql
ALTER TABLE `guild_bank_eventlog` 
  ADD KEY `guildid_key` (`guildid`);

-- 5159_characters_guild_bank_item.sql
ALTER TABLE `guild_bank_item` 
  ADD COLUMN `item_entry` int(11) unsigned NOT NULL default '0',
  ADD KEY `item_guid_key` (`item_guid`),
  ADD KEY `guildid_key` (`guildid`);

UPDATE `guild_bank_item` ,`item_instance`
  SET `guild_bank_item`.`item_entry` = SUBSTRING_INDEX(SUBSTRING_INDEX(`item_instance`.`data`, ' ', 4), ' ', -1)
  WHERE `guild_bank_item`.`item_guid` = `item_instance`.`guid`;

-- 5159_characters_guild_bank_right.sql
ALTER TABLE `guild_bank_right` 
  ADD KEY `guildid_key` (`guildid`);

-- 5159_characters_guild_bank_tab.sql
ALTER TABLE `guild_bank_tab` 
  ADD KEY `guildid_key` (`guildid`);

-- 5159_characters_guild_memeber.sql
ALTER TABLE `guild_member` 
  ADD KEY `guildid_key` (`guildid`),
  ADD KEY `guildid_rank_key` (`guildid`,`rank`),
  ADD KEY `guid_key` (`guid`);

-- 5199_characters_guild_bank_eventlog.sql
DELETE FROM `guild_bank_eventlog` WHERE `LogGuid`=0;

-- 5217_characters_character.sql
ALTER TABLE `character` 
  ADD COLUMN `taxi_path` text;
