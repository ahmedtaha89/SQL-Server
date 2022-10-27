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
customer_id int identity(1,1),
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
orders_id int identity(1,1) primary key  ,
orders_date date not null,
orders_status varchar(20) not null ,
customer_id int , 
constraint customers_orders_fk foreign key (customer_id)
references customers (customer_id)
);


 CREATE TABLE categories
( 
category_id int ,
category_name varchar(50) not null,
constraint category_pk primary key (category_id)
);


CREATE TABLE stores 
(
store_id int identity(1,1) primary key,
store_name varchar(20)not null ,
phone varchar(20) not null,
email varchar(30) not null,
zip_code varchar(10) not null
);




 CREATE TABLE staff 
 (
 staff_id int ,
 first_name varchar(50) not null,
 last_name varchar(20) not null,
 salary numeric(9,5) check (salary between 2000 and 25000),
 manager_id int identity not null,
 store_id int ,
 constraint staff_fk foreign key(store_id)
 references stores (store_id)
 );



 CREATE TABLE order_items (
 item_id int identity(1,1) primary key ,
 quantity int not null,
 list_price decimal(10,5) not null,
 discount  decimal(10,5) not null ,
 orders_id int identity(1,1) ,
 constraint order_items_fk foreign key (orders_id)
 references orders(orders_id),
 );



 CREATE TABLE products (
 product_id int primary key,
 product_name varchar(50) not null,
 model_year date not null ,
 list_price decimal(12,5) not null, 
 category_id int ,
 constraint products_fk foreign key (category_id)
 references categories (category_id),
 brand_id int ,
 constraint brand_id_fk  foreign key (brand_id )
 references brands (brand_id )
 );




  CREATE TABLE brands
(
brand_id int ,
brand_name varchar(50) not null,
constraint brand_pk primary key(brand_id)
 );


 CREATE TABLE stocks (
 quantity int not null ,
 store_id int ,
 constraint store_id_fk  foreign key (store_id )
 references stores (store_id ),
 product_id int , 
 constraint  product_id_fk  foreign key ( product_id )
 references  products ( product_id ),
);




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


/*insert into*/