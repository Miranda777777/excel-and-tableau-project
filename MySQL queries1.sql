CREATE DATABASE Students;
USE students;
CREATE TABLE grant_info(
first_name varchar(20) not null,
last_name varchar(20) not null,
student_id int not null, department varchar(25) not null);

INSERT INTO grant_info
VALUES(
"Miranda", "WEI", 100, "Science");
SELECT * FROM students.grant_info;

update grant_info
set student_id=110
where first_name = "Harry";



#Foreign key
CREATE TABLE products
( product_id INT PRIMARY KEY,
 product_name VARCHAR(50) NOT NULL,
category VARCHAR(25));

USE students;

CREATE TABLE inventory(
inventory_id INT PRIMARY KEY,
product_id INT NOT NULL,
quantity INT,
min_level INT,
max_level INT,
CONSTRAINT fk_inv_product_id
FOREIGN KEY (product_id)references products(product_id));


