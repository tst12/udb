-- 6213
RENAME TABLE `spell_teleport` TO `spell_target_position`;

-- 6219
DELETE FROM `spell_proc_event` WHERE `entry` IN (44835);
INSERT INTO `spell_proc_event` VALUES
(44835,0,0,0,7,0x0000008000000000,0x00000001,0);
