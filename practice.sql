CREATE DATABASE swiggy;
USE swiggy;

CREATE TABLE customers(
 customer_id INT PRIMARY KEY,
 customer_name VARCHAR(50),
 city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, "ADITI SHARMA", "DELHI"),
(2, "RAHUL VERMA", "MUMBAI"),
(3, "SIMRAN KAUR", "CHANDIGARH"),
(4, "ARJUN NAIR", "BENGALURU");

SELECT * FROM customers;

CREATE TABLE orders(
 order_id INT PRIMARY KEY,
 customer_id INT,
 amount INT,
 order_status VARCHAR(50)
);

INSERT INTO orders VALUES
(501, 1, 2400, "DELIVERED" ),
(502, 1, 3200, "DELIVERED"),
(503, 2, 1800, "DELIVERED"),
(504, 2, 4100, "PENDING"),
(505, 3, 950, "CANCELLED");

SELECT * FROM orders;

SELECT c.customer_id, c.customer_name
FROM customers as c LEFT JOIN orders as o
on c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

CREATE TABLE employee(
 empID INT PRIMARY KEY,
 name VARCHAR(50),
 managerID INT 
);

INSERT INTO employee VALUES
(1, "ALICE", NULL),
(2, "BOB", 1),
(3, "CHARLIE", 2),
(4, "DIANA", 2);

SELECT * FROM employee ORDER BY managerID DESC;

SELECT emp.name as employee, mang.name as manager
FROM employee as emp JOIN employee as mang
ON emp.managerID = mang.empID;

CREATE TABLE Employees(
 EmpID INT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 Salary INT, 
 DeptID INT
);

INSERT INTO Employees VALUES
(1, "ALICE", 80000, 10),
(2, "BOB", 50000, 20),
(3, "CHARLIE", 90000, 10),
(4, "DIANA", 60000, 30);

CREATE TABLE Departments(
 DeptID INT PRIMARY KEY,
 DepName VARCHAR(50),
 Location VARCHAR(50)
);

INSERT INTO Departments VALUES
(10, "IT", "NEW YORK"),
(20, "HR", "LONDON"),
(30, "SALES", "NEW YORK");

SELECT name AS Employee_Name, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

SELECT name 
FROM Employees 
WHERE DeptID IN(SELECT DeptID FROM Departments WHERE Location = "NEW YORK");

SELECT emp.name AS Employee_Name, dept.Location AS Location
FROM Employees as emp LEFT JOIN Departments as dept
ON emp.DeptId = dept.DeptID
WHERE Location = "NEW YORK";

SELECT name, Salary, (SELECT AVG(Salary) FROM Employees) AS Avg_Salary
FROM Employees;

SELECT name, Salary, (SELECT AVG(Salary) FROM Employees) AS Avg_Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);