--
-- File generated with SQLiteStudio v3.1.1 on Wed Feb 15 17:44:59 2017
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: accounts
CREATE TABLE accounts (userid INT REFERENCES user (id), accountid INT PRIMARY KEY UNIQUE, balance INT, status BOOLEAN);

-- Table: friend
CREATE TABLE friend (userid INT REFERENCES user (id), friendid INT REFERENCES user (id));

-- Table: request
CREATE TABLE request (id INT PRIMARY KEY, "from" INT REFERENCES user (id), type INT);

-- Table: transcation
CREATE TABLE transcation (id INT PRIMARY KEY UNIQUE NOT NULL, amount INT NOT NULL, type INT, status INT, "from" INT, "to" INT REFERENCES user (id), startdate DATE, effectdate DATE);

-- Table: user
CREATE TABLE user (id INTEGER, email VARCHAR (20, 20) PRIMARY KEY UNIQUE NOT NULL, password VARCHAR (20, 20) NOT NULL, name VARCHAR (30, 30) NOT NULL, role BOOLEAN (1)) WITHOUT ROWID;
INSERT INTO user (id, email, password, name, role) VALUES (NULL, '7lkb 4g2oo9auk', 'g
sunj04jikensioy', 'eiw
6374i2kfgsow', NULL);
INSERT INTO user (id, email, password, name, role) VALUES (NULL, 'ty3abr7re', 'r2qfn	lrugsynk ', 'b9qosq 4w4w2', NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
