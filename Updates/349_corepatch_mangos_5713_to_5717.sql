-- 5714
DELETE FROM `command` WHERE `name` = "nearobjects";
INSERT INTO `command` VALUES
('nearobjects',3,'Syntax: .nearobjects [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.');
DELETE FROM mangos_string WHERE entry in (524,581);
INSERT INTO mangos_string VALUES
(524,'Selected object:\n|cffffffff|Hitemset:%d|h[%s]|h|r\nGUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(581,'Found near gameobjects (distance %f): %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
