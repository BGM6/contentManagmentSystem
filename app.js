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


const options = [
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
    message: 'Select an option',
    choices: options,
  })
    .then((answer) => {
      switch (answer.userChoice) {
        case options[0]:
          // run department function
          break;

        case options[1]:
          // view roles function
          break;

        case options[2]:
          // view employee function
          break;

        case options[3]:
          // run update employee function
          break;

        case options[4]:
          connection.end();
          break
      }
    })
}

