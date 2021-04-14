const mysql = require('mysql');
const inquirer = require('inquirer');

// create the connection information for the sql database
const connection = mysql.createConnection({
  host: 'localhost',

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: 'root',

  // Your password
  password: '',
  database: 'employeeTracker_DB',
});

connection.connect((err) => {
  if (err) throw err;
  console.log(`connected as id ${connection.threadId}`);
  start();
});

const start = () => {
  inquirer.prompt({
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
      name: "options"

  }).then(answers => {
      console.log(answers.options);
      switch (answers.options) {
          case "View all employees":
              viewEmployees()
              break;
          case "View all departments":
              viewDepartments()
              break;
          case "View all roles":
              viewRoles()
              break;
          case "Add an employee":
              addEmployee()
              break;
          case "Add a department":
              addDepartment()
              break;
          case "Add a role":
              addRole()
              break;
          case "Update an employee role":
              updateRole()
              break;
          case "Remove an employee":
              removeEmployee()
              break;
          case "Update an employee manager":
              updateManager()
              break;
          default: connection.end()
              break;
      }
  })
}


const viewEmployees = () => {
  connection.query("SELECT * FROM employee", (err, data) => {
      console.table(data);
      appQuestions();
  })
}

const viewDepartments = () => {
  connection.query("SELECT * FROM department", (err, data) => {
      console.table(data);
      appQuestions();
  })
}

const viewRoles = () => {
  connection.query("SELECT * FROM role", (err, data) => {
      console.table(data);
      appQuestions();
  })
}