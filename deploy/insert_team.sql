-- Deploy tipsters:insert_team to pg
-- requires: teams
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION tipsters.insert_team(
    name TEXT,
    type TEXT,
    league TEXT
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO tipsters.teams(name, type, league) VALUES($1, $2, $3);
$$;
-- XXX Add DDLs here.

COMMIT;
