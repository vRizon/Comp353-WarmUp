const mysql = require('mysql2');

// Create the database connection pool
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '*******',
  database: 'testing_main_project_v1'
});

module.exports = pool;  // Export the pool