-- Start update pack 340 -- 2008-02-18
-- This is a bogus pack. Had this been a real pack, their would have been real content in here.
-- We had to add this so that people wouldn't wonder "where is update pack 340"
-- There IS NO update pack 340. 0.9.2 had to be re-dumped, so SVN version was incremented.
-- if you took the time to read this... YAY!

-- SD2 stuffs

-- r260
UPDATE `creature_template` SET `ScriptName` = 'npc_lady_katrana_prestor' WHERE `entry` = 1749;
-- r261
UPDATE `creature_template` SET `ScriptName` = 'npc_general_marcus_jonathan' WHERE `entry` = 466;
-- r262
UPDATE `creature_template` SET `ScriptName` = 'npc_royal_historian_archesonus' WHERE `entry` = 8879;
UPDATE `creature_template` SET `ScriptName` = 'npc_bunthen_plainswind' WHERE `entry` = 11798;
UPDATE `creature_template` SET `ScriptName` = 'npc_silva_filnaveth' WHERE `entry` = 11800;


-- And finally db_version UPDATE
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.9.2 (340) with SD2 calls rev.262');
-- END -- 2008-02-18

