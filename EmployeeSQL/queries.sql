-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp.emp as employee_number,  emp.last_name, emp.first_name, emp.sex, sal.salary
FROM "Employees" as emp 
LEFT JOIN "Salaries" as sal
ON sal.emp_no = emp.emp

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM "Employees"
WHERE hire_date LIKE '%1986'

-- 3. List the manager of each department with the following information: department number, department name, 
--    the manager's employee number, last name, first name.

SELECT dm.dept_no as department_number, d.dept_name as department_name, emp.emp as employee_number, emp.last_name, emp.first_name
FROM "Dept_manager" as dm
LEFT JOIN "Employees" as emp
ON emp.emp = dm.emp_no
LEFT JOIN "Departments" as d
ON d.dept_no =  dm.dept_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT emp.emp as employee_number, emp.last_name, emp.first_name, d.dept_name as department_name
FROM "Employees" as emp
LEFT JOIN "Dept_emp" as de
ON de.emp_no = emp.emp
LEFT JOIN "Departments" as d
ON d.dept_no = de.dept_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT emp.first_name, emp.last_name, emp.sex
FROM "Employees" as emp
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT emp.emp as employee_number, emp.last_name, emp.first_name, d.dept_name as department_name
FROM "Employees" as emp
LEFT JOIN "Dept_emp" as de
ON de.emp_no = emp.emp
LEFT JOIN "Departments" as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT emp.emp as employee_number, emp.last_name, emp.first_name, d.dept_name as department_name
FROM "Employees" as emp
LEFT JOIN "Dept_emp" as de
ON de.emp_no = emp.emp
LEFT JOIN "Departments" as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT last_name, COUNT(*)
FROM "Employees" 
GROUP BY last_name
ORDER BY count desc