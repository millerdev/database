BEGIN;

ALTER TABLE itemloc ADD COLUMN itemloc_ls_id INTEGER;
ALTER TABLE itemloc ALTER COLUMN itemloc_lotserial DROP NOT NULL;

COMMIT;