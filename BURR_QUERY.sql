-- 1. List for each employee: employee number, last name, first name, 
-- gender, and salary.

select 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.gender, 
	salaries.salary
FROM employees
inner join salaries on
employees.emp_no=salaries.emp_no;

-- 2. List employees who were hired in 1986.

select 
	emp_no,
	last_name,
	first_name
FROM employees
WHERE extract(year from hire_date) = 1986;

-- 3. List the manager of each department: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.

select 
	departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	dept_manager.from_date,
	dept_manager.to_date,
	employees.first_name,
	employees.last_name
FROM departments
inner join dept_manager on departments.dept_no=dept_manager.dept_no
inner join employees on dept_manager.emp_no=employees.emp_no;
	
-- 4. List the department of each employee: employee number, last name, first name, and department name

CREATE VIEW department_employees AS
select 
	departments.dept_no,
	departments.dept_name,
	dept_emp.emp_no,
	employees.first_name,
	employees.last_name
FROM departments
inner join dept_emp on departments.dept_no=dept_emp.dept_no
inner join employees on dept_emp.emp_no=employees.emp_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

select emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND LEFT(last_name, 1) = 'B'; 

-- 6. List all employees in the Sales department: employee number, last name, first name, and department name.

select * from department_employees
where dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments: employee number, last name, first name, and department name.

select * from department_employees
where dept_name = 'Sales'
OR dept_name = 'Development'

-- 8. In descending order, list the frequency count of employee last names.

select last_name, COUNT(last_name) AS "Count"
	FROM employees
	GROUP BY last_name
	order by count(last_name) desc;


