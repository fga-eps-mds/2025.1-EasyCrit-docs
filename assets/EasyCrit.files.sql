CREATE TABLE "maps" (
  "id" integer PRIMARY KEY,
  "file" blob,
  "session_id" integer NOT NULL
);

CREATE TABLE "characters" (
  "id" integer PRIMARY KEY,
  "file" blob,
  "character_id" integer NOT NULL
);
