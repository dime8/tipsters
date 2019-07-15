-- Revert tipsters:insert_user from pg

BEGIN;

DROP FUNCTION tipsters.insert_user(TEXT, TEXT);
-- XXX Add DDLs here.

COMMIT;
