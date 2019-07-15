-- Deploy tipsters:change_pass to pg
-- requires: users
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION tipsters.change_pass(
    username    TEXT,
    oldpass TEXT,
    newpass TEXT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE tipsters.users
       SET password = md5($3)
     WHERE username = $1
       AND password = md5($2);
    RETURN FOUND;
END;
$$;
-- XXX Add DDLs here.

COMMIT;
