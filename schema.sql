DROP DATABASE if EXISTS Employee_DB;

CREATE DATABASE Employee_DB;

USE Employee_DB;

-- Department Table
CREATE TABLE department (
  id INT auto_increment NOT NULL;
  name VARCHAR(255) NOT NULL;
  PRIMARY KEY(id);

);

-- Roll Table
CREATE TABLE role (
  id INT auto_increment NOT NULL;
  title VARCHAR(255) NOT NULL;
  salary DECIMAL NOT NULL;
  department_id INT NOT NULL;
  PRIMARY KEY(id);
);

-- Employee Table
CREATE TABLE employee (
  id INT auto_increment NOT NULL;
  first_name VARCHAR(255) NOT NULL;
  last_name VARCHAR(255) NOT NULL;
  role_id INT NOT NULL;
  manager_id INT NOT NULL;
  PRIMARY KEY(id);
)