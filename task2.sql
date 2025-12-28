/*
Задание 2. Вторая по величине зарплата
SCHEMA:
Create table If Not Exists Employee (Id int, Salary int)
Truncate table Employee
insert into Employee (Id, Salary) values ('1', '100')
insert into Employee (Id, Salary) values ('2', '200')
insert into Employee (Id, Salary) values ('3', '300')


Задача:
Напишите запрос, который возвращает вторую по величине зарплату (если такой нет — вернуть `null`):
Ожидаемый результат:
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

*/

CREATE TABLE IF NOT EXISTS Employee (
    Id INT,
    Salary INT
);

TRUNCATE TABLE Employee;

INSERT INTO Employee (Id, Salary) VALUES (1, 100);
INSERT INTO Employee (Id, Salary) VALUES (2, 200);
INSERT INTO Employee (Id, Salary) VALUES (3, 300);


SELECT 
    MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

/*
secondhighestsalary|
-------------------+
                200|
*/