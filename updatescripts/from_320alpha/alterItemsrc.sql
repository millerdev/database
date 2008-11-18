BEGIN;

ALTER TABLE itemsrc DROP CONSTRAINT itemsrc_itemsrc_vend_id_key;
ALTER TABLE itemsrc ADD COLUMN itemsrc_manuf_name TEXT;
ALTER TABLE itemsrc ADD COLUMN itemsrc_manuf_item_number TEXT;
ALTER TABLE itemsrc ADD COLUMN itemsrc_manuf_item_descrip TEXT;
ALTER TABLE itemsrc ADD CONSTRAINT itemsrc_itemsrc_vend_id_key UNIQUE(itemsrc_vend_id, itemsrc_item_id, itemsrc_manuf_name, itemsrc_manuf_item_number);

COMMIT;