/* 
 Задание 1. Персоны и адреса
SCHEMA:
CREATE TABLE Person (
  PersonId INT, 
  FirstName VARCHAR(255), 
  LastName VARCHAR(255)
);

CREATE TABLE Address (
  AddressId INT, 
  PersonId INT, 
  City VARCHAR(255), 
  State VARCHAR(255)
);

TRUNCATE TABLE Person;
INSERT INTO Person (PersonId, LastName, FirstName) VALUES (1, 'Wang', 'Allen');

TRUNCATE TABLE Address;
INSERT INTO Address (AddressId, PersonId, City, State) VALUES (1, 2, 'New York City', 'New York');



Задача:
Сформируйте отчёт, который выведет для каждой персоны (Person) её имя, фамилию, город и штат. Если адреса нет, поля City и State должны быть пустыми.
Ожидаемый результат:
FirstName, LastName, City, State
*/




CREATE TABLE Person (
  PersonId INT, 
  FirstName VARCHAR(255), 
  LastName VARCHAR(255)
);

CREATE TABLE Address (
  AddressId INT, 
  PersonId INT, 
  City VARCHAR(255), 
  State VARCHAR(255)
);

TRUNCATE TABLE Person;
INSERT INTO Person (PersonId, LastName, FirstName) VALUES (1, 'Wang', 'Allen');

TRUNCATE TABLE Address;
INSERT INTO Address (AddressId, PersonId, City, State) VALUES (1, 2, 'New York City', 'New York');

SELECT 
    p.FirstName,
    p.LastName,
    a.City,
    a.State
FROM Person p
LEFT JOIN Address a
    ON p.PersonId = a.PersonId;


/*
firstname|lastname|city|state|
---------+--------+----+-----+
Allen    |Wang    |    |     |
*/