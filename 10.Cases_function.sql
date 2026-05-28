SELECT * FROM employees;
SELECT * FROM orders;

-- Employees ki salary ke basis par category show karo:
-- salary > 50000 → High Salary
-- salary between 30000 and 50000 → Medium Salary
-- otherwise → Low Salary
SELECT 
	first_name,
	Salary,
	CASE
		WHEN salary > 50000 THEN 'High salary'
		WHEN salary BETWEEN 30000 AND 50000 THEN 'medium salary'
		ELSE 'Low salary'
	END AS category
FROM employees;

-- Employees active hain ya inactive, uske basis par status text show karo:
-- TRUE → Currently Working
-- FALSE → Not Working
SELECT
	first_name,
	is_active,
	CASE
		WHEN is_active = TRUE THEN 'Currently Working'
		ELSE 'Not Working'
	END AS emp_status
FROM employees;
	
-- Employees ki age ke basis par category show karo:
-- age >= 30 → Senior
-- age between 25 and 29 → Mid Level
-- otherwise → Junior
SELECT 
	first_name,
	AGE,
	CASE
		WHEN age >= 30 THEN 'Senior'
		WHEN age BETWEEN 25 AND 29 THEN 'Mid Level'
		ELSE 'Junior'
	END AS age_category
FROM employees;

-- Orders table me payment status show karo:
-- is_paid = TRUE → Paid
-- is_paid = FALSE → Unpaid
SELECT
	customer_name,
	is_paid,
	CASE 
		WHEN is_paid = TRUE THEN 'Paid'
		ELSE 'Unpaid'
	END AS payment_status
FROM orders;

-- Orders ke total_amount ke basis par order level show karo:
-- total_amount > 30000 → Premium Order
-- total_amount between 10000 and 30000 → Standard Order
-- otherwise → Basic Order
SELECT
	Product_name,
	total_amount,
	CASE
		WHEN total_amount > 30000 THEN 'Premium Order'
		WHEN total_amount BETWEEN 10000 AND 30000 THEN 'Standard Order'
		ELSE 'Basic Order'
	END AS order_level
FROM orders;

-- Employees ke department ke basis par custom labels show karo:
-- IT → Tech Team
-- HR → Human Resources
-- Admin → Management
-- otherwise → Other Department
SELECT
	first_name,
	department,
	CASE
		WHEN department = 'IT' THEN 'Tech Team'
		WHEN department = 'HR' THEN 'Human Resources'
		WHEN department = 'Admin' THEN 'Management'
		ELSE 'Other department'
	END AS dep_label
FROM employees;

-- Orders table me order_status ke basis par delivery message show karo:
-- Delivered → Order Completed
-- Pending → Waiting for Delivery
-- Shipped → On the Way

SELECT 
	customer_name,
	order_status,
	CASE
		WHEN order_status = 'Delivered' THEN 'Order Completed'
		WHEN order_status = 'Pending' THEN 'Waiting for Delivery'
		ELSE 'On the Way'
	END AS deliver_message
FROM orders;

-- Employees ki salary me bonus calculate karo:
-- IT employees → 20% bonus
-- HR employees → 10% bonus
-- baaki sab → 5% bonus
SELECT
	first_name,
	department,
	salary,
	CASE
		WHEN department = 'IT' THEN ROUND(salary * 0.20,0)
		WHEN department ='HR' THEN ROUND(salary * 0.10,0)
		ELSE ROUND(salary * 0.05,0)
	END AS Bonus
FROM employees;

-- Employees ke joining year ke basis par experience level show karo:
-- before 2023 → Experienced
-- 2023 and after → New Employee

SELECT
	first_name,
	joining_date,
	CASE
		WHEN EXTRACT(YEAR FROM joining_date) < 2023
		THEN 'Experienced'
		ELSE 'New Employee'
	END AS experience_level
FROM employees;
	

-- Orders table me quantity ke basis par order size show karo:
-- quantity >= 5 → Bulk Order
-- quantity between 2 and 4 → Medium Order
-- otherwise → Small Order

SELECT 
	product_name,
	quantity,
	CASE
		WHEN quantity >= 5 THEN 'Bulk Order'
		WHEN quantity BETWEEN 2 AND 4 THEN 'Medium order'
		ELSE 'Small Order'
	END AS order_size
FROM orders;

