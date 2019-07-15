-- Verify tipsters:change_pass on pg

BEGIN;

SELECT has_function_privilege('tipsters.change_pass(text, text, text)', 'execute');
-- XXX Add verifications here.

ROLLBACK;
