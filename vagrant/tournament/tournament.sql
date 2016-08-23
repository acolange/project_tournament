-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

create table players (
  name text NOT NULL,
  wins integer,
  matches integer,
  id serial PRIMARY KEY
);

create table matches (
  winner integer REFERENCES players(id),
  loser integer REFERENCES players(id),
  id serial PRIMARY KEY
)
