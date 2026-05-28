SELECT * FROM staff_members;
SELECT * FROM orders;

-- employees table me ek naya column add karo: Phone number
ALTER TABLE employees
ADD COLUMN phone_num SMALLINT;

-- employees table me department column ka datatype TEXT se VARCHAR(100) me convert karo.
ALTER TABLE employees
ALTER COLUMN department TYPE VARCHAR(100);

-- employees table se age column remove karo.
ALTER TABLE employees
DROP COLUMN age;

-- orders table me ek naya column add karo:shipping_address
ALTER TABLE employees
ADD COLUMN shipping_address TEXT;

-- orders table me status column ka naam change karke: order_status
ALTER TABLE orders
RENAME COLUMN status TO order_status;

-- employees table me salary column par default value set karo:25000
ALTER TABLE employees
ALTER COLUMN salary SET DEFAULT 25000;

-- employees table me phone_number column ko rename karke: mobile_number
ALTER TABLE employees
RENAME COLUMN phone_num TO mobile_number;

-- orders table me is_paid column remove karo.
ALTER TABLE orders
DROP COLUMN is_paid;

--employees table me ek constraint add karo:.salary > 10000
ALTER TABLE employees 
ADD CONSTRAINT salary_check CHECK (salary > 10000);

-- employees table ka naam change karke: staff_members

ALTER TABLE employees
RENAME TO staff_members;

-- staff_members table me ek naya column add karo:experience_years
ALTER TABLE staff_members
ADD COLUMN experience_years SMALLINT;

--orders table me price column ka datatype NUMERIC(10,2) karo.
ALTER TABLE orders
ALTER COLUMN price TYPE NUMERIC(10,2);

--staff_members table se mobile_number column remove karo.
ALTER TABLE staff_members
DROP COLUMN mobile_number;

--orders table me ek new column add karo:payment_method
ALTER TABLE orders
ADD COLUMN payment_method VARCHAR(50);

-- orders table me total_amount column ka naam change karke:final_amount
ALTER TABLE orders
RENAME COLUMN total_amount TO final_amount;

--staff_members table me department column par NOT NULL constraint add karo.
ALTER TABLE staff_members
ALTER COLUMN department SET NOT NULL;

-- orders table me order_date column ka default current date set karo.
ALTER TABLE orders
ALTER COLUMN order_date SET DEFAULT CURRENT_DATE;

-- staff_members table me email column ki maximum size VARCHAR(150) karo.
ALTER TABLE staff_members
ADD CONSTRAINT size_check CHECK VARCHAR(150);

--orders table me ek check constraint add karo: quantity > 0
ALTER TABLE orders
ADD CONSTRAINT quantity_check
CHECK (quantity > 0);

--staff_members table ka naam change karke:company_employees
ALTER TABLE staff_members
RENAME TO company_employees;

-- company_employees table me ek column add karo: linkedin_profile
ALTER TABLE company_employees
ADD COLUMN linkedin_profile VARCHAR(100);

-- orders table me payment_method column ka datatype TEXT karo.
ALTER TABLE orders
ALTER COLUMN payment_method TYPE TEXT;

-- company_employees table se experience_years column remove karo.
ALTER TABLE company_employees
DROP COLUMN experience_years;

-- orders table me ek new column add karo: delivery_date
ALTER TABLE orders
ADD COLUMN delivery_date Smallint;

-- orders table me customer_name column ka naam change karke:client_name
ALTER TABLE orders
RENAME COLUMN customer_name TO client_name;

-- company_employees table me first_name column ko NOT NULL karo.
ALTER TABLE company_employees
ALTER COLUMN first_name SET NOT NULL;

-- orders table me final_amount column par default value 0 set karo.
ALTER TABLE orders
ALTER COLUMN final_amount SET DEFAULT 0;

-- company_employees table me department column ka datatype VARCHAR(200) karo.
ALTER TABLE employees_data
ALTER COLUMN department TYPE VARCHAR(200);

-- orders table me ek constraint add karo: final_amount >= 0
ALTER TABLE orders
ADD CONSTRAINT amount_check CHECK (final_amount >=0);

--company_employees table ka naam change karke: employees_data
ALTER TABLE company_employees
RENAME TO employees_data;

-- employees_data table me ek new column add karo: github_profile
ALTER TABLE employees_data
ADD COLUMN github_profile VARCHAR(100);

-- orders table me delivery_date column ka datatype TIMESTAMP karo.
ALTER TABLE orders
ALTER COLUMN delivery_date TYPE TIMESTAMP;

-- employees_data table se linkedin_profile column remove karo.
ALTER TABlE employees_data
DROP COLUMN linkedin_profile;

-- orders table me ek new column add karo: tracking_id
ALTER TABLE orders
ADD COLUMN tracking_id SMALLINT;

-- orders table me client_name column ka naam change karke: customer_full_name
ALTER TABLE orders
RENAME COLUMN client_name TO customer_full_name ;

-- employees_data table me email column ko NOT NULL karo.
ALTER TABLE employees_data
ALTER COLUMN email SET NOT NULL;

-- orders table me tracking_id column par UNIQUE constraint lagao.
ALTER TABLE customer_orders
ADD CONSTRAINT tracking_unique UNIQUE(tracking_id);

-- employees_data table me department column ka datatype TEXT karo.
ALTER TABLE employees_data
ALTER COLUMN department TYPE TEXT;

-- orders table me quantity column ka default value 1 set karo.
ALTER TABLE orders
ALTER COLUMN quantity SET DEFAULT 1;

-- employees_data table me ek check constraint add karo: salary <= 100000
ALTER TABLE employees_data
ADD CONSTRAINT check_salary CHECK (salary <= 100000);

-- orders table se payment_method column remove karo.
ALTER TABLE orders
DROP COLUMN payment_method;

-- employees_data table me github_profile column ka naam change karke: portfolio_link
ALTER TABLE employees_data
RENAME COLUMN github_profile TO portfolio_link;

-- orders table me final_amount column ka datatype NUMERIC(12,2) karo.
ALTER TABLE orders
ALTER COLUMN final_amount TYPE NUMERIC(12,2) ;

-- employees_data table me ek new column add karo: city
ALTER TABLE employees_data
ADD COLUMN city VARCHAR(50);

-- orders table ka naam change karke: customer_orders
ALTER TABLE orders
RENAME TO customer_orders;



