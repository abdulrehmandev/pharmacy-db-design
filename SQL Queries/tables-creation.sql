create database Medical_Store;
use Medical_Store;

create table Admin(
admin_id int not null primary key,
name varchar(20),
password varchar(20)
);

create table Customer(
customer_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
name varchar(40),
address varchar(200),
email varchar(200),
cnic varchar(30),
contact varchar(30)
);

create table Item(
item_id int not null primary key,
name varchar(30),
quality varchar(20),
quantity int,
price float
);

create table COrder(
order_id int not null primary key,
customer_id int foreign key references Customer(customer_id),
item_id int foreign key references Item(item_id),
admin_id int foreign key references Admin(admin_id),
order_status varchar(20),
bill float
);

create table Employee(
employee_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
name varchar(40),
age int,
address varchar(200),
email varchar(200),
cnic varchar(30)
);

create table Report(
report_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
name varchar(30),
issue_date varchar(20)
);

create table Accounts(
account_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
estimate_profit int,
estimate_loss int,
performance varchar(20)
);

create table Supplier(
supplier_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
name varchar(30),
address varchar(200),
email varchar(200),
quality varchar(20)
);

create table Inventory(
inventory_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
item varchar(30),
type varchar(30),
description varchar(200),
price float,
date varchar(20)
);

create table Expenses(
expense_id int not null primary key,
admin_id int foreign key references Admin(admin_id),
salaries int,
raw_material int,
electricity_bill int
);
