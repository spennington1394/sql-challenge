
--Create tables

create table Employees( 
	emp_no varchar not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no),
--	foreign key (emp_title_id) references Titles (title_id)
);

create table Salaries(
	emp_no varchar not null,
	salary integer not null,
	foreign key (emp_no) references Employees (emp_no)
);

create table Dept_Emp(
	emp_no varchar not null,
	dept_no varchar not null,
	foreign key (emp_no) references Employees (emp_no)
);

create table Dept_Manager(
	dept_no varchar not null,
	emp_no varchar not null,
--error when importing title_id already exists as a key
--	primary key (dept_no),
	foreign key (emp_no) references Employees (emp_no)
);

create table Titles(
	title_id varchar not null,
	title varchar not null,
--error when importing title_id already exists as a key
--	primary key (title_id)
);

create table Departments(
	dept_no varchar not null,
	dept_name varchar not null,
	foreign key (dept_no) references Dept_Manager(dept_no)
);