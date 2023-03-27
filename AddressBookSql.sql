--what is sql - sql is structure query language
--SQL is standared language forstoring and retriveing data from database.
--Database - Organized data in structural part.


--Creating Database UC1
CREATE DATABASE AddressBook_Service
USE AddressBook_Service

--Creating Table UC2
--Primary key is uniquely identify each record table. It can't contain null value.In a table we have only one key.
CREATE TABLE AddressBook_DB(
PersonID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(150) NOT NULL,
City VARCHAR(30) NOT NULL,
State VARCHAR(30) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);

--Select Query
SELECT * FROM AddressBook_DB

--Abiltity to insert new data UC3
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) VALUES('vishal','patel',' Nikava','Rajkot','Gujrat',1234,6352129268,'Vishal@gmail.com'),
('prince','kotadiya','Rajkot','Rajkot','Gujrat',360003,6352129268,'Prince@gmail.com'),
('Pratik','Memakiya','Rajkot','Rajkot','Gujrat',360003,6352129268,'Pratik@gmail.com');
