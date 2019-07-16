-- Verify tipsters:matches on pg

BEGIN;

SELECT type, league, hostID, guestID
  FROM tipsters.matches
 WHERE FALSE;
-- XXX Add verifications here.

ROLLBACK;
