
--1. List the following details of each employee: employee number, last name, first name, gender, and salary

SELECT employee.emp_no, last_name, first_name, gender, salary
FROM employee
INNER JOIN salaries
ON employee.emp_no=salaries.emp_no ;

--2.List employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3.List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.

SELECT departements.dept_no, dept_name, dept_emp.emp_no, first_name, last_name,from_date, to_date
FROM departements
INNER JOIN dept_emp
ON departements.dept_no=dept_emp.dept_no
INNER JOIN employee
ON dept_emp.emp_no=employee.emp_no;

--4.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employee
WHERE first_name= 'Hercules'
AND SUBSTRING(last_name,1,1)='B';

--5.List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employee.emp_no, last_name, first_name, departements.dept_name
FROM departements
INNER JOIN dept_emp
ON departements.dept_no=dept_emp.dept_no
INNER JOIN employee
ON dept_emp.emp_no=employee.emp_no;

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, departements.dept_name,last_name, first_name
FROM departements
INNER JOIN dept_emp
ON departements.dept_no=dept_emp.dept_no 
INNER JOIN employee
ON dept_emp.emp_no=employee.emp_no
WHERE departements.dept_name='Sales'
;
--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, departements.dept_name,last_name, first_name
FROM departements
INNER JOIN dept_emp
ON departements.dept_no=dept_emp.dept_no 
INNER JOIN employee
ON dept_emp.emp_no=employee.emp_no
WHERE departements.dept_name='Sales' OR departements.dept_name='Development'
;

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name)
FROM employee
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

