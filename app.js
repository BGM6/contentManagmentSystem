const mysql = require('mysql');
const inquirer = require('inquirer');

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