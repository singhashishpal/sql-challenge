-- CREATE TABLE QUERIES --

create table sqlchallenge.departments(
dept_no varchar(4) primary key unique not null,
dept_name varchar(50) not null
);


create table sqlchallenge.titles(
title_id varchar(5) primary key unique not null,
title varchar(20) not null
);


create table sqlchallenge.employees(
emp_no int primary key unique not null,
emp_title_id varchar(5) not null,
birth_date date not null,
first_name varchar(30) not null,
last_name varchar(30),
sex varchar(1),
hire_date date not null
);


create table sqlchallenge.dept_manager(
dept_no varchar(4) not null,
emp_no int primary key unique not null
);


create table sqlchallenge.salaries(
emp_no int primary key unique not null,
salary int not null
);


create table sqlchallenge.dept_emp(
emp_no int not null,
dept_no varchar(4) not null
);