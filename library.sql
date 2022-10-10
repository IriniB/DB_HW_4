CREATE TABLE "Reader" (
  "ID" int PRIMARY KEY,
  "LastName" varchar,
  "FirstName" varchar,
  "Address" varchar,
  "BirthDate" varchar
);

CREATE TABLE "Book" (
  "ISBN" int PRIMARY KEY,
  "Title" varchar,
  "Author" varchar,
  "PagesNum" int,
  "PubYear" int,
  "PubName" varchar
);

CREATE TABLE "Publisher" (
  "PubName" varchar PRIMARY KEY,
  "PubAdress" varchar
);

CREATE TABLE "Category" (
  "id" int PRIMARY KEY,
  "ISBN" int,
  "CategoryName" varchar,
  "ParentCat" varchar
);

CREATE TABLE "Copy" (
  "ISBN" int,
  "CopyNumber" int PRIMARY KEY,
  "ShelfPosition" varchar
);

CREATE TABLE "Borrowing" (
  "ReaderNr" int,
  "ISBN" int,
  "CopyNumber" int,
  "ReturnDate" varchar
);

ALTER TABLE "Book" ADD FOREIGN KEY ("ISBN") REFERENCES "Category" ("ISBN");

ALTER TABLE "Copy" ADD FOREIGN KEY ("ISBN") REFERENCES "Book" ("ISBN");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("ReaderNr") REFERENCES "Reader" ("ID");

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("CopyNumber") REFERENCES "Copy" ("CopyNumber");

ALTER TABLE "Book" ADD FOREIGN KEY ("PubName") REFERENCES "Publisher" ("PubName");
