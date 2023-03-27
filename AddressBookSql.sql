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
('Prince','kotadiya','Rajkots','Rajkot','Gujrat',360003,6352129268,'Prince@gmail.com'),
('Pratik','Memakiya','Rajkot','Surat','Gujrat',360003,635212926,'Pratik@gmail.com');

--Ability to Update contact using person name UC4
UPDATE AddressBook_DB SET LastName='patel' WHERE FirstName='Nisit';
UPDATE AddressBook_DB SET PhoneNumber=635212926 WHERE FirstName='Rohan';
UPDATE AddressBook_DB SET Address='Rajkots' WHERE FirstName='Princes';

--Ability to delete contact using person name UC5
DELETE FROM AddressBook_DB WHERE FirstName='vishal';

--Ability to retrieve data using city or state UC6
SELECT * FROM AddressBook_DB WHERE City='Surat'OR State='Gujrat';

--Ability to count addressBook by city and state UC7
SELECT COUNT(FirstName) FROM AddressBook_DB WHERE City='Rajkot' AND State='Gujrat';

-- UC8 Sort By First Name For City
SELECT * FROM AddressBook_DB WHERE City = 'Rajkot' ORDER BY FirstName

-- UC9 Add coloum to Address Book Table
ALTER TABLE AddressBook_DB ADD Name VARCHAR(30);
ALTER TABLE AddressBook_DB ADD Family VARCHAR(30);
ALTER TABLE AddressBook_DB ADD Friends VARCHAR(30);
ALTER TABLE AddressBook_DB ADD Profession VARCHAR(30);
