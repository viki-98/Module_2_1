/*
Задание 5. Клиенты без заказов
SCHEMA:
Create table If Not Exists Customers (Id int, Name varchar(255))
Create table If Not Exists Orders (Id int, CustomerId int)
Truncate table Customers
insert into Customers (Id, Name) values ('1', 'Joe')
insert into Customers (Id, Name) values ('2', 'Henry')
insert into Customers (Id, Name) values ('3', 'Sam')
insert into Customers (Id, Name) values ('4', 'Max')
Truncate table Orders
insert into Orders (Id, CustomerId) values ('1', '3')
insert into Orders (Id, CustomerId) values ('2', '1')


Задача:
Найдите всех клиентов, которые не делали ни одного заказа.


Таблица: Customers.
+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+

Таблица: Orders.
+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+

Ожидаемый результат:
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+


*/

CREATE TABLE IF NOT EXISTS Customers (
    id INT,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Orders (
    id INT,
    customerid INT
);

TRUNCATE TABLE Customers;
TRUNCATE TABLE Orders;

INSERT INTO Customers (id, name) VALUES (1, 'Joe');
INSERT INTO Customers (id, name) VALUES (2, 'Henry');
INSERT INTO Customers (id, name) VALUES (3, 'Sam');
INSERT INTO Customers (id, name) VALUES (4, 'Max');

INSERT INTO Orders (id, customerid) VALUES (1, 3);
INSERT INTO Orders (id, customerid) VALUES (2, 1);

SELECT * FROM Customers;
SELECT * FROM Orders;


SELECT Name AS Customers
FROM Customers
WHERE Id NOT IN (
    SELECT CustomerId FROM Orders
);

/*
  customers|
---------+
Henry    |
Max      |

 */

