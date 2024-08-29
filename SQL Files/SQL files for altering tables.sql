-- ALTER TABLE QUERIES --

ALTER TABLE sqlchallenge.DEPT_EMP
ADD CONSTRAINT pk_employee_department UNIQUE (emp_no, dept_no); -- This will create a composite key to create a unique key pairing 'emp_no' and 'dept_no' columns in DEPT_EMP.


ALTER TABLE sqlchallenge.SALARIES ADD CONSTRAINT fk_SALARIES_emp_no FOREIGN KEY(emp_no)
REFERENCES sqlchallenge.EMPLOYEES (emp_no); -- This will create a foreign key on SALARIES table to reference PK 'emp_no' in EMPLOYEES table. 


ALTER TABLE sqlchallenge.EMPLOYEES ADD CONSTRAINT fk_EMPLOYEES_title_id FOREIGN KEY(emp_title_id)
REFERENCES sqlchallenge.TITLES (title_id); -- This will create a foreign key on EMPLOYEES table to reference PK 'title_id' in TITLES table. 


ALTER TABLE sqlchallenge.DEPT_MANAGER ADD CONSTRAINT fk_DEPT_MANAGER_dept_no FOREIGN KEY(dept_no)
REFERENCES sqlchallenge.DEPARTMENTS (dept_no); -- This will create a foreign key on DEPT_MANAGER table to reference PK 'dept_no' in DEPARTMENTS table.


ALTER TABLE sqlchallenge.DEPT_MANAGER ADD CONSTRAINT fk_DEPT_MANAGER_emp_no FOREIGN KEY(emp_no)
REFERENCES sqlchallenge.EMPLOYEES (emp_no); -- This will create a foreign key on DEPT_MANAGER table to reference PK 'dept_no' in DEPARTMENTS table.


ALTER TABLE sqlchallenge.DEPT_EMP ADD CONSTRAINT fk_DEPT_EMP_emp_no FOREIGN KEY(emp_no)
REFERENCES sqlchallenge.EMPLOYEES (emp_no); -- This will create a foreign key on DEPT_EMP table to reference PK 'emp_no' in EMPLOYEES table.


ALTER TABLE sqlchallenge.DEPT_EMP ADD CONSTRAINT fk_DEPT_EMP_dept_no FOREIGN KEY(dept_no)
REFERENCES sqlchallenge.DEPARTMENTS (dept_no); -- This will create a foreign key on DEPT_EMP table to reference PK 'dept_no' in DEPARTMENTS table.

