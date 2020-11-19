CREATE TABLE employees(
     emp_no INTEGER  PRIMARY KEY,
     birth_date DATE   NOT NULL,
     first_name VARCHAR   NOT NULL,
     last_name VARCHAR   NOT NULL,
     gender VARCHAR   NOT NULL,
     hire_date DATE   NOT NULL
);

select * from employees;
select count(*) from employees;


CREATE TABLE departments (
    dept_no VARCHAR   PRIMARY KEY,
    dept_name VARCHAR   NOT NULL   
);
select * from departments;
select count(*) from departments;


 CREATE TABLE dept_emp (
     emp_no INTEGER   NOT NULL,
     dept_no VARCHAR   NOT NULL,
     from_date DATE   NOT NULL,
     to_date DATE   NOT NULL,
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
     FOREIGN KEY (deptdept_emp_no) REFERENCES departments(dept_no)
);
select * from dept_emp;
select count(*) from dept_emp;


CREATE TABLE dept_manager (
	dept_no VARCHAR   NOT NULL,
	emp_no INTEGER   NOT NULL,
	from_date DATE   NOT NULL,
	to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_manager;
select count(*) from dept_manager;


CREATE TABLE salaries (
	emp_no INTEGER   NOT NULL,
	salary INTEGER   NOT NULL,
	from_date DATE   NOT NULL,
	to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries;
select count(*) from salaries;

CREATE TABLE titles (
	emp_no INTEGER NOT NULL,
	title VARCHAR   NOT NULL,	
	from_date DATE   NOT NULL,
	to_date DATE   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from titles;
select count(*) from titles;




