ALTER TABLE `character`
 MODIFY COLUMN `logout_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `is_logout_resting` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `character_kill`
 MODIFY COLUMN `guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `victim_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `count` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `character_ticket`
 MODIFY COLUMN `ticket_id` int(11) UNSIGNED NOT NULL DEFAULT NULL AUTO_INCREMENT;

ALTER TABLE `guild_member`
 MODIFY COLUMN `guid` int(11) UNSIGNED NOT NULL DEFAULT 0, ROW_FORMAT = FIXED;

ALTER TABLE `group`
 MODIFY COLUMN `leaderGuid` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `mainTank` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `mainAssistant` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `lootMethod` TINYINT(4) UNSIGNED NOT NULL,
 MODIFY COLUMN `looterGuid` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `lootThreshold` TINYINT(4) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon1` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon2` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon3` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon4` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon5` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon6` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `icon7` int(11) unsigned NOT NULL,
 MODIFY COLUMN `icon8` int(11) unsigned NOT NULL,
 MODIFY COLUMN `isRaid` tinyint(1) unsigned NOT NULL;

ALTER TABLE `group_member`
 MODIFY COLUMN `leaderGuid` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `memberGuid` int(11) UNSIGNED NOT NULL,
 MODIFY COLUMN `assistant` TINYINT(1) UNSIGNED NOT NULL,
 MODIFY COLUMN `subgroup` SMALLINT(6) UNSIGNED NOT NULL, ROW_FORMAT = FIXED;

ALTER TABLE `item_text`
 MODIFY COLUMN `id` int(11) UNSIGNED NOT NULL DEFAULT 0, ROW_FORMAT = FIXED;

ALTER TABLE `npc_gossip`
 MODIFY COLUMN `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `npc_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `gossip_type` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `textid` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `option_count` int(11) UNSIGNED DEFAULT NULL;

ALTER TABLE `npc_text`
 MODIFY COLUMN `ID` int(11) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `npc_trainer`
 MODIFY COLUMN `entry` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `spell` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `spellcost` int(11) UNSIGNED DEFAULT 0;

ALTER TABLE `page_text`
 MODIFY COLUMN `entry` int(11) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `pet_name_generation`
 MODIFY COLUMN `id` int(11) UNSIGNED NOT NULL DEFAULT NULL AUTO_INCREMENT,
 MODIFY COLUMN `entry` int(11) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `quest_template`
 MODIFY COLUMN `SuggestedPlayers` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `DetailsEmote1` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `DetailsEmote2` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `DetailsEmote3` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `DetailsEmote4` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `IncompleteEmote` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `CompleteEmote` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `OfferRewardEmote1` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `OfferRewardEmote2` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `OfferRewardEmote3` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `OfferRewardEmote4` int(11) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `CompleteScript` int(11) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `areatrigger_template`
 DROP COLUMN `trigger_map`,
 DROP COLUMN `trigger_position_x`,
 DROP COLUMN `trigger_position_y`,
 DROP COLUMN `trigger_position_z`;


DELETE FROM `areatrigger_template`
 WHERE `required_level` = 0 AND `required_item` = 0 
   AND `target_map` = 0 AND `target_position_x` = 0 AND `target_position_y` = 0 AND `target_position_z` = 0 AND `target_orientation` = 0;

ALTER TABLE `areatrigger_template` RENAME TO `areatrigger_teleport`;


DROP TABLE IF EXISTS `spell_teleport`;
CREATE TABLE `spell_teleport` (
  `id` int(11) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `target_map` int(11) unsigned NOT NULL default '0',
  `target_position_x` float NOT NULL default '0',
  `target_position_y` float NOT NULL default '0',
  `target_position_z` float NOT NULL default '0',
  `target_orientation` float NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';

INSERT INTO `spell_teleport` 
SELECT `id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation` 
FROM `areatrigger_teleport`;

DELETE FROM `spell_teleport` WHERE `target_position_x` = 0 AND `target_position_y` = 0 AND `target_position_z` = 0;
