-- Deploy tipsters:insert_user to pg
-- requires: users
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION tipsters.insert_user(
    username TEXT,
    password TEXT
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO tipsters.users VALUES($1, md5($2));
$$;
-- XXX Add DDLs here.

COMMIT;
