const mysql = require("mysql");
const inquirer = require("inquirer");


// require("./employeeTrackerDBConnection");
const connection = mysql.createConnection({
  host: "localhost",

  // Your port, if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Be sure to update with your own MySQL password!
  password: "Scrappy1",
  resbase: "employeetracker_db",
});

connection.connect((err) => {
  if (err) throw err;
  console.log(`connected as id ${connection.threadId}`);
  appQuestions();
});

const appQuestions = () => {
  inquirer
    .prompt({
      message: "What would you like to do?",
      type: "list",
      choices: [
        "View all employees",
        "View all departments",
        "View all roles",
        "Add an employee",
        "Add a department",
        "Add a role",
        "Update an employee role",
        "Remove an employee",
        "Update employee manager",
        "Leave app",
      ],
      name: "options",
    })
    .then((answers) => {
      console.log(answers.options);
      switch (answers.options) {
        case "View all employees":
          viewEmployees();
          break;
        case "View all departments":
          viewDepartments();
          break;
        case "View all roles":
          viewRoles();
          break;
        case "Add an employee":
          addEmployee();
          break;
        case "Add a department":
          addDepartment();
          break;
        case "Add a role":
          addRole();
          break;
        case "Update an employee role":
          updateRole();
          break;
        case "Remove an employee":
          removeEmployee();
          break;
        case "Update an employee manager":
          updateManager();
          break;
        default:
          connection.end();
          break;
      }
    });
};

console.log("Status check: What is our connection id?");

const viewEmployees = () => {
  connection.query(
    'SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary, CONCAT(manager.first_name, ' ', manager.last_name), AS manager FROM employee LEFT JOIN role on employee.role_id = role.id LEFT JOIN department on role.department_id = department.id LEFT JOIN employee manager on manager.id = employee.manager_id;


    (err, res) => {
      if (err) throw err;
      console.table(res);
    }
  );
  appQuestions();
};

const viewDepartments = () => {
  connection.query("SELECT * FROM department", (err, res) => {
    console.table(res);
    appQuestions();
  });
};

const viewRoles = () => {
  connection.query("SELECT * FROM role", (err, res) => {
    console.table(res);
    appQuestions();
  });
};

const addEmployee = () => {
  inquirer
    .prompt([
      {
        type: "input",
        name: "firstName",
        message: "what is the employee's first name?",
      },
      {
        type: "input",
        name: "lastName",
        message: "What is the employee's last name?",
      },
      {
        type: "number",
        name: "roleId",
        message: "What is the roleId for this employee's role?",
      },
      {
        type: "input",
        name: "managerId",
        message: "Please provide the managerId for this employee's manager",
      },
    ])
    .then((res) => {
      connection.query(
        "INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES (?, ?, ?, ?)",
        [res.firstName, res.lastName, res.roleId, res.managerId],
        (err, res) => {
          if (err) throw err;
          console.table("Added Successfully!");
          appQuestions();
        }
      );
    });
};

const addDepartment = () => {
  inquirer
    .prompt([
      {
        type: "list",
        name: "department",
        message: "Please select department",
        choices: ["300", "301", "302", "303", "304", "305", "306", "307"],
      },
    ])
    .then((res) => {
      connection.query(
        "INSERT INTO department (name) VALUES (?)",
        [res.department],
        (err, res) => {
          if (err) throw err;
          console.table("Added Successfully!");
          appQuestions();
        }
      );
    });
};

const addRole = () => {
  inquirer
    .prompt([
      {
        type: "list",
        name: "title",
        message: "Please select a title",
        choices: [
          "Sales Manager",
          "Sales Assistant",
          "Sales Engineer",
          "Marketing Manager",
          "Marketing Coordinator",
          "Marketing Analyst",
          "Finance Manager",
          "Junior Accountant",
          "Senior Accountant",
          "HR Manager",
          "HR Coordinator",
          "Recruiter",
          "Director",
          "R&D Manager",
          "R&D Associate",
          '"R&D Engineer',
          "Purchases Manager",
          "Buyer",
          "Procurement Officer",
          "Operations Manager",
          "Operations Management Trainee",
          "Operations Coordinator",
          "Project Manager",
        ],
      },
      {
        type: "number",
        name: "salary",
        message: "Please enter salary info",
      },
      {
        type: "list",
        name: "department_id",
        message: "Please enter a department ID",
        choices: ["300", "301", "302", "303", "304", "305", "306", "307"],
      },
    ])
    .then((response) => {
      connection.query(
        "INSERT INTO roles (title, salary, department_id) values (?, ?, ?)",
        [response.title, response.salary, response.department_id],
        (err, res) => {
          console.table(res);
        }
      );
      appQuestions();
    });
};

const updateRole = () => {
  inquirer
    .prompt([
      {
        type: "input",
        name: "name",
        message: "Please enter the employee that you would like to update",
      },
      {
        type: "number",
        name: "role_id",
        message: "Please enter the a new role ID",
      },
    ])
    .then((response) => {
      connection.query(
        "UPDATE employee SET role_id = ? WHERE first_name = ? WHERE last_name =?",
        [response.role_id, response.name],
        (err, res) => {
          console.table(res);
        }
      );
      appQuestions();
    });
};
