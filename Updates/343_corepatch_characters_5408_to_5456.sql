-- 5408_characters_mail_items.sql
ALTER TABLE mail_items
  ADD COLUMN receiver int(11) unsigned NOT NULL default 0 COMMENT 'Character Global Unique Identifier' AFTER item_template;

UPDATE mail_items, mail
  SET mail_items.receiver = mail.receiver WHERE mail_items.mail_id = mail.id;
DELETE FROM item_instance WHERE guid IN (SELECT item_guid FROM mail_items WHERE mail_items.receiver = 0);
DELETE FROM mail_items WHERE mail_items.receiver = 0;

-- 5420_characters_mail_items.sql
ALTER TABLE `mail_items` ADD  KEY `idx_receiver` (`receiver`);

-- 5441_characters_petition_petition_sign.sql
ALTER TABLE `petition` 
DROP PRIMARY KEY, 
ADD PRIMARY KEY (`ownerguid`, `type`);
ALTER TABLE `petition_sign` ADD COLUMN `type` int(10) UNSIGNED NOT NULL DEFAULT 0;

-- 5451
ALTER TABLE `petition`      ENGINE = InnoDB;
ALTER TABLE `petition_sign` ENGINE = InnoDB;
