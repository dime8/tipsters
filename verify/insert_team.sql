-- Verify tipsters:insert_team on pg

BEGIN;

SELECT has_function_privilege('tipsters.insert_team(text, text, text)', 'execute');
-- XXX Add verifications here.

ROLLBACK;
