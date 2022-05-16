/******ALL OPERTAIONS OF DATABASE******/
CREATE DATABASE createDatabase;
USE createDatabase;

/******The SQL DROP DATABASE Statement******/
CREATE DATABASE fordrop;
DROP DATABASE fordrop;

/******The SQL CREATE TABLE Statement******/
CREATE TABLE createTable (
 PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

SELECT * FROM createTable;

/******The SQL DROP TABLE Statement******/
DROP TABLE createTable;




/******The SQL INSERT INTO Statement******/
INSERT INTO createTable(
	PersonID,
    LastName,
    FirstName,
    Address,
    City
)
VALUES
	(
	     120,
		'Dustin',
		'Johnson',
		'AMH',
		178
	);


SELECT * FROM createTable;

/******The SQL TRUNCATE TABLE Statement******/
TRUNCATE TABLE createTable;
SELECT * FROM createTable;


/******SQL ALTER TABLE Statement******/
ALTER TABLE createTable

ADD column_name varchar(50);

SELECT * FROM createTable;

/**SQL UPDATE Statement**/

INSERT INTO createTable(

   
	PersonID,
    LastName,
    FirstName,
    Address,
    City
)
VALUES
	(
	     120,
		'Dustin',
		'Johnson',
		'AMH',
		178
	);

SELECT * FROM createTable;


UPDATE createTable
SET LastName = 'Alfred Schmidt', FirstName= 'Frankfurt'
WHERE PersonID = 120;

SELECT * FROM createTable;


 


