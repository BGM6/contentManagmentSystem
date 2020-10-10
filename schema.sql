DROP DATABASE if EXISTS Employee_DB;
CREATE DATABASE Employee_DB;

USE Employee_DB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)

);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  CONSTRAINT FOREIGN KEY (department_id) REFERENCES department(id),
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  CONSTRAINT FOREIGN KEY (role_id) REFERENCES role(id),
  manager_id INT,
  CONSTRAINT FOREIGN KEY (manager_id) REFERENCES employee(id),
  PRIMARY KEY (id)
);

SELECT * FROM employee;
SELECT * From role;
SELECT * FROM department;

INSERT INTO department (department_name)
VALUES ('Sales');
INSERT INTO department (department_name)
VALUES ('Quality Control');
INSERT INTO department (department_name)
VALUES ('Finance');
INSERT INTO department (department_name)
VALUES ('Engineering');
INSERT INTO department (department_name)
VALUES ('Manager');

SELECT * FROM department;

INSERT INTO role (title, salary, department_id)
VALUES('Sales Leader', 50000, 1);
INSERT INTO role (title, salary, department_id)
VALUES('QA Team Member', 45000, 5);
INSERT INTO role (title, salary, department_id)
VALUES('Accountant', 47000, 3);
INSERT INTO role (title, salary, department_id)
VALUES('Senior Engineer', 100000, 2);
INSERT INTO role (title, salary, department_id)
VALUES('Junior Engineer', 70000, 4);
INSERT INTO role (title, salary, department_id)
VALUES('Manager', 125000, 3);

SELECT * FROM role;

-- INSERT INTO employee (first_name, last_name, role_id)
-- VALUES ('Bob', 'Marley', 420); 
-- INSERT INTO employee (first_name, last_name, role_id)
-- VALUES ('Stephen', 'Curry', 333); 
-- INSERT INTO employee (first_name, last_name, role_id)
-- VALUES ('Michael', 'Meyers', 187); 
-- INSERT INTO employee (first_name, last_name, role_id)
-- VALUES ('Albert', 'Einstein', 314); 
-- INSERT INTO employee (first_name, last_name, role_id)
-- VALUES ('Rick', 'Sanchez', 1); 
-- INSERT INTO employee (first_name, last_name, role_id)
-- VALUES ('Morty', 'Smith', 2); 

-- SELECT * FROM employee;