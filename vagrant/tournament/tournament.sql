-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;

CREATE TABLE players (
  name text NOT NULL,
  id serial PRIMARY KEY
);

CREATE TABLE matches (
  winner integer REFERENCES players(id),
  loser integer REFERENCES players(id),
  id serial PRIMARY KEY
);

CREATE VIEW matchwins AS
  SELECT players.id,
         players.name,
         COUNT(matches.winner) AS wins
  FROM   players
         LEFT JOIN matches
                ON players.id=matches.winner
  GROUP BY players.id;

CREATE VIEW matchlosses AS
  SELECT players.id,
         COUNT(matches.loser) AS losses
  FROM   players
         LEFT JOIN matches
                ON players.id=matches.loser
  GROUP BY players.id;
