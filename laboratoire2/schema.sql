CREATE TABLE work (
  employee_name varchar(20),
  job_title varchar(15),
  employee_id integer check (employee_id > 0)
);
