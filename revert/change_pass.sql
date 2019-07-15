-- Revert tipsters:change_pass from pg

BEGIN;

DROP FUNCTION tipsters.change_pass(TEXT, TEXT, TEXT);
-- XXX Add DDLs here.

COMMIT;
