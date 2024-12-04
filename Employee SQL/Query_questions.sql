--Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

--Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01-01-1986' AND hire_date < '01-01-1987';

--Question 3
SELECT 
d.dept_no AS department_number, 
d.dept_name AS department_name, 
dm.emp_no AS employee_number, 
e.last_name, 
e.first_name
FROM 
departments d
JOIN 
dept_manager dm ON d.dept_no = dm.dept_no
JOIN 
employees e ON dm.emp_no = e.emp_no;

--Qustion 4
SELECT 
de.dept_no AS department_number, 
e.emp_no AS employee_number, 
e.last_name, 
e.first_name, 
d.dept_name AS department_name
FROM 
dept_emp de
JOIN 
departments d ON de.dept_no = d.dept_no
JOIN 
employees e ON de.emp_no = e.emp_no;

--Qustion 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN
	(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no = 'd007'
	);

--Question 7
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--Question 8
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;
