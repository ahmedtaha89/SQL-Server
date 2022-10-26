use Sales
create schema sales_schema;
create table customers 
(
customer_id int not null ,
first_name varchar(20) not null ,
last_name varchar(20) not null ,
phone  varchar(20) not null ,
email varchar(20) not null ,
city varchar(20) not null ,
state varchar(20) not null ,
zip_code int not null ,
street varchar(10) null);