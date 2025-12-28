/*
Задание 3. Зарплата выше чем у менеджера
SCHEMA:
Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int)
Truncate table Employee
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3')
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4')
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', 'None')
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', 'None')

Задача:
Выведите имена сотрудников, чья зарплата выше, чем у их менеджеров.
+----+-------+--------+-----------+
| Id | Name  | Salary | ManagerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | NULL      |
| 4  | Max   | 90000  | NULL      |
+----+-------+--------+-----------+

Ожидаемый результат:
+----------+
| Employee |
+----------+
| Joe      |
+----------+

*/

CREATE TABLE employee (
    id INT,
    name VARCHAR(255),
    salary INT,
    managerid INT
);

Truncate table employee;

INSERT INTO employee (id, name, salary, managerid) VALUES (1, 'Joe', 70000, 3);
INSERT INTO employee (id, name, salary, managerid) VALUES (2, 'Henry', 80000, 4);
INSERT INTO employee (id, name, salary, managerid) VALUES (3, 'Sam', 60000, NULL);
INSERT INTO employee (id, name, salary, managerid) VALUES (4, 'Max', 90000, NULL);

SELECT * FROM employee;

SELECT e.name AS Employee
FROM employee e
JOIN employee m
  ON e.managerid = m.id
WHERE e.salary > m.salary;

/*
 employee|
--------+
Joe     |
 */




