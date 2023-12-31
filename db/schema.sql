DROP DATABASE IF EXISTS CMS_DB; 
CREATE DATABASE CMS_DB;

USE CMS_DB; 

CREATE TABLE DEPARTMENTS ( 
    dep_id INT NOT NULL AUTO_INCREMENT, 
    dep_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (dep_id)
);

CREATE TABLE ROLES (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (role_id),
    FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(dep_id)
);


CREATE TABLE EMPLOYEES (
    emp_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    manager_id INT,
    role_id INT NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (emp_id),
    -- FOREIGN KEY (manager_id) REFERENCES MANAGERS(mgr_id),
    FOREIGN KEY (role_id) REFERENCES ROLES(role_id),
    FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(dep_id)
);