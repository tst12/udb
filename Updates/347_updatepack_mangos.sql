-- Start update pack 347 -- 2008-04-09 -- Final 2.3.3 DB

-- Startup error
UPDATE `item_template` SET `BuyCount` = 1 WHERE `BuyCount` = 0;
UPDATE `fishing_loot_template` SET `group` = 0 WHERE `entry` IN (8, 11, 405, 16, 406, 3520, 3525, 1581, 44, 47, 440, 57, 75, 92, 100, 493, 3607, 122, 125, 2097, 978, 1377, 2597, 312, 357, 387) AND `group` = 1;
UPDATE `skinning_loot_template` SET `group` = 0 WHERE `entry` IN (13896, 14020, 6352, 6369, 14123, 7977, 8213, 3674, 11497, 5431, 10151, 2505, 10339, 5719, 5720, 5721, 5722, 13599, 4422);

-- NF Start
-- creature_template updates are from book, but i only made this for my own sake
-- include if wanted, i'm aware some are already working on this rather huge project
-- mostly low-end outland, mobs i already know are acting as nazi

--
-- first entries here are NOT from book
--

-- Temporus
UPDATE `creature_template` SET
    `mindmg` = 2300,
    `maxdmg` = 3000,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 9500
WHERE `entry`=17880;
-- Chrono Lord Deja
UPDATE `creature_template` SET
    `mindmg` = 2100,
    `maxdmg` = 2900,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 9000
WHERE `entry`=17879;
-- Vazruden
UPDATE `creature_template` SET
    `maxlevel` = 62
WHERE `entry`=17537;
-- Nazan
UPDATE `creature_template` SET
    `maxlevel` = 62
WHERE `entry`=17536;

-- Shadowmoon Warlock
UPDATE `creature_template` SET
    `maxlevel` = 62
WHERE `entry`=17371;
-- Shadowmoon Technician
UPDATE `creature_template` SET
    `maxlevel` = 62
WHERE `entry`=17414;
-- Shadowmoon Summoner
UPDATE `creature_template` SET
    `maxlevel` = 62
WHERE `entry`=17395;

--
-- from here down, values verified by book
--

-- Cabal Abjurist
UPDATE `creature_template` SET
    `mindmg` = 168,
    `maxdmg` = 247,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3915,
    `minhealth` = 4422,
    `maxhealth` = 4572
WHERE `entry`=21660;
-- Cabal Acolyte
UPDATE `creature_template` SET
    `mindmg` = 1045,
    `maxdmg` = 1473,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5235,
    `minhealth` = 16227,
    `maxhealth` = 16227
WHERE `entry`=18633;
-- Cabal Agent
UPDATE `creature_template` SET
    `mindmg` = 150,
    `maxdmg` = 232,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6492,
    `minhealth` = 6542,
    `maxhealth` = 6986
WHERE `entry`=19503;
-- Cabal Assassin
UPDATE `creature_template` SET
    `mindmg` = 1110,
    `maxdmg` = 1569,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5459,
    `minhealth` = 20958,
    `maxhealth` = 20958
WHERE `entry`=18636;
-- Cabal Cultist
UPDATE `creature_template` SET
    `mindmg` = 1127,
    `maxdmg` = 1664,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6642,
    `minhealth` = 17579,
    `maxhealth` = 18164
WHERE `entry`=18631;
-- Cabal Deathsworn
UPDATE `creature_template` SET
    `mindmg` = 1127,
    `maxdmg` = 1664,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6642,
    `minhealth` = 20283,
    `maxhealth` = 20958
WHERE `entry`=18635;
-- Cabal Executioner
UPDATE `creature_template` SET
    `mindmg` = 1436,
    `maxdmg` = 2031,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 7089,
    `minhealth` = 21543,
    `maxhealth` = 21543
WHERE `entry`=18632;
-- Cabal Familiar
UPDATE `creature_template` SET
    `mindmg` = 284,
    `maxdmg` = 412,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3277,
    `minhealth` = 5206,
    `maxhealth` = 5206
WHERE `entry`=18641;
-- Cabal Fanatic
UPDATE `creature_template` SET
    `mindmg` = 1177,
    `maxdmg` = 1664,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6792,
    `minhealth` = 20958,
    `maxhealth` = 20958
WHERE `entry`=18830;
-- Cabal Initiate
UPDATE `creature_template` SET
    `mindmg` = 160,
    `maxdmg` = 234,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3675,
    `minhealth` = 4274,
    `maxhealth` = 4422
WHERE `entry`=21907;
-- Cabal Interrogator
UPDATE `creature_template` SET
    `mindmg` = 177,
    `maxdmg` = 260,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4156,
    `minhealth` = 4572,
    `maxhealth` = 4731,
        `minlevel` = 64
WHERE `entry`=22378;
-- Cabal Ritualist
UPDATE `creature_template` SET
    `mindmg` = 1045,
    `maxdmg` = 1543,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5355,
    `minhealth` = 16227,
    `maxhealth` = 16767
WHERE `entry`=18794;
-- Cabal Shadow Priest
UPDATE `creature_template` SET
    `mindmg` = 1045,
    `maxdmg` = 1543,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5355,
    `minhealth` = 16227,
    `maxhealth` = 16767
WHERE `entry`=18637;
-- Cabal Skirmisher
UPDATE `creature_template` SET
    `mindmg` = 181,
    `maxdmg` = 253,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4691,
    `minhealth` = 5527,
    `maxhealth` = 5527
WHERE `entry`=21661;
-- Cabal Spellbinder
UPDATE `creature_template` SET
    `mindmg` = 1092,
    `maxdmg` = 1569,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5594,
    `minhealth` = 16767,
    `maxhealth` = 17232
WHERE `entry`=18639;
-- Cabal Spell-weaver
UPDATE `creature_template` SET
    `mindmg` = 160,
    `maxdmg` = 234,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3675,
    `minhealth` = 4274,
    `maxhealth` = 4422
WHERE `entry`=21902;
-- Cabal Summoner
UPDATE `creature_template` SET
    `mindmg` = 1092,
    `maxdmg` = 1569,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5594,
    `minhealth` = 16767,
    `maxhealth` = 17232
WHERE `entry`=18634;
-- Cabal Tomb-Raider
UPDATE `creature_template` SET
    `mindmg` = 181,
    `maxdmg` = 267,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4841,
    `minhealth` = 5527,
    `maxhealth` = 5715
WHERE `entry`=21662;
-- Cabal Warlock
UPDATE `creature_template` SET
    `mindmg` = 1045,
    `maxdmg` = 1473,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5235,
    `minhealth` = 16227,
    `maxhealth` = 16227
WHERE `entry`=18640;
-- Caedakar the Vicious
UPDATE `creature_template` SET
    `mindmg` = 35,
    `maxdmg` = 40,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 829,
    `minhealth` = 582,
    `maxhealth` = 582
WHERE `entry`=3900;
-- Cannon Master Willey
UPDATE `creature_template` SET
    `mindmg` = 727,
    `maxdmg` = 965,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3791,
    `minhealth` = 36624,
    `maxhealth` = 36624,
    `minmana` = 0,
    `maxmana` = 0
WHERE `entry`=10997;
-- Caliph Scorpidsting
UPDATE `creature_template` SET
    `mindmg` = 77,
    `maxdmg` = 102,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 2780,
    `minhealth` = 2399,
    `maxhealth` = 2399
WHERE `entry`=7847;
-- Cannoneer Smythe
UPDATE `creature_template` SET
    `mindmg` = 28,
    `maxdmg` = 37,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 817,
    `minhealth` = 449,
    `maxhealth` = 449
WHERE `entry`=3454;

-- Bonelasher
UPDATE `creature_template` SET
    `mindmg` = 191,
    `maxdmg` = 281,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5141,
    `minhealth` = 5715,
    `maxhealth` = 5914
WHERE `entry`=18470;

-- Ethereal Apprentice
UPDATE `creature_template` SET
    `mindmg` = 558,
    `maxdmg` = 781,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4275,
    `minhealth` = 7096,
    `maxhealth` = 7096,
    `minlevel` = 65,
        `maxmana` = 13950
WHERE `entry`=18430;
-- Ethereal Arcanist
UPDATE `creature_template` SET
    `mindmg` = 163,
    `maxdmg` = 240,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 2600,
    `minhealth` = 4402,
    `maxhealth` = 4554
WHERE `entry`=21405;
-- Ethereal Nethermancer
UPDATE `creature_template` SET
    `mindmg` = 177,
    `maxdmg` = 260,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4156,
    `minhealth` = 4572,
    `maxhealth` = 4731
WHERE `entry`=21370;
-- Ethereal Plunderer
UPDATE `creature_template` SET
    `mindmg` = 191,
    `maxdmg` = 281,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5141,
    `minhealth` = 5715,
    `maxhealth` = 5914
WHERE `entry`=21368;

-- Lashh'an Talonite
UPDATE `creature_template` SET
    `mindmg` = 170,
    `maxdmg` = 251,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5441,
    `minhealth` = 5914,
    `maxhealth` = 6116
WHERE `entry`=19943;
-- Lashh'an Matriarch
UPDATE `creature_template` SET
    `mindmg` = 195,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4515,
    `minhealth` = 4892,
    `maxhealth` = 4892
WHERE `entry`=20113;
-- Lashh'an Windwalker
UPDATE `creature_template` SET
    `mindmg` = 186,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4395,
    `minhealth` = 4731,
    `maxhealth` = 4892
WHERE `entry`=19945;
-- Lashh'an Wing Guard
UPDATE `creature_template` SET
    `mindmg` = 200,
    `maxdmg` = 295,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5441,
    `minhealth` = 5914,
    `maxhealth` = 6116
WHERE `entry`=19944;

-- Netherweb Victim
UPDATE `creature_template` SET
    `mindmg` = 120,
    `maxdmg` = 150,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 2500,
    `minhealth` = 300,
    `maxhealth` = 300
WHERE `entry`=22355;
-- Dread Relic Thrall
UPDATE `creature_template` SET
    `mindmg` = 100,
    `maxdmg` = 130,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 2500,
    `speed` = 0.9,
    `minhealth` = 250,
    `maxhealth` = 250
WHERE `entry`=22369;

-- Kil'sorrow Agent
UPDATE `creature_template` SET
    `mindmg` = 186,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4395,
    `minhealth` = 4731,
    `maxhealth` = 4892
WHERE `entry`=21276;
-- Kil'sorrow Cultist
UPDATE `creature_template` SET
    `mindmg` = 186,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4395,
    `minhealth` = 4731,
    `maxhealth` = 4892
WHERE `entry`=17147;
-- Kil'sorrow Deathsworn
UPDATE `creature_template` SET
    `mindmg` = 301,
    `maxdmg` = 442,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5441,
    `minhealth` = 5914,
    `maxhealth` = 6116
WHERE `entry`=17148;
-- Kil'sorrow Invader
UPDATE `creature_template` SET
    `mindmg` = 301,
    `maxdmg` = 442,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5441,
    `minhealth` = 5914,
    `maxhealth` = 6116
WHERE `entry`=18397;
-- Kil'sorrow Ritualist
UPDATE `creature_template` SET
    `mindmg` = 204,
    `maxdmg` = 301,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4875,
    `minhealth` = 5060,
    `maxhealth` = 5233
WHERE `entry`=18658;
-- Kil'sorrow Spellbinder
UPDATE `creature_template` SET
    `mindmg` = 195,
    `maxdmg` = 287,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4875,
    `minhealth` = 4892,
    `maxhealth` = 5060
WHERE `entry`=17146;

-- Boulderfist Crusher
UPDATE `creature_template` SET
    `mindmg` = 286,
    `maxdmg` = 421,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5141,
    `minhealth` = 5715,
    `maxhealth` = 5914
WHERE `entry`=17134;
-- Boulderfist Mystic
UPDATE `creature_template` SET
    `mindmg` = 177,
    `maxdmg` = 260,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4156,
    `minhealth` = 4572,
    `maxhealth` = 4731
WHERE `entry`=17135;
-- Boulderfist Warrior
UPDATE `creature_template` SET
    `mindmg` = 180,
    `maxdmg` = 265,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5441,
    `minhealth` = 5914,
    `maxhealth` = 6116
WHERE `entry`=17136;
-- Boulderfist Mage
UPDATE `creature_template` SET
    `mindmg` = 186,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4395,
    `minhealth` = 4731,
    `maxhealth` = 4892
WHERE `entry`=17137;
-- Boulderfist Invader
UPDATE `creature_template` SET
    `mindmg` = 286,
    `maxdmg` = 421,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5141,
    `minhealth` = 5715,
    `maxhealth` = 5914
WHERE `entry`=18260;
-- Boulderfist Hunter
UPDATE `creature_template` SET
    `mindmg` = 343,
    `maxdmg` = 506,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5141,
    `minhealth` = 5715,
    `maxhealth` = 5914
WHERE `entry`=18352;
-- Boulderfist Saboteur
UPDATE `creature_template` SET
    `mindmg` = 29,
    `maxdmg` = 40,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4991,
    `minhealth` = 2558,
    `maxhealth` = 2558
WHERE `entry`=18396;

-- Infinite Chrono-Lord
UPDATE `creature_template` SET
    `mindmg` = 1455,
    `maxdmg` = 2056,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5954,
    `minhealth` = 88545,
    `maxhealth` = 88545,
    `minmana` = 33090,
    `maxmana` = 33090
WHERE `entry`=21697;
-- Infinite Defiler
UPDATE `creature_template` SET
    `mindmg` = 855,
    `maxdmg` = 1204,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4995,
    `minhealth` = 15176,
    `maxhealth` = 15176,
    `minmana` = 8973,
    `maxmana` = 8973,
    `minlevel` = 68
WHERE `entry`=18171;
-- Infinite Slayer
UPDATE `creature_template` SET
    `mindmg` = 922,
    `maxdmg` = 1299,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6192,
    `minhealth` = 18972,
    `maxhealth` = 18972,
    `minlevel` = 68
WHERE `entry`=18170;
-- Infinite Timereaver
UPDATE `creature_template` SET
    `mindmg` = 2745,
    `maxdmg` = 3881,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 7387,
    `minhealth` = 110700,
    `maxhealth` = 110700
WHERE `entry`=21698;
-- Infinite Whelp
UPDATE `creature_template` SET
    `mindmg` = 101,
    `maxdmg` = 143,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6792,
    `minhealth` = 2445,
    `maxhealth` = 2445
WHERE `entry`=21818;

-- Ironjaw
UPDATE `creature_template` SET
    `mindmg` = 181,
    `maxdmg` = 267,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4841,
    `minhealth` = 5527,
    `maxhealth` = 5715
WHERE `entry`=18670;

-- Bonestripper Buzzard
UPDATE `creature_template` SET
    `mindmg` = 121,
    `maxdmg` = 165,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3462,
    `minhealth` = 3989,
    `maxhealth` = 4142
WHERE `entry`=16972;
-- Bonestripper Vulture
UPDATE `creature_template` SET
    `mindmg` = 172,
    `maxdmg` = 240,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4241,
    `minhealth` = 5158,
    `maxhealth` = 5341
WHERE `entry`=16973;
-- Blackwind Sabercat
UPDATE `creature_template` SET
    `mindmg` = 213,
    `maxdmg` = 307,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6940,
    `minhealth` = 9082,
    `maxhealth` = 9335
WHERE `entry`=21723;
-- Grovestalker Lynx
UPDATE `creature_template` SET
    `mindmg` = 132,
    `maxdmg` = 194,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5441,
    `minhealth` = 5914,
    `maxhealth` = 6116
WHERE `entry`=21022;

-- Cohlien Frostweaver
UPDATE `creature_template` SET
    `mindmg` = 214,
    `maxdmg` = 301,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4995,
    `minhealth` = 6803,
    `maxhealth` = 6803
WHERE `entry`=19545;
-- Crystal Flayer
UPDATE `creature_template` SET
    `mindmg` = 210,
    `maxdmg` = 310,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 5742,
    `minhealth` = 6116,
    `maxhealth` = 6326
WHERE `entry`=21189;
-- First Fragment Guardian
UPDATE `creature_template` SET
    `mindmg` = 757,
    `maxdmg` = 1071,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6792,
    `minhealth` = 20958,
    `maxhealth` = 20958
WHERE `entry`=22890;
-- Enraged Fire Spirit
UPDATE `creature_template` SET
    `mindmg` = 185,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6342,
    `minhealth` = 6542,
    `maxhealth` = 6761
WHERE `entry`=21061;
-- Searing Elemental
UPDATE `creature_template` SET
    `mindmg` = 176,
    `maxdmg` = 260,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6042,
    `minhealth` = 6326,
    `maxhealth` = 6542
WHERE `entry`=20514;
-- Raging Fire-Soul
UPDATE `creature_template` SET
    `mindmg` = 263,
    `maxdmg` = 378,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6940,
    `minhealth` = 9082,
    `maxhealth` = 9335
WHERE `entry`=22311;
-- Greater Fel-Spark
UPDATE `creature_template` SET
    `mindmg` = 262,
    `maxdmg` = 378,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6940,
    `minhealth` = 9082,
    `maxhealth` = 9335
WHERE `entry`=22323;

-- Bonechewer Ripper
UPDATE `creature_template` SET
    `mindmg` = 382,
    `maxdmg` = 529,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4091,
    `minhealth` = 16506,
    `maxhealth` = 16506,
    `maxlevel` = 61
WHERE `entry`=17281;
-- Bonechewer Beastmaster
UPDATE `creature_template` SET
    `mindmg` = 343,
    `maxdmg` = 471,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3791,
    `minhealth` = 14439,
    `maxhealth` = 14439,
    `maxlevel` = 60
WHERE `entry`=17455;

-- Laughing Skull Enforcer
UPDATE `creature_template` SET
    `mindmg` = 636,
    `maxdmg` = 881,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4113,
    `minhealth` = 14958,
    `maxhealth` = 14958,
    `minmana` = 5158,
    `maxmana` = 5158
WHERE `entry`=17370;
-- Laughing Skull Legionnaire
UPDATE `creature_template` SET
    `mindmg` = 636,
    `maxdmg` = 881,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4113,
    `minhealth` = 14958,
    `maxhealth` = 14958,
    `minmana` = 5158,
    `maxmana` = 5158,
    `maxlevel` = 61
WHERE `entry`=17626;
-- Laughing Skull Rogue
UPDATE `creature_template` SET
    `mindmg` = 509,
    `maxdmg` = 705,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3311,
    `minhealth` = 7479,
    `maxhealth` = 7479,
    `maxlevel` = 61
WHERE `entry`=17491;
-- Laughing Skull Warden
UPDATE `creature_template` SET
    `mindmg` = 726,
    `maxdmg` = 1011,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4410,
    `minhealth` = 16023,
    `maxhealth` = 16023,
    `maxlevel` = 62
WHERE `entry`=17624;

-- Hellfire Familiar
UPDATE `creature_template` SET
    `mindmg` = 189,
    `maxdmg` = 262,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3316,
    `minhealth` = 4126,
    `maxhealth` = 4126,
    `minmana` = 9944,
    `maxmana` = 9944,
    `maxlevel` = 61
WHERE `entry`=19016;
-- Hellfire Imp
UPDATE `creature_template` SET
    `mindmg` = 909,
    `maxdmg` = 1259,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3316,
    `minhealth` = 4126,
    `maxhealth` = 4126,
    `minmana` = 9944,
    `maxmana` = 9944
WHERE `entry`=17477;
-- Hellfire Sentry
UPDATE `creature_template` SET
    `mindmg` = 326,
    `maxdmg` = 514,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3408,
    `minhealth` = 9744,
    `maxhealth` = 13962,
    `minlevel` = 57
WHERE `entry`=17517;
-- Hellfire Watcher
UPDATE `creature_template` SET
    `mindmg` = 284,
    `maxdmg` = 400,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 1770,
    `minhealth` = 10146,
    `maxhealth` = 10146,
    `maxmana` = 5598
WHERE `entry`=17309;

-- Hellfire Channeler
UPDATE `creature_template` SET
    `mindmg` = 4926,
    `maxdmg` = 6957,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6193,
    `minhealth` = 242800,
    `maxhealth` = 242800
