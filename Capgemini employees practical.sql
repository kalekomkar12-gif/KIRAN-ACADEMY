DROP DATABASE IF EXISTS capgemini;

CREATE DATABASE capgemini;

USE capgemini;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45),
    age INT,
    salary DOUBLE,
    experience INT,
    profile VARCHAR(30)
);

INSERT INTO employees
(id, name, age, salary, experience, profile)
VALUES
(1, 'Omkar', 19, 20000, 3, 'dev'),
(2, 'Aditya', 21, 30000, 5, 'test'),
(3, 'Shreya', 18, 15000, 1, 'support'),
(4, 'Aryan', 35, 50000, 2, 'dev'),
(5, 'Nidhi', 26, 80000, 6, 'HR'),
(6, 'Radha', 23, 28000, 4, 'dev');

SELECT * FROM employees;

ALTER TABLE employees
ADD branch_location VARCHAR(50);

UPDATE employees
SET branch_location = 'Nashik'
WHERE id IN (1, 4);

UPDATE employees
SET branch_location = 'Pune'
WHERE id IN (2, 5);

UPDATE employees
SET branch_location = 'Thane'
WHERE id = 3;

UPDATE employees
SET branch_location = 'Mumbai'
WHERE id = 6;

SELECT *
FROM employees
WHERE branch_location = 'Nashik';

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT MAX(salary) AS max_test_salary
FROM employees
WHERE profile = 'test';

SELECT AVG(experience) AS average_experience
FROM employees;

SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT name, experience, salary
FROM employees
ORDER BY salary ASC
LIMIT 1;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT name, salary
FROM employees
WHERE profile = 'test'
AND salary > 25000;

UPDATE employees
SET profile = 'support'
WHERE name = 'Radha';

SELECT *
FROM employees
WHERE name = 'Radha';

SELECT salary AS second_highest_salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT salary AS second_lowest_salary
FROM employees
ORDER BY salary ASC
LIMIT 1 OFFSET 1;

SELECT AVG(salary) AS average_dev_salary
FROM employees
WHERE profile = 'dev';

SELECT name, salary, experience
FROM employees
ORDER BY experience ASC
LIMIT 1;

SELECT name, age, salary
FROM employees
ORDER BY age ASC, salary DESC
LIMIT 1;

DELETE FROM employees;

SELECT * FROM employees;