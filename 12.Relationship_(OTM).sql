CREATE TABLE departments(
    dept_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments(department_name)
VALUES
('IT'),
('HR'),
('Admin'),
('Sales');

CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    salary NUMERIC(10,2),

    dept_id INT,

    FOREIGN KEY(dept_id)
    REFERENCES departments(dept_id)
);

INSERT INTO employees(employee_name,salary,dept_id)
VALUES
('Aman',50000,1),
('Rohit',45000,1),
('Priya',35000,2),
('Neha',60000,1),
('Karan',30000,3),
('Simran',40000,4);


SELECT * FROM departments;


-- Employees table ke saare records show karo.
SELECT * FROM employees;

-- Sirf un employees ko fetch karo jinki salary 40000 se zyada hai.
SELECT * FROM employees
WHERE salary > 40000;

-- Employees ko highest salary se lowest salary tak sort karo.
SELECT * FROM employees
ORDER BY salary DESC;

-- IT department (dept_id = 1) ke employees fetch karo.
SELECT * FROM employees
WHERE dept_id =1;

-- Employees table me total employees count nikaalo.
SELECT COUNT(*) as total_count from employees;

-- Employees table ki average salary nikaalo.
SELECT AVG(salary) AS avg_salary FROM employees;

-- Har dept_id me kitne employees hain, ye show karo.
SELECT  dept_id ,COUNT(*) as count_emp FROM employees
GROUP BY dept_id;

-- Sirf wo departments (dept_id) show karo jahan 2 ya usse zyada employees hain.
SELECT dept_id,count(*) as count_emp FROM employees
GROUP BY dept_id
HAVING count(*) > 2;

-- Employees table ki sabse highest salary nikaalo.
SELECT  MAX(salary) as max_salary from employees;

-- Employees table ki sabse lowest salary nikaalo.

SELECT MIN(salary) as min_salary from employees;