WHERE `entry`=17256;

-- The Maker
UPDATE `creature_template` SET
    `mindmg` = 1255,
    `maxdmg` = 1747,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4391,
    `minhealth` = 38722,
    `maxhealth` = 38722,
    `maxlevel` = 62
WHERE `entry`=17381;
-- Keli'dan the Breaker
UPDATE `creature_template` SET
    `mindmg` = 805,
    `maxdmg` = 1158,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 2374,
    `minhealth` = 34830,
    `maxhealth` = 34830,
    `maxlevel` = 63
WHERE `entry`=17377;
-- Broggok
UPDATE `creature_template` SET
    `mindmg` = 651,
    `maxdmg` = 937,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 2374,
    `minhealth` = 30960,
    `maxhealth` = 30960,
    `minmana` = 18468,
    `maxmana` = 18468
WHERE `entry`=17380;

-- Felguard Brute
UPDATE `creature_template` SET
    `mindmg` = 637,
    `maxdmg` = 882,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3289,
    `minhealth` = 14958,
    `maxhealth` = 14958,
    `maxlevel` = 61
WHERE `entry`=18894;
-- Felguard Annihilator
UPDATE `creature_template` SET
    `mindmg` = 826,
    `maxdmg` = 1150,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3530,
    `minhealth` = 15489,
    `maxhealth` = 15489,
    `maxlevel` = 62
WHERE `entry`=17400;
-- Felhound Manastalker
UPDATE `creature_template` SET
    `mindmg` = 518,
    `maxdmg` = 755,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3196,
    `minhealth` = 3984,
    `maxhealth` = 4126,
    `minmana` = 2434,
    `maxmana` = 2486,
    `minlevel` = 60,
    `maxlevel` = 61,
    `faction_A` = 90,
    `faction_H` = 90,
    `resistance2`=75, `resistance3`=75, `resistance4`=75, `resistance5`=75, `resistance6`=0
WHERE `entry`=17401;
-- Nascent Fel Orc
UPDATE `creature_template` SET
    `mindmg` = 217,
    `maxdmg` = 326,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4241,
    `minhealth` = 6963,
    `maxhealth` = 7210,
    `maxlevel` = 62
WHERE `entry`=17398;
-- Fel Orc Neophyte
UPDATE `creature_template` SET
    `mindmg` = 348,
    `maxdmg` = 484,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4391,
    `minhealth` = 10682,
    `maxhealth` = 10682,
    `maxlevel` = 62
WHERE `entry`=17429;
-- Fel Orc Convert
UPDATE `creature_template` SET
    `mindmg` = 435,
    `maxdmg` = 614,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 6492,
    `minhealth` = 9803,
    `maxhealth` = 9803,
    `maxlevel` = 69
WHERE `entry`=17083;
-- Fel Reaver
UPDATE `creature_template` SET
    `mindmg` = 1682,
    `maxdmg` = 2378,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 9657,
    `minhealth` = 104790,
    `maxhealth` = 104790
WHERE `entry`=18733;
-- Fiendish Hound
UPDATE `creature_template` SET
    `mindmg` = 144,
    `maxdmg` = 199,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 3075,
    `minhealth` = 2191,
    `maxhealth` = 2191,
    `maxmana` = 2434
WHERE `entry`=17540;

--
-- quest
--

-- Blast the Infernals!
UPDATE `quest_template` SET `ReqSpellCast2`=37055 WHERE `entry` IN (10564,10598);
-- Tuurem
UPDATE `quest_template` SET `ExclusiveGroup`=9793 WHERE `entry` IN (9793,10104);
-- Honoring a Hero
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags` &~1 WHERE `entry` IN (8149,8150);
-- Zorus the Judicator
UPDATE `quest_template` SET `MinLevel`=67 WHERE `entry`=11045;
-- intro quests
UPDATE `quest_template` SET `MinLevel`=2 WHERE `ExclusiveGroup`=10068;

--
-- creature
--

-- missing npcflag
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (21183);
-- Netherspite
INSERT IGNORE INTO `creature_template_addon` VALUES (15689, 0, 0, 0, 0, 0, '30522 0');
-- Lesser Shadow Fissure
UPDATE `creature_template` SET `speed`=0.01 WHERE `entry`=17471;

-- false
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (17378,17954);
-- Myrokos Silentform
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`=5, `RewOnKillRepValue2`=-125 WHERE `creature_id`=13085;
-- Avian Ripper
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`=1 WHERE `creature_id`=21891;
-- Shattered Halls reputation
UPDATE `creature_onkill_reputation`,`creature` SET `RewOnKillRepValue1`=6 WHERE
    `creature`.`id`=`creature_onkill_reputation`.`creature_id` AND
    `creature`.`map`=540 AND
    `RewOnKillRepValue1`=50;
UPDATE `creature_onkill_reputation`,`creature` SET `RewOnKillRepValue2`=6 WHERE
    `creature`.`id`=`creature_onkill_reputation`.`creature_id` AND
    `creature`.`map`=540 AND
    `RewOnKillRepValue2`=50;
-- Blood Furnace
UPDATE `creature_onkill_reputation`,`creature` SET `MaxStanding1`=4, `MaxStanding2`=4 WHERE
    `creature`.`id`=`creature_onkill_reputation`.`creature_id` AND
    `creature`.`map`=542;
-- Hellfire Ramparts
UPDATE `creature_onkill_reputation`,`creature` SET `MaxStanding1`=4, `MaxStanding2`=4 WHERE
    `creature`.`id`=`creature_onkill_reputation`.`creature_id` AND
    `creature`.`map`=543;
-- Sporeggar reputation
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (17955,19402,18127,19519,19734,18125,18124,18136,18137,18282);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES
(17955,970,0,5,0,15,0,0,0,0),
(19402,970,0,5,0,15,0,0,0,0),
(18127,970,0,5,0,15,0,0,0,0),
(19519,970,0,5,0,15,0,0,0,0),
(19734,970,0,5,0,15,0,0,0,0),
(18125,970,0,5,0,15,0,0,0,0),
(18124,970,0,5,0,15,0,0,0,0),
(18136,970,0,6,0,15,0,0,0,0),
(18137,970,0,6,0,15,0,0,0,0),
(18282,970,0,6,0,15,0,0,0,0);
-- Slave Pens reputation (incl heroic creature id's)
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (17816,19884,17817,19892,17890,17893,22938,17940,19891,17941,19893,17942,19894,17957,19885,17958,19886,17959,19889,17960,19890,17961,19887,17962,19903,17991,19895,21127,21843);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES
(17816,942,0,4,0,5,0,0,0,0),
(19884,942,0,7,0,15,0,0,0,0),
(17817,942,0,4,0,5,0,0,0,0),
(19892,942,0,7,0,15,0,0,0,0),
(17890,942,0,4,0,5,0,0,0,0),
(17893,942,0,4,0,5,0,0,0,0),
(22938,942,0,7,0,15,0,0,0,0),
(17940,942,0,4,0,5,0,0,0,0),
(19891,942,0,7,0,15,0,0,0,0),
(17941,942,0,4,0,50,0,0,0,0),
(19893,942,0,7,0,250,0,0,0,0),
(17942,942,0,4,0,50,0,0,0,0),
(19894,942,0,7,0,250,0,0,0,0),
(17957,942,0,4,0,5,0,0,0,0),
(19885,942,0,7,0,15,0,0,0,0),
(17958,942,0,4,0,5,0,0,0,0),
(19886,942,0,7,0,15,0,0,0,0),
(17959,942,0,4,0,5,0,0,0,0),
(19889,942,0,7,0,15,0,0,0,0),
(17960,942,0,4,0,5,0,0,0,0),
(19890,942,0,7,0,15,0,0,0,0),
(17961,942,0,4,0,5,0,0,0,0),
(19887,942,0,7,0,15,0,0,0,0),
(17962,942,0,4,0,5,0,0,0,0),
(19903,942,0,7,0,15,0,0,0,0),
(17991,942,0,4,0,50,0,0,0,0),
(19895,942,0,7,0,250,0,0,0,0),
(21127,942,0,4,0,5,0,0,0,0),
(21843,942,0,7,0,15,0,0,0,0);
-- Underbog reputation (incl heroic creature id's)
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (17723,20164,17724,20185,17725,20188,17726,20191,17727,20192,17728,20181,17729,20180,17731,20173,17734,20187,17735,20193,17770,20169,17771,20179,17826,20183,17871,20190,17882,20184,18105,20168,20465,21943,22300);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES
(17723,942,0,4,0,7,0,0,0,0),
(20164,942,0,7,0,15,0,0,0,0),
(17724,942,0,4,0,7,0,0,0,0),
(20185,942,0,7,0,15,0,0,0,0),
(17725,942,0,4,0,7,0,0,0,0),
(20188,942,0,7,0,15,0,0,0,0),
(17726,942,0,4,0,7,0,0,0,0),
(20191,942,0,7,0,15,0,0,0,0),
(17727,942,0,4,0,7,0,0,0,0),
(20192,942,0,7,0,15,0,0,0,0),
(17728,942,0,4,0,7,0,0,0,0),
(20181,942,0,7,0,15,0,0,0,0),
(17729,942,0,4,0,7,0,0,0,0),
(20180,942,0,7,0,15,0,0,0,0),
(17731,942,0,4,0,7,0,0,0,0),
(20173,942,0,7,0,15,0,0,0,0),
(17734,942,0,4,0,7,0,0,0,0),
(20187,942,0,7,0,15,0,0,0,0),
(17735,942,0,4,0,7,0,0,0,0),
(20193,942,0,7,0,15,0,0,0,0),
(17770,942,0,4,0,70,0,0,0,0),
(20169,942,0,7,0,250,0,0,0,0),
(17771,942,0,4,0,7,0,0,0,0),
(20179,942,0,7,0,15,0,0,0,0),
(17826,942,0,4,0,70,0,0,0,0),
(20183,942,0,4,0,250,0,0,0,0),
(17871,942,0,4,0,7,0,0,0,0),
(20190,942,0,7,0,15,0,0,0,0),
(17882,942,0,4,0,70,0,0,0,0),
(20184,942,0,7,0,250,0,0,0,0),
(18105,942,0,4,0,70,0,0,0,0),
(20168,942,0,7,0,250,0,0,0,0),
(20465,942,0,4,0,7,0,0,0,0),
(21943,942,0,7,0,15,0,0,0,0),
(22300,942,0,7,0,250,0,0,0,0);
-- Sha'tari Skyguard
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (21804,21911,21912,21985,21644,21649,21650,21651,21652,21728,21763,21787,23029,23161,23162,23163,23165,21838);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES
(21804,1031,0,6,0,5,0,0,0,0),
(21911,1031,0,7,0,10,0,0,0,0),
(21912,1031,0,7,0,10,0,0,0,0),
(21985,1031,0,7,0,10,0,0,0,0),
(21644,1031,0,7,0,10,0,0,0,0),
(21649,1031,0,7,0,10,0,0,0,0),
(21650,1031,0,7,0,10,0,0,0,0),
(21651,1031,0,7,0,10,0,0,0,0),
(21652,1031,0,7,0,10,0,0,0,0),
(21728,1031,0,7,0,10,0,0,0,0),
(21763,1031,0,7,0,10,0,0,0,0),
(21787,1031,0,7,0,10,0,0,0,0),
(23029,1031,0,7,0,30,0,0,0,0),
(23161,1031,0,7,0,100,0,0,0,0),
(23162,1031,0,7,0,100,0,0,0,0),
(23163,1031,0,7,0,100,0,0,0,0),
(23165,1031,0,7,0,100,0,0,0,0),
(21838,1031,0,7,0,500,0,0,0,0);

--
-- gameobject
--

-- Forged Illidari Bane Blade
UPDATE `gameobject_template` SET `displayId`=7262, `size`=3 WHERE `entry`=185032;

UPDATE `gameobject_template` SET `castBarCaption`='Extinguishing' WHERE `entry` IN (185216,185217,185218,185219);
UPDATE `gameobject_template` SET `castBarCaption`='Collecting' WHERE `entry` IN (175894,176344,176361,176392,176393,177289,181372,181644,181981,182031,182050,182053,182127,182128,182256,182542,182584,182599,182600,182601,182606,182940,183385,183767,183814,183935,184031,184689,184726,184727,184728,184729,184744,184948,185152,185182,185497,185499,185500,185502,185562,185567,185569,185574,185577,185900,185911,185915,185939,186423,186463,186729,186733,187039);
UPDATE `gameobject_template` SET `castBarCaption`='Drinking' WHERE `entry` IN (185598,185914);
UPDATE `gameobject_template` SET `castBarCaption`='Searching' WHERE `entry` IN (183934,185302);
UPDATE `gameobject_template` SET `castBarCaption`='Examining' WHERE `entry` IN (179888);
UPDATE `gameobject_template` SET `castBarCaption`='Using' WHERE `entry` IN (185165,185554,185919,185920,185921,185927,185959,185962,185963);
UPDATE `gameobject_template` SET `castBarCaption`='Gathering' WHERE `entry` IN (187333);
UPDATE `gameobject_template` SET `castBarCaption`='Opening' WHERE `entry` IN (185936,185954,187264);
UPDATE `gameobject_template` SET `castBarCaption`='Summoning' WHERE `entry` IN (185553);

--
-- item
--

-- Zorbin's Ultra-Shrinker
UPDATE `item_template` SET `Duration`=7200 WHERE `entry`=18904;

--
-- loot
--

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.2 WHERE `item`=1821 AND `ChanceOrQuestChance`<0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.2 WHERE `item`=3012 AND `ChanceOrQuestChance`<0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE `item`=19701 AND `ChanceOrQuestChance`<0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=35 WHERE `item`=24449;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `item`=1357;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE `item`=27681;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=30 WHERE `entry`=18884 AND `item`=27681;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=35 WHERE `entry` IN (22311,22298,22323) AND `item`=22574;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=33 WHERE `entry` IN (22286) AND `item`=22574;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=26 WHERE `entry` IN (21061,20514) AND `item`=22574;
DELETE FROM `creature_loot_template` WHERE `entry`=21040 AND `item`=22574;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=10 WHERE `entry` IN (18359,22070) AND `item` IN (27681,22573);
DELETE FROM `gameobject_loot_template` WHERE `entry`=18359 AND `item` IN (23436,23437,23438,23439,23440,23441,24242);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=20 WHERE `entry`=18363 AND `item`=22573;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=10 WHERE `entry`=18363 AND `item`=23427;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=0.6 WHERE `entry`=18363 AND `item` IN (23077,23117,23107);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=2 WHERE `entry`=18363 AND `item`=12363;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=0.2 WHERE `entry`=18363 AND `item`=23436;
INSERT IGNORE INTO `gameobject_loot_template` VALUES (18363,23437,0.2,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (18363,23438,0.2,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (18363,23439,0.2,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (18363,23440,0.2,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (18363,23441,0.2,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (18363,22574,1.2,0,2,4,0,0,0,0);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100, `lootcondition`=1, `condition_value1`=33377, `condition_value2`=0 WHERE `item`=28558;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE `item`=29740 AND `ChanceOrQuestChance` BETWEEN 4.00001 AND 5.99999;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=6 WHERE `item`=29740 AND `ChanceOrQuestChance` BETWEEN 6.00001 AND 6.99999;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=33 WHERE `item`=32388;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `item`=25468;

--
-- spell
--

-- Destroy Legion Hold Infernals
INSERT IGNORE INTO `spell_script_target` VALUES (37055, 1, 21512);
-- Quench Illidari-Bane Blade
INSERT IGNORE INTO `spell_script_target` VALUES (37984, 1, 21940);

--
-- text
--

UPDATE `quest_template` SET `RequestItemsText`='Have you made the journey to Grom\'s Monument and placed his tribute there?$b$bThe site where the monument is still touched by the taint of the Burning Legion. Should you be less experienced in the ways of adventuring, be on your toes when approaching the monument.' WHERE `entry`=8150;
UPDATE `quest_template` SET `RequestItemsText`='Have you made the journey to Uther\'s Tomb and placed the tribute there?$b$bIt can be a dangerous trip for less experienced adventurers; a safer way of traveling there, relatively speaking, may be to travel north from the river that runs through Hillsbrad into the Plaguelands. It flows from a lake that is adjacent to Sorrow Hill; travel west up through the hills, steering clear of the adjacent tomb... one that is infested with the Scourge.' WHERE `entry`=8149;
UPDATE `quest_template` SET `OfferRewardText`='You\'re here for a mission? Good. I have an important one, and one that will test your skill in combat... and your resolve in the defense of the Forsaken.' WHERE `entry`=1818;

-- Forged Illidari Bane Blade
INSERT IGNORE INTO `gameobject` VALUES (21611, 185032, 530, -3420.97, 1373.17, 256.451, 1.55928, 0, 0, 0.703023, 0.711167, -60, 0, 1);
DELETE FROM `event_scripts` WHERE `id`=14143;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(14143, 5, 9, 21611, 60, '', 0, 0, 0, 0);


-- NF end

-- Seph start
-- Shadowmoon Harbinger spawns
DELETE FROM `creature` WHERE `id` = '21795';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('84900','21795','530','0','0','-3956.72','2238.32','101.939','4.24115','480','0','0','-3956.72','2238.32','101.939','4.24115','5300','2991','0','0'),
('84723','21795','530','0','0','-3971.69','2241.54','101.887','2.21792','480','0','0','-3971.69','2241.54','101.887','0','5300','2991','0','0'),
('84724','21795','530','0','0','-3999.24','2243.2','103.018','1.51342','480','0','0','-3999.24','2243.2','103.018','0','5300','2991','0','0'),
('84725','21795','530','0','0','-4016.17','2245.35','110.039','2.44962','480','0','0','-4016.17','2245.35','110.039','0','5300','2991','0','0'),
('84726','21795','530','0','0','-4046.21','2234.56','112.046','2.92792','480','0','0','-4046.21','2234.56','112.046','0','5300','2991','0','0'),
('84727','21795','530','0','0','-4051.57','2277.83','112.048','2.95698','480','0','0','-4051.57','2277.83','112.048','0','5300','2991','0','0'),
('84728','21795','530','0','0','-4077.47','2254.09','112.048','3.96544','480','0','0','-4077.47','2254.09','112.048','0','5300','2991','0','0'),
('84729','21795','530','0','0','-4103.53','2258.98','110.66','3.49577','480','0','0','-4103.53','2258.98','110.66','0','5300','2991','0','0'),
('84730','21795','530','0','0','-4070.37','2295.86','110.659','1.44117','480','0','0','-4070.37','2295.86','110.659','1.44117','5300','2991','0','0'),
('84731','21795','530','0','0','-4051.06','2200.57','110.708','3.07951','480','0','0','-4051.06','2200.57','110.708','0','5300','2991','0','0'),
('84732','21795','530','0','0','-4044.66','2152.21','108.146','4.31965','480','0','0','-4044.66','2152.21','108.146','0','5300','2991','0','0'),
('84733','21795','530','0','0','-4049.37','2132.63','137.253','3.54289','480','0','0','-4049.37','2132.63','137.253','0','5300','2991','0','0'),
('84734','21795','530','0','0','-4046.92','2107.45','138.079','4.35107','480','0','0','-4046.92','2107.45','138.079','0','5300','2991','0','0'),
('84735','21795','530','0','0','-4007.03','2105.62','137.243','4.19556','480','0','0','-4007.03','2105.62','137.243','0','5300','2991','0','0'),
('84736','21795','530','0','0','-3989.01','2116.11','105.126','0.262288','480','0','0','-3989.01','2116.11','105.126','0','5300','2991','0','0'),
('84737','21795','530','0','0','-3939.01','2154.67','100.745','1.08224','480','0','0','-3939.01','2154.67','100.745','0','5300','2991','0','0'),
('84738','21795','530','0','0','-3929.96','2210.2','101.933','1.76318','480','0','0','-3929.96','2210.2','101.933','0','5300','2991','0','0'),
('84739','21795','530','0','0','-3950.79','2266.09','99.2415','0.890606','480','0','0','-3950.79','2266.09','99.2415','0','5300','2991','0','0'),
('84740','21795','530','0','0','-3966.98','2160.54','104.705','3.26172','480','0','0','-3966.98','2160.54','104.705','0','5300','2991','0','0'),
('84741','21795','530','0','0','-3892.13','2100.24','95.1088','0.90553','480','0','0','-3892.13','2100.24','95.1088','0','5300','2991','0','0'),
('84742','21795','530','0','0','-3928.56','2050.09','95.0822','3.02218','480','0','0','-3928.56','2050.09','95.0822','0','5300','2991','0','0'),
('84743','21795','530','0','0','-3864.85','2054.39','94.3371','0.022742','480','0','0','-3864.85','2054.39','94.3371','0','5300','2991','0','0'),
('84744','21795','530','0','0','-3873.62','2098.7','95.064','2.33731','480','0','0','-3873.62','2098.7','95.064','0','5300','2991','0','0');

-- Professor Thaddeus Paleo should also sell a Noble Topaz
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('14847', '23439', '1', '86400');

-- Pilot Marsha should work on a broken airplaine
UPDATE `creature_template_addon` SET `emote` = '28' WHERE (`entry` = '18278');

-- Haunting Vision should be done with eventai or is overpowered when pulled in packs (keeping spell fields for mind control implementation)
UPDATE `creature_template` SET `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `ScriptName` = '' WHERE `entry` = '4472';

