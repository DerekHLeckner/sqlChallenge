--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary 
FROM employees
JOIN salaries
ON salaries.emp_no = employees.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date <= '1986-12-31' AND hire_date >= '1986-01-01';


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
SELECT employees.first_name, employees.last_name, dept_manager.emp_no,
dept_manager.dept_no, department.dept_name
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN department ON department.dept_no = dept_manager.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT employees.first_name, employees.last_name, employees.emp_no,
department.dept_name
FROM employees
JOIN dept_employee ON dept_employee.emp_no = employees.emp_no
JOIN department ON department.dept_no = dept_employee.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.first_name, employees.last_name, employees.emp_no,
department.dept_name
FROM employees
JOIN dept_employee ON dept_employee.emp_no = employees.emp_no
JOIN department ON department.dept_no = dept_employee.dept_no
WHERE department.dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.first_name, employees.last_name, employees.emp_no,
department.dept_name
FROM employees
JOIN dept_employee ON dept_employee.emp_no = employees.emp_no
JOIN department ON department.dept_no = dept_employee.dept_no
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS Counts 
FROM employees
GROUP BY last_name
ORDER BY Counts DESC;