CREATE TABLE "stationPersonell" (
  "persNr" int PRIMARY KEY,
  "name" text
);

CREATE TABLE "caregiver" (
  "id" int PRIMARY KEY,
  "qualification" text
);

CREATE TABLE "doctor" (
  "id" int PRIMARY KEY,
  "area" text,
  "rank" text
);

CREATE TABLE "station" (
  "statNr" int PRIMARY KEY,
  "name" text
);

CREATE TABLE "room" (
  "roomNr" int PRIMARY KEY,
  "numBeds" int
);

CREATE TABLE "patient" (
  "patientNr" int PRIMARY KEY,
  "name" text,
  "disease" text
);

ALTER TABLE "stationPersonell" ADD FOREIGN KEY ("persNr") REFERENCES "station" ("statNr");

ALTER TABLE "caregiver" ADD FOREIGN KEY ("id") REFERENCES "stationPersonell" ("persNr");

ALTER TABLE "doctor" ADD FOREIGN KEY ("id") REFERENCES "stationPersonell" ("persNr");

ALTER TABLE "patient" ADD FOREIGN KEY ("patientNr") REFERENCES "doctor" ("id");

ALTER TABLE "room" ADD FOREIGN KEY ("roomNr") REFERENCES "station" ("statNr");

ALTER TABLE "patient" ADD FOREIGN KEY ("patientNr") REFERENCES "room" ("roomNr");
