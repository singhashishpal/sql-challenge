-- ############### DATA ANALYSIS #################### --

-- Q1: List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no as employee_number, employees.last_name as last_name, employees.first_name as first_name, employees.sex as sex, salaries.salary as salary
FROM sqlchallenge.employees
RIGHT JOIN sqlchallenge.salaries ON employees.emp_no = salaries.emp_no;

-- Q2: List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM sqlchallenge.employees
WHERE hire_date::text LIKE '1986%';

-- Q3: List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT manager_dept.emp_no AS manager,
departments.dept_no AS department_number, 
departments.dept_name AS department_name,
employees.emp_no AS employee_number, 
employees.last_name AS last_name, 
employees.first_name AS first_name
FROM sqlchallenge.departments
JOIN sqlchallenge.dept_manager AS manager_dept ON departments.dept_no = manager_dept.dept_no
JOIN sqlchallenge.employees ON manager_dept.emp_no = employees.emp_no; 

-- Q4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT employee_dept.dept_no AS department_number, 
employees.emp_no AS employee_number, 
employees.last_name AS last_name, 
employees.first_name AS first_name,
departments.dept_name AS department_name
FROM sqlchallenge.departments
JOIN sqlchallenge.dept_emp AS employee_dept ON departments.dept_no = employee_dept.dept_no
JOIN sqlchallenge.employees ON employee_dept.emp_no = employees.emp_no; 

-- Q5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM sqlchallenge.employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Q6: List each employee in the Sales department, including their employee number, last name, and first name.

SELECT emp.emp_no AS employee_number, 
emp.last_name AS last_name, 
emp.first_name AS first_name
FROM sqlchallenge.employees AS emp
JOIN sqlchallenge.dept_emp ON emp.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no IN (SELECT dept_no FROM sqlchallenge.departments WHERE dept_name = 'Sales');

-- Q7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT emp.emp_no AS employee_number, 
emp.last_name AS last_name, 
emp.first_name AS first_name,
depts.dept_name AS department_name
FROM sqlchallenge.employees AS emp
JOIN sqlchallenge.dept_emp ON emp.emp_no = dept_emp.emp_no
JOIN sqlchallenge.departments AS depts ON dept_emp.dept_no = depts.dept_no
WHERE dept_emp.dept_no IN (SELECT dept_no FROM sqlchallenge.departments WHERE dept_name IN ('Sales', 'Development'));

-- Q8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT (*) AS frequency_counts FROM sqlchallenge.employees
GROUP BY last_name
ORDER BY last_name DESC;
