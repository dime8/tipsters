-- Verify tipsters:insert_user on pg

BEGIN;

SELECT has_function_privilege('tipsters.insert_user(text, text)', 'execute');
-- XXX Add verifications here.

ROLLBACK;
