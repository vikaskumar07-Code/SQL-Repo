-- INSERT
INSERT INTO employees
(first_name, last_name, email, salary, age, is_active, department)
VALUES
('Aman', 'Sharma', 'aman@gmail.com', 45000.50, 25, TRUE, 'IT'),
('Rohit', 'Kumar', 'rohit@gmail.com', 38000.00, 28, FALSE, 'HR');

-- SELECT
SELECT * FROM employees;

SELECT first_name, salary, department
FROM employees;

SELECT * FROM employees
WHERE department = 'IT';

SELECT * FROM employees
WHERE salary > 40000;

SELECT * FROM employees
WHERE is_active = TRUE;

SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
LIMIT 3;

-- UPDATE
UPDATE employees
SET salary = 50000
WHERE first_name = 'Aman';

UPDATE employees
SET department = 'Admin'
WHERE department = 'HR';

UPDATE employees
SET is_active = TRUE
WHERE first_name = 'Rohit';

-- DELETE
DELETE FROM employees
WHERE first_name = 'Rohit';

DELETE FROM employees
WHERE department = 'HR';

DELETE FROM employees
WHERE salary < 30000;