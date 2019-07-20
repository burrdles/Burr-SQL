--* FOR THIS DRAFT, JUST GET STARTED TO GET THE CODE PREPRED 
--* AND THEN ADD IN DETAILS THAT MAKE THE DATABASE MORE CLEAN

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--departments csv table
create table departments(
	dept_no varchar,
	dept_name varchar
);

--dept_emp csv table
create table dept_emp(
	emp_no int,
	dept_no varchar,
	from_date date,
	to_date date
);

--dept_manager
create table dept_manager(
	dept_no varchar,
	emp_no int,
	from_date date,
	to_date date
);

-- employees
create table employees(
	emp_no int,
	birth_date date,
	first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date
);

-- salaries
create table salaries(
	emp_no int,
	salary int,
	from_date date,
	to_date date
);

-- titles
create table titles(
	emp_no int,
	title varchar,
	from_date date,
	to_date date
);


