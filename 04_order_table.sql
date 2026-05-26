CREATE TABLE orders(
order_id SERIAL PRIMARY KEY ,
customer_name VARCHAR(100) NOT NULL ,
Product_name VARCHAR(150) NOT NULL ,
Quantity INT CHECK(Quantity >= 1),
Price NUMERIC(10,2) CHECK(price>= 0),
Total_amount NUMERIC(10,2),
is_paid BOOLEAN DEFAULT False ,
order_date DATE DEFAULT Current_Date ,
Created_at TIMESTAMP DEFAULT Current_timestamp ,
Status TEXT 
);

Select * from orders;