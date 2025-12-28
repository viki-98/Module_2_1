/*
Задание 4. Повторяющиеся email
SCHEMA:

Create table If Not Exists Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (Id, Email) values ('1', 'a@b.com')
insert into Person (Id, Email) values ('2', 'c@d.com')
insert into Person (Id, Email) values ('3', 'a@b.com')


Задача:
Напишите SQL-запрос, который вернёт все повторяющиеся email (по крайней мере встречающиеся дважды):
+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+


Ожидаемый результат:
+---------+
| Email   |
+---------+
| a@b.com |
+---------+

*/

CREATE TABLE person (
    id INT,
    email VARCHAR(255)
);

TRUNCATE TABLE person;

INSERT INTO person (id, email) VALUES (1, 'a@b.com');
INSERT INTO person (id, email) VALUES (2, 'c@d.com');
INSERT INTO person (id, email) VALUES (3, 'a@b.com');

SELECT email
FROM person
GROUP BY email
HAVING COUNT(*) > 1;

/*
  email  |
-------+
a@b.com|
*/
 */



