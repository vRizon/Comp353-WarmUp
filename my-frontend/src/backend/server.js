// server.js
const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');
const app = express();
const port = 5000;  // Port your API will run on

// Enable CORS to allow your frontend to access this API
app.use(cors());

// Create a connection to MySQL
const pool = mysql.createPool({
  host: 'localhost',  // MySQL host
  user: 'root',       // MySQL username
  password: '*******',       // MySQL password
  database: 'testing_main_project_v1'  // Your database name
});

// API endpoint to get all locations
app.get('/api/locations', (req, res) => {
  pool.query('SELECT * FROM Locations', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      return res.status(500).json({ error: 'Error fetching data' });
    }
    res.json(results);
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
