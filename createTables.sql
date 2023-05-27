drop table if exists departments;
create table departments (
	dept_no varchar(5) primary key not null,
	dept_name varchar(30)
)
;
drop table if exists titles;
create table titles (
	title_id varchar(10) primary key not null,
	title varchar(30)
)
;
drop table if exists employees;
create table employees (
	emp_no int primary key not null,
	emp_title_id varchar(6),
	birth_date date,
	first_name varchar(100), 
	last_name varchar(100),
	sex varchar(4),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
)
;
drop table if exists salaries;
create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
)
;

drop table if exists dept_emp;
create table dept_emp (
	emp_no int not null,
	dept_no varchar(5) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
)
;
drop table if exists dept_manager;
create table dept_manager (
	dept_no varchar(5) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
)
;