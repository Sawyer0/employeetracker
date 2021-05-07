USE employee_trackerDB;

INSERT INTO department (name)
VALUES ("QA"), ("Development"), ("Sales");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Frank", "Gibbs", 5, 6), ("Dan", "Wildes", 6, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("Engineer", 80000, 8), ("Intern", 60000, 3);