-- Deploy tipsters:users to pg
-- requires: appschema

BEGIN;

SET client_min_messages = 'warning';

CREATE TABLE tipsters.users (
    username  TEXT        PRIMARY KEY,
    password  TEXT        NOT NULL
);

-- XXX Add DDLs here.

COMMIT;
