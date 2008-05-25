-- 5146_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (37169,43745);
INSERT INTO `spell_proc_event` VALUES
 (37169,0,0,0,8,0x0000000000020000,0x00000000,0),
 (43745,0,0,0,10,0x0000020000000000,0x00020000,0);

-- 5147_mangos_spell_learn_spell.sql
INSERT INTO `spell_learn_spell` ( `entry` , `SpellID` , `IfNoSpell` ) VALUES 
('17002', '24867', '0'), 
('24866', '24864', '0');

-- 5156_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (43339);
INSERT INTO `spell_affect` VALUES
 (43339,0,0,0,0,0,0,0x0000000090100000,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16246);
INSERT INTO `spell_affect` VALUES
 (16246,0,0,0,0,0,0,0x0000000090100003,0);

DELETE FROM `spell_affect` WHERE `entry` IN (38434);
INSERT INTO `spell_affect` VALUES
 (38434,0,0,0,0,0,0,0x0000000000000100,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16089);
INSERT INTO `spell_affect` VALUES
 (16089,0,0,0,0,0,0,0x00000004D33005C7,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16166);
INSERT INTO `spell_affect` VALUES
 (16166,0,0,0,0,0,0,0x00000000901001C3,0),
 (16166,1,0,0,0,0,0,0x00000000901001C3,0);

DELETE FROM `spell_affect` WHERE `entry` IN (29063);
INSERT INTO `spell_affect` VALUES
 (29063,0,0,0,0,0,0,0x00000000000009C3,0);

DELETE FROM `spell_affect` WHERE `entry` IN (37241);
INSERT INTO `spell_affect` VALUES
 (37241,0,0,0,0,0,0,0x0000020000000000,0);

DELETE FROM `spell_affect` WHERE `entry` IN (38435);
INSERT INTO `spell_affect` VALUES
 (38435,0,0,0,0,0,0,0x0000000000000080,0);

DELETE FROM `spell_affect` WHERE `entry` IN (38436);
INSERT INTO `spell_affect` VALUES
 (38436,0,0,0,0,0,0,0x0000000000000001,0);

DELETE FROM `spell_affect` WHERE `entry` IN (34318,37209);
INSERT INTO `spell_affect` VALUES
 (34318,0,0,0,0,0,0,0x0000002000000000,0),
 (37209,0,0,0,0,0,0,0x0000002000000000,0);

DELETE FROM `spell_affect` WHERE `entry` IN (21895);
INSERT INTO `spell_affect` VALUES
 (21895,0,0,0,0,0,0,0x000000000403E000,0);

DELETE FROM `spell_affect` WHERE `entry` IN (39805);
INSERT INTO `spell_affect` VALUES
 (39805,0,0,0,0,0,0,0x0000000000000003,0);

DELETE FROM `spell_affect` WHERE `entry` IN (30812,30813,30814);
INSERT INTO `spell_affect` VALUES
 (30812,0,0,0,0,0,0,0x00000C78B018141B,0),
 (30813,0,0,0,0,0,0,0x00000C78B018141B,0),
 (30814,0,0,0,0,0,0,0x00000C78B018141B,0);

DELETE FROM `spell_affect` WHERE `entry` IN (38501);
INSERT INTO `spell_affect` VALUES
 (38501,0,0,0,0,0,0,0x0000000000000080,0);

DELETE FROM `spell_affect` WHERE `entry` IN (36591);
INSERT INTO `spell_affect` VALUES
 (36591,1,0,0,0,0,0,0x00000410901005C3,0);

DELETE FROM `spell_affect` WHERE `entry` IN (28818);
INSERT INTO `spell_affect` VALUES
 (28818,0,0,0,0,0,0,0x0000000020081018,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16173,16222,16223,16224,16225);
INSERT INTO `spell_affect` VALUES
 (16173,0,0,0,0,0,0,0x0000000020081018,0),
 (16222,0,0,0,0,0,0,0x0000000020081018,0),
 (16223,0,0,0,0,0,0,0x0000000020081018,0),
 (16224,0,0,0,0,0,0,0x0000000020081018,0),
 (16225,0,0,0,0,0,0,0x0000000020081018,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16189);
INSERT INTO `spell_affect` VALUES
 (16189,0,0,0,0,0,0,0x000001000403E000,0);

DELETE FROM `spell_affect` WHERE `entry` IN (39950);
INSERT INTO `spell_affect` VALUES
 (39950,0,0,0,0,0,0,0x0000000000000040,0);

-- 5156_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (33746,40463);
INSERT INTO `spell_proc_event` VALUES
 (33746,0,0,0,0,0x0000000000000000,0x00000004,0),
 (40463,0,0,0,11,0x0000001000000081,0x00004001,0);


DELETE FROM `spell_proc_event` WHERE `entry` IN (43338);
INSERT INTO `spell_proc_event` VALUES
 (43338,0,0,0,0,0x0000000000000000,0x00001000,0);

-- 5158_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (36591);

