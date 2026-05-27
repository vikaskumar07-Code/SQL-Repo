SELECT * FROM employees;
SELECT * FROM orders;

-- Employees table me first_name aur last_name ko join karke full name show karo.
SELECT First_name , last_name , CONCAT(first_name,' ',last_name) as full_name
FROM employees;

--Saare employee names ko uppercase me show karo.
SELECT UPPER(first_name) FROM employees;

--Saare employee emails ko lowercase me show karo.
SELECT LOWER(email) from employees;

--Har employee ke first_name ki length nikaalo
SELECT first_name , LENGTH(first_name) as name_length 
FROM employees;

--Employees ke email me @ kis position par hai, ye show karo
SELECT email,position('@' in email) from employees;
--Har employee ke email ka sirf username part extract karo
SELECT
	email,
	LEFT(email,POSITION('@' in email )-1) 
	AS name 
	FROM employees;

--department column me se first 2 characters show karo
SELECT LEFT(Department,2) from employees;

-- Employees ke last 3 characters of email show karo
SELECT RIGHT(email,3) FROM employees;

--" PostgreSQL " string ke extra spaces remove karo
SELECT TRIM(' PostgreSQL ');

-- Employees ke emails me gmail.com ko company.com se replace karo
SELECT email, REPLACE(email,right(email,9),'company.com') from employees;

--Sirf un employees ko fetch karo jinka first name A se start hota hai.
SELECT * FROM employees
WHERE first_name LIKE 'A%';

--Sirf un employees ko fetch karo jinke email me gmail word aata ho
SELECT * FROM employees
WHERE email LIKE'%gmail%';

--Har employee ka full name aur uski total character length show karo
SELECT
	CONCAT(first_name,' ',last_name) as full_name ,
	LENGTH(CONCAT(first_name,' ',last_name) ) as character_len
FROM employees;
	

-- Employees ke first name ka first character show karo
SELECT
	first_name , 
	LEFT(first_name,1) as First_char
FROM employees;

--Employees ke emails ka domain part extract karo.
SELECT 
	email,
	RIGHT(email,9) as domain
FROM employees;

--Employees ke first_name me jitne bhi a characters hain unko * se replace karke show karo.
SELECT first_name , REPLACE(LOWER(first_name),'a','*') FROM employees;

-- Employees ke emails me se sirf first 5 characters show karo.
SELECT 
	email,
	SUBSTRING(email,1,5) as char 
FROM employees;

--Employees ke full name ke beech ka space remove karke show karo.
SELECT 
	CONCAT(first_name,last_name) as full_name
FROM employees;

-- Employees ke department names ko reverse case me show karo (uppercase → lowercase, lowercase → uppercase).
select 
	department,
	LOWER(UPPER(department)) as reverse
FROM employees;
--Employees ke emails me @ ke baad wala part alag column me show karo.
SELECT 
	email ,
	SUBSTRING(email FROM POSITION('@' in email)+1) as mail_name
FROM employees;	

-- Employees ke first_name ka middle character show karo.
SELECT 
    first_name,
    SUBSTRING(first_name FROM LENGTH(first_name)/2 FOR 1) AS middle_char
FROM employees;
--Employees ke emails me se sirf domain extension extract karo (com, org, etc.)
SELECT 
	email ,
	SUBSTRING( email FROM POSITION ('.' in email)+1) as domain_ext
FROM employees;

-- Employees ke first_name aur department ko : symbol ke saath combine karo.
SELECT
	first_name,
	department,
	CONCAT_WS(':',first_name,department) as combine_name
FROM employees;

-- Employees ke names me total vowels kitne hain, ye show karo
SELECT 
	CONCAT(first_name,' ',last_name) as full_name,
	COUNT(LOWER(CONCAT(first_name,' ',last_name)) in 'a','e','i','o','u') as count
FROM employees;

-- Employees ke emails me gmail word ko remove karke show karo
SELECT
	email,
	REPLACE(email,SUBSTRING(email,6,5),'') AS mail
FROM employees;

-- Sirf un employees ko fetch karo jinke first_name ki length 5 se zyada hai.
SELECT
	first_name ,
	LENGTH(first_name) as char
FROM employees
WHERE LENGTH(first_name) >=5;

-- Employees ke department ka pehla aur aakhri character combine karke show karo
SELECT
	department,
	CONCAT(LEFT(department,1),RIGHT(department,1)) as combine_dep
FROM Employees
GROUP BY department;

-- Employees ke emails ko aise format me show karo (a***@gmail.com)
SELECT
	email,
	CONCAT(
	LEFT(email,1),
	'***',
	SUBSTRING( email fROM POSITION ('@' in email)+1)
	) as masked_email
FROM employees;

-- Employees ke emails me @ se pehle wale part ki length show karo.
SELECT
	email,
	LEFT(email,POSITION('@' in email)-1) before_mail,
	LENGTH(LEFT(email,POSITION('@' in email)-1)) as length_char
FROM employees;

-- Employees ke first_name ko aise show karo:Aman → A***n
SELECT
	email,
	CONCAT(
	left(email,1),
	'***n',
	SUBSTRING(email FROM POSITION ('@' in email)+1)
	) as multi_mail
FROM employees;

-- Employees ke department name me agar i ho to usko uppercase I se replace karo.
SELECT 
	Department ,
	REPLACE(department ,'i','I')
FROM employees;

-- Employees ke emails me se sirf company/domain name extract karo. Example:aman@gmail.com → gmail
SELECT
	email,
	REPLACE(SUBSTRING(email FROM POSITION('@' in email)+1),'.com',' ') as domain
FROM employees;

-- Employees ke first_name ka second aur third character show karo.
SELECT
	first_name,
	SUBSTRING(first_name,2,2) as sec_third_char
FROM employees;

-- Employees ke emails me total dots (.) kitne hain, ye show karo.
SELECT
    email,
    LENGTH(email) - LENGTH(REPLACE(email,'.','')) AS dot_count
FROM employees;

--Employees ke first_name ko reverse order me show karo.
SELECT
	first_name,
	REVERSE(first_name) as reverse_name
FROM employees;









