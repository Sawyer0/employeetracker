DROP DATABASE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE department(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE role(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(30) NULL,
salary DECIMAL(18, 2),
department_id INTEGER(10),
PRIMARY KEY (id)
);

CREATE TABLE employee(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NULL,
last_name VARCHAR(30) NULL,
role_id INTEGER(10),
manager_id INTEGER(10),
PRIMARY KEY (id)
);

CREATE TABLE manager(
managerid INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NULL,
last_name VARCHAR(30) NULL,
role_id INTEGER(10),
manager_id INTEGER(10),
PRIMARY KEY (managerid)
);

INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("888", "James", "Brown", 01, 444);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("111", "Lisa", "Simpson", 11, 444);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("222", "Whitney", "Houston", 21, 444);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("333", "Benjamin", "Button", 31, 444);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("444", "Claire", "Huxtable", 41, 999);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("555", "Elton", "John", 51, 444);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("666", "Janet", "Jackson", 61, 444);
INSERT INTO manager (managerid, first_name, last_name, role_id, manager_id)
VALUES ("777", "Brenda", "Walsh", 71, 444);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("010", "James", "Brown", 01, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("011", "Bruce", "Springsteen", 02, 888);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("012", "Bruce", "Springsteen", 02, 888);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("013", "Diana", "Ross", 03, 888);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("014", "Cyndi", "Lauper", 03, 888);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("110", "Lisa", "Simpson", 11, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("111", "Abraham", "Lincoln", 12, 111);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("112", "Michael", "Jackson", 12, 111);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("113", "Ariana", "Grande", 13, 111);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("114", "Mario", "Lopez", 13, 111);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("220", "Whitney", "Houston", 21, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("221", "Mariah", "Carey", 22, 222);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("222", "Stevie", "Wonder", 22, 222);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("223", "George", "Washington", 23, 222);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("224", "Fredrick", "Douglass", 23, 222);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("330", "Benjamin", "Button", 31, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("331", "Peter", "Pan", 32, 333);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("332", "Charles", "Dickens", 32, 333);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("333", "Alice", "Walker", 33, 333);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("334", "Walt", "Disney", 33, 333);


INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("440", "Claire", "Huxtable", 41, 888);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("550", "Elton", "John", 51, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("551", "Bart", "Simpson", 52, 555);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("552", "Charlie", "Brown", 52, 555);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("553", "Tina", "Turner", 53, 555);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("554", "Kelly", "Rowlands", 53, 555);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("660", "Janet", "Jackson", 61, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("661", "John", "Lennon", 62, 666);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("662", "Paul", "McCartney", 62, 666);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("663", "Lucy", "Lui", 63, 666);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("664", "Dev", "Patel", 63, 666);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("770", "Brenda", "Walsh", 71, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("771", "Marie", "Curie", 72, 777);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("772", "Thomas", "Edison", 72, 777);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("773", "Eli", "Whitney", 73, 777);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("774", "Denzel", "Washington", 73, 777);

INSERT INTO role (id, title, salary, department_id)
VALUES ("01", "Sales Manager", 150000, 300);
INSERT INTO role (id, title, salary, department_id)
VALUES ("02", "Sales Assistant", 40000, 300);
INSERT INTO role (id, title, salary, department_id)
VALUES ("03", "Sales Engineer", 65000, 300);

INSERT INTO role (id, title, salary, department_id)
VALUES ("11", "Marketing Manager", 150000, 301);
INSERT INTO role (id, title, salary, department_id)
VALUES ("12", "Marketing Coordinator", 40000, 301);
INSERT INTO role (id, title, salary, department_id)
VALUES ("13", "Marketing Analyst", 55000, 301);

INSERT INTO role (id, title, salary, department_id)
VALUES ("21", "Finance Manager", 150000, 302);
INSERT INTO role (id, title, salary, department_id)
VALUES ("22", "Junior Accountant", 52000, 302);
INSERT INTO role (id, title, salary, department_id)
VALUES ("23", "Senior Accountant", 70000, 302);

INSERT INTO role (id, title, salary, department_id)
VALUES ("31", "HR Manager", 150000, 303);
INSERT INTO role (id, title, salary, department_id)
VALUES ("32", "HR Coordinator", 50000, 303);
INSERT INTO role (id, title, salary, department_id)
VALUES ("33", "Recruiter", 40000, 303);

INSERT INTO role (id, title, salary, department_id)
VALUES ("41", "Director", 220000, 304);

INSERT INTO role (id, title, salary, department_id)
VALUES ("51", "R&D Manager", 150000, 305);
INSERT INTO role (id, title, salary, department_id)
VALUES ("52", "R&D Associate", 50000, 305);
INSERT INTO role (id, title, salary, department_id)
VALUES ("53", "R&D Engineer", 120000, 305);

INSERT INTO role (id, title, salary, department_id)
VALUES ("61", "Purchases Manager", 150000, 306);
INSERT INTO role (id, title, salary, department_id)
VALUES ("62", "Buyer", 55000, 306);
INSERT INTO role (id, title, salary, department_id)
VALUES ("63", "Procurement Officer", 60000, 306);

INSERT INTO role (id, title, salary, department_id)
VALUES ("71", "Operations Manager", 150000, 307);
INSERT INTO role (id, title, salary, department_id)
VALUES ("72", "Operations Management Trainee", 50000, 307);
INSERT INTO role (id, title, salary, department_id)
VALUES ("73", "Operations Coordinator", 72000, 307);
INSERT INTO role (id, title, salary, department_id)
VALUES ("74", "Project Manager", 68000, 307);

INSERT INTO department (id, name)
VALUES ("300", "Sales");
INSERT INTO department (id, name)
VALUES ("301", "Marketing");
INSERT INTO department (id, name)
VALUES ("302", "Finance/ Accounting");
INSERT INTO department (id, name)
VALUES ("303", "Human Resources");
INSERT INTO department (id, name)
VALUES ("304", "General Management");
INSERT INTO department (id, name)
VALUES ("305", "Research & Development");
INSERT INTO department (id, name)
VALUES ("306", "Purchases");
INSERT INTO department (id, name)
VALUES ("307", "Operations");

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
SELECT * FROM manager;