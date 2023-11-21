show databases;
create database Entity;
use Entity;
create table members(Customrer_id int primary key,join_date date);
insert into members values(1,'2020-01-06'),(2,'2020-01-10'),(3,'2020-02-05'),(4,'2020-03-10'),(5,'2020-04-04'),
(6,'2021-05-05'),(7,'2021-06-26'),(8,'2021-07-25'),(9,'2021-08-08'),(10,'2021-09-16'),(11,'2022-10-12'),(12,'2022-11-23'),
(13,'2022-12-26'),(14,'2022-02-12'),(15,'2022-02-14'),(16,'2023-01-07'),(17,'2023-01-05'),(18,'2023-03-02'),(19,'2023-02-02'),
(20,'2023-01-08');
select * from members;

create table menu(Product_id int primary key,product_name varchar(20) not null,price decimal(7,2) not null);
insert into menu values(101,'Bat',8000),(102,'Gloves',2500),(103,'Shoes',40000),
(104,'T-shirt',1500),(105,'Kit-bag',2999),(106,'Smartphone',20599),(107,'Headphones',2500),
(108,'Smart TV',35000),(109,'Laptop',40000),(110,'Air conditioner',38000),(111,'Bicycle',15000),(112,'Vaccum Cleaner',10000),
(113,'Tool Kit',3000),(114,'Portable Storage',9000),(115,'Microwave',15000),(116,'Watch',6000),(117,'Wifi-Router',1999),
(118,'Utensils',4500),(119,'Refrigerator',25000),(120,'Bluetooth Speakers',6000);
select * from menu;

create table sales(Customrer_id int,foreign key(Customrer_id) references members(Customrer_id) ,order_date date not null,
Product_id int,foreign key(Product_id) references menu(Product_id));

insert into sales set Customrer_id=1,Order_date='2023-02-25',Product_id=101;
insert into sales set Customrer_id=2,Order_date='2023-02-28',Product_id=102;
insert into sales set Customrer_id=3,order_date='2023-03-03',Product_id=104;
insert into sales set Customrer_id=4,order_date='2023-02-25',product_id=103;
insert into sales set Customrer_id=5,Order_date='2023-01-30',Product_id=106;
insert into sales set Customrer_id=6,order_date='2023-03-02',product_id=105;
insert into sales set Customrer_id=8,order_date='2023-02-20',product_id=110;
insert into sales set Customrer_id=9,order_date='2023-02-05',Product_id=107;
insert into sales set Customrer_id=7,order_date='2023-01-24',Product_id=109;
insert into sales set Customrer_id=12,order_date='2022-10-17',product_id=112;
insert into sales set Customrer_id=11,order_date='2022-08-08',product_id=111;
insert into sales set Customrer_id=10,order_date='2022-04-04',product_id=108;
insert into sales set Customrer_id=13,order_date='2022-01-25',product_id=113;
insert into sales set Customrer_id=16,order_date='2022-12-19',product_id=114;
insert into sales set Customrer_id=15,order_date='2022-10-22',product_id=115;
insert into sales set Customrer_id=17,order_date='2021-10-27',product_id=116;
insert into sales set Customrer_id=14,order_date='2021-10-03',product_id=117;
insert into sales set Customrer_id=18,order_date='2021-02-15',product_id=118;
insert into sales set Customrer_id=20,order_date='2021-05-20',Product_id=119;
insert into sales set Customrer_id=19,order_date='2021-09-13',product_id=120;
select * from sales;
delete from sales where order_date='2021-05-20';
insert into sales set Customrer_id=20,order_date='2023-09-20',Product_id=119;


