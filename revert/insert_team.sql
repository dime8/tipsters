-- Revert tipsters:insert_team from pg

BEGIN;

DROP FUNCTION tipsters.insert_team(TEXT, TEXT, TEXT);
-- XXX Add DDLs here.

COMMIT;
