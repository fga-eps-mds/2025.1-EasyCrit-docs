CREATE TYPE "roles" AS ENUM (
  'dungeon master',
  'player'
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "username" varchar UNIQUE NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "role" roles NOT NULL,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "characters" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "biography" varchar,
  "circle_color" varchar,
  "user_id" integer
);

CREATE TABLE "sessions" (
  "id" integer PRIMARY KEY,
  "dungeon_master_id" integer NOT NULL
);

CREATE TABLE "players_sessions" (
  "player_id" integer,
  "session_id" integer,
  PRIMARY KEY ("player_id", "session_id")
);

ALTER TABLE "characters" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "sessions" ADD FOREIGN KEY ("dungeon_master_id") REFERENCES "users" ("id");

ALTER TABLE "players_sessions" ADD FOREIGN KEY ("player_id") REFERENCES "users" ("id");

ALTER TABLE "players_sessions" ADD FOREIGN KEY ("session_id") REFERENCES "sessions" ("id");
