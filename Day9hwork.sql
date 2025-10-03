--insert data into the employee table--
INSERT INTO employees (id,name) 
VALUES (1,'Anjali'), (2,'Rohan'), (3,'Meena');

--insert data into the departments table--
INSERT INTO departments (emp_id,department_name)
VALUES (1,'HR'),
(2,'IT'),
(4,'Finance');

--Question 1--
SELECT employees.name, departments.department_name
FROM departments
RIGHT JOIN employees
ON employees.id = departments.emp_id;

--Question 2--
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id

--Question 3--
SELECT departments.department_name, employees.name
FROM departments
LEFT JOIN employees
ON employees.id = departments.emp_id;