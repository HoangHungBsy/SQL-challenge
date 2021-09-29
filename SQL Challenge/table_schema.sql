
CREATE TABLE departments (
  dept_no VARCHAR(100),
  dept_name VARCHAR(100) 
  PRIMARY KEY (dept_no)
);



-- Create table employees


CREATE TABLE employees (
	emp_no INT ,
	birth_date DATE ,
	first_name VARCHAR(100),
	last_name VARCHAR(100) ,
	gender VARCHAR(5),
	hire_date DATE ,
	PRIMARY KEY (emp_no)
);



--Create table dept_emp



CREATE TABLE dept_emp (
	emp_no INT ,
	dept_no VARCHAR(5),
	from_date DATE,
	to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)




-- Create table dept_manager


CREATE TABLE dept_manager (
 dept_no VARCHAR (100),
 emp_no INT,
 from_date DATE ,
 to_date DATE,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);




--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT ,
	salary INT,
	from_date DATE ,
	to_date DATE ,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);



--Creating titles table


CREATE TABLE titles (
	emp_no INT ,
	title VARCHAR(50) ,
	from_date DATE ,
	to_date DATEL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
