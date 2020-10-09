DROP SCHEMA IF EXISTS forum_example CASCADE;

CREATE SCHEMA forum_example;

CREATE TABLE forum_example.person (
  id               SERIAL PRIMARY KEY,
  first_name       TEXT NOT NULL CHECK (char_length(first_name) < 80),
  middle_name      TEXT CHECK (char_length(middle_name) < 80)
);

CREATE TABLE forum_example.votes (
  id    SERIAL PRIMARY KEY,
  vote  TEXT
)