CREATE DATABASE Postgre_db;


CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

INSERT INTO users(full_name,email)
VALUES
('Aman Sharma','aman@gmail.com'),
('Rohit Verma','rohit@gmail.com'),
('Priya Singh','priya@gmail.com'),
('Neha Gupta','neha@gmail.com');

CREATE TABLE user_profile(
    profile_id SERIAL PRIMARY KEY,
    user_id INT UNIQUE,
    city VARCHAR(50),
    phone VARCHAR(15),

    FOREIGN KEY(user_id)
    REFERENCES users(user_id)
);

INSERT INTO user_profile(user_id,city,phone)
VALUES
(1,'Delhi','9876543210'),
(2,'Mumbai','9876543211'),
(3,'Pune','9876543212'),
(4,'Jaipur','9876543213');


-- One-to-One
SELECT * FROM users;
SELECT * FROM user_profile;
-- 1.Users table ke saare records show karo.
SELECT * FROM users;

-- 2.User_Profile table ke saare records show karo.
SELECT * FROM user_profile;

-- 3.Sirf city aur phone columns fetch karo.
SELECT city , phone from user_profile;

-- 4.User_Profile me sirf un users ko dikhao jo Delhi me rehte hain.
SELECT * FROM user_profile
WHERE city ='Delhi';

-- 5.User_Profile me phone number "9876543211" wale user ko fetch karo.
SELECT * FROM user_profile
WHERE phone LIKE '9876543211';
-- 6. User_Profile table me sirf Jaipur city wale users fetch karo.
SELECT * FROM user_profile
WHERE city ='Jaipur';

-- 7. User_Profile table me phone number ka last 4 digit show karo.
SELECT user_id,phone,RIGHT(phone,4) as last_4_digit  FROM
user_profile;

-- 8. User_Profile table me city names ko uppercase me show karo.
SELECT user_id,city,UPPER(city) as upper_city from 
user_profile;

-- 9. User_Profile table me har city name ki length show karo.
SELECT user_id , city , LENGTH(city) as city_name_len FROM user_profile;

-- 10. Sirf un profiles ko fetch karo jinka phone number "9876" se start hota hai.
SELECT user_id , phone 
FROM user_profile
WHERE phone LIKE  '9876%';

-- 11. User_Profile table me city aur phone ko ek hi column me combine karke show karo.
-- Example: Delhi - 9876543210
SELECT city ,phone ,CONCAT(city,' ',phone) AS city_phone
FROM user_profile;

-- 12. User_Profile table me profile_id sabse bada (latest profile) ka record fetch karo.
SELECT * FROM user_profile
LIMIT 1;

-- 13. User_Profile table me total kitni profiles hain, count nikaalo.
SELECT COUNT(*) FROM user_profile;

-- 14. User_Profile table me cities ke unique values show karo.
SELECT city from user_profile
GROUP BY city; 

-- 15. User_Profile table me profile_id ke basis par records ko descending order me show karo.
SELECT * FROM user_profile
ORDER BY profile_id DESC;