-- Employees ki salary ke basis par tax category show karo:
-- salary > 50000 → High Tax
-- salary between 30000 and 50000 → Medium Tax
-- otherwise → Low Tax
SELECT 
	first_name,
	ROUND(salary,0),
	CASE
		WHEN salary > 50000 THEN 'High Tax'
		WHEN salary BETWEEN 30000 AND 50000 THEN 'Medium Tax'
		ELSE 'Low Tax'
	END AS tax_category
FROM employees;

-- Employees ke age ke basis par voting eligibility show karo:
-- age >= 18 → Eligible
-- otherwise → Not Eligible
SELECT 
	first_name,
	AGE,
	CASE
		WHEN age >=18 THEN 'Eligible'
		ELSE 'Not Eligible'
	END AS voting_eligibility
FROM employees;

-- Orders table me quantity ke basis par stock message show karo:
-- quantity >= 5 → Large Quantity
-- quantity between 2 and 4 → Medium Quantity
-- otherwise → Low Quantity
SELECT
	product_name,
	quantity,
	CASE
		WHEN quantity >=5 THEN 'Large Quantity'
		WHEN quantity BETWEEN 2 AND 4 THEN 'Medium Quantity'
		ELSE 'Low Quantity'
	END AS stock_message
FROM orders;

-- Employees ke department ke basis par office floor show karo:
-- IT → 3rd Floor
-- HR → 2nd Floor
-- Admin → 1st Floor
-- otherwise → Ground Floor

SELECT
	first_name,
	department,
	CASE
		WHEN department = 'IT' THEN '3rd Floor'
		WHEN department = 'HR' THEN '2nd Floor'
		WHEN department = 'Admin' THEN '1st Floor'
		ELSE 'Ground Floor'
	END AS office_floor
FROM employees;


-- Orders table me total_amount ke basis par discount category show karo:
-- total_amount >= 50000 → 20% Discount
-- total_amount between 10000 and 49999 → 10% Discount
-- otherwise → No Discount
SELECT
	product_name,
	total_amount,
	CASE
		WHEN total_amount >= 50000 THEN '20%'
		WHEN total_amount between 10000 AND 49999 THEN '10%'
		ELSE 'No Discount'
	END AS Discount_Category
FROM orders;

-- Employees ke salary ke basis par monthly bonus show karo:
-- salary >= 50000 → salary ka 15%
-- salary between 30000 and 49999 → salary ka 10%
-- otherwise → salary ka 5%
SELECT
	first_name,
	salary,
	CASE 
		WHEN salary >=50000 THEN ROUND(salary *0.15,2)
		WHEN salary BETWEEN 30000 AND 49999 THEN ROUND(salary *0.10,2)
		ELSE ROUND(salary *0.05,2)
	END AS montly_bonus
FROM employees;

-- Orders table me order_status ke basis par shipping priority show karo:
-- Delivered → Completed
-- Pending → Low Priority
-- Shipped → High Priority
SELECT
	product_name,
	order_status,
	CASE
		WHEN order_status = 'Delivered' THEN 'Completed'
		WHEN order_status = 'Pending' THEN 'Low Priority'
		WHEN order_status = 'Shipped' THEN 'High Priority'
	END AS ship_priority
FROM orders;

-- Employees ke joining_date ke basis par joining category show karo:
-- joining year before 2022 → Old Employee
-- joining year 2022 or after → Recent Employee
SELECT 
	first_name,
	joining_date,
	CASE
		WHEN EXTRACT(YEAR from joining_date) <2022
		THEN 'Old Employee'
		ELSE 'Recent Employee'
	END AS joining_category
FROM employees;

-- Orders table me is_paid ke basis par payment message show karo:
-- TRUE → Payment Completed
-- FALSE → Payment Pending
SELECT
	customer_name,
	is_paid,
	CASE
		WHEN is_paid = TRUE THEN 'payment completed'
		WHEN is_paid = FALSE THEN 'payment pending'
		ELSE 'N/A'
	END AS payment_mesage
FROM ORDERS;

-- Employees ke department aur salary ke basis par performance category show karo:
-- IT department aur salary > 50000 → Excellent
-- HR department aur salary > 30000 → Good
-- otherwise → Average
SELECT
	first_name,
	department,
	salary,
	CASE
		WHEN department ='IT' AND salary > 50000 THEN 'Excellent'
		WHEN department ='HR' AND salary > 30000 THEN 'Good'
		ELSE 'Average'
	END AS performance
FROM EMPLOYEES;




