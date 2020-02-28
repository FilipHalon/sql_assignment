-- Database: Assignment

-- DROP DATABASE "Assignment";

-- CREATE DATABASE "Assignment"
--     WITH 
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'Polish_Poland.1250'
--     LC_CTYPE = 'Polish_Poland.1250'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;
	
DROP TABLE IF EXISTS Table_A;
DROP TABLE IF EXISTS Table_B;
DROP TABLE IF EXISTS Table_MAP;

CREATE TABLE Table_A
(
	dimension_1			VARCHAR(1),
	dimension_2			VARCHAR(1),
	dimension_3			VARCHAR(1),
	measure_1			INT
);

CREATE TABLE Table_B
(
	dimension_1			VARCHAR(1),
	dimension_2			VARCHAR(1),
	measure_2			INT
);

CREATE TABLE Table_MAP
(
	dimension_1			VARCHAR(1),
	correct_dimension_2	VARCHAR(1)
);

INSERT INTO Table_A VALUES
('a', 'I', 'K', 1),
('a', 'J', 'L', 7),
('b', 'I', 'M', 2),
('c', 'J', 'N', 5);

INSERT INTO Table_B VALUES
('a', 'J', 7),
('b', 'J', 10),
('d', 'J', 4);

INSERT INTO Table_MAP VALUES
('a', 'W'),
('a', 'W'),
('b', 'X'),
('c', 'Y'),
('b', 'X'),
('d', 'Z');
