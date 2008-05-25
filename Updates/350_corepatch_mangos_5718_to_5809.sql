-- 5714
DELETE FROM `command` WHERE `name` = "nearobjects";
INSERT INTO `command` VALUES
('nearobjects',3,'Syntax: .nearobjects [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.');
DELETE FROM mangos_string WHERE entry in (524,581);
INSERT INTO mangos_string VALUES
(524,'Selected object:\n|cffffffff|Hitemset:%d|h[%s]|h|r\nGUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(581,'Found near gameobjects (distance %f): %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5718
DELETE FROM `command` WHERE `name` = 'modify rep';
DELETE FROM `command` WHERE `name` = 'modify arena';
DELETE FROM `command` WHERE `name` = 'lookup faction';
INSERT INTO `command` VALUES
('modify rep',2,'Syntax: .modify rep #repId (#repvalue | $rankname [#delta])\r\nSets the selected player\s reputation with faction #repId to #repvalue or to $reprank.\r\nIf the reputation rank name is provided, the resulting reputation will be the lowest reputation for that rank plus the delta amount, if specified.\r\nYou can use \'.pinfo rep\' to list all known reputation ids, or use \'.lookup faction $name\' to locate a specific faction id.'),
('modify arena',3,'Syntax: .modify arena #value\r\nSets the arena points to the #value (0-999999).'),
('lookup faction','3','Syntax: .lookup faction $name\r\nAttempts to find the ID of the faction with the provided $name.');
ALTER TABLE `creature_template` CHANGE COLUMN `scale` `scale` float NOT NULL default '1'; 
DELETE FROM `mangos_string` WHERE `entry` IN (305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327);
INSERT INTO `mangos_string` VALUES
(305, 'Faction %s (%u) reputation of %s was set to %5d!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(306, 'The arena points of %s was set to %u!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(307, 'No faction found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(308, 'Faction %i unknown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(309, 'Invalid parameter %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(310, 'delta must be between 0 and %d (inclusive)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(311, '%d - |cffffffff|Hfaction:%d|h[%s]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(312, ' [visible]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(313, ' [at war]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(314, ' [own team]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(315, ' [unknown]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(316, ' [invisible]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(317, ' [inactive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(318, 'Hated',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(319, 'Hostile',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(320, 'Unfriendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(321, 'Neutral',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(322, 'Friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(323, 'Honored',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(324, 'Revered',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(325, 'Exalted',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(326, 'Faction %s (%u) can\'not have reputation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(327, ' [no reputation]',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5720
DELETE FROM mangos_string WHERE entry in (206);
INSERT INTO mangos_string VALUES
(206,'Item \'%i\' \'%s\' added to list with maxcount \'%i\' and incrtime \'%i\' and extendedcost \'%i\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `command` WHERE `name` = 'addvendoritem';
INSERT INTO `command` VALUES
('addvendoritem',2,'Syntax: .addvendoritem #itemId <#maxcount><#incrtime><#extendedcost>r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring and items ExtendedCost.');

-- 5721
DELETE FROM `spell_affect` WHERE `entry` IN (16188);
INSERT INTO `spell_affect` VALUES
 (16188,0,0,0x00000000000009C3,0);
DELETE FROM `spell_affect` WHERE `entry` IN (43743);
INSERT INTO `spell_affect` VALUES
 (43743,1,0,0x0000000000000400,0);
DELETE FROM `spell_affect` WHERE `entry` IN (13733,13865,13866);
INSERT INTO `spell_affect` VALUES
 (13733,0,0,0x0000000000000004,0),
 (13733,1,0,0x0000000400000000,0),
 (13865,0,0,0x0000000000000004,0),
 (13865,1,0,0x0000000400000000,0),
 (13866,0,0,0x0000000000000004,0),
 (13866,1,0,0x0000000400000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (46834);
INSERT INTO `spell_affect` VALUES
 (46834,0,0,0x0000000000000040,0);
DELETE FROM `spell_affect` WHERE `entry` IN (46833);
INSERT INTO `spell_affect` VALUES
 (46833,0,0,0x0000000000000004,0);

-- 5733
ALTER TABLE `creature` 
  DROP `spawn_position_x`, 
  DROP `spawn_position_y`, 
  DROP `spawn_position_z`,
  DROP `spawn_orientation`;

-- 5739
ALTER TABLE `creature` ADD COLUMN `spawnMask` tinyint(3) unsigned NOT NULL default '1' AFTER `map`;
ALTER TABLE `gameobject` ADD COLUMN `spawnMask` tinyint(3) unsigned NOT NULL default '1' AFTER `map`;

-- 5746
ALTER TABLE `quest_template` ADD COLUMN `CharTitleId` tinyint(3) unsigned NOT NULL default '0' AFTER `SpecialFlags`;
ALTER TABLE `quest_template` ADD COLUMN `RewSpellCast` mediumint(8) unsigned NOT NULL default '0' AFTER `RewSpell`;

-- 5753
ALTER TABLE `areatrigger_teleport`
  ADD COLUMN `required_item2` mediumint(8) unsigned NOT NULL default '0' AFTER `required_item`,
  ADD COLUMN `heroic_key` mediumint(8) unsigned NOT NULL default '0' AFTER `required_item2`,
  ADD COLUMN `heroic_key2` mediumint(8) unsigned NOT NULL default '0' AFTER `heroic_key`,
  ADD COLUMN `required_quest_done` int(11) unsigned NOT NULL default '0' AFTER `heroic_key2`,
  ADD COLUMN `required_failed_text` text AFTER `required_quest_done`;
  
-- 5758
ALTER TABLE `creature_addon` ADD `moveflags` int(10) unsigned NOT NULL default '0' AFTER `emote`;
ALTER TABLE `creature_template_addon` ADD `moveflags` int(10) unsigned NOT NULL default '0' AFTER `emote`;

-- 5759
DELETE FROM `command` WHERE `name` IN ('gograveyard','drunk');
INSERT INTO `command` VALUES 
('drunk',1,'Syntax: .drunk #value\r\n Set drunk level to #value (0..100). Value 0 remove drunk state, 100 is max drunked state.'),
('gograveyard',2,'Syntax: .gograveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.'); 

-- 5764
DELETE FROM `command` WHERE `name` IN ('modify arena','modify honor');
INSERT INTO `command` VALUES 
('modify arena',3,'Syntax: .modify arena #value\r\nAdd $amount arena points to the selected player.'),
('modify honor',1,'Syntax: .modify honor $amount\r\n\r\nAdd $amount honor points to the selected player.');

-- 5771
ALTER TABLE spell_learn_spell
  DROP IfNoSpell;
DELETE FROM spell_learn_spell WHERE entry IN (34769,13819,5784);
INSERT INTO spell_learn_spell (entry,spellID) VALUES
 (34769,33388),
 (13819,33388), 
 (5784,33388); 

-- 5772
DELETE FROM `command` WHERE `name` = 'addgo';
DELETE FROM `command` WHERE `name` = 'addquest';
DELETE FROM `command` WHERE `name` = 'addspw';
DELETE FROM `command` WHERE `name` = 'addtele';
DELETE FROM `command` WHERE `name` = 'addvendoritem';
DELETE FROM `command` WHERE `name` = 'addweapon';
DELETE FROM `command` WHERE `name` = 'allowmove';
DELETE FROM `command` WHERE `name` = 'anim';
DELETE FROM `command` WHERE `name` = 'money';
DELETE FROM `command` WHERE `name` = 'morph';
DELETE FROM `command` WHERE `name` = 'movecreature';
DELETE FROM `command` WHERE `name` = 'moveobject';
DELETE FROM `command` WHERE `name` = 'name';
DELETE FROM `command` WHERE `name` = 'nametele';
DELETE FROM `command` WHERE `name` = 'nearobjects';
DELETE FROM `command` WHERE `name` = 'npcflag';
DELETE FROM `command` WHERE `name` = 'npcinfo';
DELETE FROM `command` WHERE `name` = 'npcinfoset';
DELETE FROM `command` WHERE `name` = 'npcwhisper';
DELETE FROM `command` WHERE `name` = 'castback';
DELETE FROM `command` WHERE `name` = 'casttarget';
DELETE FROM `command` WHERE `name` = 'changelevel';
DELETE FROM `command` WHERE `name` = 'delete';
DELETE FROM `command` WHERE `name` = 'delobject';
DELETE FROM `command` WHERE `name` = 'deltele';
DELETE FROM `command` WHERE `name` = 'delvendoritem';
DELETE FROM `command` WHERE `name` = 'drunk';
DELETE FROM `command` WHERE `name` = 'factionid';
DELETE FROM `command` WHERE `name` = 'getvalue';
DELETE FROM `command` WHERE `name` = 'gocreature';
DELETE FROM `command` WHERE `name` = 'gograveyard';
DELETE FROM `command` WHERE `name` = 'gogrid';
DELETE FROM `command` WHERE `name` = 'goobject';
DELETE FROM `command` WHERE `name` = 'gotrigger';
DELETE FROM `command` WHERE `name` = 'goxy';
DELETE FROM `command` WHERE `name` = 'goxyz';
DELETE FROM `command` WHERE `name` = 'gozonexy';
DELETE FROM `command` WHERE `name` = 'grouptele';
DELETE FROM `command` WHERE `name` = 'listcreature';
DELETE FROM `command` WHERE `name` = 'listgm';
DELETE FROM `command` WHERE `name` = 'listitem';
DELETE FROM `command` WHERE `name` = 'listobject';
DELETE FROM `command` WHERE `name` = 'playemote';
DELETE FROM `command` WHERE `name` = 'playsound';
DELETE FROM `command` WHERE `name` = 'removequest';
DELETE FROM `command` WHERE `name` = 'resetall';
DELETE FROM `command` WHERE `name` = 'setmodel';
DELETE FROM `command` WHERE `name` = 'setmovetype';
DELETE FROM `command` WHERE `name` = 'setvalue';
DELETE FROM `command` WHERE `name` = 'spawndist';
DELETE FROM `command` WHERE `name` = 'spawntime';
DELETE FROM `command` WHERE `name` = 'speed';
DELETE FROM `command` WHERE `name` = 'standstate';
DELETE FROM `command` WHERE `name` = 'subname';
DELETE FROM `command` WHERE `name` = 'targetobject';
DELETE FROM `command` WHERE `name` = 'textemote';
DELETE FROM `command` WHERE `name` = 'titles';
DELETE FROM `command` WHERE `name` = 'turnobject';
DELETE FROM `command` WHERE `name` = 'update';
DELETE FROM `command` WHERE `name` = 'visible';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('cast back',3,'Syntax: .cast back #spellid\r\n  Selected target will cast #spellid to your character.'),
('cast target',3,'Syntax: .cast target #spellid\r\n  Selected target will cast #spellid to his victim.'),
('debug anim',2,'Syntax: .debug anim #emoteid\r\n\r\nPlay emote #emoteid for your character.'),
('debug getvalue',3,'Syntax: .debug getvalue #field #isInt\r\n\r\nGet the field #field of the selected creature. If no creature is selected, get the content of your field.\r\n\r\nUse a #isInt of value 1 if the expected field content is an integer.'),
('debug playsound',1,'Syntax: .debug playsound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...'),
('debug setvalue',3,'Syntax: .debug setvalue #field #value #isInt\r\n\r\nSet the field #field of the selected creature with value #value. If no creature is selected, set the content of your field.\r\n\r\nUse a #isInt of value 1 if #value is an integer.'),
('debug standstate',2,'Syntax: .debug standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.'),
('debug update',3,'Syntax: .debug update #field #value\r\n\r\nUpdate the field #field of the selected character or creature with value #value.\r\n\r\nIf no #value is provided, display the content of field #field.'),
('gm list',0,'Syntax: .gm list\r\n\r\nDisplay a list of available Game Masters.'),
('gm visible',1,'Syntax: .gm visible on/off\r\n\r\nOutput current visibility state or make GM visible(on) and invisible(off) for other players.'),
('go creature',2,'Syntax: .go creature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.'),
('go graveyard',2,'Syntax: .go graveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.'),
('go grid',1,'Syntax: .go grid #gridX #gridY [#mapId]\r\n\r\nTeleport the gm to center of grid with provided indexes at map #mapId (or current map if it not provided).'),
('go object',1,'Syntax: .go object #object_guid\r\nTeleport your character to gameobject with guid #object_guid'),
('go trigger',2,'Syntax: .go trigger #trigger_id\r\n\r\nTeleport your character to areatrigger with id #trigger_id. Character will be teleported to trigger target if selected areatrigger is telporting trigger.'),
('go xy',1,'Syntax: .go xy #x #y [#mapid]\r\n\r\nTeleport player to point with (#x,#y) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),
('go xyz',1,'Syntax: .go xyz #x #y #z [#mapid]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),
('go zonexy',1,'Syntax: .go zonexy #x #y [#zone]\r\n\r\nTeleport player to point with (#x,#y) client coordinates at ground(water) level in zone #zoneid or current zone if #zoneid not provided. You can look up zone using .lookup area $namepart'),
('gobject add',2,'Syntax: .gobject add #id <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nspawntimesecs sets the spawntime, it is optional.\r\n\r\nNote: this is a copy of .gameobject.'),
('gobject delete',2,'Syntax: .gobject delete #go_guid\r\nDelete gameobject with guid #go_guid.'),
('gobject move',2,'Syntax: .gobject move #goguid [#x #y #z]\r\n\r\nMove gameobject #goguid to character coordinates (or to (#x,#y,#z) coordinates if its provide).'),
('gobject near ',3,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),
('gobject turn',2,'Syntax: .gobject turn #goguid \r\n\r\nSet for gameobject #goguid orientation same as current character orientation.'),
('list creature',3,'Syntax: .list creature #creature_id [#max_count]\r\n\r\nOutput creatures with creature id #creature_id found in world. Output creature guids and coordinates sorted by distance from character. Will be output maximum #max_count creatures. If #max_count not provided use 10 as default value.'),
('list item',3,'Syntax: .list item #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails and auctions. Output item guids, item owner guid, owner account and owner name. Will be output maximum #max_count items. If #max_count not provided use 10 as default value.'),
('list object',3,'Syntax: .list object #gameobject_id [#max_count]\r\n\r\nOutput gameobjects with gameobject id #gameobject_id found in world. Output gameobject guids and coordinates sorted by distance from character. Will be output maximum #max_count gameobject. If #max_count not provided use 10 as default value.'),
('modify drunk',1,'Syntax: .modify drunk #value\r\n Set drunk level to #value (0..100). Value 0 remove drunk state, 100 is max drunked state.'),
('modify morph',2,'Syntax: .modify morph #displayid\r\n\r\nChange your current model id to #displayid.'),
('npc add',2,'Syntax: .npc add #creatureid\r\n\r\nSpawn a creature by the given template id of #creatureid.'),
('npc additem',2,'Syntax: .npc additem #itemId <#maxcount><#incrtime><#extendedcost>r\r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring and items ExtendedCost.'),
('npc addweapon',3,'Not yet implemented.'),
('npc allowmove',3,'Syntax: .npc allowmove\r\n\r\nEnable or disable movement for the selected creature.'),
('npc changelevel',2,'Syntax: .npc changelevel #level\r\n\r\nChange the level of the selected creature to #level.\r\n\r\n#level may range from 1 to 63.'),
('npc delete',2,'Syntax: .npc delete\r\n\r\nDelete the selected creature from the world.'),
('npc delitem',2,'Syntax: .npc delitem #itemId\r\n\r\nRemove item #itemid from item list of selected vendor.'),
('npc factionid',2,'Syntax: .npc factionid #factionid\r\n\r\nSet the faction of the selected creature to #factionid.'),
('npc flag',2,'Syntax: .npc flag #npcflag\r\n\r\nSet the NPC flags of creature template of the selected creature and selected creature to #npcflag. NPC flags will applied to all creatures of selected creature template after server restart or grid unload/load.'),
('npc info',3,'Syntax: .npc info\r\n\r\nDisplay a list of details for the selected creature.\r\n\r\nThe list includes:\r\n- GUID, Faction, NPC flags, Entry ID, Model ID,\r\n- Level,\r\n- Health (current/maximum),\r\n\r\n- Field flags, dynamic flags, faction template, \r\n- Position information,\r\n- and the creature type, e.g. if the creature is a vendor.'),
('npc move',2,'Syntax: .npc move [#creature_guid]\r\n\r\nMove the targeted creature spawn point to your coordinates.'),
('npc name',2,'Syntax: .npc name $name\r\n\r\nChange the name of the selected creature or character to $name.\r\n\r\nCommand disabled.'),
('npc playemote',3,'Syntax: .npc playemote #emoteid\r\n\r\nMake the selected creature emote with an emote of id #emoteid.'),
('npc setmodel',2,'Syntax: .npc setmodel #displayid\r\n\r\nChange the model id of the selected creature to #displayid.'),
('npc setmovetype',2,'Syntax: .npc setmovetype [#creature_guid] stay/random/way [NODEL]\r\n\r\nSet for creature pointed by #creature_guid (or selected if #creature_guid not provided) movement type and move it to respawn position (if creature alive). Any existing waypoints for creature will be removed from the database if you do not use NODEL. If the creature is dead then movement type will applied at creature respawn.\r\nMake sure you use NODEL, if you want to keep the waypoints.'),
('npc spawndist',2,'Syntax: .npc spawndist #dist\r\n\r\nAdjust spawndistance of selected creature to dist.'),
('npc spawntime',2,'Syntax: .npc spawntime #time \r\n\r\nAdjust spawntime of selected creature to time.'),
('npc subname',2,'Syntax: .npc subname $Name\r\n\r\nChange the subname of the selected creature or player to $Name.\r\n\r\nCommand disabled.'),
('npc textemote',3,'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.'),
('npc whisper',1,'Syntax: .npc whisper #playerguid #text\r\nMake the selected npc whisper #text to  #playerguid.'),
('quest add',3,'Syntax: .quest add #quest_id\r\n\r\nAdd to character quest log quest #quest_id. Quest started from item can\'t be added by this command but correct .additem call provided in command output.'),
('quest remove',3,'Syntax: .quest remove #quest_id\r\n\r\nSet quest #quest_id state to not completed and not active (and remove from active quest list) for selected player.'),
('reset all',3,'Syntax: .reset all spells\r\n\r\nSyntax: .reset all talents\r\n\r\nRequest reset spells or talents at next login each existed character.'),
('targetobject',2,'Syntax: .gobject target[#go_id|#go_name_part]\r\n\r\nLocate and show position nearest gameobject. If #go_id or #go_name_part provide then locate and show position of nearest gameobject with gameobject template id #go_id or name included #go_name_part as part.'),
('tele add',3,'Syntax: .tele add $name\r\n\r\nAdd current your position to .tele command target locations list with name $name.'),
('tele del',3,'Syntax: .tele del $name\r\n\r\nRemove location with name $name for .tele command locations list.'),
('tele group',1,'Syntax: .tele group#location\r\n\r\nTeleport a selected player and his group members to a given location.'),
('tele name',1,'Syntax: .tele name #playername #location\r\n\r\nTeleport a player to a given location.');

-- 5773
DELETE FROM `spell_affect` WHERE `entry` IN (20216);
INSERT INTO `spell_affect` VALUES
 (20216,0,0,0x0001000000006000,0);
DELETE FROM spell_learn_spell WHERE entry IN (23161,23214,34767);
INSERT INTO spell_learn_spell (entry,spellID) VALUES
(23161,33391),
(23214,33391),
(34767,33391); 

-- 5774
DELETE FROM `command` WHERE `name` = 'targetobject';
DELETE FROM `command` WHERE `name` = 'gobject target';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('gobject target',2,'Syntax: .gobject target [#go_id|#go_name_part]\r\n\r\nLocate and show position nearest gameobject. If #go_id or #go_name_part provide then locate and show position of nearest gameobject with gameobject template id #go_id or name included #go_name_part as part.');
DELETE FROM `mangos_string` WHERE `entry` IN (582);
INSERT INTO `mangos_string` VALUES
(582, 'SpawnTime: Full:%s Remain:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5777
DELETE FROM `command` WHERE `name` IN ('honor','modify');

-- 5778
ALTER TABLE `spell_affect` 
   DROP `SpellFamily`, 
   DROP `Charges`;

-- 5779
ALTER TABLE `quest_template` ADD COLUMN `ClassOrSkill` smallint(6) NOT NULL default '0' AFTER `ZoneOrSort`;
UPDATE `quest_template` SET `ClassOrSkill`=182 WHERE `ZoneOrSort`=-24;
UPDATE `quest_template` SET `ClassOrSkill`=356 WHERE `ZoneOrSort`=-101;
UPDATE `quest_template` SET `ClassOrSkill`=164 WHERE `ZoneOrSort`=-121;
UPDATE `quest_template` SET `ClassOrSkill`=171 WHERE `ZoneOrSort`=-181;
UPDATE `quest_template` SET `ClassOrSkill`=165 WHERE `ZoneOrSort`=-182;
UPDATE `quest_template` SET `ClassOrSkill`=202 WHERE `ZoneOrSort`=-201;
UPDATE `quest_template` SET `ClassOrSkill`=197 WHERE `ZoneOrSort`=-264;
UPDATE `quest_template` SET `ClassOrSkill`=185 WHERE `ZoneOrSort`=-304;
UPDATE `quest_template` SET `ClassOrSkill`=129 WHERE `ZoneOrSort`=-324;
UPDATE `quest_template` SET `ClassOrSkill`=-9 WHERE `ZoneOrSort`=-61;
UPDATE `quest_template` SET `ClassOrSkill`=-1 WHERE `ZoneOrSort`=-81;
UPDATE `quest_template` SET `ClassOrSkill`=-7 WHERE `ZoneOrSort`=-82;
UPDATE `quest_template` SET `ClassOrSkill`=-2 WHERE `ZoneOrSort`=-141;
UPDATE `quest_template` SET `ClassOrSkill`=-8 WHERE `ZoneOrSort`=-161;
UPDATE `quest_template` SET `ClassOrSkill`=-4 WHERE `ZoneOrSort`=-162;
UPDATE `quest_template` SET `ClassOrSkill`=-3 WHERE `ZoneOrSort`=-261;
UPDATE `quest_template` SET `ClassOrSkill`=-5 WHERE `ZoneOrSort`=-262;
UPDATE `quest_template` SET `ClassOrSkill`=-11 WHERE `ZoneOrSort`=-263;

-- 5784
/*UPDATE `player_levelstats` SET `basehp` =  32, `basemana` = 100 WHERE `class` = 8 AND `level`=1;
UPDATE `player_levelstats` SET `basehp` =  47, `basemana` = 110 WHERE `class` = 8 AND `level`=2;
UPDATE `player_levelstats` SET `basehp` =  52, `basemana` = 106 WHERE `class` = 8 AND `level`=3;
UPDATE `player_levelstats` SET `basehp` =  67, `basemana` = 118 WHERE `class` = 8 AND `level`=4;
UPDATE `player_levelstats` SET `basehp` =  82, `basemana` = 131 WHERE `class` = 8 AND `level`=5;
UPDATE `player_levelstats` SET `basehp` =  97, `basemana` = 130 WHERE `class` = 8 AND `level`=6;
UPDATE `player_levelstats` SET `basehp` = 102, `basemana` = 145 WHERE `class` = 8 AND `level`=7;
UPDATE `player_levelstats` SET `basehp` = 117, `basemana` = 146 WHERE `class` = 8 AND `level`=8;
UPDATE `player_levelstats` SET `basehp` = 132, `basemana` = 163 WHERE `class` = 8 AND `level`=9;
UPDATE `player_levelstats` SET `basehp` = 137, `basemana` = 196 WHERE `class` = 8 AND `level`=10;
UPDATE `player_levelstats` SET `basehp` = 152, `basemana` = 215 WHERE `class` = 8 AND `level`=11;
UPDATE `player_levelstats` SET `basehp` = 167, `basemana` = 220 WHERE `class` = 8 AND `level`=12;
UPDATE `player_levelstats` SET `basehp` = 172, `basemana` = 241 WHERE `class` = 8 AND `level`=13;
UPDATE `player_levelstats` SET `basehp` = 187, `basemana` = 263 WHERE `class` = 8 AND `level`=14;
UPDATE `player_levelstats` SET `basehp` = 202, `basemana` = 271 WHERE `class` = 8 AND `level`=15;
UPDATE `player_levelstats` SET `basehp` = 207, `basemana` = 295 WHERE `class` = 8 AND `level`=16;
UPDATE `player_levelstats` SET `basehp` = 222, `basemana` = 305 WHERE `class` = 8 AND `level`=17;
UPDATE `player_levelstats` SET `basehp` = 237, `basemana` = 331 WHERE `class` = 8 AND `level`=18;
UPDATE `player_levelstats` SET `basehp` = 242, `basemana` = 343 WHERE `class` = 8 AND `level`=19;
UPDATE `player_levelstats` SET `basehp` = 257, `basemana` = 371 WHERE `class` = 8 AND `level`=20;
UPDATE `player_levelstats` SET `basehp` = 272, `basemana` = 385 WHERE `class` = 8 AND `level`=21;
UPDATE `player_levelstats` SET `basehp` = 277, `basemana` = 415 WHERE `class` = 8 AND `level`=22;
UPDATE `player_levelstats` SET `basehp` = 292, `basemana` = 431 WHERE `class` = 8 AND `level`=23;
UPDATE `player_levelstats` SET `basehp` = 298, `basemana` = 463 WHERE `class` = 8 AND `level`=24;
UPDATE `player_levelstats` SET `basehp` = 315, `basemana` = 481 WHERE `class` = 8 AND `level`=25;
UPDATE `player_levelstats` SET `basehp` = 333, `basemana` = 515 WHERE `class` = 8 AND `level`=26;
UPDATE `player_levelstats` SET `basehp` = 342, `basemana` = 535 WHERE `class` = 8 AND `level`=27;
UPDATE `player_levelstats` SET `basehp` = 362, `basemana` = 556 WHERE `class` = 8 AND `level`=28;
UPDATE `player_levelstats` SET `basehp` = 373, `basemana` = 592 WHERE `class` = 8 AND `level`=29;
UPDATE `player_levelstats` SET `basehp` = 395, `basemana` = 613 WHERE `class` = 8 AND `level`=30;
UPDATE `player_levelstats` SET `basehp` = 418, `basemana` = 634 WHERE `class` = 8 AND `level`=31;
UPDATE `player_levelstats` SET `basehp` = 432, `basemana` = 670 WHERE `class` = 8 AND `level`=32;
UPDATE `player_levelstats` SET `basehp` = 457, `basemana` = 691 WHERE `class` = 8 AND `level`=33;
UPDATE `player_levelstats` SET `basehp` = 473, `basemana` = 712 WHERE `class` = 8 AND `level`=34;
UPDATE `player_levelstats` SET `basehp` = 500, `basemana` = 733 WHERE `class` = 8 AND `level`=35;
UPDATE `player_levelstats` SET `basehp` = 518, `basemana` = 754 WHERE `class` = 8 AND `level`=36;
UPDATE `player_levelstats` SET `basehp` = 547, `basemana` = 790 WHERE `class` = 8 AND `level`=37;
UPDATE `player_levelstats` SET `basehp` = 577, `basemana` = 811 WHERE `class` = 8 AND `level`=38;
UPDATE `player_levelstats` SET `basehp` = 598, `basemana` = 832 WHERE `class` = 8 AND `level`=39;
UPDATE `player_levelstats` SET `basehp` = 630, `basemana` = 853 WHERE `class` = 8 AND `level`=40;
UPDATE `player_levelstats` SET `basehp` = 653, `basemana` = 874 WHERE `class` = 8 AND `level`=41;
UPDATE `player_levelstats` SET `basehp` = 687, `basemana` = 895 WHERE `class` = 8 AND `level`=42;
UPDATE `player_levelstats` SET `basehp` = 712, `basemana` = 916 WHERE `class` = 8 AND `level`=43;
UPDATE `player_levelstats` SET `basehp` = 748, `basemana` = 937 WHERE `class` = 8 AND `level`=44;
UPDATE `player_levelstats` SET `basehp` = 775, `basemana` = 958 WHERE `class` = 8 AND `level`=45;
UPDATE `player_levelstats` SET `basehp` = 813, `basemana` = 979 WHERE `class` = 8 AND `level`=46;
UPDATE `player_levelstats` SET `basehp` = 842, `basemana` =1000 WHERE `class` = 8 AND `level`=47;
UPDATE `player_levelstats` SET `basehp` = 882, `basemana` =1021 WHERE `class` = 8 AND `level`=48;
UPDATE `player_levelstats` SET `basehp` = 913, `basemana` =1042 WHERE `class` = 8 AND `level`=49;
UPDATE `player_levelstats` SET `basehp` = 955, `basemana` =1048 WHERE `class` = 8 AND `level`=50;
UPDATE `player_levelstats` SET `basehp` = 988, `basemana` =1069 WHERE `class` = 8 AND `level`=51;
UPDATE `player_levelstats` SET `basehp` =1032, `basemana` =1090 WHERE `class` = 8 AND `level`=52;
UPDATE `player_levelstats` SET `basehp` =1067, `basemana` =1111 WHERE `class` = 8 AND `level`=53;
UPDATE `player_levelstats` SET `basehp` =1103, `basemana` =1117 WHERE `class` = 8 AND `level`=54;
UPDATE `player_levelstats` SET `basehp` =1150, `basemana` =1138 WHERE `class` = 8 AND `level`=55;
UPDATE `player_levelstats` SET `basehp` =1188, `basemana` =1159 WHERE `class` = 8 AND `level`=56;
UPDATE `player_levelstats` SET `basehp` =1237, `basemana` =1165 WHERE `class` = 8 AND `level`=57;
UPDATE `player_levelstats` SET `basehp` =1277, `basemana` =1186 WHERE `class` = 8 AND `level`=58;
UPDATE `player_levelstats` SET `basehp` =1328, `basemana` =1192 WHERE `class` = 8 AND `level`=59;
UPDATE `player_levelstats` SET `basehp` =1370, `basemana` =1213 WHERE `class` = 8 AND `level`=60;
UPDATE `player_levelstats` SET `basehp` =1526, `basemana` =1316 WHERE `class` = 8 AND `level`=61;
UPDATE `player_levelstats` SET `basehp` =1702, `basemana` =1419 WHERE `class` = 8 AND `level`=62;
UPDATE `player_levelstats` SET `basehp` =1875, `basemana` =1521 WHERE `class` = 8 AND `level`=63;
UPDATE `player_levelstats` SET `basehp` =2070, `basemana` =1624 WHERE `class` = 8 AND `level`=64;
UPDATE `player_levelstats` SET `basehp` =2261, `basemana` =1727 WHERE `class` = 8 AND `level`=65;
UPDATE `player_levelstats` SET `basehp` =2461, `basemana` =1830 WHERE `class` = 8 AND `level`=66;
UPDATE `player_levelstats` SET `basehp` =2686, `basemana` =1932 WHERE `class` = 8 AND `level`=67;
UPDATE `player_levelstats` SET `basehp` =2906, `basemana` =2035 WHERE `class` = 8 AND `level`=68;
UPDATE `player_levelstats` SET `basehp` =3136, `basemana` =2138 WHERE `class` = 8 AND `level`=69;
UPDATE `player_levelstats` SET `basehp` =3393, `basemana` =2241 WHERE `class` = 8 AND `level`=70;*/

-- 5787
/*UPDATE `player_levelstats` SET `basehp` =  25 WHERE `class` = 4 AND `level`=1;
UPDATE `player_levelstats` SET `basehp` =  32 WHERE `class` = 4 AND `level`=2;
UPDATE `player_levelstats` SET `basehp` =  49 WHERE `class` = 4 AND `level`=3;
UPDATE `player_levelstats` SET `basehp` =  56 WHERE `class` = 4 AND `level`=4;
UPDATE `player_levelstats` SET `basehp` =  63 WHERE `class` = 4 AND `level`=5;
UPDATE `player_levelstats` SET `basehp` =  70 WHERE `class` = 4 AND `level`=6;
UPDATE `player_levelstats` SET `basehp` =  87 WHERE `class` = 4 AND `level`=7;
UPDATE `player_levelstats` SET `basehp` =  94 WHERE `class` = 4 AND `level`=8;
UPDATE `player_levelstats` SET `basehp` = 101 WHERE `class` = 4 AND `level`=9;
UPDATE `player_levelstats` SET `basehp` = 118 WHERE `class` = 4 AND `level`=10;
UPDATE `player_levelstats` SET `basehp` = 125 WHERE `class` = 4 AND `level`=11;
UPDATE `player_levelstats` SET `basehp` = 142 WHERE `class` = 4 AND `level`=12;
UPDATE `player_levelstats` SET `basehp` = 149 WHERE `class` = 4 AND `level`=13;
UPDATE `player_levelstats` SET `basehp` = 156 WHERE `class` = 4 AND `level`=14;
UPDATE `player_levelstats` SET `basehp` = 173 WHERE `class` = 4 AND `level`=15;
UPDATE `player_levelstats` SET `basehp` = 181 WHERE `class` = 4 AND `level`=16;
UPDATE `player_levelstats` SET `basehp` = 190 WHERE `class` = 4 AND `level`=17;
UPDATE `player_levelstats` SET `basehp` = 200 WHERE `class` = 4 AND `level`=18;
UPDATE `player_levelstats` SET `basehp` = 221 WHERE `class` = 4 AND `level`=19;
UPDATE `player_levelstats` SET `basehp` = 233 WHERE `class` = 4 AND `level`=20;
UPDATE `player_levelstats` SET `basehp` = 246 WHERE `class` = 4 AND `level`=21;
UPDATE `player_levelstats` SET `basehp` = 260 WHERE `class` = 4 AND `level`=22;
UPDATE `player_levelstats` SET `basehp` = 275 WHERE `class` = 4 AND `level`=23;
UPDATE `player_levelstats` SET `basehp` = 301 WHERE `class` = 4 AND `level`=24;
UPDATE `player_levelstats` SET `basehp` = 318 WHERE `class` = 4 AND `level`=25;
UPDATE `player_levelstats` SET `basehp` = 336 WHERE `class` = 4 AND `level`=26;
UPDATE `player_levelstats` SET `basehp` = 355 WHERE `class` = 4 AND `level`=27;
UPDATE `player_levelstats` SET `basehp` = 375 WHERE `class` = 4 AND `level`=28;
UPDATE `player_levelstats` SET `basehp` = 396 WHERE `class` = 4 AND `level`=29;
UPDATE `player_levelstats` SET `basehp` = 428 WHERE `class` = 4 AND `level`=30;
UPDATE `player_levelstats` SET `basehp` = 451 WHERE `class` = 4 AND `level`=31;
UPDATE `player_levelstats` SET `basehp` = 475 WHERE `class` = 4 AND `level`=32;
UPDATE `player_levelstats` SET `basehp` = 500 WHERE `class` = 4 AND `level`=33;
UPDATE `player_levelstats` SET `basehp` = 526 WHERE `class` = 4 AND `level`=34;
UPDATE `player_levelstats` SET `basehp` = 553 WHERE `class` = 4 AND `level`=35;
UPDATE `player_levelstats` SET `basehp` = 581 WHERE `class` = 4 AND `level`=36;
UPDATE `player_levelstats` SET `basehp` = 610 WHERE `class` = 4 AND `level`=37;
UPDATE `player_levelstats` SET `basehp` = 640 WHERE `class` = 4 AND `level`=38;
UPDATE `player_levelstats` SET `basehp` = 671 WHERE `class` = 4 AND `level`=39;
UPDATE `player_levelstats` SET `basehp` = 703 WHERE `class` = 4 AND `level`=40;
UPDATE `player_levelstats` SET `basehp` = 736 WHERE `class` = 4 AND `level`=41;
UPDATE `player_levelstats` SET `basehp` = 770 WHERE `class` = 4 AND `level`=42;
UPDATE `player_levelstats` SET `basehp` = 805 WHERE `class` = 4 AND `level`=43;
UPDATE `player_levelstats` SET `basehp` = 841 WHERE `class` = 4 AND `level`=44;
UPDATE `player_levelstats` SET `basehp` = 878 WHERE `class` = 4 AND `level`=45;
UPDATE `player_levelstats` SET `basehp` = 916 WHERE `class` = 4 AND `level`=46;
UPDATE `player_levelstats` SET `basehp` = 955 WHERE `class` = 4 AND `level`=47;
UPDATE `player_levelstats` SET `basehp` = 995 WHERE `class` = 4 AND `level`=48;
UPDATE `player_levelstats` SET `basehp` =1026 WHERE `class` = 4 AND `level`=49;
UPDATE `player_levelstats` SET `basehp` =1068 WHERE `class` = 4 AND `level`=50;
UPDATE `player_levelstats` SET `basehp` =1111 WHERE `class` = 4 AND `level`=51;
UPDATE `player_levelstats` SET `basehp` =1155 WHERE `class` = 4 AND `level`=52;
UPDATE `player_levelstats` SET `basehp` =1200 WHERE `class` = 4 AND `level`=53;
UPDATE `player_levelstats` SET `basehp` =1246 WHERE `class` = 4 AND `level`=54;
UPDATE `player_levelstats` SET `basehp` =1283 WHERE `class` = 4 AND `level`=55;
UPDATE `player_levelstats` SET `basehp` =1331 WHERE `class` = 4 AND `level`=56;
UPDATE `player_levelstats` SET `basehp` =1380 WHERE `class` = 4 AND `level`=57;
UPDATE `player_levelstats` SET `basehp` =1430 WHERE `class` = 4 AND `level`=58;
UPDATE `player_levelstats` SET `basehp` =1471 WHERE `class` = 4 AND `level`=59;
UPDATE `player_levelstats` SET `basehp` =1523 WHERE `class` = 4 AND `level`=60;
UPDATE `player_levelstats` SET `basehp` =1702 WHERE `class` = 4 AND `level`=61;
UPDATE `player_levelstats` SET `basehp` =1879 WHERE `class` = 4 AND `level`=62;
UPDATE `player_levelstats` SET `basehp` =2077 WHERE `class` = 4 AND `level`=63;
UPDATE `player_levelstats` SET `basehp` =2285 WHERE `class` = 4 AND `level`=64;
UPDATE `player_levelstats` SET `basehp` =2489 WHERE `class` = 4 AND `level`=65;
UPDATE `player_levelstats` SET `basehp` =2717 WHERE `class` = 4 AND `level`=66;
UPDATE `player_levelstats` SET `basehp` =2941 WHERE `class` = 4 AND `level`=67;
UPDATE `player_levelstats` SET `basehp` =3190 WHERE `class` = 4 AND `level`=68;
UPDATE `player_levelstats` SET `basehp` =3450 WHERE `class` = 4 AND `level`=69;
UPDATE `player_levelstats` SET `basehp` =3704 WHERE `class` = 4 AND `level`=70;*/

-- 5790
DROP TABLE IF EXISTS `player_classlevelstats`;
CREATE TABLE `player_classlevelstats` (
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `basehp` smallint(5) unsigned NOT NULL,
  `basemana` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';
INSERT INTO `player_classlevelstats` VALUES
(1,1,20,0),
(1,2,29,0),
(1,3,38,0),
(1,4,47,0),
(1,5,56,0),
(1,6,65,0),
(1,7,74,0),
(1,8,83,0),
(1,9,92,0),
(1,10,101,0),
(1,11,100,0),
(1,12,109,0),
(1,13,118,0),
(1,14,128,0),
(1,15,139,0),
(1,16,151,0),
(1,17,154,0),
(1,18,168,0),
(1,19,183,0),
(1,20,199,0),
(1,21,206,0),
(1,22,224,0),
(1,23,243,0),
(1,24,253,0),
(1,25,274,0),
(1,26,296,0),
(1,27,309,0),
(1,28,333,0),
(1,29,348,0),
(1,30,374,0),
(1,31,401,0),
(1,32,419,0),
(1,33,448,0),
(1,34,468,0),
(1,35,499,0),
(1,36,521,0),
(1,37,545,0),
(1,38,581,0),
(1,39,609,0),
(1,40,649,0),
(1,41,681,0),
(1,42,715,0),
(1,43,761,0),
(1,44,799,0),
(1,45,839,0),
(1,46,881,0),
(1,47,935,0),
(1,48,981,0),
(1,49,1029,0),
(1,50,1079,0),
(1,51,1131,0),
(1,52,1185,0),
(1,53,1241,0),
(1,54,1299,0),
(1,55,1359,0),
(1,56,1421,0),
(1,57,1485,0),
(1,58,1551,0),
(1,59,1619,0),
(1,60,1689,0),
(1,61,1902,0),
(1,62,2129,0),
(1,63,2357,0),
(1,64,2612,0),
(1,65,2883,0),
(1,66,3169,0),
(1,67,3455,0),
(1,68,3774,0),
(1,69,4109,0),
(1,70,4444,0),
(2,1,28,60),
(2,2,36,78),
(2,3,44,98),
(2,4,52,104),
(2,5,60,111),
(2,6,68,134),
(2,7,76,143),
(2,8,84,153),
(2,9,92,179),
(2,10,100,192),
(2,11,108,205),
(2,12,116,219),
(2,13,124,249),
(2,14,132,265),
(2,15,131,282),
(2,16,141,315),
(2,17,152,334),
(2,18,164,354),
(2,19,177,390),
(2,20,191,412),
(2,21,206,435),
(2,22,222,459),
(2,23,239,499),
(2,24,247,525),
(2,25,266,552),
(2,26,286,579),
(2,27,307,621),
(2,28,329,648),
(2,29,342,675),
(2,30,366,702),
(2,31,391,729),
(2,32,407,756),
(2,33,434,798),
(2,34,462,825),
(2,35,481,852),
(2,36,511,879),
(2,37,542,906),
(2,38,564,933),
(2,39,597,960),
(2,40,621,987),
(2,41,656,1014),
(2,42,682,1041),
(2,43,719,1068),
(2,44,747,1110),
(2,45,786,1137),
(2,46,816,1164),
(2,47,857,1176),
(2,48,889,1203),
(2,49,922,1230),
(2,50,966,1257),
(2,51,1001,1284),
(2,52,1037,1311),
(2,53,1084,1338),
(2,54,1122,1365),
(2,55,1161,1392),
(2,56,1201,1419),
(2,57,1252,1446),
(2,58,1294,1458),
(2,59,1337,1485),
(2,60,1381,1512),
(2,61,1540,1656),
(2,62,1708,1800),
(2,63,1884,1944),
(2,64,2068,2088),
(2,65,2262,2232),
(2,66,2466,2377),
(2,67,2679,2521),
(2,68,2901,2665),
(2,69,3134,2809),
(2,70,3377,2953),
(3,1,46,65),
(3,2,53,70),
(3,3,60,76),
(3,4,67,98),
(3,5,74,106),
(3,6,81,130),
(3,7,88,140),
(3,8,95,166),
(3,9,102,193),
(3,10,109,206),
(3,11,116,235),
(3,12,123,250),
(3,13,130,266),
(3,14,138,298),
(3,15,147,316),
(3,16,157,350),
(3,17,168,370),
(3,18,180,391),
(3,19,193,428),
(3,20,207,451),
(3,21,222,475),
(3,22,238,515),
(3,23,255,541),
(3,24,273,568),
(3,25,292,611),
(3,26,312,640),
(3,27,333,670),
(3,28,355,715),
(3,29,378,745),
(3,30,402,775),
(3,31,417,805),
(3,32,443,850),
(3,33,470,880),
(3,34,498,910),
(3,35,527,940),
(3,36,547,970),
(3,37,578,1015),
(3,38,610,1045),
(3,39,643,1075),
(3,40,667,1105),
(3,41,702,1135),
(3,42,738,1180),
(3,43,775,1210),
(3,44,803,1240),
(3,45,842,1270),
(3,46,872,1300),
(3,47,913,1330),
(3,48,955,1360),
(3,49,994,1390),
(3,50,1047,1420),
(3,51,1067,1450),
(3,52,1113,1480),
(3,53,1150,1510),
(3,54,1198,1540),
(3,55,1237,1570),
(3,56,1287,1600),
(3,57,1328,1630),
(3,58,1370,1660),
(3,59,1423,1690),
(3,60,1467,1720),
(3,61,1633,1886),
(3,62,1819,2053),
(3,63,2003,2219),
(3,64,2195,2385),
(3,65,2397,2552),
(3,66,2623,2718),
(3,67,2844,2884),
(3,68,3075,3050),
(3,69,3316,3217),
(3,70,3568,3383),
(4,1,25,0),
(4,2,32,0),
(4,3,49,0),
(4,4,56,0),
(4,5,63,0),
(4,6,70,0),
(4,7,87,0),
(4,8,94,0),
(4,9,101,0),
(4,10,118,0),
(4,11,125,0),
(4,12,142,0),
(4,13,149,0),
(4,14,156,0),
(4,15,173,0),
(4,16,181,0),
(4,17,190,0),
(4,18,200,0),
(4,19,221,0),
(4,20,233,0),
(4,21,246,0),
(4,22,260,0),
(4,23,275,0),
(4,24,301,0),
(4,25,318,0),
(4,26,336,0),
(4,27,355,0),
(4,28,375,0),
(4,29,396,0),
(4,30,428,0),
(4,31,451,0),
(4,32,475,0),
(4,33,500,0),
(4,34,526,0),
(4,35,553,0),
(4,36,581,0),
(4,37,610,0),
(4,38,640,0),
(4,39,671,0),
(4,40,703,0),
(4,41,736,0),
(4,42,770,0),
(4,43,805,0),
(4,44,841,0),
(4,45,878,0),
(4,46,916,0),
(4,47,955,0),
(4,48,995,0),
(4,49,1026,0),
(4,50,1068,0),
(4,51,1111,0),
(4,52,1155,0),
(4,53,1200,0),
(4,54,1246,0),
(4,55,1283,0),
(4,56,1331,0),
(4,57,1380,0),
(4,58,1430,0),
(4,59,1471,0),
(4,60,1523,0),
(4,61,1702,0),
(4,62,1879,0),
(4,63,2077,0),
(4,64,2285,0),
(4,65,2489,0),
(4,66,2717,0),
(4,67,2941,0),
(4,68,3190,0),
(4,69,3450,0),
(4,70,3704,0),
(5,1,52,73),
(5,2,57,76),
(5,3,72,95),
(5,4,77,114),
(5,5,92,133),
(5,6,97,152),
(5,7,112,171),
(5,8,117,190),
(5,9,132,209),
(5,10,137,212),
(5,11,142,215),
(5,12,157,234),
(5,13,172,254),
(5,14,177,260),
(5,15,192,282),
(5,16,197,305),
(5,17,212,329),
(5,18,227,339),
(5,19,232,365),
(5,20,247,377),
(5,21,252,405),
(5,22,268,434),
(5,23,275,449),
(5,24,293,480),
(5,25,302,497),
(5,26,322,530),
(5,27,343,549),
(5,28,355,584),
(5,29,378,605),
(5,30,392,627),
(5,31,417,665),
(5,32,433,689),
(5,33,460,728),
(5,34,478,752),
(5,35,507,776),
(5,36,527,800),
(5,37,548,839),
(5,38,580,863),
(5,39,603,887),
(5,40,637,911),
(5,41,662,950),
(5,42,698,974),
(5,43,725,998),
(5,44,763,1022),
(5,45,792,1046),
(5,46,822,1070),
(5,47,863,1094),
(5,48,895,1118),
(5,49,928,1142),
(5,50,972,1166),
(5,51,1007,1190),
(5,52,1053,1214),
(5,53,1090,1238),
(5,54,1128,1262),
(5,55,1177,1271),
(5,56,1217,1295),
(5,57,1258,1319),
(5,58,1300,1343),
(5,59,1353,1352),
(5,60,1397,1376),
(5,61,1557,1500),
(5,62,1738,1625),
(5,63,1916,1749),
(5,64,2101,1873),
(5,65,2295,1998),
(5,66,2495,2122),
(5,67,2719,2247),
(5,68,2936,2371),
(5,69,3160,2495),
(5,70,3391,2620),
(7,1,37,85),
(7,2,44,91),
(7,3,51,98),
(7,4,58,106),
(7,5,65,115),
(7,6,72,125),
(7,7,79,136),
(7,8,86,148),
(7,9,93,161),
(7,10,100,175),
(7,11,107,190),
(7,12,114,206),
(7,13,121,223),
(7,14,128,241),
(7,15,135,260),
(7,16,142,280),
(7,17,150,301),
(7,18,159,323),
(7,19,169,346),
(7,20,180,370),
(7,21,192,395),
(7,22,205,421),
(7,23,219,448),
(7,24,234,476),
(7,25,240,505),
(7,26,257,535),
(7,27,275,566),
(7,28,294,598),
(7,29,314,631),
(7,30,335,665),
(7,31,347,699),
(7,32,370,733),
(7,33,394,767),
(7,34,419,786),
(7,35,435,820),
(7,36,462,854),
(7,37,490,888),
(7,38,509,922),
(7,39,539,941),
(7,40,570,975),
(7,41,592,1009),
(7,42,625,1028),
(7,43,649,1062),
(7,44,684,1096),
(7,45,710,1115),
(7,46,747,1149),
(7,47,775,1183),
(7,48,814,1202),
(7,49,844,1236),
(7,50,885,1255),
(7,51,917,1289),
(7,52,960,1323),
(7,53,994,1342),
(7,54,1029,1376),
(7,55,1075,1395),
(7,56,1112,1414),
(7,57,1150,1448),
(7,58,1199,1467),
(7,59,1239,1501),
(7,60,1330,1520),
(7,61,1428,1664),
(7,62,1583,1808),
(7,63,1760,1951),
(7,64,1932,2095),
(7,65,2114,2239),
(7,66,2304,2383),
(7,67,2504,2527),
(7,68,2713,2670),
(7,69,2931,2814),
(7,70,3159,2958),
(8,1,32,100),
(8,2,47,110),
(8,3,52,106),
(8,4,67,118),
(8,5,82,131),
(8,6,97,130),
(8,7,102,145),
(8,8,117,146),
(8,9,132,163),
(8,10,137,196),
(8,11,152,215),
(8,12,167,220),
(8,13,172,241),
(8,14,187,263),
(8,15,202,271),
(8,16,207,295),
(8,17,222,305),
(8,18,237,331),
(8,19,242,343),
(8,20,257,371),
(8,21,272,385),
(8,22,277,415),
(8,23,292,431),
(8,24,298,463),
(8,25,315,481),
(8,26,333,515),
(8,27,342,535),
(8,28,362,556),
(8,29,373,592),
(8,30,395,613),
(8,31,418,634),
(8,32,432,670),
(8,33,457,691),
(8,34,473,712),
(8,35,500,733),
(8,36,518,754),
(8,37,547,790),
(8,38,577,811),
(8,39,598,832),
(8,40,630,853),
(8,41,653,874),
(8,42,687,895),
(8,43,712,916),
(8,44,748,937),
(8,45,775,958),
(8,46,813,979),
(8,47,842,1000),
(8,48,882,1021),
(8,49,913,1042),
(8,50,955,1048),
(8,51,988,1069),
(8,52,1032,1090),
(8,53,1067,1111),
(8,54,1103,1117),
(8,55,1150,1138),
(8,56,1188,1159),
(8,57,1237,1165),
(8,58,1277,1186),
(8,59,1328,1192),
(8,60,1370,1213),
(8,61,1526,1316),
(8,62,1702,1419),
(8,63,1875,1521),
(8,64,2070,1624),
(8,65,2261,1727),
(8,66,2461,1830),
(8,67,2686,1932),
(8,68,2906,2035),
(8,69,3136,2138),
(8,70,3393,2241),
(9,1,23,90),
(9,2,28,98),
(9,3,43,107),
(9,4,48,102),
(9,5,63,113),
(9,6,68,126),
(9,7,83,144),
(9,8,88,162),
(9,9,93,180),
(9,10,108,198),
(9,11,123,200),
(9,12,128,218),
(9,13,143,237),
(9,14,148,257),
(9,15,153,278),
(9,16,168,300),
(9,17,173,308),
(9,18,189,332),
(9,19,196,357),
(9,20,204,383),
(9,21,223,395),
(9,22,233,423),
(9,23,244,452),
(9,24,266,467),
(9,25,279,498),
(9,26,293,530),
(9,27,318,548),
(9,28,334,582),
(9,29,351,602),
(9,30,379,638),
(9,31,398,674),
(9,32,418,695),
(9,33,439,731),
(9,34,471,752),
(9,35,494,788),
(9,36,518,809),
(9,37,543,830),
(9,38,569,866),
(9,39,606,887),
(9,40,634,923),
(9,41,663,944),
(9,42,693,965),
(9,43,724,1001),
(9,44,756,1022),
(9,45,799,1043),
(9,46,832,1064),
(9,47,868,1100),
(9,48,904,1121),
(9,49,941,1142),
(9,50,979,1163),
(9,51,1018,1184),
(9,52,1058,1205),
(9,53,1099,1226),
(9,54,1141,1247),
(9,55,1184,1268),
(9,56,1228,1289),
(9,57,1273,1310),
(9,58,1319,1331),
(9,59,1366,1352),
(9,60,1414,1373),
(9,61,1580,1497),
(9,62,1755,1621),
(9,63,1939,1745),
(9,64,2133,1870),
(9,65,2323,1994),
(9,66,2535,2118),
(9,67,2758,2242),
(9,68,2991,2366),
(9,69,3235,2490),
(9,70,3490,2615),
(11,1,44,60),
(11,2,51,66),
(11,3,58,73),
(11,4,75,81),
(11,5,82,90),
(11,6,89,100),
(11,7,106,111),
(11,8,113,123),
(11,9,120,136),
(11,10,137,150),
(11,11,144,165),
(11,12,151,182),
(11,13,168,200),
(11,14,175,219),
(11,15,182,239),
(11,16,199,260),
(11,17,206,282),
(11,18,214,305),
(11,19,233,329),
(11,20,243,354),
(11,21,254,380),
(11,22,266,392),
(11,23,289,420),
(11,24,303,449),
(11,25,318,479),
(11,26,334,509),
(11,27,361,524),
(11,28,379,554),
(11,29,398,584),
(11,30,418,614),
(11,31,439,629),
(11,32,461,659),
(11,33,494,689),
(11,34,518,704),
(11,35,543,734),
(11,36,569,749),
(11,37,596,779),
(11,38,624,809),
(11,39,653,824),
(11,40,683,854),
(11,41,714,869),
(11,42,746,899),
(11,43,779,914),
(11,44,823,944),
(11,45,858,959),
(11,46,894,989),
(11,47,921,1004),
(11,48,959,1019),
(11,49,998,1049),
(11,50,1038,1064),
(11,51,1079,1079),
(11,52,1121,1109),
(11,53,1164,1124),
(11,54,1208,1139),
(11,55,1253,1154),
(11,56,1299,1169),
(11,57,1346,1199),
(11,58,1384,1214),
(11,59,1433,1229),
(11,60,1483,1244),
(11,61,1657,1357),
(11,62,1840,1469),
(11,63,2020,1582),
(11,64,2222,1694),
(11,65,2433,1807),
(11,66,2640,1919),
(11,67,2872,2032),
(11,68,3114,2145),
(11,69,3351,2257),
(11,70,3614,2370);
ALTER TABLE `player_levelstats` 
   DROP `basehp`, 
   DROP `basemana`;

-- 5799
DELETE FROM spell_proc_event WHERE entry IN (45481,45482,45483,45484);
INSERT INTO spell_proc_event VALUES 
(45481,0,0,0,0,0x0000000000000000,0x08020000,0),
(45482,0,0,0,0,0x0000000000000000,0x00080001,0),
(45483,0,0,0,0,0x0000000000000000,0x00080001,0),
(45484,0,0,0,0,0x0000000000000000,0x08000000,0);
