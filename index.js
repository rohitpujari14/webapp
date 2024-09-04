// Import the express module
const express = require('express');

// Create an express application
const app = express();

// Define the port to run the server on
const PORT = 3000;

// Serve the HTML file for the root route
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