-- 5160_mangos_command.sql
DELETE FROM command WHERE name IN ('info');
INSERT INTO `command` VALUES 
('info',0,'Syntax: .info\r\n\r\nDisplay server version and the number of connected players.');

-- 5163_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (16113,16114,16115,16116,16040,22804);
INSERT INTO `spell_affect` VALUES
 (16113,0,0,0,0,0,0,0x0000000090100000,0),
 (16114,0,0,0,0,0,0,0x0000000090100000,0),
 (16115,0,0,0,0,0,0,0x0000000090100000,0),
 (16116,0,0,0,0,0,0,0x0000000090100000,0),
 (16040,0,0,0,0,0,0,0x0000000090100000,0),
 (22804,0,0,0,0,0,0,0x0000000090100000,0);

-- 5163_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (26119,43748);
INSERT INTO `spell_proc_event` VALUES
 (26119,0,0,0,11,0x0000000090100003,0x00004000,0),
 (43748,0,0,0,11,0x0000000090100000,0x00004000,0);

-- 5164_mangos_creature_movement.sql
ALTER TABLE `creature_movement` CHANGE COLUMN `text1` `text1` text;
ALTER TABLE `creature_movement` CHANGE COLUMN `text2` `text2` text;
ALTER TABLE `creature_movement` CHANGE COLUMN `text3` `text3` text;
ALTER TABLE `creature_movement` CHANGE COLUMN `text4` `text4` text;
ALTER TABLE `creature_movement` CHANGE COLUMN `text5` `text5` text;

-- 5165_mangos_mangos_string.sql
--
-- Table structure for table `mangos_string`
--

