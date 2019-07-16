-- Deploy tipsters:matches to pg
-- requires: appschema
-- requires: teams

BEGIN;

CREATE TABLE tipsters.matches (
    ID        uuid        DEFAULT uuid_generate_v4(),
    type  TEXT        NOT NULL,
    league  TEXT        NOT NULL,
    hostID  uuid        NOT NULL REFERENCES tipsters.teams(ID),
    guestID  uuid        NOT NULL REFERENCES tipsters.teams(ID),
    PRIMARY KEY (ID)
);

-- XXX Add DDLs here.

COMMIT;
