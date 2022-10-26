/* TO Create Table => CREATE TABLE + Name Table */

/* (Data type)
int
char
varchar
numeric
date
*/

/* (Constriant)
1- not null => متبقاش قيمه فارغه 
2- primary key => not null and unique
3- foriegn key =>parent في جدول  reference  بيربط جدوليين ببعض بس بشرط لازم يكون فيه 
4- check => بتتحق من شرط معين 
5- unique  => متتكرش 
*/





create table customers
(
customer_id int ,
first_name varchar(20) not null ,
last_name varchar(20) not null ,
phone  varchar(20) unique  ,
email varchar(20) not null ,
city varchar(20) not null ,
state varchar(20) not null ,
zip_code int not null ,
street varchar(10) null
constraint customers_pk primary key (customer_id)
);





create table orders
(
orders_id int primary key ,
orders_date date not null,
orders_status varchar(20) not null ,
customer_id int , 
constraint customers_orders_fk foreign key (customer_id)
references customers (customer_id)
);


 CREATE TABLE category 
( 
category_id int ,
category_name varchar(50) not null,
constraint category_pk primary key (category_id)
);


 CREATE TABLE brand 
(
brand_id int ,
brand_name varchar(50) not null,
constraint brand_pk primary key(brand_id)
 );


 CREATE TABLE staff 
 (
 staff_id int ,
 first_name varchar(50) not null,
 last_name varchar(20) not null,
 salary numeric(9,5) check (salary between 2000 and 25000));

 
/* ALTER => تعديل */

/* ALTER TABLE NAME_TABLE (ADD - ALTER - DROP)*/

-- ALTER TABLE staff 
--ADD city varchar(40) ;


--ALTER TABLE staff 
--ALTER COLUMN city varchar(30) ;

--ALTER TABLE staff 
--Drop COLUMN city;


--ALTER TABLE customers
--Add constraint customers_cons_un unique (email);


--ALTER TABLE customers
--drop constraint customers_cons_un;



/*Rename Table*/
/*sp_rename*/
/*EXEC => EXECUTE*/
GO
EXEC sp_rename "customers" , "CUSTOMERS"