DROP TABLE IF EXISTS `mangos_string`;
CREATE TABLE `mangos_string` (
  `entry` int(11) unsigned NOT NULL default '0',
  `content_default` text,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mangos_string`
--

LOCK TABLES `mangos_string` WRITE;
/*!40000 ALTER TABLE `mangos_string` DISABLE KEYS */;
INSERT INTO `mangos_string` VALUES
(1,'You should select a character or a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'You should select a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,'There is no help for that command',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'There is no such command',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,'There is no such subcommand',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(8,'Command %s have subcommands:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,'Commands available to you:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'Incorrect syntax.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'Your account level is: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,'Number of users connected: %u (max since last restart: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(13,'Server uptime: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(14,'Player saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(15,'All players saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(16,'There are the following active GMs on this server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(17,'There are no GMs currently logged in on this server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(18,'Cannot do that while flying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(19,'Cannot do that in Battlegrounds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(20,'Target is flying you can\'t do that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(21,'%s is flying command failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(22,'You are not mounted so you can\'t dismount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(23,'Cannot do that while fighting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(24,'You used it recently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(25,'Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(26,'The password was changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(27,'The new passwords do not match or the old password is wrong',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(28,'Your account is now locked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(29,'Your account is now unlocked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(30,', rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(31,' [known]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'|cffff0000[System Message]:|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'|cffff0000[Event Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(32,' [learn]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(33,' [passive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(34,' [talent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(35,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(36,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(37,' (offline)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(38,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(39,'off',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(40,'You are: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(41,'visible',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(42,'invisible',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(43,'done',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(44,'You',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(45,' <unknown> ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(46,'<error>',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(47,'<non-existing character>',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(48,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(49,'You must be at least level %u to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(50,'You must be at least level %u and have item %s to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(51,'Hello! Ready for some training?',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(100,'Global notify: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s)\\nX: %f Y: %f Z: %f Orientation: %f\\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\\n ZoneX: %f ZoneY: %f\\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(102,'%s is already being teleported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(103,'You can summon a player to your instance only if he is in your party with you as leader.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(104,'You cannot go to the player\'s instance because you are in a party now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(105,'You can go to the player\'s instance while not being in his party only if your GM mode is on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(106,'You can not go to player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(107,'You can not summon player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(108,'You are summoning %s%s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(109,'You are being summoned by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(110,'You are teleporting %s%s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(111,'You are being teleported by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(112,'Player (%s) does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(113,'Appearing at %s\'s location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(114,'%s is appearing to your location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(115,'Incorrect values.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(116,'No character selected.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(117,'%s is not in a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(118,'You changed HP of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(119,'%s changed your HP to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(120,'You changed MANA of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(121,'%s changed your MANA to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(122,'You changed ENERGY of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(123,'%s changed your ENERGY to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(124,'Current energy: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(125,'You changed rage of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(126,'%s changed your rage to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(127,'You changed level of %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(128,'GUID %i, faction is %i, flags is %i, npcflag is %i, DY flag is %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(129,'Wrong faction: %u (not found in factiontemplate.dbc).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(130,'You changed GUID=%i \'s Faction to %i, flags to %i, npcflag to %i, dyflag to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(131,'You changed the spellflatid=%i, val= %i, mark =%i to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(132,'%s changed your spellflatid=%i, val= %i, mark =%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(133,'%s has access to all taxi nodes now (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(134,'%s has no more access to all taxi nodes now (only visited accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(135,'%s has given you access to all taxi nodes (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(136,'%s has removed access to all taxi nodes (only visited still accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(137,'You set all speeds to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(138,'%s set all your speeds to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(139,'You set the speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(140,'%s set your speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(141,'You set the swim speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(142,'%s set your swim speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(143,'You set the backwards run speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(144,'%s set your backwards run speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(145,'You set the fly speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(146,'%s set your fly speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(147,'You set the size %2.2f of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(148,'%s set your size to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(149,'There is no such mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(150,'You give a mount to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(151,'%s gave you a mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(152,'USER1: %i, ADD: %i, DIF: %i\\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(153,'You take all copper of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(154,'%s took you all of your copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(155,'You take %i copper from %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(156,'%s took %i copper from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(157,'You give %i copper to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(158,'%s gave you %i copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(159,'You hear sound %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(160,'USER2: %i, ADD: %i, RESULT: %i\\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(161,'Removed bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(162,'Set bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(163,'Teleport location table is empty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(164,'Teleport location not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(165,'Requires search parameter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(166,'There are no teleport locations matching your request.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(167,'No locations found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(168,'Locations found are:\\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(169,'Mail sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(200,'No selection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(201,'Object GUID is: lowpart %u highpart %X',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(202,'The name was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(203,'Error, name can only contain characters A-Z and a-z.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(204,'The subname was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(205,'Not yet implemented',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(206,'Item \'%i\' \'%s\' added to list with maxcount \'%i\' and incrtime \'%i\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(207,'Item \'%i\' not found in database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(208,'Item \'%i\' \'%s\' deleted from vendor list',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(209,'Item \'%i\' not found in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(210,'Item \'%i\' already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(211,'Spells of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(212,'Spells of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(213,'Talents of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(214,'Talents of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(215,'Your spells have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(216,'Your talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(217,'Unknown case \'%s\' for .resetall command. Type full correct case name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(218,'Spells will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(219,'Talents will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(220,'Creature (GUID: %u) No waypoint found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(221,'Creature (GUID: %u) Last waypoint not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(222,'Creature (GUID: %u) No waypoint found - used \'wpguid\'. Now trying to find it by its position...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(223,'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(224,'Selected creature is ignored - provided GUID is used',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(228,'Could not create visual waypoint with creatureID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(230,'Could not create waypoint-creature with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(234,'Waypoint %i added to GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(235,'Waypoint %d added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(239,'No waypoints found inside the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'Warning: Could not delete WP from the world with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(243,'This happens if the waypoint is too far away from your char.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(244,'The WP is deleted from the database, but not from the world here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(245,'They will disappear after a server restart.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(246,'Waypoint %d: Info for creature: %s, GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(247,'Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(248,'Model %d: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(249,'Emote: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(250,'Spell: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(251,'Text %d: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(252,'AIScript: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(253,'Forced rename for player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(254,'Forced rename for player %s (GUID #%u) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(255,'Waypoint-Creature (GUID: %u) Not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(256,'Could not find NPC...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(257,'Creature movement type set to \'%s\', waypoints removed (if any).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(258,'Creature movement type set to \'%s\', waypoints were not removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(259,'Incorrect value, use on or off',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(260,'Value saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(261,'Value saved, you may need to rejoin or clean your client cache.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(262,'Areatrigger ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(263,'Target map or coordinates is invalid (X: %f Y: %f MapId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(264,'Zone coordinates is invalid (X: %f Y: %f AreaId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(265,'Zone %u (%s) is part of instanceable map %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(266,'Nothing found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(267,'Object not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(268,'Creature not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(269,'Warning: Mob found more than once - you will be teleported to the first one found in DB.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(270,'Creature Removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(271,'Creature moved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(272,'Creature (GUID:%u) must be on the same map as player!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(273,'Game Object (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(274,'Game Object (GUID: %u) has references in not found creature %u GO list, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(275,'Game Object (GUID: %u) removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(276,'Game Object (GUID: %u) turned',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(277,'Game Object (GUID: %u) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(278,'You must select a vendor',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(279,'You must send id for item',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(280,'Vendor has too many items (max 128)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(281,'You can\'t kick self, logout instead',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(282,'Player %s kicked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(283,'Player %s not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(284,'Accepting Whisper: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(285,'Accepting Whisper: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(286,'Accepting Whisper: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(287,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(288,'Tickets count: %i show new tickets: %s\\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(289,'New ticket from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(290,'Ticket of %s (Category: %i):\\n%s\\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(291,'New ticket show: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(292,'New ticket show: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(293,'Ticket %i doesn\'t exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(294,'All tickets deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(295,'Character %s ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(296,'Ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(297,'Spawn distance changed to: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(298,'Spawn time changed to: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(299,'The honor of %s was set to %u!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(300,'Your chat has been disabled for %u minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(301,'You have disabled %s\'s chat for %u minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(302,'Player\'s chat is already enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(303,'Your chat has been enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(304,'You have enabled %s\'s chat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(400,'|cffff0000[System Message]:|rScripts reloaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(401,'You change security level of %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(402,'%s changed your security level to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(403,'You have low security level for this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(404,'Creature movement disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(405,'Creature movement enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(406,'Weather can\'t be changed for this zone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(407,'Weather system disabled at server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(408,'%s is banned for %s. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(409,'%s is banned permanently for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(410,'%s %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(411,'%s unbanned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(412,'There was an error removing the ban on %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(413,'There is no such account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(414,'There is no such character.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(415,'There is no such IP in banlist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(416,'Account %s has never been banned',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(417,'Ban history for account %s:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(418,'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(419,'Inf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(420,'Never',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(421,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(422,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(423,'IP: %s\\nBan Date: %s\\nUnban Date: %s\\nRemaining: %s\\nReason: %s\\nSet by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(424,'There is no matching IPban.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(425,'There is no matching account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(426,'There is no banned account owning a character matching this part.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(427,'The following IPs match your pattern:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(428,'The following accounts match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(429,'You learned many spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(430,'You learned all spells for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(431,'You learned all talents for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(432,'You learned all languages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(433,'You learned all craft skills and recipes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(434,'Could not find \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(435,'Invalid item id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(436,'No items found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(437,'Invalid gameobject id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(438,'Found items %u: %u ( inventory %u mail %u auction %u )',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(439,'Found gameobjects %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(440,'Invalid creature id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(441,'Found creatures %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(442,'No area found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(443,'No item sets found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(444,'No skills found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(445,'No spells found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(446,'No quests found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(447,'No creatures found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(448,'No gameobjects found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(449,'Graveyard #%u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(450,'Graveyard #%u already linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(451,'Graveyard #%u linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(452,'Graveyard #%u can\'t be linked to subzone or not existed zone #%u (internal error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(453,'Graveyard can be linked to zone at another map only for all factions (no faction value).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(454,'No faction in Graveyard with id= #%u , fix your DB',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(455,'invalid team, please fix database',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(456,'any',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(457,'alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(458,'horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(459,'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(460,'Zone #%u doesn\'t have linked graveyards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(461,'Zone #%u doesn\'t have linked graveyards for faction: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(462,'Teleport location already exists!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(463,'Teleport location added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(464,'Teleport location NOT added: database error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(465,'Teleport location deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(466,'Teleport location NOT deleted: database error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(467,'Target unit has %d auras:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(468,'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(469,'Target unit has %d auras of type %d:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(470,'id: %d eff: %d name: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(471,'Quest %u not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(472,'Quest %u started from item. For correct work, please, add item to inventory and start quest in normal way: .additem %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(473,'Quest removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(474,' [rewarded]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(475,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(476,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(477,'%s\'s Fly Mode %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(478,'Opcode %u sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(479,'Character loaded successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(480,'Failed to load the character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(481,'Character dumped successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(482,'Character dump failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(483,'Spell %u broken and not allowed to cast or learn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(484,'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(485,'Player %s must have skill %u (%s) before using this command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(486,'Invalid skill id (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(487,'You learned default GM spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(488,'You already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(489,'Target(%s) already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(490,'%s doesn\'t know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(491,'You already forgot that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(492,'All spell cooldowns removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(493,'Spell %u cooldown removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(494,'Command : Additem, itemId = %i, amount = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(495,'Command : Additemset, itemsetId = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(496,'Removed itemID = %i, amount = %i from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(497,'Cannot create item \'%i\' (amount: %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(498,'You need to provide a guild name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(499,'Player not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(500,'Player already has a guild!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(501,'Guild not created! (already exists?)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(502,'No items from itemset \'%u\' found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(503,'The distance is: (3D) %f (2D) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(504,'Item \'%i\' \'%s\' Item Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(505,'Item \'%i\' doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(506,'Item \'%i\' \'%s\' Added to Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(507,'Item save failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(508,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(509,'%d - sender: %s (guid: %u account: %u ) receiver: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(510,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(511,'Wrong link type!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(513,'%d - |cffffffff|Hquest:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(514,'%d - |cffffffff|Hcreature_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(515,'%d - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(516,'%d - |cffffffff|Hgameobject_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(517,'%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(518,'%d - |cffffffff|Hitemset:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(519,'|cffffffff|Htele:%s|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(520,'%d - |cffffffff|Hspell:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(521,'%d - |cffffffff|Hskill:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(522,'Game Object (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(523,'>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(524,'Selected object:\\n%s\\nGUID: %u ID: %u\\nX: %f Y: %f Z: %f MapId: %u\\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(525,'>> Add Game Object \'%i\' (%s) (GUID: %i) added at \'%f %f %f\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(526,'%s (lowguid: %u) movement generators stack:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(527,'   Idle',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(528,'   Random',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(529,'   Waypoint',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(530,'   Animal random',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(531,'   Confused',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(532,'   Targeted to player %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(533,'   Targeted to creature %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(534,'   Targeted to <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(535,'   Home movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(536,'   Home movement used for player?!?',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(537,'   Taxi flight',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(538,'   Unknown movement generator (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(539,'Player selected NPC\\nGUID: %u.\\nFaction: %u.\\nnpcFlags: %u.\\nEntry: %u.\\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(540,'Level: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(541,'Health (base): %u. (max): %u. (current): %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(542,'Field Flags: %u.\\nDynamic Flags: %u.\\nFaction Template: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(543,'Loot: %u Pickpocket: %u Skinning: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(544,'Position: %f %f %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(545,'*** Is a vendor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(546,'*** Is a trainer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(547,'InstanceID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(548,'Player%s %s (guid: %u) Account: %s (id: %u) GMLevel: %u Last IP: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(549,'Played time: %s Level: %u Money: %ug%us%uc',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(550,'Command .pinfo doesn\'t support \'rep\' option for offline players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(551,'%s has explored all zones now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(552,'%s has no more explored zones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(553,'%s has explored all zones for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(554,'%s has hidden all zones from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(555,'Hover enabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(556,'Hover disabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(557,'You have been leveled up (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(558,'You have been leveled down (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(559,'Your level progress has been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(560,'The area has been set as explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(561,'The area has been set as not explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(562,'GUID=%i \'s updateIndex: %i, value:  %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(563,'You change GUID=%i \'s UpdateIndex: %i value to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(564,'The value index %u is too big to %u(count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(565,'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(566,'You Set %u Field:%u to uint32 Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(567,'Set %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(568,'You Set %u Field:%i to float Value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(569,'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(570,'The uint32 value of %u in %u is: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(571,'Get %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(572,'The float of %u value in %u is: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(573,'.Set32Bit:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(574,'You set Bit of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(575,'.Mod32Value:[OPCODE]:%u [VALUE]:%i',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(576,'You modified the value of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(577,'You are now invisible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(578,'You are now visible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(600,'The Alliance wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(601,'The Horde wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(602,'The battle for Warsong Gulch begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(603,'The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(604,'Let the battle for Warsong Gulch begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(605,'$n captured the Horde flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(606,'$n captured the Alliance flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(607,'The Horde flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(608,'The Alliance Flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(609,'The Alliance Flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(610,'The Horde flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(611,'The Horde flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(612,'The Alliance Flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(613,'The flags are now placed at their bases.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(650,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(651,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(652,'stables',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(653,'blacksmith',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(654,'farm',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(655,'lumber mill',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(656,'mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(657,'The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(658,'$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(659,'$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(660,'$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(661,'The Battle for Arathi Basin begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(662,'The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(663,'The Battle for Arathi Basin has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(664,'The Alliance has gathered $1776W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(665,'The Horde has gathered $1777W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(700,'You must be level %u to form an arena team',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(701,'One minute until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(702,'Thirty seconds until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(703,'Fifteen seconds until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(704,'The Arena battle has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(705,'You must wait %s before speaking again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mangos_string` ENABLE KEYS */;
UNLOCK TABLES;

-- 5166_mangos_mangos_string.sql
DELETE FROM `mangos_string` WHERE `entry`= 706;
INSERT INTO `mangos_string` VALUES
(706,'This item(s) have problems with equipping/storing in inventory.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5172_mangos_mangos_string.sql
DELETE FROM `mangos_string` WHERE `entry` in (101,152,160,168,288,290,423,524,539,542);
INSERT INTO `mangos_string` VALUES
(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s)\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(152,'USER1: %i, ADD: %i, DIF: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(160,'USER2: %i, ADD: %i, RESULT: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(168,'Locations found are:\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(288,'Tickets count: %i show new tickets: %s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(290,'Ticket of %s (Category: %i):\n%s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(423,'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(524,'Selected object:\n%s\nGUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(539,'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(542,'Field Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5180_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (12303,12788,12789);
INSERT INTO `spell_affect` VALUES
 (12303,1,0,0,0,0,0,0x0000100000000000,0),
 (12788,1,0,0,0,0,0,0x0000100000000000,0),
 (12789,1,0,0,0,0,0,0x0000100000000000,0);

-- 5181_mangos_mangos_string.sql
DELETE FROM `mangos_string` WHERE `entry` = 548;
INSERT INTO `mangos_string` VALUES
 (548,'Player%s %s (guid: %u) Account: %s (id: %u) GMLevel: %u Last IP: %s Latency: %ums',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5185_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (20185,20344,20345,20346,27162);
INSERT INTO `spell_proc_event` VALUES
 (20185,0,0,0,0,0x0000000000000000,0x00000002,0),
 (20344,0,0,0,0,0x0000000000000000,0x00000002,0),
 (20345,0,0,0,0,0x0000000000000000,0x00000002,0),
 (20346,0,0,0,0,0x0000000000000000,0x00000002,0),
 (27162,0,0,0,0,0x0000000000000000,0x00000002,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (20186,20354,20355,27164);
INSERT INTO `spell_proc_event` VALUES
 (20186,0,0,0,0,0x0000000000000000,0x00100402,0),
 (20354,0,0,0,0,0x0000000000000000,0x00100402,0),
 (20355,0,0,0,0,0x0000000000000000,0x00100402,0),
 (27164,0,0,0,0,0x0000000000000000,0x00100402,0);

-- 5191_mangos_spell_threat.sql
DELETE FROM `spell_threat` WHERE `entry` = 2139;
INSERT INTO `spell_threat` (`entry`, `Threat`) VALUES 
(2139, 300);

-- 5197_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (33167);
INSERT INTO `spell_affect` VALUES (33167, 0, 0, 0x00, 0, 0, 0, 0x0000000100000000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (33171);
INSERT INTO `spell_affect` VALUES (33171, 0, 0, 0x00, 0, 0, 0, 0x0000000100000000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (33172);
INSERT INTO `spell_affect` VALUES (33172, 0, 0, 0x00, 0, 0, 0, 0x0000000100000000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (23236);
INSERT INTO `spell_affect` VALUES (23236, 0, 0, 0x00, 0, 0, 0, 0x0000003419541EC0, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (37880);
INSERT INTO `spell_affect` VALUES (37880, 0, 0, 0x00, 0, 0, 0, 0x0000000411041E40, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15259);
INSERT INTO `spell_affect` VALUES (15259, 0, 0, 0x00, 0, 0, 0, 0x0000000202002000, 0);
INSERT INTO `spell_affect` VALUES (15259, 1, 0, 0x00, 0, 0, 0, 0x0000040000808000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15307);
INSERT INTO `spell_affect` VALUES (15307, 0, 0, 0x00, 0, 0, 0, 0x0000000202002000, 0);
INSERT INTO `spell_affect` VALUES (15307, 1, 0, 0x00, 0, 0, 0, 0x0000040000808000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15308);
INSERT INTO `spell_affect` VALUES (15308, 0, 0, 0x00, 0, 0, 0, 0x0000000202002000, 0);
INSERT INTO `spell_affect` VALUES (15308, 1, 0, 0x00, 0, 0, 0, 0x0000040000808000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15309);
INSERT INTO `spell_affect` VALUES (15309, 0, 0, 0x00, 0, 0, 0, 0x0000000202002000, 0);
INSERT INTO `spell_affect` VALUES (15309, 1, 0, 0x00, 0, 0, 0, 0x0000040000808000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15310);
INSERT INTO `spell_affect` VALUES (15310, 0, 0, 0x00, 0, 0, 0, 0x0000000202002000, 0);
INSERT INTO `spell_affect` VALUES (15310, 1, 0, 0x00, 0, 0, 0, 0x0000040000808000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14743);
INSERT INTO `spell_affect` VALUES (14743, 0, 0, 0x00, 0, 0, 0, 0x0000049440963E90, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (27828);
INSERT INTO `spell_affect` VALUES (27828, 0, 0, 0x00, 0, 0, 0, 0x0000049440963E90, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (33186);
INSERT INTO `spell_affect` VALUES (33186, 0, 0, 0x00, 0, 0, 0, 0x0000008000000000, 0);
INSERT INTO `spell_affect` VALUES (33186, 1, 0, 0x00, 0, 0, 0, 0x0000008000002080, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (33190);
INSERT INTO `spell_affect` VALUES (33190, 0, 0, 0x00, 0, 0, 0, 0x0000008000000000, 0);
INSERT INTO `spell_affect` VALUES (33190, 1, 0, 0x00, 0, 0, 0, 0x0000008000002080, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18544);
INSERT INTO `spell_affect` VALUES (18544, 0, 0, 0x00, 0, 0, 0, 0x0000041202F8A090, 0);
INSERT INTO `spell_affect` VALUES (18544, 1, 0, 0x00, 0, 0, 0, 0x0000001202582090, 0);
INSERT INTO `spell_affect` VALUES (18544, 2, 0, 0x00, 0, 0, 0, 0x0000040000A08000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18547);
INSERT INTO `spell_affect` VALUES (18547, 0, 0, 0x00, 0, 0, 0, 0x0000041202F8A090, 0);
INSERT INTO `spell_affect` VALUES (18547, 1, 0, 0x00, 0, 0, 0, 0x0000001202582090, 0);
INSERT INTO `spell_affect` VALUES (18547, 2, 0, 0x00, 0, 0, 0, 0x0000040000A08000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18548);
INSERT INTO `spell_affect` VALUES (18548, 0, 0, 0x00, 0, 0, 0, 0x0000041202F8A090, 0);
INSERT INTO `spell_affect` VALUES (18548, 1, 0, 0x00, 0, 0, 0, 0x0000001202582090, 0);
INSERT INTO `spell_affect` VALUES (18548, 2, 0, 0x00, 0, 0, 0, 0x0000040000A08000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18549);
INSERT INTO `spell_affect` VALUES (18549, 0, 0, 0x00, 0, 0, 0, 0x0000041202F8A090, 0);
INSERT INTO `spell_affect` VALUES (18549, 1, 0, 0x00, 0, 0, 0, 0x0000001202582090, 0);
INSERT INTO `spell_affect` VALUES (18549, 2, 0, 0x00, 0, 0, 0, 0x0000040000A08000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18550);
INSERT INTO `spell_affect` VALUES (18550, 0, 0, 0x00, 0, 0, 0, 0x0000041202F8A090, 0);
INSERT INTO `spell_affect` VALUES (18550, 1, 0, 0x00, 0, 0, 0, 0x0000001202582090, 0);
INSERT INTO `spell_affect` VALUES (18550, 2, 0, 0x00, 0, 0, 0, 0x0000040000A08000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14913);
INSERT INTO `spell_affect` VALUES (14913, 0, 0, 0x00, 0, 0, 0, 0x0000000400041E00, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15012);
INSERT INTO `spell_affect` VALUES (15012, 0, 0, 0x00, 0, 0, 0, 0x0000000400041E00, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (37706);
INSERT INTO `spell_affect` VALUES (37706, 0, 0, 0x00, 0, 0, 0, 0x0000000411041E40, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (37571);
INSERT INTO `spell_affect` VALUES (37571, 0, 0, 0x00, 0, 0, 0, 0x0000000000000080, 0);
INSERT INTO `spell_affect` VALUES (37571, 1, 0, 0x00, 0, 0, 0, 0x0000000000800000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14751);
INSERT INTO `spell_affect` VALUES (14751, 0, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);
INSERT INTO `spell_affect` VALUES (14751, 1, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14520);
INSERT INTO `spell_affect` VALUES (14520, 0, 0, 0x00, 0, 0, 0, 0x00000963BF61C16F, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14780);
INSERT INTO `spell_affect` VALUES (14780, 0, 0, 0x00, 0, 0, 0, 0x00000963BF61C16F, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14781);
INSERT INTO `spell_affect` VALUES (14781, 0, 0, 0x00, 0, 0, 0, 0x00000963BF61C16F, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14782);
INSERT INTO `spell_affect` VALUES (14782, 0, 0, 0x00, 0, 0, 0, 0x00000963BF61C16F, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14783);
INSERT INTO `spell_affect` VALUES (14783, 0, 0, 0x00, 0, 0, 0, 0x00000963BF61C16F, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (28808);
INSERT INTO `spell_affect` VALUES (28808, 0, 0, 0x00, 0, 0, 0, 0x0000000411041E40, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15318);
INSERT INTO `spell_affect` VALUES (15318, 0, 0, 0x00, 0, 0, 0, 0x00000D4A068BE104, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15272);
INSERT INTO `spell_affect` VALUES (15272, 0, 0, 0x00, 0, 0, 0, 0x00000D4A068BE104, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15320);
INSERT INTO `spell_affect` VALUES (15320, 0, 0, 0x00, 0, 0, 0, 0x00000D4A068BE104, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15260);
INSERT INTO `spell_affect` VALUES (15260, 0, 0, 0x00, 0, 0, 0, 0x00000442068BA000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15327);
INSERT INTO `spell_affect` VALUES (15327, 0, 0, 0x00, 0, 0, 0, 0x00000442068BA000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15328);
INSERT INTO `spell_affect` VALUES (15328, 0, 0, 0x00, 0, 0, 0, 0x00000442068BA000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15329);
INSERT INTO `spell_affect` VALUES (15329, 0, 0, 0x00, 0, 0, 0, 0x00000442068BA000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15330);
INSERT INTO `spell_affect` VALUES (15330, 0, 0, 0x00, 0, 0, 0, 0x00000442068BA000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (17322);
INSERT INTO `spell_affect` VALUES (17322, 0, 0, 0x00, 0, 0, 0, 0x00000542068AA004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (17323);
INSERT INTO `spell_affect` VALUES (17323, 0, 0, 0x00, 0, 0, 0, 0x00000542068AA004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14523);
INSERT INTO `spell_affect` VALUES (14523, 1, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14784);
INSERT INTO `spell_affect` VALUES (14784, 1, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14785);
INSERT INTO `spell_affect` VALUES (14785, 1, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14786);
INSERT INTO `spell_affect` VALUES (14786, 1, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14787);
INSERT INTO `spell_affect` VALUES (14787, 1, 0, 0x00, 0, 0, 0, 0xFFFFFFFFFFFFFFFF, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14912);
INSERT INTO `spell_affect` VALUES (14912, 0, 0, 0x00, 0, 0, 0, 0x0000000000041400, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15013);
INSERT INTO `spell_affect` VALUES (15013, 0, 0, 0x00, 0, 0, 0, 0x0000000000041400, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (15014);
INSERT INTO `spell_affect` VALUES (15014, 0, 0, 0x00, 0, 0, 0, 0x0000000000041400, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14747);
INSERT INTO `spell_affect` VALUES (14747, 0, 0, 0x00, 0, 0, 0, 0x0000000000000002, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14770);
INSERT INTO `spell_affect` VALUES (14770, 0, 0, 0x00, 0, 0, 0, 0x0000000000000002, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14771);
INSERT INTO `spell_affect` VALUES (14771, 0, 0, 0x00, 0, 0, 0, 0x0000000000000002, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (44297);
INSERT INTO `spell_affect` VALUES (44297, 0, 0, 0x00, 0, 0, 0, 0x0000000000010000, 0);

-- 5201_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (30288);
INSERT INTO `spell_affect` VALUES (30288, 0, 0, 0x00, 0, 0, 0, 0x0000004000000001, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (30289);
INSERT INTO `spell_affect` VALUES (30289, 0, 0, 0x00, 0, 0, 0, 0x0000004000000001, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (30290);
INSERT INTO `spell_affect` VALUES (30290, 0, 0, 0x00, 0, 0, 0, 0x0000004000000001, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (30291);
INSERT INTO `spell_affect` VALUES (30291, 0, 0, 0x00, 0, 0, 0, 0x0000004000000001, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (30292);
INSERT INTO `spell_affect` VALUES (30292, 0, 0, 0x00, 0, 0, 0, 0x0000004000000001, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18427);
INSERT INTO `spell_affect` VALUES (18427, 0, 0, 0x00, 0, 0, 0, 0x0000000000020006, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18428);
INSERT INTO `spell_affect` VALUES (18428, 0, 0, 0x00, 0, 0, 0, 0x0000000000020006, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (18429);
INSERT INTO `spell_affect` VALUES (18429, 0, 0, 0x00, 0, 0, 0, 0x0000000000020006, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (31216);
INSERT INTO `spell_affect` VALUES (31216, 1, 0, 0x00, 0, 0, 0, 0x0000000002000004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (31217);
INSERT INTO `spell_affect` VALUES (31217, 1, 0, 0x00, 0, 0, 0, 0x0000000002000004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (31218);
INSERT INTO `spell_affect` VALUES (31218, 1, 0, 0x00, 0, 0, 0, 0x0000000002000004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (31219);
INSERT INTO `spell_affect` VALUES (31219, 1, 0, 0x00, 0, 0, 0, 0x0000000002000004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (31220);
INSERT INTO `spell_affect` VALUES (31220, 1, 0, 0x00, 0, 0, 0, 0x0000000002000004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14171);
INSERT INTO `spell_affect` VALUES (14171, 0, 0, 0x00, 0, 0, 0, 0x0000000000100000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14172);
INSERT INTO `spell_affect` VALUES (14172, 0, 0, 0x00, 0, 0, 0, 0x0000000000100000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (14173);
INSERT INTO `spell_affect` VALUES (14173, 0, 0, 0x00, 0, 0, 0, 0x0000000000100000, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (12290);
INSERT INTO `spell_affect` VALUES (12290, 0, 0, 0x00, 0, 0, 0, 0x0000000000000004, 0);

DELETE FROM `spell_affect` WHERE `entry` IN (12963);
INSERT INTO `spell_affect` VALUES (12963, 0, 0, 0x00, 0, 0, 0, 0x0000000000000004, 0);

-- 5212
DELETE FROM command WHERE name IN ('.casttarget');

INSERT INTO `command` VALUES 
('casttarget',3,'Syntax: .casttarget #spellid\r\n  Selected target will cast #spellid to his victim.');
DELETE FROM `mangos_string` WHERE `entry` = 579;
INSERT INTO `mangos_string` VALUES
 (579,'Selected player or creature not have victim.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5228 & 5233
DROP TABLE IF EXISTS `gameobject_scripts`;
DROP TABLE IF EXISTS `event_scripts`;
CREATE TABLE `event_scripts` (
`id` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0',
`delay` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0',
`command` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0',
`datalong` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0',
`datalong2` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0',
`datatext` TEXT NOT NULL ,
`x` FLOAT NOT NULL DEFAULT '0',
`y` FLOAT NOT NULL DEFAULT '0',
`z` FLOAT NOT NULL DEFAULT '0',
`o` FLOAT NOT NULL DEFAULT '0'
) ENGINE = MYISAM DEFAULT CHARSET = utf8; 

-- or ALTER TABLE `gameobject_scripts` RENAME TO `event_scripts`;

-- 5234_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (29601);
INSERT INTO `spell_proc_event` VALUES
(29601,0,0,0,7,0x0000000000000000,0x00004000,0);

-- 5238_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (33727,33754,33755,33756,33757);
INSERT INTO `spell_proc_event` VALUES
(33727,0,0,0,0,0x0000000000000000,0x00000000,0), /* not used*/
(33754,0,0,0,0,0x0000000000000000,0x00000000,0), /* not used*/
(33755,0,0,0,0,0x0000000000000000,0x00000000,0), /* not used*/
(33756,0,0,0,0,0x0000000000000000,0x00000000,0), /* not used*/
(33757,0,0,0,0,0x0000000000000000,0x00000001,0);

-- 5242
ALTER TABLE `instance_template`
  ADD `parent` int(11) unsigned NOT NULL AFTER `map`;
