SELECT * FROM employees;
SELECT * FROM orders;

-- Employees table me total kitne employees hain?
SELECT COUNT(*) AS emp_count from employees;

--Employees table ki total salary nikaalo.
SELECT SUM(salary) AS Total_emp_salary FROM employees;

--Employees ki average salary kya hai?
SELECT ROUND(AVG(salary),2) AS AVG_emp_salary FROM employees;

--Sabse highest salary kya hai?
SELECT MAX(salary) AS max_emp_salary FROM employees;

--Sabse lowest salary kya hai?
SELECT MIN(salary) AS min_emp_salary FROM employees;

--IT department me total employees kitne hain?
SELECT COUNT(Department) AS IT_dep_emp
FROM employees
WHERE Department ='IT';

--HR department ki average salary nikaalo.
SELECT ROUND(AVG(salary),2) as avg_salary_HR_dep
FROM employees
WHERE Department ='HR';

--Har department ka total salary show karo
SELECT Department , SUM(salary) as total_dep_salary
FROM employees
GROUP BY Department
ORDER BY total_dep_salary DESC;

--Sirf wo departments show karo jahan total employees 2 ya usse zyada hon
SELECT Department , COUNT(*) As emp_count
FROM employees
GROUP BY Department
HAVING count(*) >= 2;

--Orders table me total revenue (total_amount) nikaalo
SELECT SUM(total_Amount) as Total_sum
FROM orders;

-- Employees table me 18 se zyada age wale employees ki total count nikaalo.
SELECT COUNT(AGE) as age_count_emp FROM employees
WHERE AGE > 18;

--Employees table me sirf active employees ki total salary nikaalo
SELECT SUM(salary) as Total_Salary
FROM employees
WHERE is_active = True;

--Employees table me Admin department ki highest salary find karo.
SELECT MAX(salary) as max_salary_admin
FROM employees
WHERE department = 'Admin';

--Employees table me IT department ki lowest salary nikaalo
SELECT MIN(salary) as min_salary_IT 
FROM employees
Where department = 'IT' ;

--Orders table me paid (is_paid = TRUE) orders ka total revenue nikaalo.
SELECT SUM(total_amount) as total_revenue_paid
FROM orders
WHERE is_paid =True;

--Orders table me unpaid (is_paid = FALSE) orders ka average total_amount nikaalo.
SELECT ROUND(AVG(total_amount),2) as avg_revenue_unpaid
FROM orders
WHERE is_paid =False;

--Har department me average age show karo
SELECT Department , ROUND(AVG(age),0) as avg_age
FROM employees
GROUP BY Department;

--Har department me maximum salary show karo
SELECT Department , ROUND(MAX(salary),0) as max_salary
FROM employees
GROUP BY Department;

--Sirf wo departments show karo jahan average salary 40000 se zyada ho
SELECT Department , ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY Department
HAVING AVG(salary) > 40000;

--Orders table me har status ke andar kitne orders aur total revenue hai, ye show karo.
SELECT status,COUNT(*) as order_count , ROUND(SUM(total_amount),0) as total_revenue 
FROM Orders
GROUP BY Status;



