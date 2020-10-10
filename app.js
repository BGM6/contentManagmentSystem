const mysql = require('mysql');
const inquirer = require('inquirer');
const { createConnection } = require('net');

// Database connection
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'employee_db'
});

con.connect((err) => {
  if (err) {
    console.log('Error connecting to database')
    return;
  }
  console.log('Connection established');
});


const userOptions = [
  'View Departments',
  'View Roles',
  'View Employee(s)',
  'Update Employee(s)',
  'Exit',
];

const employeeOptions = [
  'Bob Marley',
  'Stephen Curry',
  'Michael Meyers',
  'Albert Einstein',
  'Rick Sanchez',
  'Morty Smith',
  'Exit',
];

const updateOptions = [
  'First Name',
  'Last Name',
  'Role',
  'Exit',
];



const runSearch = () => {
  inquirer.prompt({
    name: 'userChoice',
    type: 'list',
    message: 'What would you like to do?',
    choices: userOptions,
  })
    .then((answer) => {
      switch (answer.userChoice) {
        case userOptions[0]:
          viewDepartments()
          break;

        case userOptions[1]:
          viewRoles();
          break;

        case userOptions[2]:
          viewEmployees();
          break;

        case userOptions[3]:
          // run update employee function
          break;

        case userOptions[4]:
          con.end();
          break
      }
    })
}

const viewDepartments = () => {
  const queryDepartment = 'SELECT * FROM department';
  con.query(queryDepartment, (err, result) => {
    if (err) throw err;
    console.table(result);
    runSearch();
  })
}

const viewRoles = () => {
  const queryRoles = 'SELECT * FROM role';
  con.query(queryRoles, (err, result) => {
    if (err) throw err;
    console.table(result);
  })
}

const viewEmployees = () => {
  const queryEmployees = 'SELECT first_name, last_name, id, role_id, manager_id FROM employee';
  con.query(queryEmployees, (err, result) => {
    if (err) throw err;
    console.table(result);
    runSearch();
  })

}


runSearch();