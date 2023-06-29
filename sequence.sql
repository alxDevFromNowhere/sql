CREATE SEQUENCE sql1;

SELECT nextval('sql1');
SELECT currval('sql1');

SELECT setval('sql1', 35, false);
SELECT setval('sql1', 40, true);

CREATE SEQUENCE IF NOT EXISTS "seq" INCREMENT 10 MINVALUE 770 MAXVALUE 1100 START WITH 770;   
SELECT nextval('seq');
SELECT currval('seq');

SELECT lastval(); 

CREATE SEQUENCE IF NOT EXISTS "book_id_seq" START WITH 1 OWNED BY book.id;

CREATE TABLE "user" (
    id INT GENERATED ALWAYS AS IDENTITY, -- new syntax
    name VARCHAR(256) NOT NULL,
    last_name text DEFAULT ''
);

-- bad practice
INSERT INTO "user" OVERRIDING SYSTEM VALUE (777, 'Jony', 'B');
