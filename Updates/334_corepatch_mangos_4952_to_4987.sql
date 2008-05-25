-- 4952
DELETE FROM `spell_proc_event` WHERE `entry` IN (13165,14318,14319,14320,14321,14322,25296,27044);
INSERT INTO `spell_proc_event` VALUES
 (13165,0,0,0,0,0,0x00080000,0),
 (14318,0,0,0,0,0,0x00080000,0),
 (14319,0,0,0,0,0,0x00080000,0),
 (14320,0,0,0,0,0,0x00080000,0),
 (14321,0,0,0,0,0,0x00080000,0),
 (14322,0,0,0,0,0,0x00080000,0),
 (25296,0,0,0,0,0,0x00080000,0),
 (27044,0,0,0,0,0,0x00080000,0);
-- 4975
DELETE FROM `spell_proc_event` WHERE `entry` IN (20210,20212,20213,20214,20215,37189);
INSERT INTO `spell_proc_event` VALUES
 (20210,0,0,0,10,0x0000000000206000,0x10000000,0),
 (20212,0,0,0,10,0x0000000000206000,0x10000000,0),
 (20213,0,0,0,10,0x0000000000206000,0x10000000,0),
 (20214,0,0,0,10,0x0000000000206000,0x10000000,0),
 (20215,0,0,0,10,0x0000000000206000,0x10000000,0),
 (37189,0,0,0,10,0x0000000000006000,0x10000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (20216);
INSERT INTO `spell_affect` VALUES 
 (20216,0,0,0,0,0,0,0x0000000000206000,0);

-- 4984
DELETE FROM `spell_proc_event` WHERE `entry` IN (12169,20128,20131,20132,20133,20134,32587,32776,32777,38031);
INSERT INTO `spell_proc_event` VALUES
 (12169,0,0,0,0,0,0x00000040,0),
 (20128,0,0,0,0,0,0x00000040,0),
 (20131,0,0,0,0,0,0x00000040,0),
 (20132,0,0,0,0,0,0x00000040,0),
 (20133,0,0,0,0,0,0x00000040,0),
 (20134,0,0,0,0,0,0x00000040,0),
 (32587,0,0,0,0,0,0x00000040,0),
 (32776,0,0,0,0,0,0x00000040,0),
 (32777,0,0,0,0,0,0x00000040,0),
 (38031,0,0,0,0,0,0x00000040,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (18803,33299,39530);
INSERT INTO `spell_proc_event` VALUES
 (18803,0,0,0,0,0,0x00004000,0),
 (33299,0,0,0,0,0,0x00004000,0),
 (39530,0,0,0,0,0,0x00004000,0);

