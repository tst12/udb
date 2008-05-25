-- 5258
ALTER TABLE `character` ADD KEY `idx_name` (`name`);
-- 5286
ALTER TABLE `character_pet`
  DROP `nextlvlexp`;