-- Fiery Warhorse mount correct model (before was the same of Midnight, too big)
UPDATE `creature_template` SET `modelid_A` = '19250', `modelid_H` = '19250' WHERE `entry` = '21354';

-- Totem of Wrath alliance model and misc
UPDATE `creature_template` SET `modelid_A` = '19074', `minlevel` = '50', `minhealth` = '5', `maxhealth` = '5', `speed` = '0', `rangedattackpower` = '0', `MovementType` = '0' WHERE `entry` = '17539';

-- Illidari Soldier and Illidari Highlord should be spawned in Battle of Crimson Watch event
DELETE FROM `creature` WHERE `id` IN ('22075', '19797');

-- Veterans Bands were costing like Vindicators Bands (15k honor instead 11k honor)
UPDATE `item_template` SET `ExtendedCost` = '129' WHERE `entry` IN ('33064', '33056', '33057');

-- Ulag the Cleaver quest had player name in text
UPDATE `quest_template` SET `OfferRewardText` = 'Well done, $N. Ulag was no minor agent of the Scourge. You have shown the Deathguards, and hence the Dark Lady, that you are a $C of skill and resolve, and are worthy of further instruction.', `RequestItemsText` = 'Your task is yet undone, $N. It is not wise for a $C to show fear...' WHERE `entry` = '1819';
-- Ulag the Cleaver template
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `lootid` = '0' WHERE `entry` = '6390';
-- Ulag the Cleaver should not have loot
DELETE FROM `creature_loot_template` WHERE `entry` = '6390';

-- Portals Of The Legion quest had some unneeded $b$b text
UPDATE `quest_template` SET `Details` = 'Behold - the Hand of Iruxos. A gruesome sight indeed.$B$BYou must possess it if the demon portals at Mannoroc Coven are to be banished... which is what I now ask you to do. The Demon threat is increasing and we must close these portals to stem the tide of demons to this world. Good luck, $N... and be wary of the portal guardians.', `Objectives` = 'Banish 6 Portals at Mannoroc Coven and return to Taiga Wisemane at Shadowprey Village.', `OfferRewardText` = 'You are to be commended, $N. Your effort has helped greatly in fighting the demon threat, and all of Azeroth is safer because of it.', `RequestItemsText` = 'Have you banished the demon portals at Mannoroc Coven?' WHERE `entry` = '5581';

-- Demon Portal Guardian should only spawn when using Hand of Iruxos on Demon Portal
DELETE FROM `creature` WHERE `id` = '11937';

-- Ethereum Nullifier bestiary
UPDATE `creature_template` SET `minhealth` = '6761', `maxhealth` = '6986', `armor` = '6792', `speed` = '1', `mindmg` = '242', `maxdmg` = '357', `spell1` = '36513', `mingold` = '1000', `maxgold` = '1500', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22822';

-- Superior Healing Ward totem should not have loot, misc
UPDATE `creature_template` SET `minhealth` = '5', `maxhealth` = '5', `minmana` = '0', `maxmana` = '0', `faction_A` = '7', `faction_H` = '7', `speed` = '0.001', `mindmg` = '1', `maxdmg` = '2', `attackpower` = '3', `baseattacktime` = '0', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `lootid` = '0' WHERE `entry` = '10218';
DELETE FROM `creature_loot_template` WHERE `entry` = '10218';

-- Keeper of the Cistern should have one spawn only
DELETE FROM `creature` WHERE `guid` = '86871';

-- Head of Kel'gash the Wicked, Khan Jehn's Head, Shackle Key
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `item` IN ('22640', '6072', '4103');

-- Khan Hratha (recovered spawn from UDB 0.8.1)
DELETE FROM `creature` WHERE `id` = '5402';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('84745', '5402', '1', '0', '0', '-1139.2', '2892.92', '198.881', '4.39609', '500', '0', '0', '-1139.2', '2892.92', '198.881', '4.39609', '1981', '0', '0', '0');
-- Khan Dez'hepah had 25000 secs respawn
UPDATE `creature` SET `spawntimesecs` = '500' WHERE `id` = '5600';

-- Kil'sorrow Invader is a corpse that should be spawned on quest 9932 by sendevent 11675 used by spell 32408
DELETE FROM `creature` WHERE `id` = '18397';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = '18397';
-- Kil'sorrow Invader should look dead
DELETE FROM `creature_template_addon` WHERE (`entry` = '18397');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`, `emote`) VALUES ('18397', '7', '65');

-- Slatesteel Shoulders Guaranteed drop from King Dorfbruiser (need spawn)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE (`entry` = '22826') AND (`item` = '31577');

-- King Mukla resp time of 6-7minutes
UPDATE `creature` SET `spawntimesecs` = '360' WHERE `id` = '1559';

-- Seph end

-- Forums start
UPDATE `quest_template` SET `PrevQuestId` = 2338 WHERE `entry` = 2339;
UPDATE `quest_template` SET `PrevQuestId` = 2339 WHERE `entry` = 2340;

DELETE FROM `areatrigger_teleport` WHERE `id` = '4135';
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('4135', 'Karazhan, Back Entrance', '68', '0', '532', '-11040.1', '-1996.85', '94.6837', '2.20224');
UPDATE `areatrigger_teleport` SET `required_item`='0' WHERE `target_map`=564;
DELETE FROM `creature_loot_template` WHERE `item` = 33163;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item`= 5847;
UPDATE `gameobject_template` SET flags=flags&~4 WHERE `entry` = '180516';
-- Zul'Gurub
-- Setup Primal Hakkari table for Aspects (Lower drop rate on Aegis/Tabard/Kossack)
REPLACE INTO `creature_loot_template` VALUES
(90086, 19716, 0, 1, 1, 1, 0, 0, 0, 0), -- Primal Hakkari Bindings
(90086, 19717, 0, 1, 1, 1, 0, 0, 0, 0), -- Armsplint
(90086, 19718, 0, 1, 1, 1, 0, 0, 0, 0), -- Stanchion
(90086, 19719, 0, 1, 1, 1, 0, 0, 0, 0), -- Girdle
(90086, 19720, 0, 1, 1, 1, 0, 0, 0, 0), -- Sash
(90086, 19721, 0, 1, 1, 1, 0, 0, 0, 0), -- Shawl
(90086, 19722, 3, 1, 1, 1, 0, 0, 0, 0), -- Tabard
(90086, 19723, 3, 1, 1, 1, 0, 0, 0, 0), -- Kossack
(90086, 19724, 3, 1, 1, 1, 0, 0, 0, 0); -- Aegis

