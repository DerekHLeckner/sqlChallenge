CREATE TABLE employees (

emp_no INTEGER,
emp_title_id VARCHAR(10),
birth_date DATE,
first_name VARCHAR (20),
last_name VARCHAR(30),
sex VARCHAR(1),	
hire_date DATE
);

CREATE TABLE salaries (

emp_no INTEGER,
salary INTEGER
);

CREATE TABLE department (

dept_no INTEGER,
dept_name VARCHAR(30)
);

CREATE TABLE dept_employee (

emp_no INTEGER,
dept_no INTEGER
);

CREATE TABLE dept_manager (

dept_no INTEGER,
emp_no INTEGER
);

CREATE TABLE titles (

title_id INTEGER,
title INTEGER
);

