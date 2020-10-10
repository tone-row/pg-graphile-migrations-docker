DROP SCHEMA IF EXISTS app_public CASCADE;

CREATE SCHEMA app_public;

CREATE TABLE app_public.post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT
);