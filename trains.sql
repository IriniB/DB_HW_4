CREATE TABLE "City" (
  "Name" varchar PRIMARY KEY,
  "Region" varchar
);

CREATE TABLE "Station" (
  "Name" varchar PRIMARY KEY,
  "TracksNum" int,
  "CityName" varchar,
  "Region" varchar
);

CREATE TABLE "Train" (
  "TrainNr" int PRIMARY KEY,
  "Length" int,
  "StartStationName" varchar,
  "EndStationName" varchar
);

CREATE TABLE "Connection" (
  "FromStation" varchar,
  "ToStation" varchar,
  "TrainNr" int,
  "Departure" timestamp,
  "Arrival" timestamp
);

ALTER TABLE "Connection" ADD FOREIGN KEY ("FromStation") REFERENCES "Station" ("Name");

ALTER TABLE "Connection" ADD FOREIGN KEY ("ToStation") REFERENCES "Station" ("Name");

ALTER TABLE "Connection" ADD FOREIGN KEY ("TrainNr") REFERENCES "Train" ("TrainNr");

ALTER TABLE "Station" ADD FOREIGN KEY ("CityName") REFERENCES "City" ("Name");
