CREATE TABLE Employees (
  emp_no int NOT NULL PRIMARY KEY,
  birth_date VARCHAR(200) NOT NULL,
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  gender CHAR(200) NOT NULL,
  hire_date VARCHAR(200) NOT NULL
);

CREATE TABLE departments (
  dept_no VARCHAR(200) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(200) NOT NULL
);

CREATE TABLE titles (
  emp_no int NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
  title VARCHAR(200) NOT NULL,
  from_date VARCHAR(200) NOT NULL,
  to_date VARCHAR(200) NOT NULL,
  PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR(200) NOT NULL,
  from_date VARCHAR(200) NOT NULL,
  to_date VARCHAR(200) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager (
  emp_no int NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
  dept_no VARCHAR(200) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  from_date VARCHAR(200) NOT NULL,
  to_date VARCHAR(200) NOT NULL,
  PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE salaries(
  emp_no int NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
  from_date VARCHAR(200) NOT NULL,
  to_date VARCHAR(200) NOT NULL,
  PRIMARY KEY (emp_no)
);

