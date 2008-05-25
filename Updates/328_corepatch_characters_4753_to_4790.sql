-- 4764_characters_auctionhouse.sql
ALTER TABLE `auctionhouse`
  ADD UNIQUE KEY `item_guid` (`itemguid`);
