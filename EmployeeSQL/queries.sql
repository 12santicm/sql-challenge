-- 1. List the employee number, last name, first name, sex, and salary of each employee 

SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.sex,
  salaries.salary
FROM employees
JOIN salaries 
ON employees.emp_no = salaries.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986

SELECT employees.first_name,
  employees.last_name,
  employees.hire_date
FROM employees
WHERE
  hire_date::text LIKE '1986-%';

-- 3. List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name

SELECT dept_manager.emp_no,
       "Departments".dept_no,
       "Departments".dept_name,
       employees.last_name,
       employees.first_name
FROM dept_manager
JOIN "Departments"
ON dept_manager.dept_no = "Departments".dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- 4. List the department number for each employee along with that employee’s
--employee number, last name, first name, and department name

SELECT dept_emp.emp_no,
  dept_emp.dept_no,
  employees.last_name,
  employees.first_name,
  "Departments".dept_name
FROM dept_emp
JOIN employees
 ON dept_emp.emp_no = employees.emp_no
JOIN "Departments"
 ON dept_emp.dept_no = "Departments".dept_no;


-- 5. List first name, last name, and sex of each employee whose first name 
--is Hercules and whose last name begins with the letter B

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6. List each employee in the Sales department, including their 
--employee number, last name, and first name

SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       "Departments".dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN "Departments" ON dept_emp.dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments,
--including their employee number, last name, first name, and department name

SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       "Departments".dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN "Departments" ON dept_emp.dept_no = "Departments".dept_no
WHERE "Departments".dept_name IN ('Sales', 'Development');


-- 8. List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name)

SELECT last_name, COUNT(*) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC;


