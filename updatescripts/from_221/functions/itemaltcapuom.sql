CREATE OR REPLACE FUNCTION itemAltCapUOM(INTEGER) RETURNS TEXT AS '
DECLARE
  pItemid ALIAS FOR $1;

BEGIN
  RETURN itemUOMByType(pItemid, ''AltCapacity'');
END;
' LANGUAGE 'plpgsql';