-- Jeklik
DELETE FROM `creature_loot_template` WHERE `entry`=14517;
REPLACE INTO `creature_loot_template` VALUES
(14517, 19918, 0, 1, 1, 1, 0, 0, 0, 0), -- Jeklik Unique
(14517, 19928, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 19923, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 20265, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 19920, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 19915, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 20262, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22721, 0, 1, 1, 1, 0, 0, 0, 0), -- Aspect Shared
(14517, 22722, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22716, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22718, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22711, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22715, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22712, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22714, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22720, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 22713, 0, 1, 1, 1, 0, 0, 0, 0),
(14517, 0, 100, 1, -90086, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(14517, 19767, 24, 0, 1, 4, 0, 0, 0, 0), -- Primal Bat Leather
(14517, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(14517, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(14517, 19881, -100, 0, 1, 1, 1, 0, 0, 0); -- Channeler's Head(qid 8201)

-- Gold update
UPDATE `creature_template` SET `mingold` = 333374, `maxgold` = 407457 WHERE `entry` = 14517;

-- Venoxis
DELETE FROM `creature_loot_template` WHERE `entry`=14507;
REPLACE INTO `creature_loot_template` VALUES
(14507, 19904, 0, 1, 1, 1, 0, 0, 0, 0), -- Venoxis Unique
(14507, 19903, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 19906, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 19905, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 19900, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 19907, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22721, 0, 1, 1, 1, 0, 0, 0, 0), -- Aspect Shared
(14507, 22722, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22716, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22718, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22711, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22715, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22712, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22714, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22720, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 22713, 0, 1, 1, 1, 0, 0, 0, 0),
(14507, 0, 100, 1, -90086, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(14507, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(14507, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(14507, 22216, -100, 0, 1, 1, 1, 0, 0, 0), -- Venoxis' Venom Sac(qid 9023)
(14507, 19881, -100, 0, 1, 1, 1, 0, 0, 0); -- Channeler's Head(qid 8201)

-- Gold update
UPDATE `creature_template` SET `mingold` = 342504, `maxgold` = 418616 WHERE `entry` = 14507;

-- Mar'li
DELETE FROM `creature_loot_template` WHERE `entry`=14510;
REPLACE INTO `creature_loot_template` VALUES
(14510, 20032, 0, 1, 1, 1, 0, 0, 0, 0), -- Mar'li Unique
(14510, 19927, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 19925, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 19919, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 19930, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 19871, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22721, 0, 1, 1, 1, 0, 0, 0, 0), -- Aspect Shared
(14510, 22722, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22716, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22718, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22711, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22715, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22712, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22714, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22720, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 22713, 0, 1, 1, 1, 0, 0, 0, 0),
(14510, 0, 100, 1, -90086, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(14510, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(14510, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(14510, 19881, -100, 0, 1, 1, 1, 0, 0, 0); -- Channeler's Head(qid 8201)

-- Gold update
UPDATE `creature_template` SET `mingold` = 327734, `maxgold` = 400563 WHERE `entry` = 14510;

-- Thekal
DELETE FROM `creature_loot_template` WHERE `entry`=14509;
REPLACE INTO `creature_loot_template` VALUES
(14509, 19897, 0, 1, 1, 1, 0, 0, 0, 0), -- Thekal Unique
(14509, 19896, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 20266, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 19899, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 20260, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 19898, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 19901, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22721, 0, 1, 1, 1, 0, 0, 0, 0), -- Aspect Shared
(14509, 22722, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22716, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22718, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22711, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22715, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22712, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22714, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22720, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 22713, 0, 1, 1, 1, 0, 0, 0, 0),
(14509, 0, 100, 1, -90086, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(14509, 19902, 2, 0, 1, 1, 0, 0, 0, 0), -- Swift Zulian Tiger
(14509, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(14509, 19768, 24, 0, 1, 4, 0, 0, 0, 0), -- Primal Tiger Leather
(14509, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(14509, 19881, -100, 0, 1, 1, 1, 0, 0, 0); -- Channeler's Head(qid 8201)

-- Gold update
UPDATE `creature_template` SET `mingold` = 336255, `maxgold` = 410978 WHERE `entry` = 14509;

-- Arlokk
DELETE FROM `creature_loot_template` WHERE `entry`=14515;
REPLACE INTO `creature_loot_template` VALUES
(14515, 19910, 0, 1, 1, 1, 0, 0, 0, 0), -- Arlokk Unique
(14515, 19909, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 19922, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 19913, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 19912, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 19914, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22721, 0, 1, 1, 1, 0, 0, 0, 0), -- Aspect Shared
(14515, 22722, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22716, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22718, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22711, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22715, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22712, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22714, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22720, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 22713, 0, 1, 1, 1, 0, 0, 0, 0),
(14515, 0, 100, 1, -90086, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(14515, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(14515, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(14515, 19881, -100, 0, 1, 1, 1, 0, 0, 0); -- Channeler's Head(qid 8201)

-- Gold update
UPDATE `creature_template` SET `mingold` = 340964, `maxgold` = 416733 WHERE `entry` = 14515;

-- Setup Primal Hakkari table for Jindo/Mandokir (Higher drop rate on Aegis/Tabard/Kossack)
REPLACE INTO `creature_loot_template` VALUES
(90087, 19716, 0, 1, 1, 1, 0, 0, 0, 0), -- Primal Hakkari Bindings
(90087, 19717, 0, 1, 1, 1, 0, 0, 0, 0), -- Armsplint
(90087, 19718, 0, 1, 1, 1, 0, 0, 0, 0), -- Stanchion
(90087, 19719, 0, 1, 1, 1, 0, 0, 0, 0), -- Girdle
(90087, 19720, 0, 1, 1, 1, 0, 0, 0, 0), -- Sash
(90087, 19721, 0, 1, 1, 1, 0, 0, 0, 0), -- Shawl
(90087, 19722, 15, 1, 1, 1, 0, 0, 0, 0), -- Tabard
(90087, 19723, 15, 1, 1, 1, 0, 0, 0, 0), -- Kossack
(90087, 19724, 15, 1, 1, 1, 0, 0, 0, 0); -- Aegis

-- Mandokir
DELETE FROM `creature_loot_template` WHERE `entry`=11382;
REPLACE INTO `creature_loot_template` VALUES
(90088, 19867, 0, 1, 1, 1, 0, 0, 0, 0), -- Mandokir Unique
(90088, 19874, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 20038, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19866, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19877, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19869, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19878, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19895, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19873, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19870, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19863, 0, 1, 1, 1, 0, 0, 0, 0),
(90088, 19893, 0, 1, 1, 1, 0, 0, 0, 0),
(11382, 0, 100, 1, -90088, 2, 0, 0, 0, 0), -- 2 Drops
(11382, 1, 100, 1, -90087, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(11382, 19872, 2, 0, 1, 1, 0, 0, 0, 0), -- Swift Razzashi Raptor
(11382, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(11382, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(11382, 22637, 100, 0, 1, 1, 0, 0, 0, 0); -- Primal Hakkari Idol

-- Gold update
UPDATE `creature_template` SET `mingold` = 331374, `maxgold` = 405013 WHERE `entry` = 11382;

-- Jin'do
DELETE FROM `creature_loot_template` WHERE `entry`=11380;
REPLACE INTO `creature_loot_template` VALUES
(90089, 19891, 0, 1, 1, 1, 0, 0, 0, 0), -- Jin'do Unique
(90089, 19885, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19890, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19884, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19892, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19889, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19894, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19887, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19929, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19888, 0, 1, 1, 1, 0, 0, 0, 0),
(90089, 19886, 0, 1, 1, 1, 0, 0, 0, 0),
(11380, 0, 100, 1, -90089, 2, 0, 0, 0, 0), -- 2 Drops
(11380, 1, 100, 1, -90087, 1, 0, 0, 0, 0), -- 1 Primal Hakkari item
(11380, 12804, 24, 0, 1, 4, 0, 0, 0, 0), -- Powerful Mojo
(11380, 19943, 9, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(11380, 22637, 100, 0, 1, 1, 0, 0, 0, 0); -- Primal Hakkari Idol

-- Gold update
UPDATE `creature_template` SET `mingold` = 347142, `maxgold` = 424285 WHERE `entry` = 11380;

-- Gahz'ranka
DELETE FROM `creature_loot_template` WHERE `entry`=15114;
REPLACE INTO `creature_loot_template` VALUES
(15114, 19945, 10, 1, 1, 1, 0, 0, 0, 0), -- Epic Loot
(15114, 19944, 10, 1, 1, 1, 0, 0, 0, 0),
(15114, 19947, 0, 1, 1, 1, 0, 0, 0, 0), -- Blue Loot
(15114, 19946, 0, 1, 1, 1, 0, 0, 0, 0),
(15114, 17058, 27, 0, 1, 4, 0, 0, 0, 0), -- Junk
(15114, 17057, 25, 0, 3, 7, 0, 0, 0, 0),
(15114, 6299, 26, 0, 1, 3, 0, 0, 0, 0),
(15114, 6458, 25, 0, 1, 3, 0, 0, 0, 0),
(15114, 4874, 22, 0, 1, 3, 0, 0, 0, 0),
(15114, 13874, 21, 0, 1, 1, 0, 0, 0, 0),
(15114, 0, 100, 1, -90003, 1, 0, 0, 0, 0), -- One green from the Angry dragon greens
(15114, 22739, 15, 0, 1, 1, 0, 0, 0, 0); -- Tome of Polymorph Turtle

-- Edge of Madness
-- Hazza'rah
DELETE FROM `creature_loot_template` WHERE `entry`=15083;
REPLACE INTO `creature_loot_template` VALUES
(15083, 19942, 100, 0, 1, 1, 0, 0, 0, 0), -- Hazza'rah's Dream Thread
(15083, 19967, 0, 1, 1, 1, 0, 0, 0, 0),
(15083, 19968, 0, 1, 1, 1, 0, 0, 0, 0);

-- Renataki
DELETE FROM `creature_loot_template` WHERE `entry`=15084;
REPLACE INTO `creature_loot_template` VALUES
(15084, 19940, 100, 0, 1, 1, 0, 0, 0, 0), -- Renataki's Tooth
(15084, 19963, 0, 1, 1, 1, 0, 0, 0, 0),
(15084, 19964, 0, 1, 1, 1, 0, 0, 0, 0);

-- Wushoolay
DELETE FROM `creature_loot_template` WHERE `entry`=15085;
REPLACE INTO `creature_loot_template` VALUES
(15085, 19941, 100, 0, 1, 1, 0, 0, 0, 0), -- Wushoolay's Mane
(15085, 19965, 0, 1, 1, 1, 0, 0, 0, 0),
(15085, 19993, 0, 1, 1, 1, 0, 0, 0, 0);

-- Gri'lek
DELETE FROM `creature_loot_template` WHERE `entry`=15082;
REPLACE INTO `creature_loot_template` VALUES
(15082, 19939, 100, 0, 1, 1, 0, 0, 0, 0), -- Gri'lek's Blood
(15082, 19961, 0, 1, 1, 1, 0, 0, 0, 0),
(15082, 19962, 0, 1, 1, 1, 0, 0, 0, 0);

-- Hakkar
DELETE FROM `creature_loot_template` WHERE `entry`=14834;
REPLACE INTO `creature_loot_template` VALUES
(90090, 19856, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19857, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19876, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19855, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19853, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19864, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 20257, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19862, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19865, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19859, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 20264, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19852, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19861, 0, 1, 1, 1, 0, 0, 0, 0),
(90090, 19854, 0, 1, 1, 1, 0, 0, 0, 0),
(14834, 0, 100, 1, -90090, 2, 0, 0, 0, 0), -- 2 Drops
(14834, 12804, 25, 0, 1, 8, 0, 0, 0, 0), -- Powerful Mojo
(14834, 19943, 100, 0, 1, 1, 0, 0, 0, 0), -- Massive Mojo
(14834, 19802, 100, 0, 1, 1, 0, 0, 0, 0); -- Heart of Hakkar

-- Gold update
UPDATE `creature_template` SET `mingold` = 450277, `maxgold` = 550338 WHERE `entry` = 14834;

-- Gnomeregan
-- Viscous Fallout
DELETE FROM `creature_loot_template` WHERE `entry`=7079;
REPLACE INTO `creature_loot_template` VALUES
(7079, 9454, 0, 1, 1, 1, 0, 0, 0, 0), -- Acidic Walkers
(7079, 9453, 0, 1, 1, 1, 0, 0, 0, 0), -- Toxic Revenger
(7079, 9452, 0, 1, 1, 1, 0, 0, 0, 0), -- Hydrocane
(7079, 9451, 30, 0, 1, 4, 0, 0, 0, 0), -- Elemental loot
(7079, 7070, 4, 0, 1, 1, 0, 0, 0, 0);

-- Grubbis
DELETE FROM `creature_loot_template` WHERE `entry`=7361;
REPLACE INTO `creature_loot_template` VALUES
(7361, 9445, 10, 0, 1, 1, 0, 0, 0, 0), -- Grubbis Paws(3-14 on armory, 10 on wowhead)
(7361, 4306, 18, 0, 1, 3, 0, 0, 0, 0),
(7361, 2592, 6, 0, 1, 3, 0, 0, 0, 0),
(7361, 9308, 25, 0, 1, 1, 0, 0, 0, 0); -- Grime-encrusted object

-- Electrocutioner 6000
DELETE FROM `creature_loot_template` WHERE `entry`=6235;
REPLACE INTO `creature_loot_template` VALUES
(6235, 9447, 0, 1, 1, 1, 0, 0, 0, 0), -- Electrocutioner Lagnut
(6235, 9448, 0, 1, 1, 1, 0, 0, 0, 0), -- Spidertank Oilrag
(6235, 9446, 0, 1, 1, 1, 0, 0, 0, 0), -- Electrocutioner Leg
(6235, 4306, 12, 0, 1, 3, 0, 0, 0, 0), -- Cloth
(6235, 2592, 6, 0, 1, 3, 0, 0, 0, 0),
(6235, 9327, 1, 0, 1, 1, 0, 0, 0, 0), -- Security DELTA Data Access Card
(6235, 9309, -5, 0, 8, 10, 0, 0, 0, 0), -- Robo-mechanical Guts (qid 2928)
(6235, 6893, 100, 0, 1, 1, 1, 0, 0, 0); -- Workshop Key

-- Crowd Pummeler 9-60
DELETE FROM `creature_loot_template` WHERE `entry`=6229;
REPLACE INTO `creature_loot_template` VALUES
(6229, 9449, 40, 1, 1, 1, 0, 0, 0, 0), -- Manual Crowd Pummeler
(6229, 9450, 60, 1, 1, 1, 0, 0, 0, 0), -- Gnomebot Operating Boots
(6229, 9327, 1, 0, 1, 1, 0, 0, 0, 0), -- Security DELTA Data Access Card
(6229, 9309, -5, 0, 8, 10, 0, 0, 0, 0); -- Robo-mechanical Guts (qid 2928)

-- Dark Iron Ambassador(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=6228;
REPLACE INTO `creature_loot_template` VALUES
(6228, 9456, 0, 1, 1, 1, 0, 0, 0, 0), -- Glass Shooter
(6228, 9457, 0, 1, 1, 1, 0, 0, 0, 0), -- Royal Diplomatic Scepter
(6228, 9455, 0, 1, 1, 1, 0, 0, 0, 0), -- Emissary Cuffs
(6228, 4306, 16, 0, 1, 3, 0, 0, 0, 0), -- Cloth
(6228, 2592, 8, 0, 1, 3, 0, 0, 0, 0),
(6228, 9308, 25, 0, 1, 1, 0, 0, 0, 0); -- Grime-encrusted object

-- Mekgineer Thermaplugg
DELETE FROM `creature_loot_template` WHERE `entry`=7800;
REPLACE INTO `creature_loot_template` VALUES
(7800, 9458, 0, 1, 1, 1, 0, 0, 0, 0), -- Thermaplugg's Central Core
(7800, 9459, 20, 1, 1, 1, 0, 0, 0, 0), -- Thermaplugg's Left Arm
(7800, 9461, 0, 1, 1, 1, 0, 0, 0, 0), -- Charged Gear
(7800, 9492, 20, 1, 1, 1, 0, 0, 0, 0), -- Electromagnetic Gigaflux Reactivator
(7800, 4415, 2, 2, 1, 1, 0, 0, 0, 0), -- Schematic Craftsman's Monocle
(7800, 4413, 2, 2, 1, 1, 0, 0, 0, 0), -- Schematic Discombobulator Ray
(7800, 4411, 2, 2, 1, 1, 0, 0, 0, 0), -- Schematic Flame Deflector
(7800, 7742, 2, 2, 1, 1, 0, 0, 0, 0), -- Schematic Gnomish Cloaking Device
(7800, 9327, 1, 0, 1, 1, 0, 0, 0, 0), -- Security DELTA Data Access Card
(7800, 9309, -5, 0, 8, 10, 0, 0, 0, 0), -- Robo-mechanical Guts (qid 2928)
(7800, 9299, -100, 0, 1, 1, 1, 0, 0, 0); -- Thermaplugg's Safe Combination (qid 2841)

-- SM GY
-- Interrogator Vishas.
DELETE FROM `creature_loot_template` WHERE `entry`=3983;
REPLACE INTO `creature_loot_template` VALUES
(3983, 7683, 90, 1, 1, 1, 0, 0, 0, 0), -- Bloody Brass Knuckles
(3983, 7682, 10, 1, 1, 1, 0, 0, 0, 0), -- Torturing Poker
(3983, 4306, 25, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(3983, 5805, -2, 0, 1, 1, 0, 0, 0, 0); -- Heart of Zeal(qid 1113)

-- Fallen Champion(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=6488;
REPLACE INTO `creature_loot_template` VALUES
(6488, 7691, 0, 1, 1, 1, 0, 0, 0, 0), -- Embalmed Shroud
(6488, 7689, 0, 1, 1, 1, 0, 0, 0, 0), -- Morbid Dawn
(6488, 7690, 0, 1, 1, 1, 0, 0, 0, 0), -- Ebon Vise
(6488, 4306, 25, 0, 1, 2, 0, 0, 0, 0); -- Cloth

-- Azshir the Sleepless(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=6490;
REPLACE INTO `creature_loot_template` VALUES
(6490, 7708, 0, 1, 1, 1, 0, 0, 0, 0), -- Necrotic Wand
(6490, 7709, 0, 1, 1, 1, 0, 0, 0, 0), -- Blighted Leggings
(6490, 7731, 0, 1, 1, 1, 0, 0, 0, 0), -- Ghostshard Talisman
(6490, 4306, 19, 0, 1, 2, 0, 0, 0, 0); -- Cloth

-- Ironspine(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=6489;
REPLACE INTO `creature_loot_template` VALUES
(6489, 7686, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironspine's Eye
(6489, 7688, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironspine's Ribcage
(6489, 7687, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironspine's Fist
(6489, 4306, 21, 0, 1, 2, 0, 0, 0, 0); -- Cloth

-- Bloodmage Thalnos
DELETE FROM `creature_loot_template` WHERE `entry`=4543;
REPLACE INTO `creature_loot_template` VALUES
(4543, 7684, 0, 1, 1, 1, 0, 0, 0, 0), -- Bloodmage Mantle
(4543, 7685, 0, 1, 1, 1, 0, 0, 0, 0), -- Orb of the Forgotten Seer
(4543, 4306, 22, 0, 1, 4, 0, 0, 0, 0); -- Cloth

-- Scorn(Scourge Invasion Mob)
DELETE FROM `creature_loot_template` WHERE `entry`=14693;
REPLACE INTO `creature_loot_template` VALUES
(14693, 23168, 0, 1, 1, 1, 0, 0, 0, 0), -- Scorn's Focal Dagger
(14693, 23169, 0, 1, 1, 1, 0, 0, 0, 0), -- Scorn's Icy Choker
(14693, 23170, 0, 1, 1, 1, 0, 0, 0, 0); -- The Frozen Clutch

-- Headless Horseman(Hollow's End Event)
UPDATE `creature_template` SET `lootid`=23682 WHERE `entry`=23682;
DELETE FROM `creature_loot_template` WHERE `entry`=23682;
REPLACE INTO `creature_loot_template` VALUES
(23682, 33183, 30, 1, 1, 1, 0, 0, 0, 0), -- Magic Broom
(23682, 33184, 0, 1, 1, 1, 0, 0, 0, 0), -- Swift Magic Broom
(23682, 33176, 0, 1, 1, 1, 0, 0, 0, 0), -- Flying Broom
(23682, 33182, 20, 1, 1, 1, 0, 0, 0, 0), -- Swift Flying Broom
(23682, 34073, 0, 2, 1, 1, 0, 0, 0, 0), -- Horseman's Signet Ring
(23682, 34074, 0, 2, 1, 1, 0, 0, 0, 0), -- Witches Band
(23682, 34075, 0, 2, 1, 1, 0, 0, 0, 0), -- Ring of Ghoulish Delight
(23682, 33292, 8, 3, 1, 1, 0, 0, 0, 0), -- Hallowed Helm
(23682, 33808, 3, 3, 1, 1, 0, 0, 0, 0), -- The Horseman's Helm
(23682, 33154, 2, 3, 1, 1, 0, 0, 0, 0), -- Sinister Squashling
(23682, 34068, 25, 0, 3, 6, 0, 0, 0, 0), -- Weighted Jack-o'-Lantern
(23682, 33277, -100, 0, 1, 1, 0, 0, 0, 0); -- Tome of Thomas Thomson(qid 11242a/11403h)

-- SM Library
-- Houndmaster Loksey
DELETE FROM `creature_loot_template` WHERE `entry`=3974;
REPLACE INTO `creature_loot_template` VALUES
(3974, 7756, 60, 1, 1, 1, 0, 0, 0, 0), -- Dog Training Gloves
(3974, 7710, 10, 1, 1, 1, 0, 0, 0, 0), -- Loksey's Training Stick
(3974, 3456, 30, 1, 1, 1, 0, 0, 0, 0), -- Dog Whistle
(3974, 4306, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(3974, 5805, -2, 0, 1, 1, 0, 0, 0, 0); -- Heart of Zeal(qid 1113)

-- Arcanist Doan
DELETE FROM `creature_loot_template` WHERE `entry`=6487;
REPLACE INTO `creature_loot_template` VALUES
(6487, 7714, 0, 1, 1, 1, 0, 0, 0, 0), -- Hypnotic Blade
(6487, 7713, 0, 1, 1, 1, 0, 0, 0, 0), -- Illusionary Rod
(6487, 7711, 0, 1, 1, 1, 0, 0, 0, 0), -- Robe of Doan
(6487, 7712, 0, 1, 1, 1, 0, 0, 0, 0), -- Mantle of Doan
(6487, 34227, 4, 1, 1, 1, 0, 0, 0, 0), -- Deadman's Hand
(6487, 4306, 20, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(6487, 5805, -2, 0, 1, 1, 0, 0, 0, 0); -- Heart of Zeal(qid 1113)

-- SM Amory
-- Herod
DELETE FROM `creature_loot_template` WHERE `entry`=3975;
REPLACE INTO `creature_loot_template` VALUES
(3975, 7719, 0, 1, 1, 1, 0, 0, 0, 0), -- Raging Berserker's Helm
(3975, 7718, 0, 1, 1, 1, 0, 0, 0, 0), -- Herod's Shoulder
(3975, 7717, 0, 1, 1, 1, 0, 0, 0, 0), -- Ravager
(3975, 10330, 0, 1, 1, 1, 0, 0, 0, 0), -- Scarlet Leggings
(3975, 4306, 20, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(3975, 5805, -2, 0, 1, 1, 0, 0, 0, 0); -- Heart of Zeal(qid 1113)

-- SM Cathedral
-- Fairbanks
DELETE FROM `creature_loot_template` WHERE `entry`=4542;
REPLACE INTO `creature_loot_template` VALUES
(4542, 19508, 0, 1, 1, 1, 0, 0, 0, 0), -- Branded Leather Bracers
(4542, 19509, 0, 1, 1, 1, 0, 0, 0, 0), -- Dusty Mail Boots
(4542, 19507, 0, 1, 1, 1, 0, 0, 0, 0), -- Inquisitor's Shawl
(4542, 4306, 18, 0, 1, 4, 0, 0, 0, 0); -- Cloth

-- Whitemane
DELETE FROM `creature_loot_template` WHERE `entry`=3977;
REPLACE INTO `creature_loot_template` VALUES
(3977, 7720, 0, 1, 1, 1, 0, 0, 0, 0), -- Whitemane's Chapeau
(3977, 7721, 20, 1, 1, 1, 0, 0, 0, 0), -- Hand of Righteousness
(3977, 7722, 0, 1, 1, 1, 0, 0, 0, 0), -- Triune Amulet
(3977, 4306, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(3977, 20976, 10, 0, 1, 1, 0, 7, 755, 1), -- Citrine Pendant of Golden Healing
(3977, 5805, -2, 0, 1, 1, 0, 0, 0, 0); -- Heart of Zeal(qid 1113)

-- Mograine
DELETE FROM `creature_loot_template` WHERE (`entry`=3976);
REPLACE INTO `creature_loot_template` VALUES
(3976, 7726, 40, 1, 1, 1, 0, 0, 0, 0), -- Aegis of the Scarlet Commander
(3976, 7723, 0, 1, 1, 1, 0, 0, 0, 0), -- Mograine's Might
(3976, 10330, 0, 1, 1, 1, 0, 0, 0, 0), -- Scarlet Leggings
(3976, 7724, 0, 1, 1, 1, 0, 0, 0, 0), -- Gauntlets of Divinity
(3976, 4306, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(3976, 5805, -2, 0, 1, 1, 0, 0, 0, 0); -- Heart of Zeal(qid 1113)

-- Arcatraz
DELETE FROM `creature_loot_template` WHERE `entry`=20912;
REPLACE INTO `creature_loot_template` VALUES
(91007, 28418, 0, 1, 1, 1, 0, 0, 0, 0), -- Skyriss
(91007, 28415, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28406, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28413, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28403, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28412, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28407, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28414, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28205, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28231, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28419, 0, 1, 1, 1, 0, 0, 0, 0),
(91007, 28416, 0, 1, 1, 1, 0, 0, 0, 0),
(20912, 0, 100, 1, -91007, 2, 0, 0, 0, 0), -- 2 Drops
(20912, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(20912, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(20912, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(20912, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(20912, 23572, 3, 0, 1, 1, 0, 0, 0, 0); -- Primal Nether(3% chance per armory/wowhead)

DELETE FROM `creature_loot_template` WHERE `entry`=20885;
REPLACE INTO `creature_loot_template` VALUES
(20885, 28391, 0, 1, 1, 1, 0, 0, 0, 0), -- Dalliah
(20885, 28392, 0, 1, 1, 1, 0, 0, 0, 0),
(20885, 28390, 0, 1, 1, 1, 0, 0, 0, 0),
(20885, 28387, 0, 1, 1, 1, 0, 0, 0, 0),
(20885, 28386, 0, 1, 1, 1, 0, 0, 0, 0),
(20885, 24308, 10, 0, 1, 1, 0, 7, 197, 1); -- Whitemend Pants

DELETE FROM `creature_loot_template` WHERE `entry`=20886;
REPLACE INTO `creature_loot_template` VALUES
(20886, 28393, 0, 1, 1, 1, 0, 0, 0, 0), -- Wrath-Scryer
(20886, 28394, 0, 1, 1, 1, 0, 0, 0, 0),
(20886, 28396, 0, 1, 1, 1, 0, 0, 0, 0),
(20886, 28397, 0, 1, 1, 1, 0, 0, 0, 0),
(20886, 28398, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=20870;
REPLACE INTO `creature_loot_template` VALUES
(20870, 28375, 0, 1, 1, 1, 0, 0, 0, 0), -- Zereketh
(20870, 28384, 0, 1, 1, 1, 0, 0, 0, 0),
(20870, 28372, 0, 1, 1, 1, 0, 0, 0, 0),
(20870, 28373, 0, 1, 1, 1, 0, 0, 0, 0),
(20870, 28374, 0, 1, 1, 1, 0, 0, 0, 0);

-- Botanica
DELETE FROM `creature_loot_template` WHERE `entry`=17977;
REPLACE INTO `creature_loot_template` VALUES
(91006, 28228, 0, 1, 1, 1, 0, 0, 0, 0), -- Warp Splinter
(91006, 28350, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28229, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28341, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28370, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28343, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28345, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28348, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28347, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28367, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28342, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28349, 0, 1, 1, 1, 0, 0, 0, 0),
(91006, 28371, 0, 1, 1, 1, 0, 0, 0, 0),
(17977, 0, 100, 1, -91006, 2, 0, 0, 0, 0), -- 2 Drops
(17977, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(17977, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(17977, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(17977, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(17977, 23572, 3, 0, 1, 1, 0, 0, 0, 0), -- Primal Nether(3% chance per armory/wowhead)
(17977, 24311, 10, 0, 1, 1, 0, 7, 197, 1), -- Whitemend Hood
(17977, 31085, 0, 100, 1, 1, 1, 0, 0, 0); -- Top Shard of the Arcatraz Key(qid 10704)

DELETE FROM `creature_loot_template` WHERE `entry`=17980;
REPLACE INTO `creature_loot_template` VALUES
(17980, 28338, 0, 1, 1, 1, 0, 0, 0, 0), -- Laj
(17980, 27739, 0, 1, 1, 1, 0, 0, 0, 0),
(17980, 28340, 0, 1, 1, 1, 0, 0, 0, 0),
(17980, 28339, 0, 1, 1, 1, 0, 0, 0, 0),
(17980, 28328, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=17978;
REPLACE INTO `creature_loot_template` VALUES
(17978, 28325, 0, 1, 1, 1, 0, 0, 0, 0), -- Thorngrin the Tender
(17978, 28324, 0, 1, 1, 1, 0, 0, 0, 0),
(17978, 28327, 0, 1, 1, 1, 0, 0, 0, 0),
(17978, 28323, 0, 1, 1, 1, 0, 0, 0, 0),
(17978, 28322, 0, 1, 1, 1, 0, 0, 0, 0),
(17978, 24310, 10, 0, 1, 1, 0, 7, 197, 1); -- Battlecast Pants

DELETE FROM `creature_loot_template` WHERE `entry`=17975;
REPLACE INTO `creature_loot_template` VALUES
(17975, 28316, 0, 1, 1, 1, 0, 0, 0, 0), -- Freywinn
(17975, 28321, 0, 1, 1, 1, 0, 0, 0, 0),
(17975, 28318, 0, 1, 1, 1, 0, 0, 0, 0),
(17975, 28315, 0, 1, 1, 1, 0, 0, 0, 0),
(17975, 28317, 0, 1, 1, 1, 0, 0, 0, 0),
(17975, 23617, 10, 0, 1, 1, 0, 7, 164, 1), -- Earthpeace Breastplate
(17975, 31744, -100, 0, 1, 1, 1, 0, 0, 0); -- Botanist's Field Guide(qid 10897)

DELETE FROM `creature_loot_template` WHERE `entry`=17976;
REPLACE INTO `creature_loot_template` VALUES
(17976, 28311, 0, 1, 1, 1, 0, 0, 0, 0), -- Sarannis
(17976, 28304, 0, 1, 1, 1, 0, 0, 0, 0),
(17976, 28306, 0, 1, 1, 1, 0, 0, 0, 0),
(17976, 28296, 0, 1, 1, 1, 0, 0, 0, 0),
(17976, 28301, 0, 1, 1, 1, 0, 0, 0, 0),
(17976, 28769, -100, 0, 1, 1, 1, 0, 0, 0); -- The Keystone(qid 10257)

-- Mechannar
DELETE FROM `creature_loot_template` WHERE `entry`=19220;
REPLACE INTO `creature_loot_template` VALUES
(91005, 28275, 0, 1, 1, 1, 0, 0, 0, 0), -- Pathaelon
(91005, 28286, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28285, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 27899, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28267, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28288, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28204, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28278, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28265, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28266, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28269, 0, 1, 1, 1, 0, 0, 0, 0),
(91005, 28202, 0, 1, 1, 1, 0, 0, 0, 0),
(19220, 0, 100, 1, -91005, 2, 0, 0, 0, 0), -- 2 Drops
(19220, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(19220, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(19220, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(19220, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(19220, 23572, 3, 0, 1, 1, 0, 0, 0, 0), -- Primal Nether(3% chance per armory/wowhead)
(19220, 31086, -100, 0, 1, 1, 1, 0, 0, 0), -- Bottom Shard of the Arcatraz Key(qid 10704)
(19220, 21907, 10, 0, 1, 1, 0, 7, 197, 1); -- Arcanoweave Robe

DELETE FROM `creature_loot_template` WHERE `entry`=19221;
REPLACE INTO `creature_loot_template` VALUES
(19221, 28260, 0, 1, 1, 1, 0, 0, 0, 0), -- Sepethrea
(19221, 28263, 0, 1, 1, 1, 0, 0, 0, 0),
(19221, 28262, 0, 1, 1, 1, 0, 0, 0, 0),
(19221, 28259, 0, 1, 1, 1, 0, 0, 0, 0),
(19221, 28258, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=19219;
REPLACE INTO `creature_loot_template` VALUES
(19219, 28256, 0, 1, 1, 1, 0, 0, 0, 0), -- Capacitus
(19219, 28257, 0, 1, 1, 1, 0, 0, 0, 0),
(19219, 28253, 0, 1, 1, 1, 0, 0, 0, 0),
(19219, 28255, 0, 1, 1, 1, 0, 0, 0, 0),
(19219, 28254, 0, 1, 1, 1, 0, 0, 0, 0);

-- Gatewatcher Updates(Jagged Red/Blue Crystal should drop 100%, only item in tables)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry` IN (19218, 19710);

-- Cache of the Legion(Opens with Gatewatcher Keys)
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=0 WHERE `entry`=20529 AND `item` IN (28248, 28249, 28250, 28251, 28252);

-- Black Morass
DELETE FROM `creature_loot_template` WHERE `entry`=17881;
REPLACE INTO `creature_loot_template` VALUES
(91004, 27977, 0, 1, 1, 1, 0, 0, 0, 0), -- Aeonus
(91004, 28188, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28207, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28189, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 27873, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28190, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 27509, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28192, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28194, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 27839, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28206, 0, 1, 1, 1, 0, 0, 0, 0),
(91004, 28193, 0, 1, 1, 1, 0, 0, 0, 0),
(17881, 0, 100, 1, -91004, 2, 0, 0, 0, 0), -- 2 Drops
(17881, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(17881, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(17881, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(17881, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(17881, 23572, 3, 0, 1, 1, 0, 0, 0, 0); -- Primal Nether(3% chance per armory/wowhead)

DELETE FROM `creature_loot_template` WHERE `entry`=17880;
REPLACE INTO `creature_loot_template` VALUES
(17880, 28187, 0, 1, 1, 1, 0, 0, 0, 0), -- Temporus
(17880, 28186, 0, 1, 1, 1, 0, 0, 0, 0),
(17880, 28034, 0, 1, 1, 1, 0, 0, 0, 0),
(17880, 28184, 0, 1, 1, 1, 0, 0, 0, 0),
(17880, 28033, 0, 1, 1, 1, 0, 0, 0, 0),
(17880, 28185, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=17879;
REPLACE INTO `creature_loot_template` VALUES
(17879, 27994, 0, 1, 1, 1, 0, 0, 0, 0), -- Deja
(17879, 27988, 0, 1, 1, 1, 0, 0, 0, 0),
(17879, 27995, 0, 1, 1, 1, 0, 0, 0, 0),
(17879, 27996, 0, 1, 1, 1, 0, 0, 0, 0),
(17879, 27993, 0, 1, 1, 1, 0, 0, 0, 0),
(17879, 27987, 0, 1, 1, 1, 0, 0, 0, 0),
(17879, 29675, 10, 0, 1, 1, 0, 7, 165, 1); -- Arcane Armor Kit

-- Shattered Halls
DELETE FROM `creature_loot_template` WHERE `entry`=16808;
REPLACE INTO `creature_loot_template` VALUES
(91003, 27537, 0, 1, 1, 1, 0, 0, 0, 0), -- Kargath
(91003, 27535, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27528, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27540, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27538, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27531, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27536, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27527, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27529, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27533, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27474, 0, 1, 1, 1, 0, 0, 0, 0),
(91003, 27534, 0, 1, 1, 1, 0, 0, 0, 0),
(16808, 0, 100, 1, -91003, 2, 0, 0, 0, 0), -- 2 Drops
(16808, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(16808, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(16808, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(16808, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(16808, 23572, 3, 0, 1, 1, 0, 0, 0, 0), -- Primal Nether(3% chance per armory/wowhead)
(16808, 23723, -100, 0, 1, 1, 1, 0, 0, 0); -- Warchief Kargath's Fist(qid 9492a/9495h)

DELETE FROM `creature_loot_template` WHERE `entry`=16809;
REPLACE INTO `creature_loot_template` VALUES
(16809, 27868, 0, 1, 1, 1, 0, 0, 0, 0), -- Warbringer Omorogg
(16809, 27525, 0, 1, 1, 1, 0, 0, 0, 0),
(16809, 27524, 0, 1, 1, 1, 0, 0, 0, 0),
(16809, 27526, 0, 1, 1, 1, 0, 0, 0, 0),
(16809, 27802, 0, 1, 1, 1, 0, 0, 0, 0),
(16809, 30829, -100, 0, 1, 1, 1, 0, 0, 0); -- Tear of the Earthmother(qid 10670)

DELETE FROM `creature_loot_template` WHERE `entry`=16807;
REPLACE INTO `creature_loot_template` VALUES
(16807, 27517, 0, 1, 1, 1, 0, 0, 0, 0), -- Nethekurse
(16807, 27518, 0, 1, 1, 1, 0, 0, 0, 0),
(16807, 27520, 0, 1, 1, 1, 0, 0, 0, 0),
(16807, 27521, 0, 1, 1, 1, 0, 0, 0, 0),
(16807, 27519, 0, 1, 1, 1, 0, 0, 0, 0),
(16807, 23735, -100, 0, 1, 1, 1, 0, 0, 0), -- Grand Warlock's Amulet(qid 9494)
(16807, 24312, 10, 0, 1, 1, 0, 7, 197, 1); -- Spellstrike Hood

-- Shadow Labryinth
DELETE FROM `creature_loot_template` WHERE `entry`=18708;
REPLACE INTO `creature_loot_template` VALUES
(91002, 27913, 0, 1, 1, 1, 0, 0, 0, 0), -- Murmur
(91002, 27803, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27905, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27910, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27902, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27909, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 28230, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27903, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 28232, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27778, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27912, 0, 1, 1, 1, 0, 0, 0, 0),
(91002, 27908, 0, 1, 1, 1, 0, 0, 0, 0),
(18708, 0, 100, 1, -91002, 2, 0, 0, 0, 0), -- 2 Drops
(18708, 24309, 10, 0, 1, 1, 0, 7, 197, 1), -- Spellstrike Pants
(18708, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(18708, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(18708, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(18708, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(18708, 23572, 3, 0, 1, 1, 0, 0, 0, 0), -- Primal Nether(3% chance per armory/wowhead)
(18708, 28558, 100, 0, 2, 2, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18732;
REPLACE INTO `creature_loot_template` VALUES
(18732, 27900, 0, 1, 1, 1, 0, 0, 0, 0), -- Vorpil
(18732, 27901, 0, 1, 1, 1, 0, 0, 0, 0),
(18732, 27897, 0, 1, 1, 1, 0, 0, 0, 0),
(18732, 27898, 0, 1, 1, 1, 0, 0, 0, 0),
(18732, 27775, 0, 1, 1, 1, 0, 0, 0, 0),
(18732, 30827, -100, 0, 1, 1, 1, 0, 0, 0), -- Lexicon Demonica(qid 10666)
(18732, 28558, 100, 0, 2, 2, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18667;
REPLACE INTO `creature_loot_template` VALUES
(18667, 27468, 0, 1, 1, 1, 0, 0, 0, 0), -- Blackheart
(18667, 27892, 0, 1, 1, 1, 0, 0, 0, 0),
(18667, 27891, 0, 1, 1, 1, 0, 0, 0, 0),
(18667, 28134, 0, 1, 1, 1, 0, 0, 0, 0),
(18667, 27893, 0, 1, 1, 1, 0, 0, 0, 0),
(18667, 27890, 0, 1, 1, 1, 0, 0, 0, 0),
(18667, 30808, -100, 0, 1, 1, 1, 0, 0, 0), -- Book of Fel Names(qid 10649)
(18667, 25728, 10, 0, 1, 1, 0, 7, 165, 1), -- Stylin' Purple Hat
(18667, 28558, 100, 0, 2, 2, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18731;
REPLACE INTO `creature_loot_template` VALUES
(18731, 27888, 0, 1, 1, 1, 0, 0, 0, 0), -- Hellmaw
(18731, 27887, 0, 1, 1, 1, 0, 0, 0, 0),
(18731, 27889, 0, 1, 1, 1, 0, 0, 0, 0),
(18731, 27885, 0, 1, 1, 1, 0, 0, 0, 0),
(18731, 27886, 0, 1, 1, 1, 0, 0, 0, 0),
(18731, 27884, 0, 1, 1, 1, 0, 0, 0, 0),
(18731, 28558, 100, 0, 2, 2, 1, 1, 33377, 0); -- Spirit Shard

-- Steamvault
DELETE FROM `creature_loot_template` WHERE `entry`=17798;
REPLACE INTO `creature_loot_template` VALUES
(91001, 27475, 0, 1, 1, 1, 0, 0, 0, 0), -- Kalithresh
(91001, 28203, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27510, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27804, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27801, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27738, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27795, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27806, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27805, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27737, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27799, 0, 1, 1, 1, 0, 0, 0, 0),
(91001, 27874, 0, 1, 1, 1, 0, 0, 0, 0),
(17798, 0, 100, 1, -91001, 2, 0, 0, 0, 0), -- 2 Drops
(17798, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(17798, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(17798, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(17798, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(17798, 23572, 3, 0, 1, 1, 0, 0, 0, 0), -- Primal Nether(3% chance per armory/wowhead)
(17798, 24313, 10, 0, 1, 1, 0, 7, 197, 1); -- Battlecast Hood

DELETE FROM `creature_loot_template` WHERE `entry`=17796;
REPLACE INTO `creature_loot_template` VALUES
(17796, 27791, 0, 1, 1, 1, 0, 0, 0, 0), -- Steamrigger
(17796, 27790, 0, 1, 1, 1, 0, 0, 0, 0),
(17796, 27794, 0, 1, 1, 1, 0, 0, 0, 0),
(17796, 27793, 0, 1, 1, 1, 0, 0, 0, 0),
(17796, 27792, 0, 1, 1, 1, 0, 0, 0, 0),
(17796, 23887, 10, 0, 1, 1, 0, 7, 202, 1); -- Rocket Boots Xtreme

DELETE FROM `creature_loot_template` WHERE `entry`=17797;
REPLACE INTO `creature_loot_template` VALUES
(17797, 27789, 0, 1, 1, 1, 0, 0, 0, 0), -- Thespia
(17797, 27787, 0, 1, 1, 1, 0, 0, 0, 0),
(17797, 27783, 0, 1, 1, 1, 0, 0, 0, 0),
(17797, 27508, 0, 1, 1, 1, 0, 0, 0, 0),
(17797, 27784, 0, 1, 1, 1, 0, 0, 0, 0),
(17797, 30828, -100, 0, 1, 1, 1, 0, 0, 0), -- Vial of Underworld Loam(qid 10667)
(17797, 29673, 10, 0, 1, 1, 0, 7, 165, 1); -- Frost Armor Kit

-- Sethekk Halls
DELETE FROM `creature_loot_template` WHERE `entry`=18473;
REPLACE INTO `creature_loot_template` VALUES
(91000, 27948, 0, 1, 1, 1, 0, 0, 0, 0), -- Ikiss
(91000, 27986, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27875, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27985, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27981, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27946, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27776, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27925, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27838, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27936, 0, 1, 1, 1, 0, 0, 0, 0),
(91000, 27980, 0, 1, 1, 1, 0, 0, 0, 0),
(18473, 0, 100, 1, -91000, 2, 0, 0, 0, 0), -- 2 Drops
(18473, 31882, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Blessings(Chance to drop off all end bosses in 69-70 norm/heroic)
(18473, 31901, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Furies
(18473, 31910, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Lunacy
(18473, 31892, 2, 1, 1, 1, 0, 0, 0, 0), -- Ace of Storms
(18473, 23572, 3, 0, 1, 1, 0, 0, 0, 0), -- Primal Nether(3% chance per armory/wowhead)
(18473, 27632, -100, 0, 1, 1, 1, 0, 0, 0), -- Terokk's Quill(qid 10098)
(18473, 28558, 100, 0, 2, 2, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18472;
REPLACE INTO `creature_loot_template` VALUES
(18472, 27914, 0, 1, 1, 1, 0, 0, 0, 0), -- Syth
(18472, 27919, 0, 1, 1, 1, 0, 0, 0, 0),
(18472, 27915, 0, 1, 1, 1, 0, 0, 0, 0),
(18472, 27917, 0, 1, 1, 1, 0, 0, 0, 0),
(18472, 27918, 0, 1, 1, 1, 0, 0, 0, 0),
(18472, 27916, 0, 1, 1, 1, 0, 0, 0, 0),
(18472, 27633, -100, 0, 1, 1, 1, 0, 0, 0), -- Terokk's Mask (qid 10098)
(18472, 24160, 10, 0, 1, 1, 0, 7, 755, 1), -- Khorium Inferno Band
(18472, 28558, 100, 0, 2, 2, 1, 1, 33377, 0); -- Spirit Shard

-- Hillsbrad
DELETE FROM `creature_loot_template` WHERE `entry`=18096;
REPLACE INTO `creature_loot_template` VALUES
(18096, 27431, 0, 1, 1, 1, 0, 0, 0, 0), -- Epoch Hunter
(18096, 27432, 0, 1, 1, 1, 0, 0, 0, 0),
(18096, 27434, 0, 1, 1, 1, 0, 0, 0, 0),
(18096, 27440, 0, 1, 1, 1, 0, 0, 0, 0),
(18096, 27433, 0, 1, 1, 1, 0, 0, 0, 0),
(18096, 24173, 10, 0, 1, 1, 0, 7, 755, 1); -- Circlet of Arcane Might

DELETE FROM `creature_loot_template` WHERE `entry`=17862;
REPLACE INTO `creature_loot_template` VALUES
(17862, 27430, 0, 1, 1, 1, 0, 0, 0, 0), -- Skarloc
(17862, 27426, 0, 1, 1, 1, 0, 0, 0, 0),
(17862, 27428, 0, 1, 1, 1, 0, 0, 0, 0),
(17862, 27427, 0, 1, 1, 1, 0, 0, 0, 0),
(17862, 27424, 0, 1, 1, 1, 0, 0, 0, 0),
(17862, 22927, 10, 0, 1, 1, 0, 7, 171, 1); -- Ironshield Potion

DELETE FROM `creature_loot_template` WHERE `entry`=17848;
REPLACE INTO `creature_loot_template` VALUES
(17848, 27417, 0, 1, 1, 1, 0, 0, 0, 0), -- Drake
(17848, 27423, 0, 1, 1, 1, 0, 0, 0, 0),
(17848, 27420, 0, 1, 1, 1, 0, 0, 0, 0),
(17848, 27436, 0, 1, 1, 1, 0, 0, 0, 0),
(17848, 27418, 0, 1, 1, 1, 0, 0, 0, 0);

-- Crypts
DELETE FROM `creature_loot_template` WHERE `entry`=18373;
REPLACE INTO `creature_loot_template` VALUES
(18373, 27413, 0, 1, 1, 1, 0, 0, 0, 0), -- Exarch Maladaar
(18373, 27415, 0, 1, 1, 1, 0, 0, 0, 0),
(18373, 27416, 0, 1, 1, 1, 0, 0, 0, 0),
(18373, 27412, 0, 1, 1, 1, 0, 0, 0, 0),
(18373, 27411, 0, 1, 1, 1, 0, 0, 0, 0),
(18373, 27414, 0, 1, 1, 1, 0, 0, 0, 0),
(18373, 28558, 100, 0, 1, 1, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18371;
REPLACE INTO `creature_loot_template` VALUES
(18371, 27410, 0, 1, 1, 1, 0, 0, 0, 0), -- Shirrak
(18371, 26055, 0, 1, 1, 1, 0, 0, 0, 0),
(18371, 27409, 0, 1, 1, 1, 0, 0, 0, 0),
(18371, 25964, 0, 1, 1, 1, 0, 0, 0, 0),
(18371, 27408, 0, 1, 1, 1, 0, 0, 0, 0),
(18371, 28558, 100, 0, 1, 1, 1, 1, 33377, 0); -- Spirit Shard

-- Mana Tombs
DELETE FROM `creature_loot_template` WHERE `entry`=18344;
REPLACE INTO `creature_loot_template` VALUES
(18344, 25956, 0, 1, 1, 1, 0, 0, 0, 0), -- Shaffar
(18344, 25955, 0, 1, 1, 1, 0, 0, 0, 0),
(18344, 25957, 0, 1, 1, 1, 0, 0, 0, 0),
(18344, 25954, 0, 1, 1, 1, 0, 0, 0, 0),
(18344, 25953, 0, 1, 1, 1, 0, 0, 0, 0),
(18344, 25962, 0, 1, 1, 1, 0, 0, 0, 0),
(18344, 22921, 10, 0, 1, 1, 0, 7, 171, 1), -- Major Frost Protection
(18344, 28490, -100, 0, 1, 1, 1, 0, 0, 0), -- Shaffar's Wrappings (qid 10165)
(18344, 28558, 100, 0, 1, 1, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18343;
REPLACE INTO `creature_loot_template` VALUES
(18343, 25946, 0, 1, 1, 1, 0, 0, 0, 0), -- Tavarok
(18343, 25950, 0, 1, 1, 1, 0, 0, 0, 0),
(18343, 25945, 0, 1, 1, 1, 0, 0, 0, 0),
(18343, 25944, 0, 1, 1, 1, 0, 0, 0, 0),
(18343, 25947, 0, 1, 1, 1, 0, 0, 0, 0),
(18343, 25952, 0, 1, 1, 1, 0, 0, 0, 0),
(18343, 28558, 100, 0, 1, 1, 1, 1, 33377, 0); -- Spirit Shard

DELETE FROM `creature_loot_template` WHERE `entry`=18341;
REPLACE INTO `creature_loot_template` VALUES
(18341, 25939, 0, 1, 1, 1, 0, 0, 0, 0), -- Pandemonius
(18341, 25941, 0, 1, 1, 1, 0, 0, 0, 0),
(18341, 28166, 0, 1, 1, 1, 0, 0, 0, 0),
(18341, 25943, 0, 1, 1, 1, 0, 0, 0, 0),
(18341, 25940, 0, 1, 1, 1, 0, 0, 0, 0),
(18341, 25942, 0, 1, 1, 1, 0, 0, 0, 0),
(18341, 28558, 100, 0, 1, 1, 1, 1, 33377, 0); -- Spirit Shard

-- Underbog
DELETE FROM `creature_loot_template` WHERE `entry`=17882;
REPLACE INTO `creature_loot_template` VALUES
(17882, 24465, 0, 1, 1, 1, 0, 0, 0, 0), -- Black Stalker
(17882, 24463, 0, 1, 1, 1, 0, 0, 0, 0),
(17882, 24481, 0, 1, 1, 1, 0, 0, 0, 0),
(17882, 24464, 0, 1, 1, 1, 0, 0, 0, 0),
(17882, 24466, 0, 1, 1, 1, 0, 0, 0, 0),
(17882, 24246, 20, 0, 1, 1, 0, 0, 0, 0), -- Sanguine Hibiscus
(17882, 24248, -100, 0, 1, 1, 1, 0, 0, 0); -- Brain of the Black Stalker(qid 9719)

DELETE FROM `creature_loot_template` WHERE `entry`=17826;
REPLACE INTO `creature_loot_template` VALUES
(17826, 24455, 0, 1, 1, 1, 0, 0, 0, 0), -- Musel'ek
(17826, 24457, 0, 1, 1, 1, 0, 0, 0, 0),
(17826, 24453, 0, 1, 1, 1, 0, 0, 0, 0),
(17826, 24456, 0, 1, 1, 1, 0, 0, 0, 0),
(17826, 24454, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=18105;
REPLACE INTO `creature_loot_template` VALUES
(18105, 24462, 0, 1, 1, 1, 0, 0, 0, 0), -- Gha'zan
(18105, 24460, 0, 1, 1, 1, 0, 0, 0, 0),
(18105, 24461, 0, 1, 1, 1, 0, 0, 0, 0),
(18105, 24459, 0, 1, 1, 1, 0, 0, 0, 0),
(18105, 24458, 0, 1, 1, 1, 0, 0, 0, 0),
(18105, 24246, 20, 0, 1, 1, 0, 0, 0, 0); -- Sanguine Hibiscus

DELETE FROM `creature_loot_template` WHERE `entry`=17770;
REPLACE INTO `creature_loot_template` VALUES
(17770, 24413, 0, 1, 1, 1, 0, 0, 0, 0), -- Hungarfen
(17770, 24452, 0, 1, 1, 1, 0, 0, 0, 0),
(17770, 27631, 0, 1, 1, 1, 0, 0, 0, 0),
(17770, 24451, 0, 1, 1, 1, 0, 0, 0, 0),
(17770, 24450, 0, 1, 1, 1, 0, 0, 0, 0),
(17770, 24246, 20, 0, 1, 1, 0, 0, 0, 0); -- Sanguine Hibiscus

-- Slave Pens
DELETE FROM `creature_loot_template` WHERE `entry`=17942;
REPLACE INTO `creature_loot_template` VALUES
(17942, 24365, 0, 1, 1, 1, 0, 0, 0, 0), -- Quagmirran
(17942, 24362, 0, 1, 1, 1, 0, 0, 0, 0),
(17942, 24366, 0, 1, 1, 1, 0, 0, 0, 0),
(17942, 24363, 0, 1, 1, 1, 0, 0, 0, 0),
(17942, 24364, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=17991;
REPLACE INTO `creature_loot_template` VALUES
(17991, 24380, 0, 1, 1, 1, 0, 0, 0, 0), -- Rokmar
(17991, 24376, 0, 1, 1, 1, 0, 0, 0, 0),
(17991, 24381, 0, 1, 1, 1, 0, 0, 0, 0),
(17991, 24379, 0, 1, 1, 1, 0, 0, 0, 0),
(17991, 24378, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=17941;
REPLACE INTO `creature_loot_template` VALUES
(17941, 24359, 0, 1, 1, 1, 0, 0, 0, 0), -- Mennu
(17941, 24360, 0, 1, 1, 1, 0, 0, 0, 0),
(17941, 24361, 0, 1, 1, 1, 0, 0, 0, 0),
(17941, 24357, 0, 1, 1, 1, 0, 0, 0, 0),
(17941, 24356, 0, 1, 1, 1, 0, 0, 0, 0),
(17941, 29674, 10, 0, 1, 1, 0, 7, 165, 1); -- Nature Armor Kit

-- Blood Furnace
DELETE FROM `creature_loot_template` WHERE `entry`=17377;
REPLACE INTO `creature_loot_template` VALUES
(17377, 24396, 0, 1, 1, 1, 0, 0, 0, 0), -- Keli'dan
(17377, 24398, 0, 1, 1, 1, 0, 0, 0, 0),
(17377, 24397, 0, 1, 1, 1, 0, 0, 0, 0),
(17377, 24395, 0, 1, 1, 1, 0, 0, 0, 0),
(17377, 24394, 0, 1, 1, 1, 0, 0, 0, 0),
(17377, 23894, -100, 0, 1, 1, 0, 0, 0, 0); -- Fel Orc Blood Vial (qid 9589a/9590h)

DELETE FROM `creature_loot_template` WHERE `entry`=17380;
REPLACE INTO `creature_loot_template` VALUES
(17380, 24393, 0, 1, 1, 1, 0, 0, 0, 0), -- Broggok
(17380, 24390, 0, 1, 1, 1, 0, 0, 0, 0),
(17380, 24389, 0, 1, 1, 1, 0, 0, 0, 0),
(17380, 24392, 0, 1, 1, 1, 0, 0, 0, 0),
(17380, 24391, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=17381;
REPLACE INTO `creature_loot_template` VALUES
(17381, 24384, 0, 1, 1, 1, 0, 0, 0, 0), -- The Maker
(17381, 24385, 0, 1, 1, 1, 0, 0, 0, 0),
(17381, 24387, 0, 1, 1, 1, 0, 0, 0, 0),
(17381, 24386, 0, 1, 1, 1, 0, 0, 0, 0),
(17381, 24388, 0, 1, 1, 1, 0, 0, 0, 0),
(17381, 23894, -100, 0, 1, 1, 0, 0, 0, 0); -- Fel Orc Blood Vial (qid 9589a/9590h)

-- Ramparts
DELETE FROM `creature_loot_template` WHERE `entry`=17536;
REPLACE INTO `creature_loot_template` VALUES
(17536, 29562, 2, 0, 1, 1, 0, 0, 0, 0), -- Nazan
(17536, 29561, 10, 0, 1, 1, 0, 0, 0, 0),
(17536, 23901, -100, 0, 1, 1, 1, 0, 0, 0); -- Nazan's Claw (qid 9572h/9575a)

DELETE FROM `creature_loot_template` WHERE `entry`=17537;
REPLACE INTO `creature_loot_template` VALUES
(17537, 23890, 100, 0, 1, 1, 1, 6, 469, 0), -- Vazruden
(17537, 23892, 100, 0, 1, 1, 1, 6, 67, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=17308;
REPLACE INTO `creature_loot_template` VALUES
(17308, 24094, 0, 1, 1, 1, 0, 0, 0, 0), -- Omor
(17308, 24069, 0, 1, 1, 1, 0, 0, 0, 0),
(17308, 24073, 0, 1, 1, 1, 0, 0, 0, 0),
(17308, 24096, 0, 1, 1, 1, 0, 0, 0, 0),
(17308, 24090, 0, 1, 1, 1, 0, 0, 0, 0),
(17308, 24091, 0, 1, 1, 1, 0, 0, 0, 0),
(17308, 23886, -100, 0, 1, 1, 1, 0, 0, 0); -- Omor's Hoof (qid 9572h/9575a)

DELETE FROM `creature_loot_template` WHERE `entry`=17306;
REPLACE INTO `creature_loot_template` VALUES
(17306, 24021, 0, 1, 1, 1, 0, 0, 0, 0), -- Gargolmar
(17306, 24020, 0, 1, 1, 1, 0, 0, 0, 0),
(17306, 24024, 0, 1, 1, 1, 0, 0, 0, 0),
(17306, 24023, 0, 1, 1, 1, 0, 0, 0, 0),
(17306, 24022, 0, 1, 1, 1, 0, 0, 0, 0),
(17306, 23881, -100, 0, 1, 1, 1, 0, 0, 0); -- Gargolmar's Hand (qid 9572h/9575a)

-- Reinforced Fel Iron Chest(For Nazan/Vazruden)
DELETE FROM `gameobject_loot_template` WHERE `entry`=21762;
REPLACE INTO `gameobject_loot_template` VALUES
(95003, 24150, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24046, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24083, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24063, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24064, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24045, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24155, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24151, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24154, 0, 1, 1, 1, 0, 0, 0, 0),
(95003, 24044, 0, 1, 1, 1, 0, 0, 0, 0),
(21762, 0, 100, 1, -95003, 2, 0, 0, 0, 0);

-- Steelsnap respawntime
UPDATE `creature` SET `spawntimesecs` = '300' WHERE `id` = '4548';

-- Channel Earth Shield on Eykenen
DELETE FROM `spell_script_target` WHERE `entry` = '37204';
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('37204', '1', '21709');

-- Calvin Montague should not be civilian and misc
UPDATE `creature_template` SET `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `civilian` = '0' WHERE `entry` = '6784';

-- Xandivious 50 rep with Timbermaw Hold
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = '15623';
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
('15623', '576', '0', '7', '0', '50', '0', '0', '0', '0');
-- Xandivious Aura of Rot
DELETE FROM `creature_template_addon` WHERE `entry` = '15623';
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
('15623', '25818 0');
-- Xandivious was friendly
UPDATE `creature_template` SET `faction_A` = '90' , `faction_H` = '90' WHERE `entry` = '15623';
-- Essence of Xandivious should only drop from GO 180671
DELETE FROM `creature_loot_template` WHERE `item` = '21145';

-- Sergeant Shatterskull better stats
UPDATE `creature_template` SET `minhealth` = '18000', `maxhealth` = '18000', `armor` = '5800', `mindmg` = '354', `maxdmg` = '708', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '19256';

-- Hillsbrad Tailor bestiary, spells, correct npcflag
UPDATE `creature_template` SET `minhealth` = '664', `maxhealth` = '713', `armor` = '992', `npcflag` = '129', `mindmg` = '34', `maxdmg` = '48', `trainer_type` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `spell1` = '101', `spell2` = '22416', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '2264';
DELETE FROM `npc_trainer` WHERE `entry` = '2264';
DELETE FROM `npc_vendor` WHERE `entry` = '2264';
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
('2264', '792', '0', '0'),
('2264', '793', '0', '0'),
('2264', '794', '0', '0'),
('2264', '795', '0', '0'),
('2264', '3602', '0', '0'),
('2264', '3603', '0', '0');

DELETE FROM `pickpocketing_loot_template` WHERE `entry`=23386;
INSERT INTO `pickpocketing_loot_template` VALUES
(23386, 29570, 9, 1, 1, 1, 0, 0, 0, 0),
(23386, 22829, 2, 1, 1, 1, 0, 0, 0, 0),
(23386, 27855, 3, 1, 1, 1, 0, 0, 0, 0),
(23386, 27854, 3, 1, 1, 1, 0, 0, 0, 0),
(23386, 29569, 8, 1, 1, 1, 0, 0, 0, 0);

-- Gloom Weed was not possible to open
UPDATE `gameobject` SET `state` = '1' WHERE `id` = '175566';

-- Cyber-Rage Forgelord spells (for mind control)
UPDATE `creature_template` SET `spell1` = '36255', `spell2` = '38920' WHERE `entry` = '16943';

UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `id` = '1736';

UPDATE `creature_template` SET `scale` = 0.4 WHERE `entry` = 23234;

update quest_template set objectivetext2 = '', reqspellcast1 = 0, reqcreatureorgoid2 = 0, reqcreatureorgocount2 = 0, reqspellcast2 = 0 where entry in ( 5625, 5650, 5648, 5624, 5621);
update creature_template set npcflag=0 where entry in (12429,12423,12427,12428,12430);

-- Deathguard Kel kneeling from addon to template_addon
-- delete from creature_addon where guid in (44557);
-- Grunt Kor'ja misses kneeling
delete from `creature_template_addon` where `entry` in (12430, 12429);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(12430,0,16777472,8,4097,0,NULL),
(12429,0,16777472,8,4097,0,NULL);

-- Hellfire Fortifications (Horde)
UPDATE `quest_template` SET `RewRepValue1` = '150' WHERE `entry` = '10110';

-- Ambassador Hellmaw, Zereketh the Unbound, Dalliah the Doomsayer, Wrath-Scryer Soccothrates (demon bosses) normal and heroic immunities
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|'111558655' WHERE `entry` IN ('18731', '20636', '20870', '21626', '20885', '21590', '20886', '21624');

-- Spitfire Totem spell and misc
UPDATE `creature_template` SET `minhealth` = '25000', `maxhealth` = '25000', `faction_A` = '14', `faction_H` = '14', `speed` = '0.001', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `spell1` = '38296', `RegenHealth` = '0' WHERE `entry` = '22091';

-- Fix for Henrig Lonebrow's Journal double spawn.
DELETE FROM `gameobject` WHERE `guid` = '13539';

update `creature_template` set `faction_a` = 1671, `faction_h` = 1671 where `entry` in (16864,16842,16831);

update `creature_template` set `movementtype` = 0 where `entry` in (2673,16897,16898,16899,18215,19376);
update `creature` set `movementtype` = 0, `spawndist` = 0 where `id` in (2673,16897,16898,16899,18215,19376);

-- <Simone's Pet> second is not visible
delete from `creature` where `id` = '14528' and `guid` = '54143';
-- Invis Deathforge Target should be invisible (better never delete triggers)
DELETE FROM `creature_template_addon` WHERE (`entry`='21211');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('21211', '23196 0');

-- Remnant of Malice - 2 stand in line
delete from creature_addon where guid= '84947';
delete from `creature` where `id` = '22437' and `guid` = '84947';

-- eye of the citadel, redone..
-- there were 2, reuse guid1
delete from `creature` where `id` = '21134';
INSERT INTO `creature` (`guid`,`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('86039', '21134', '530', '0', '0', '-1166.79', '1910.94', '81.9625', '1.63391', '120', '0', '0', '-1166.79', '1910.94', '81.9625', '0', '1800', '0', '0', '0');
-- Eye of the Citadel should not be killable
UPDATE `creature_template` SET `flags` = `flags`|'2' WHERE `entry` = '21134';

-- Stonemaul Spirit better stats
UPDATE `creature_template` SET `minlevel` = '40', `maxlevel` = '40', `minhealth` = '1800', `maxhealth` = '1800', `armor` = '800', `faction_A` = '45', `faction_H` = '45', `speed` = '1.2', `mindmg` = '23', `maxdmg` = '48', `attackpower` = '247', `baseattacktime` = '1610', `mingold` = '20', `maxgold` = '50' WHERE `entry` = '23786';

-- Blessing of Salvation
DELETE FROM `npc_trainer` WHERE `spell` = 1912;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(8140, 1912, 6000, 0, 0, 26),
(5491, 1912, 6000, 0, 0, 26),
(1232, 1912, 6000, 0, 0, 26),
(16761, 1912, 6000, 0, 0, 26),
(5148, 1912, 6000, 0, 0, 26),
(5149, 1912, 6000, 0, 0, 26),
(927, 1912, 6000, 0, 0, 26),
(16681, 1912, 6000, 0, 0, 26),
(20406, 1912, 6000, 0, 0, 26),
(16680, 1912, 6000, 0, 0, 26),
(17509, 1912, 6000, 0, 0, 26),
(5492, 1912, 6000, 0, 0, 26),
(17121, 1912, 6000, 0, 0, 26),
(928, 1912, 6000, 0, 0, 26),
(23128, 1912, 6000, 0, 0, 26),
(16275, 1912, 6000, 0, 0, 26),
(16679, 1912, 6000, 0, 0, 26),
(17483, 1912, 6000, 0, 0, 26),
(5147, 1912, 6000, 0, 0, 26),
(17844, 1912, 6000, 0, 0, 26);

-- Mortog Steamhead stats
UPDATE `creature_template` SET `minhealth` = '9900', `maxhealth` = '9900', `attackpower` = '3500', `armor` = '7200', `speed` = '1' WHERE `entry` = '23373';

-- Mortog Steamhead vendorlist
DELETE FROM npc_vendor WHERE entry = '23373';
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
('23373', '28056', '0', '0'),
('23373', '28061', '0', '0'),
('23373', '28060', '0', '0'),
('23373', '28053', '0', '0'),
('23373', '22147', '0', '0'),
('23373', '22148', '0', '0'),
('23373', '32903', '0', '0'),
('23373', '32904', '0', '0'),
('23373', '16583', '0', '0'),
('23373', '17038', '0', '0'),
('23373', '2931', '0', '0'),
('23373', '17029', '0', '0'),
('23373', '21177', '0', '0'),
('23373', '17026', '0', '0'),
('23373', '17020', '0', '0'),
('23373', '5565', '0', '0'),
('23373', '8923', '0', '0'),
('23373', '17037', '0', '0'),
('23373', '17021', '0', '0'),
('23373', '17028', '0', '0'),
('23373', '11284', '0', '0'),
('23373', '11285', '0', '0'),
('23373', '17032', '0', '0'),
('23373', '8925', '0', '0'),
('23373', '17030', '0', '0'),
('23373', '5173', '0', '0'),
('23373', '8924', '0', '0'),
('23373', '3777', '0', '0'),
('23373', '17033', '0', '0'),
('23373', '5140', '0', '0'),
('23373', '17031', '0', '0');
-- Cenarion Mana, Healing Salve buycount
UPDATE `item_template` SET `BuyCount` = '3' WHERE `entry` IN ('32904', '32903');

-- Swine misc
UPDATE `creature_template` SET `minhealth` = '64', `maxhealth` = '64', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `civilian` = '0', `equipment_id` = '0' WHERE `entry` = '10685';

-- Kalldan Felmoon, Ebru, Nalpak correct position
DELETE FROM `creature` WHERE `id` IN ('5768', '5767', '5783');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('38163', '5768', '1' ,'0', '86', '-803.768', '-2039.35', '96.247', '1.74463', '180', '0', '0', '-803.768', '-2039.35', '96.247', '0', '1200', '0', '0', '0'),
('38162', '5767', '1', '0', '86', '-798.737', '-2035.4', '95.9493', '2.45541', '180', '0', '0', '-798.737', '-2035.4', '95.9493', '0', '3300', '0', '0', '0'),
('38183', '5783', '1', '0', '548', '-800.21', '-2028.93', '96.0891', '3.73326', '180', '0', '0', '-800.21', '-2028.93', '96.0891', '0', '1100', '0', '0', '0');

-- Update faction of Felhound Manastalker (normal and heroic)
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE `entry` IN ('17401', '18605');

-- Gladiator's Dreadgear on Captain Dirgehammer
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
('12777', '24556'),
('12777', '24553'),
('12777', '24555'),
('12777', '24554'),
('12777', '24552');

UPDATE `game_tele` SET `name` = 'GatesOfAhn\'Qiraj' WHERE `id` = '185';

UPDATE `creature_template` SET `flags` =`flags`| '2' WHERE `entry` =17508;

-- Eridani's supplies should have 100% chance of Book af Aquor, Irontree heart, 11 silvery claws, and nothing else. Book of Aquor should only be in Eridani's supplies
DELETE FROM creature_loot_template where item=11169;
DELETE FROM `item_loot_template` where `item`=11169 and `entry` in (16884, 5758);
DELETE FROM `item_loot_template` where `item` = 3858 and `entry` = 11617;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = 100 where `entry` = 11617 and `item` in (11169, 11172, 11173);

update `quest_template` set `RequestItemsText`='The Master''s Glaive, $N.$B$BGo there, then speak with me again.' where `entry`='944';

UPDATE `quest_template` SET `RewRepFaction1`='87',`RewRepFaction2`='470',`RewRepFaction3`='21',`RewRepFaction4`='369',`RewRepFaction5`='577',`RewRepValue1`='-500',`RewRepValue2`='250',`RewRepValue3`='500',`RewRepValue4`='250',`RewRepValue5`='250' WHERE `entry`='9259';
UPDATE `quest_template` SET `RewRepFaction1`='87',`RewRepFaction2`='470',`RewRepFaction3`='21',`RewRepFaction4`='369',`RewRepFaction5`='577',`RewRepValue1`='-500',`RewRepValue2`='250',`RewRepValue3`='250',`RewRepValue4`='250',`RewRepValue5`='500' WHERE `entry`='9266';
UPDATE `quest_template` SET `RewRepFaction1`='87',`RewRepFaction2`='470',`RewRepFaction3`='21',`RewRepFaction4`='369',`RewRepFaction5`='577',`RewRepValue1`='-500',`RewRepValue2`='250',`RewRepValue3`='250',`RewRepValue4`='250',`RewRepValue5`='500' WHERE `entry`='9266';
UPDATE `quest_template` SET `RewRepFaction1`='87',`RewRepFaction2`='470',`RewRepFaction3`='21',`RewRepFaction4`='369',`RewRepFaction5`='577',`RewRepValue1`='-500',`RewRepValue2`='250',`RewRepValue3`='250',`RewRepValue4`='500',`RewRepValue5`='250' WHERE `entry`='9268';

DELETE FROM `gameobject` WHERE `guid`='29197';

-- Update stats
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `minhealth` = 480000, `maxhealth` = 480000,
`minmana` = 338700, `maxmana` = 338700, `npcflag` = 3 WHERE `entry` = 23089;

-- Ashtongue Sorcerer
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `minhealth` = 100000, `maxhealth` = 100000,
`minmana` = 73320, `maxmana` = 73320, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23215;

-- Ashtongue Defender
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72, `minhealth` = 87000, `maxhealth` = 87000,
`faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23216;

-- Ashtongue Elementalist
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `minhealth` = 23000, `maxhealth` = 23000,
`minmana` = 32310, `maxmana` = 32310, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23523;

-- Ashtongue Rogue
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `minhealth` = 29000, `maxhealth` = 29000,
`faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23318;

-- Ashtongue Spiritbinder
UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `minhealth` = 23000, `maxhealth` = 23000,
`minmana` = 32310, `maxmana` = 32310, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23524;

-- Teron Gorefiend
-- Doom Blossoms
UPDATE `creature_template` SET `minlevel` = 72, `maxlevel` = 72 WHERE `entry` = 23123;

-- Shadowy Construct
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 59000, `maxhealth` = 59000,
`faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23111;

-- Enslaved Soul (Spawned in the Reliquary event)
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 34000, `maxhealth` = 34000,

`faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23469;

-- Shadowfang Keep
-- Rethilgore
DELETE FROM `creature_loot_template` WHERE `entry`=3914;
REPLACE INTO `creature_loot_template` VALUES
(3914, 5254, 100, 0, 1, 1, 0, 0, 0, 0), -- Rugged Spaulders
(3914, 5635, 5, 0, 1, 1, 0, 0, 0, 0), -- Worgen Loot
(3914, 3770, 4, 0, 1, 1, 0, 0, 0, 0), -- Food
(3914, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Razorclaw the Butcher
DELETE FROM `creature_loot_template` WHERE `entry`=3886;
REPLACE INTO `creature_loot_template` VALUES
(3886, 6633, 45, 1, 1, 1, 0, 0, 0, 0), -- Butcher's Slicer
(3886, 6226, 45, 1, 1, 1, 0, 0, 0, 0), -- Bloody Apron
(3886, 1292, 10, 1, 1, 1, 0, 0, 0, 0), -- Butcher's Cleaver
(3886, 5635, 5, 0, 1, 1, 0, 0, 0, 0), -- Worgen Loot
(3886, 3770, 4, 0, 1, 1, 0, 0, 0, 0), -- Food
(3886, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Baron Silverlaine
DELETE FROM `creature_loot_template` WHERE `entry`=3887;
REPLACE INTO `creature_loot_template` VALUES
(3887, 6323, 70, 1, 1, 1, 0, 0, 0, 0), -- Baron's Scepter
(3887, 6321, 30, 1, 1, 1, 0, 0, 0, 0), -- Silverlaine's Family Seal
(3887, 2592, 18, 0, 2, 4, 0, 0, 0, 0), -- Cloth and food
(3887, 2589, 6, 0, 2, 5, 0, 0, 0, 0),
(3887, 4606, 4, 0, 1, 1, 0, 0, 0, 0),
(3887, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Sever(From the Scourge Invasion event)
DELETE FROM `creature_loot_template` WHERE `entry`=14682;
REPLACE INTO `creature_loot_template` VALUES
(14682, 23171, 0, 1, 1, 1, 0, 0, 0, 0), -- The Axe of Severing
(14682, 23173, 0, 1, 1, 1, 0, 0, 0, 0); -- Abomination Skin Leggings

-- Commander Springvale
DELETE FROM `creature_loot_template` WHERE `entry`=4278;
REPLACE INTO `creature_loot_template` VALUES
(4278, 6320, 0, 1, 1, 1, 0, 0, 0, 0), -- Commander's Crest
(4278, 3191, 0, 1, 1, 1, 0, 0, 0, 0), -- Arced War Axe
(4278, 2592, 18, 0, 2, 4, 0, 0, 0, 0), -- Cloth and food
(4278, 2589, 6, 0, 2, 5, 0, 0, 0, 0),
(4278, 4606, 4, 0, 1, 1, 0, 0, 0, 0),
(4278, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Odo the Blindwatcher
DELETE FROM `creature_loot_template` WHERE `entry`=4279;
REPLACE INTO `creature_loot_template` VALUES
(4279, 6319, 60, 1, 1, 1, 0, 0, 0, 0), -- Girdle of the Blindwatcher
(4279, 6318, 40, 1, 1, 1, 0, 0, 0, 0), -- Odo's Ley Staff
(4279, 5635, 5, 0, 1, 1, 0, 0, 0, 0), -- Worgen Loot
(4279, 3770, 4, 0, 1, 1, 0, 0, 0, 0), -- Food
(4279, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Deathsworn Captain(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=3872;
REPLACE INTO `creature_loot_template` VALUES
(3872, 6641, 60, 1, 1, 1, 0, 0, 0, 0), -- Haunting Blade
(3872, 6642, 40, 1, 1, 1, 0, 0, 0, 0), -- Phantom Armor
(3872, 2592, 18, 0, 2, 4, 0, 0, 0, 0), -- Cloth and food
(3872, 2589, 6, 0, 2, 5, 0, 0, 0, 0),
(3872, 4606, 4, 0, 1, 1, 0, 0, 0, 0),
(3872, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Fenrus the Devourer
DELETE FROM `creature_loot_template` WHERE `entry`=4274;
REPLACE INTO `creature_loot_template` VALUES
(4274, 6340, 70, 1, 1, 1, 0, 0, 0, 0), -- Fenrus' Hide
(4274, 3230, 30, 1, 1, 1, 0, 0, 0, 0), -- Black Wolf Bracers
(4274, 3301, 30, 0, 1, 1, 0, 0, 0, 0), -- Wolf loot
(4274, 1015, 27, 0, 1, 1, 0, 0, 0, 0),
(4274, 3402, 24, 0, 1, 1, 0, 0, 0, 0),
(4274, 5635, 5, 0, 1, 1, 0, 0, 0, 0),
(4274, 5637, 1, 0, 1, 1, 0, 0, 0, 0);

-- Wolf Master Nandos
DELETE FROM `creature_loot_template` WHERE `entry`=3927;
REPLACE INTO `creature_loot_template` VALUES
(3927, 3748, 60, 1, 1, 1, 0, 0, 0, 0), -- Feline Mantle
(3927, 6314, 40, 1, 1, 1, 0, 0, 0, 0), -- Wolfmaster Cape
(3927, 5635, 5, 0, 1, 1, 0, 0, 0, 0), -- Worgen Loot
(3927, 3770, 4, 0, 1, 1, 0, 0, 0, 0), -- Food
(3927, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Archmage Arugal
DELETE FROM `creature_loot_template` WHERE `entry`=4275;
REPLACE INTO `creature_loot_template` VALUES
(4275, 6324, 40, 1, 1, 1, 0, 0, 0, 0), -- Robes of Arugal
(4275, 6392, 40, 1, 1, 1, 0, 0, 0, 0), -- Belt of Arugal
(4275, 6220, 20, 1, 1, 1, 0, 0, 0, 0), -- Meteor Shard
(4275, 2592, 18, 0, 2, 4, 0, 0, 0, 0), -- Cloth and food
(4275, 2589, 6, 0, 2, 5, 0, 0, 0, 0),
(4275, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4275, 422, 4, 0, 1, 1, 0, 0, 0, 0),
(4275, 5442, -100, 0, 1, 1, 1, 0, 0, 0); -- Head of Arugal (qid 1014)

-- Razorfen Kraul
-- Aggem Thorncurse
DELETE FROM `creature_loot_template` WHERE `entry`=4424;
REPLACE INTO `creature_loot_template` VALUES
(4424, 6681, 100, 0, 1, 1, 0, 0, 0, 0), -- Thornspike
(4424, 4306, 18, 0, 1, 3, 0, 0, 0, 0), -- Cloth and food
(4424, 2592, 8, 0, 1, 3, 0, 0, 0, 0),
(4424, 4538, 4, 0, 1, 1, 0, 0, 0, 0),
(4424, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4424, 5825, -10, 0, 1, 1, 1, 0, 0, 0); -- Treshala's Pendant (qid 1142)

-- Death Speaker Jargba
DELETE FROM `creature_loot_template` WHERE `entry`=4428;
REPLACE INTO `creature_loot_template` VALUES
(4428, 6685, 40, 1, 1, 1, 0, 0, 0, 0), -- Death Speaker Mantle
(4428, 6682, 40, 1, 1, 1, 0, 0, 0, 0), -- Death Speaker Robes
(4428, 2816, 20, 1, 1, 1, 0, 0, 0, 0), -- Death Speaker Scepter
(4428, 4306, 18, 0, 1, 3, 0, 0, 0, 0), -- Cloth and food
(4428, 2592, 8, 0, 1, 3, 0, 0, 0, 0),
(4428, 4538, 4, 0, 1, 1, 0, 0, 0, 0),
(4428, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4428, 5825, -10, 0, 1, 1, 1, 0, 0, 0); -- Treshala's Pendant (qid 1142)

-- Overlord Ramtusk
DELETE FROM `creature_loot_template` WHERE `entry`=4420;
REPLACE INTO `creature_loot_template` VALUES
(4420, 6686, 60, 1, 1, 1, 0, 0, 0, 0), -- Tusken Helm
(4420, 6687, 40, 1, 1, 1, 0, 0, 0, 0), -- Corpsemaker
(4420, 4306, 18, 0, 1, 3, 0, 0, 0, 0), -- Cloth and food
(4420, 2592, 8, 0, 1, 3, 0, 0, 0, 0),
(4420, 4538, 4, 0, 1, 1, 0, 0, 0, 0),
(4420, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4420, 5825, -10, 0, 1, 1, 1, 0, 0, 0); -- Treshala's Pendant (qid 1142)

-- Earthcaller Halmgar(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=4842;
REPLACE INTO `creature_loot_template` VALUES
(4842, 6689, 0, 1, 1, 1, 0, 0, 0, 0), -- Wind Spirit Staff
(4842, 6688, 0, 1, 1, 1, 0, 0, 0, 0), -- Whisperwind Headdress
(4842, 4306, 18, 0, 1, 3, 0, 0, 0, 0), -- Cloth and food
(4842, 2592, 8, 0, 1, 3, 0, 0, 0, 0),
(4842, 4538, 4, 0, 1, 1, 0, 0, 0, 0),
(4842, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4842, 5825, -10, 0, 1, 1, 1, 0, 0, 0); -- Treshala's Pendant (qid 1142)

-- Agathelos the Raging
DELETE FROM `creature_loot_template` WHERE `entry`=4422;
REPLACE INTO `creature_loot_template` VALUES
(4422, 6690, 60, 1, 1, 1, 0, 0, 0, 0), -- Ferine Leggings
(4422, 6691, 40, 1, 1, 1, 0, 0, 0, 0), -- Swinetusk Shank
(4422, 3403, 35, 0, 1, 1, 0, 0, 0, 0), -- Boar loot
(4422, 3172, 35, 0, 1, 1, 0, 0, 0, 0),
(4422, 2677, 30, 0, 1, 1, 0, 0, 0, 0),
(4422, 2295, 25, 0, 1, 1, 0, 0, 0, 0);

-- Blind Hunter(Rare)
DELETE FROM `creature_loot_template` WHERE `entry`=4425;
REPLACE INTO `creature_loot_template` VALUES
(4425, 6696, 0, 1, 1, 1, 0, 0, 0, 0), -- Nightstalker Bow
(4425, 6697, 0, 1, 1, 1, 0, 0, 0, 0), -- Batwing Mantle
(4425, 6695, 0, 1, 1, 1, 0, 0, 0, 0), -- Stygian Bone Amulet
(4425, 11391, 20, 0, 1, 1, 0, 0, 0, 0), -- Bat loot
(4425, 11393, 20, 0, 1, 1, 0, 0, 0, 0),
(4425, 11392, 20, 0, 1, 1, 0, 0, 0, 0),
(4425, 11394, 20, 0, 1, 1, 0, 0, 0, 0),
(4425, 5635, 5, 0, 1, 1, 0, 0, 0, 0),
(4425, 5637, 2, 0, 1, 1, 0, 0, 0, 0);

-- Charlga Razorflank
DELETE FROM `creature_loot_template` WHERE `entry`=4421;
REPLACE INTO `creature_loot_template` VALUES
(4421, 6693, 40, 1, 1, 1, 0, 0, 0, 0), -- Agamaggan's Clutch
(4421, 6694, 40, 1, 1, 1, 0, 0, 0, 0), -- Heart of Agamaggan
(4421, 6692, 20, 1, 1, 1, 0, 0, 0, 0), -- Pronged Reaver
(4421, 4306, 18, 0, 1, 3, 0, 0, 0, 0), -- Cloth and food
(4421, 2592, 8, 0, 1, 3, 0, 0, 0, 0),
(4421, 4538, 4, 0, 1, 1, 0, 0, 0, 0),
(4421, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4421, 5792, -100, 0, 1, 1, 1, 0, 0, 0), -- Razorflank's Medallion (qid 1101)
(4421, 5793, -100, 0, 1, 1, 1, 0, 0, 0), -- Razorflank's Heart (qid 1102)
(4421, 5825, -10, 0, 1, 1, 1, 0, 0, 0), -- Treshala's Pendant (qid 1142)
(4421, 17008, 100, 0, 1, 1, 1, 6, 67, 0); -- Small Scroll (Starts qid 6522)

-- Stockade
-- Bruegal Ironknuckle (Rare spawn, only one that drops loot)
DELETE FROM `creature_loot_template` WHERE `entry`=1720;
REPLACE INTO `creature_loot_template` VALUES
(1720, 3228, 60, 1, 1, 1, 0, 0, 0, 0), -- Jimmied Handcuffs
(1720, 2942, 20, 1, 1, 1, 0, 0, 0, 0), -- Iron Knuckles
(1720, 2941, 20, 1, 1, 1, 0, 0, 0, 0), -- Prison Shank
(1720, 4306, 18, 0, 1, 2, 0, 0, 0, 0), -- Cloth and food
(1720, 2592, 12, 0, 1, 2, 0, 0, 0, 0),
(1720, 4542, 4, 0, 1, 1, 0, 0, 0, 0),
(1720, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(1720, 2909, -80, 0, 1, 1, 0, 0, 0, 0); -- Red Wool Bandana (qid 388)

-- Blackfathom Deeps
-- Ghamoo-ra
DELETE FROM `creature_loot_template` WHERE `entry`=4887;
REPLACE INTO `creature_loot_template` VALUES
(4887, 6908, 60, 1, 1, 1, 0, 0, 0, 0), -- Ghamoo-ra's Bind
(4887, 6907, 40, 1, 1, 1, 0, 0, 0, 0), -- Tortoise Armor
(4887, 5524, 23, 0, 1, 1, 0, 0, 0, 0), -- Turtle Loot
(4887, 4555, 13, 0, 1, 1, 0, 0, 0, 0),
(4887, 4556, 13, 0, 1, 1, 0, 0, 0, 0),
(4887, 3712, 12, 0, 1, 1, 0, 0, 0, 0),
(4887, 6308, 6, 0, 1, 2, 0, 0, 0, 0);

-- Lady Sarevess
DELETE FROM `creature_loot_template` WHERE `entry`=4831;
REPLACE INTO `creature_loot_template` VALUES
(4831, 11121, 40, 1, 1, 1, 0, 0, 0, 0), -- Darkwater Talwar
(4831, 888, 40, 1, 1, 1, 0, 0, 0, 0), -- Naga Battle Gloves
(4831, 3078, 20, 1, 1, 1, 0, 0, 0, 0), -- Naga Heartpiercer
(4831, 5524, 25, 0, 1, 1, 0, 0, 0, 0), -- Naga loot
(4831, 17057, 20, 0, 1, 1, 0, 0, 0, 0),
(4831, 17058, 20, 0, 1, 1, 0, 0, 0, 0),
(4831, 7072, 3, 0, 1, 1, 0, 0, 0, 0),
(4831, 6308, 4, 0, 1, 3, 0, 0, 0, 0), -- Food/drink
(4831, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4831, 5952, -80, 0, 1, 1, 0, 0, 0, 0); -- Corrupted Brain Stem (qid 1275)

-- Gelihast
DELETE FROM `creature_loot_template` WHERE `entry`=6243;
REPLACE INTO `creature_loot_template` VALUES
(6243, 6905, 50, 1, 1, 1, 0, 0, 0, 0), -- Reef Axe
(6243, 6906, 50, 1, 1, 1, 0, 0, 0, 0), -- Algae Fists
(6243, 730, 32, 0, 1, 1, 0, 0, 0, 0), -- Murloc Loot
(6243, 1468, 28, 0, 1, 1, 0, 0, 0, 0),
(6243, 5524, 25, 0, 1, 1, 0, 0, 0, 0),
(6243, 17058, 21, 0, 1, 1, 0, 0, 0, 0),
(6243, 17057, 20, 0, 1, 1, 0, 0, 0, 0),
(6243, 5784, 17, 0, 1, 1, 0, 0, 0, 0),
(6243, 1470, 15, 0, 1, 1, 0, 0, 0, 0), -- Murloc Skin Bag
(6243, 6308, 4, 0, 1, 3, 0, 0, 0, 0), -- Food/drink
(6243, 1205, 4, 0, 1, 1, 0, 0, 0, 0);

-- Old Serra'kis
DELETE FROM `creature_loot_template` WHERE `entry`=4830;
REPLACE INTO `creature_loot_template` VALUES
(4830, 6902, 30, 1, 1, 1, 0, 0, 0, 0), -- Bands of Serra'kis
(4830, 6901, 40, 1, 1, 1, 0, 0, 0, 0), -- Glowing Thresher Cape
(4830, 6904, 30, 1, 1, 1, 0, 0, 0, 0), -- Bite of Serra'kis
(4830, 5516, 30, 0, 1, 1, 0, 0, 0, 0), -- Threshadon Loot
(4830, 5524, 23, 0, 1, 1, 0, 0, 0, 0),
(4830, 2608, 17, 0, 1, 1, 0, 0, 0, 0),
(4830, 17057, 17, 0, 1, 1, 0, 0, 0, 0),
(4830, 6308, 4, 0, 1, 3, 0, 0, 0, 0); -- Fish

-- Twilight Lord Kelris
DELETE FROM `creature_loot_template` WHERE `entry`=4832;
REPLACE INTO `creature_loot_template` VALUES
(4832, 1155, 60, 1, 1, 1, 0, 0, 0, 0), -- Rod of the Sleepwalker
(4832, 6903, 40, 1, 1, 1, 0, 0, 0, 0), -- Gaze Dreamer Pants
(4832, 2592, 14, 0, 2, 4, 0, 0, 0, 0), -- Cloth and food
(4832, 2589, 5, 0, 2, 5, 0, 0, 0, 0),
(4832, 4306, 2, 0, 1, 3, 0, 0, 0, 0),
(4832, 1205, 4, 0, 1, 1, 0, 0, 0, 0),
(4832, 3770, 4, 0, 1, 1, 0, 0, 0, 0),
(4832, 5881, -100, 0, 1, 1, 1, 0, 0, 0); -- Head of Kelris (qid 1200/6561)

-- Aku'mai
DELETE FROM `creature_loot_template` WHERE `entry`=4829;
REPLACE INTO `creature_loot_template` VALUES
(4829, 6910, 40, 1, 1, 1, 0, 0, 0, 0), -- Leech Pants
(4829, 6911, 40, 1, 1, 1, 0, 0, 0, 0), -- Moss Cinch
(4829, 6909, 20, 1, 1, 1, 0, 0, 0, 0), -- Strike of the Hydra
(4829, 5524, 26, 0, 1, 1, 0, 0, 0, 0), -- Hydra loot
(4829, 17057, 21, 0, 1, 1, 0, 0, 0, 0),
(4829, 5569, 17, 0, 1, 1, 0, 0, 0, 0),
(4829, 3010, 7, 0, 1, 1, 0, 0, 0, 0);

update creature_loot_template set item=30242 where entry=90062 and item=30236;
update creature_loot_template set item=30243 where entry=90062 and item=30237;
update creature_loot_template set item=30244 where entry=90062 and item=30238;

UPDATE `creature_template` SET `equipment_id` = 814 WHERE `entry` = 12160;

delete from creature_loot_template where entry =10383;
update creature_template set lootid=0 where entry=10383;

-- Barrel of Fish
DELETE FROM `item_loot_template` WHERE `entry`=33844;
REPLACE INTO `item_loot_template` VALUES
(90000, 27425, 0, 1, 4, 12, 0, 0, 0, 0), -- Spotted Feltail
(90000, 27429, 0, 1, 4, 11, 0, 0, 0, 0), -- Zangarian Sporefish
(90000, 27435, 0, 1, 4, 11, 0, 0, 0, 0), -- Figluster's Mudfish
(90000, 27438, 0, 1, 4, 11, 0, 0, 0, 0), -- Golden Darter
(90000, 27439, 0, 1, 4, 6, 0, 0, 0, 0), -- Furious Crawdad
(33844, 27515, 10, 1, 1, 2, 0, 0, 0, 0), -- Huge Spotted Feltail
(33844, 27516, 10, 1, 1, 2, 0, 0, 0, 0), -- Enormous Barbed Gill Trout
(33844, 2763, 20/9, 2, 1, 1, 0, 0, 0, 0), -- 20% chance to drop junk loot
(33844, 4874, 20/9, 2, 2, 3, 0, 0, 0, 0),
(33844, 5361, 20/9, 2, 1, 1, 0, 0, 0, 0),
(33844, 5567, 20/9, 2, 1, 1, 0, 0, 0, 0),
(33844, 6532, 20/9, 2, 1, 3, 0, 0, 0, 0),
(33844, 9355, 20/9, 2, 1, 1, 0, 0, 0, 0),
(33844, 25351, 20/9, 2, 1, 1, 0, 0, 0, 0),
(33844, 27442, 20/9, 2, 1, 1, 0, 0, 0, 0),
(33844, 33846, 20/9, 2, 1, 1, 0, 0, 0, 0),
(33844, 33869, 7, 3, 1, 1, 0, 0, 0, 0), -- Recipes (total group chance of 21%)
(33844, 33870, 7, 3, 1, 1, 0, 0, 0, 0),
(33844, 33875, 3, 3, 1, 1, 0, 0, 0, 0),
(33844, 33871, 2, 3, 1, 1, 0, 0, 0, 0),
(33844, 33925, 2, 3, 1, 1, 0, 0, 0, 0),
(33844, 0, 100, 1, -90000, 2, 0, 0, 0, 0); -- 2 stacks of fish

-- Crate of Meat
DELETE FROM `item_loot_template` WHERE `entry`=33857;
REPLACE INTO `item_loot_template` VALUES
(90001, 27671, 0, 1, 5, 16, 0, 0, 0, 0), -- Buzzard Meat
(90001, 27677, 0, 1, 5, 16, 0, 0, 0, 0), -- Chunk o' Basilisk
(90001, 27678, 0, 1, 5, 15, 0, 0, 0, 0), -- Clefthoof Meat
(90001, 27681, 0, 1, 5, 16, 0, 0, 0, 0), -- Warped Flesh
(90001, 27682, 0, 1, 5, 16, 0, 0, 0, 0), -- Talbuk Venison
(90001, 31670, 0, 1, 5, 16, 0, 0, 0, 0), -- Raptor Ribs
(90001, 31671, 0, 1, 5, 16, 0, 0, 0, 0), -- Serpent Flesh
(33857, 1430, 20/10, 1, 1, 1, 0, 0, 0, 0), -- 20% chance to drop junk loot
(33857, 2765, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 4555, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 5136, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 5637, 20/10, 1, 1, 2, 0, 0, 0, 0),
(33857, 5871, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 7005, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 33854, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 33855, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 33856, 20/10, 1, 1, 1, 0, 0, 0, 0),
(33857, 33871, 2, 2, 1, 1, 0, 0, 0, 0), -- Recipes (total group chance of 21%)
(33857, 33873, 10, 2, 1, 1, 0, 0, 0, 0),
(33857, 33875, 7, 2, 1, 1, 0, 0, 0, 0),
(33857, 33925, 2, 2, 1, 1, 0, 0, 0, 0),
(33857, 0, 100, 1, -90001, 2, 0, 0, 0, 0); -- 2 stacks of meat

-- Grisy Spicecrackle better stats
UPDATE `creature_template` SET `minlevel` = '65', `maxlevel` = '65', `minhealth` = '5800', `maxhealth` = '5800', `armor` = '5450', `faction_A` = '1818', `faction_H` = '1818', `mindmg` = '600', `maxdmg` = '900', `attackpower` = '5000', `baseattacktime` = '2000', `civilian` = '1' WHERE `entry` = '24416';
-- Gargoth better stats
UPDATE `creature_template` SET `minlevel` = '65', `maxlevel` = '65', `minhealth` = '6800', `maxhealth` = '6800', `armor` = '6100', `faction_A` = '1818', `faction_H` = '1818', `mindmg` = '645', `maxdmg` = '1220', `attackpower` = '6000', `baseattacktime` = '2000', `civilian` = '1' WHERE `entry` = '24436';

-- Gargoth should chop some meat (used addon_template of another creature with emote)
DELETE FROM `creature_template_addon` WHERE (`entry` = '24436');
INSERT INTO `creature_template_addon` (`entry`, `bytes0`, `bytes2`, `emote`) VALUES ('24436', '16843008', '4097', '234');

-- moving Bonfire that should be in a better position with the linkedtrap (thanks to jamiepollard)
DELETE FROM `gameobject` WHERE `guid` IN ('27568', '27569');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('27568', '186132', '530', '-1616.24', '5334.36', '-40.2092', '-1.10828', '0', '0', '-0.526214', '0.850352', '180', '100', '1'),
('27569', '2066', '530', '-1616.24', '5334.36', '-40.2092', '-1.10828', '0', '0', '-0.526214', '0.850352', '180', '100', '1');

INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('84713', '2779', '0', '0', '0', '-2297', '-1564', '-40', '3.097', '115200', '0', '0', '-2297', '-1564', '-40', '3.097', '1900', '0', '0', '0');

-- Protectorate Advisor Rahim misc
UPDATE `creature_template` SET `armor` = '6800', `speed` = '1' WHERE `entry` = '22899';
-- Protectorate Advisor Rahim spawn
DELETE FROM `creature` WHERE `id` = '22899';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('84714', '22899', '530', '0', '1601', '4107.49', '2930.08', '354.534', '6.23883', '180', '0', '0', '4107.49', '2930.08', '354.53', '0', '9250', '0', '0', '0');

-- Mortog Steamhead spawn
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('84715', '23373', '530', '0', '0', '748.466', '6882.93', '-64.1698', '3.85811', '25', '0', '0', '748.466', '6882.93', '-64.1698', '3.85811', '9900', '0', '0', '0');

-- Shade of Akama
-- Remove Ashtongue Channelers(spawned in SD2 event)
-- This is required so as to prevent players from killing the channelers before the event begins and to create a pointer to the Channelers from the Shade's script
DELETE FROM `creature` WHERE `guid` IN (86114, 86124, 86125, 86126, 86127, 86128, 86129, 86130);
-- Current GUIDS 86114, 86124, 86125, 86126, 86127, 86128, 86129, 86130

-- Add Akama Spawn (required to begin Shade of Akama event)
DELETE FROM `creature` WHERE `id`=23089;
INSERT INTO `creature`
(`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84716, 23089, 564, 0, 0, 544.596, 400.677, 112.784, 3.11943, 25, 0, 0, 544.596, 400.677, 112.784, 0, 1, 0, 0, 0);

-- Reliquary of Souls
-- Remove Essences (They are summoned by the Reliquary control mob)
DELETE FROM `creature` WHERE `guid` IN (86122, 86123, 86121);
-- Current GUIDS 86122 86123 86121

-- Spawn Reliquary(Control Mob)
DELETE FROM `creature` WHERE `id`=22856;
INSERT INTO `creature`

(`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84717, 22856, 564, 0, 0, 501.603, 184.569, 95.8864, 4.77098, 25, 0, 0, 501.603, 184.569, 95.8864, 0, 1, 0, 0, 0);

-- Illidari Council
-- Add Control Mob (used to properly set Instance Data for the event as well as to prevent players from pulling only one Council member off)
DELETE FROM `creature` WHERE `id`=23426;
INSERT INTO `creature`
(`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84718, 23426, 564, 0, 0, 676.752, 305.279, 271.709, 3.19736, 25, 0, 0, 676.752, 305.279, 271.709, 0, 1, 0, 0, 0);

-- Illidan Stormrage
-- Remove non-Illidan mobs(small flame, assumed use in quest for yell in Outland)
DELETE FROM `creature` WHERE `guid` IN (12719, 77479);
-- Current GUIDS 12719 77479

-- Non-attackable instead of attackable, this will be switched in the script
UPDATE `creature_template` SET `flag1` = 102 WHERE `entry` = 22917;

-- Akama Spawn (spawned right in front of Illidan instead of at the stairs because there is no efficient way of making Akama move all the way to Illidan through the various grids from the stairs)
DELETE FROM `creature` WHERE `id`=22990;
INSERT INTO `creature`
(`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84719, 22990, 564, 0, 0, 732.694, 305.133, 352.996, 3.13765, 25, 0, 0, 732.694, 305.133, 352.996, 0, 1, 0, 0, 0);

-- Akama Stats Update
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `minhealth` = 480000, `maxhealth` = 480000,
`minmana` = 338700, `maxmana` = 338700, `faction_A` = 1820, `faction_H` = 1820, `npcflag` = 3, `scale` = 3 WHERE `entry` = 22990;

-- Parasitic Shadowfiend (summoned by Illidan - Normal Form)
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 8700, `maxhealth` = 8700, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23498;

-- Shadow Demon (Summoned by Illidan - Demon Form)
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 20000, `maxhealth` = 20000, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23375;

-- Blade of Azzinoth (Summoned by Illidan - Phase 2)
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 22996;

-- Flame Crash (Summoned by Illidan - normal form. Circular fire on the ground)
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23336;

-- Demon Fire
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23069;

-- Flame of Azzinoth (Summoned by Illidan - Phase 2)
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `scale` = 3 WHERE `entry` = 22997;

-- Grisy Spicecrackle, Gargoth and The Rokk spawns by Brueggus
DELETE FROM `creature` WHERE `id` IN ('24416', '24436', '24393');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('84720', '24416', '530', '0', '0', '-1615.9', '5326.2', '-40.2091', '1.12942', '180', '0', '0', '-1615.9', '5326.2', '-40.2091', '0', '5800', '0', '0', '0'),
('84721', '24436', '530', '0', '0', '-1609.25', '5333.81', '-40.2091', '0.477538','180', '0', '0', '-1609.25', '5333.81', '-40.2091', '0', '7700', '0', '0','0'),('84722', '24393', '530', '0', '0', '-1609.3', '5328.65', '-39.5993', '2.08994','180', '0', '0', '-1609.3', '5328.65', '-39.5993', '2.08994', '7900', '0', '0','0');

-- [Spawn] Frozen Rune
DELETE FROM `gameobject` WHERE `id`=181287;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
('21612', 181287, 533, 2617.62, -2953.47, 241.381, 0.739406, 0, 0, 0.361338, 0.932435, 6380, 100, 1),
('21613', 181287, 533, 2482.83, -2896.52, 241.282, 2.26701, 0, 0, 0.905903, 0.423486, 6380, 100, 1),
('21614', 181287, 533, 2455.52, -2978.11, 241.287, 3.86137, 0, 0, 0.935936, -0.352171, 6380, 100, 1),
('23984', 181287, 533, 2635.2, -3384.3, 267.685, 3.19377, 0, 0, 0.99966, -0.0260857, 6380, 100, 1),
('23983', 181287, 533, 2678.9, -3432.53, 267.689, 4.74886, 0, 0, 0.694097, -0.719881, 6380, 100, 1),
('23982', 181287, 533, 2745.96, -3312.15, 267.684, 0.138569, 0, 0, 0.0692289, 0.997601, 6380, 100, 1),
('23981', 181287, 533, 2789.51, -3075.94, 267.685, 0.814009, 0, 0, 0.39586, 0.918311, 6380, 100, 1),
('21620', 181287, 533, 2745.64, -3116.69, 267.685, 3.69249, 0, 0, 0.962303, -0.271981, 6380, 100, 1),
('21621', 181287, 533, 3339.69, -3334.2, 292.595, 4.8431, 0, 0, 0.659415, -0.751779, 6380, 100, 1),
('21622', 181287, 533, 3192.31, -3293.11, 292.595, 4.74492, 0, 0, 0.695511, -0.718515, 6380, 100, 1),
('21623', 181287, 533, 3193.01, -3359.1, 292.595, 4.32474, 0, 0, 0.830065, -0.557667, 6380, 100, 1),
('21624', 181287, 533, 3233.92, -3173.09, 297.946, 3.88884, 0, 0, 0.931011, -0.364992, 6380, 100, 1),
('21625', 181287, 533, 3272.91, -3208.04, 297.846, 4.57605, 0, 0, 0.75363, -0.657299, 6380, 100, 1),
('21626', 181287, 533, 3332.81, -3202.3, 297.811, 5.80127, 0, 0, 0.238634, -0.97111, 6380, 100, 1),
('21627', 181287, 533, 3511.27, -2898.78, 302.345, 0.103201, 0, 0, 0.0515777, 0.998669, 6380, 100, 1),
('21628', 181287, 533, 3551.96, -2961.45, 302.736, 0.217081, 0, 0, 0.108327, 0.994115, 6380, 100, 1),
('21629', 181287, 533, 3479.38, -2888.36, 302.702, 1.71326, 0, 0, 0.755641, 0.654986, 6380, 100, 1),
('21630', 181287, 533, 3524.32, -3946.9, 310.05, 4.98837, 0, 0, 0.603119, -0.797651, 6380, 100, 1),
('21631', 181287, 533, 3460.24, -3934.4, 305.996, 4.01841, 0, 0, 0.905429, -0.424498, 6380, 100, 1),
('21632', 181287, 533, 3549.72, -3925.55, 305.4, 6.02981, 0, 0, 0.12635, -0.991986, 6380, 100, 1),
('21633', 181287, 533, 3381.55, -3621.99, 261.167, 0.0458548, 0, 0, 0.0229254, 0.999737, 6380, 100, 1),
('21634', 181287, 533, 3351.06, -3592.56, 260.996, 0.108686, 0, 0, 0.0543163, 0.998524, 6380, 100, 1),
('21635', 181287, 533, 3322.47, -3635.3, 259.084, 2.99895, 0, 0, 0.997458, 0.0712598, 6380, 100, 1),
('27824', 181287, 533, 3336.09, -3469.08, 287.069, 0.301108, 0, 0, 0.149986, 0.988688, 6380, 100, 1),
('27823', 181287, 533, 3214.19, -3465.14, 287.071, 2.60625, 0, 0, 0.96439, 0.264486, 6380, 100, 1),
('27822', 181287, 533, 2727.52, -3546.65, 261.969, 6.0188, 0, 0, 0.13181, -0.991275, 6380, 100, 1),
('27821', 181287, 533, 2730.03, -3455.88, 262.271, 0.678089, 0, 0, 0.332586, 0.943073, 6380, 100, 1),
('27820', 181287, 533, 2641.82, -3456.01, 265.559, 2.8772, 0, 0, 0.991275, 0.13181, 6380, 100, 1),
('27819', 181287, 533, 2811.74, -3703.96, 273.616, 5.56223, 0, 0, 0.35272, -0.935729, 6380, 100, 1),
('27818', 181287, 533, 2748.44, -3651.65, 273.622, 2.83297, 0, 0, 0.988118, 0.153697, 6380, 100, 1),
('27817', 181287, 533, 2793.38, -3650.78, 273.64, 0.378605, 0, 0, 0.188174, 0.982136, 6380, 100, 1),
('27816', 181287, 533, 2925.78, -3959.76, 273.57, 0.855331, 0, 0, 0.414748, 0.909936, 6380, 100, 1),
('27815', 181287, 533, 2926.43, -4034.49, 273.577, 4.7941, 0, 0, 0.677635, -0.735399, 6380, 100, 1),
('27814', 181287, 533, 2844.3, -3980.5, 278.981, 1.62973, 0, 0, 0.727634, 0.685966, 6380, 100, 1);

DELETE FROM `creature_loot_template` WHERE (`item` = '22682');

-- Strange lockbox containing Half Pendant of Aquatic Agility and Half Pendant of Aquatic Endurance
DELETE FROM `gameobject` WHERE `id` IN ('177790', '177792', '177794', '177844');
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,
`spawntimesecs`,`animprogress`,`state`) VALUES
('13290', '177792', '1', '7850.67', '-246.216', '-28.9783', '4.00466', '0', '0', '0.908326', '-0.418264', '50', '100', '1'),
('13292', '177794', '1', '1059.93', '-3094.2', '71.5824', '3.09525', '0', '0', '0.999732', '0.0231689', '50', '100', '1'),
('27813', '177790', '0', '818.007', '2321.37', '-201.866', '3.35759', '0', '0', '0.994174', '-0.107791', '50', '100', '1'),
('27812', '177844', '0', '-10172.7', '2391.19', '-139.476', '5.0511', '0', '0', '0.577808', '-0.816172', '50', '100', '1');


-- Forums end


-- SD2 stuff start
-- 324
UPDATE `creature_template` SET `ScriptName` = 'npc_mortog_steamhead' WHERE `entry` = 23373;
UPDATE `creature_template` SET `ScriptName` = 'npc_veronia' WHERE `entry` = 20162;
UPDATE `creature_template` SET `ScriptName` = 'npc_susurrus' WHERE `entry` = 17435;
-- 327
-- Sunspring Villagers.
UPDATE `creature_template` SET `ScriptName` = 'mob_sunspring_villager' WHERE `entry` = 18240;
-- Terestian Illhoof
UPDATE `creature_template` SET `ScriptName` = 'mob_demon_chain' WHERE `entry` = 17248;
-- 333
UPDATE `creature_template` SET `ScriptName` = 'npc_oronok_tornheart' WHERE `entry` = 21183;
-- 334
UPDATE `instance_template` SET `script` = 'instance_sethekk_halls' WHERE `map` = 556;
-- 336
UPDATE `gameobject_template` SET `ScriptName` = 'go_tablet_of_madness' WHERE `entry` = 180368;
UPDATE `creature_template` SET `ScriptName` = 'boss_grilek' WHERE `entry` = 15082;
UPDATE `creature_template` SET `ScriptName` = 'boss_hazzarah' WHERE `entry` = 15083;
UPDATE `creature_template` SET `ScriptName` = 'boss_renataki' WHERE `entry` = 15084;
UPDATE `creature_template` SET `ScriptName` = 'boss_wushoolay' WHERE `entry` = 15085;
UPDATE `creature_template` SET `ScriptName` = 'mobs_zulgurub' WHERE `entry` = 14883;
UPDATE `creature_template` SET `ScriptName` = 'mob_blackwing_lair' WHERE `entry` = 12468;

-- SD2 stuff end

-- Cleanup

-- update `gameobject_template` SET `flags`=`flags`&~4 WHERE `type`=10;
-- update `gameobject_template` SET `flags`=`flags`|4 WHERE `type`=10 AND `data1`>0;
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry`;
UPDATE `gameobject` SET `state`=0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type`=0 AND `data0`=1);
-- UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
-- Remove extra spawns from Sethekk Halls, around darkreaver syth - should be spawned by the event, not by default
DELETE FROM `creature` WHERE `id` IN (19204, 19206, 19203, 19205);
-- And finally db_version UPDATE
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.10.0 (347) with SD2 calls rev.344');
-- END
