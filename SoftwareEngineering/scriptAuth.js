//scriptAuth.js
//the backend script for authentication page, it will handle the login request and check the username and password with the database
// Import required modules
const express = require('express');
const { Pool } = require('pg');
const bcrypt = require('bcrypt');
const path = require('path');
const bodyParser = require('body-parser');



// Connect and Create an Express Application
const app = express();
const port = 3000; // By default, its 3000, you can customize


const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'Client_Server',
  password: 'password', // Change to your password
  port: 5432, // Default Port
});

app.use(bodyParser.json()); // to parse JSON request bodies
app.use(express.static(path.join(__dirname,'public'))); // serve static files

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'Auth.html')); // serve the authentication page
});

//login route handler
app.post('/login', async (req, res) => {
  try {
    const { username, password } = req.body;

    const query = `
      SELECT password_hash, failed_login_attempts, is_locked, locked_at
        FROM users 
        WHERE username = $1
    `;

    const { rows } = await pool.query(query, [username]);

    // ❌ user not found
    if (rows.length === 0) {
      return res.status(401).json({
        message: 'Username does not exist in database!'
      });
    }

    const user = rows[0];

    // 🔒 check if locked
if (user.is_locked) {

  if (user.locked_at) {
    const unlockTime = new Date(user.locked_at);
    unlockTime.setMinutes(unlockTime.getMinutes() + 15);

    if (new Date() < unlockTime) {
      return res.status(403).json({
        message: 'Account is temporarily locked. Try again later.'
      });
    }

    // auto-unlock
    await pool.query(
      `UPDATE users 
       SET is_locked = false, failed_login_attempts = 0 
       WHERE username = $1`,
      [username]
    );
  }
}

    // 🔑 check password
    // 🔑 check password
const isPasswordMatch = await bcrypt.compare(password, user.password_hash);

if (isPasswordMatch) {

  // ✅ reset attempts on success
  await pool.query(
    'UPDATE users SET failed_login_attempts = 0 WHERE username = $1',
    [username]
  );

  return res.json({ message: 'Login successful' });

} else {

  const newAttempts = (user.failed_login_attempts ?? 0) + 1;

  if (newAttempts >= 3) {

    await pool.query(
      `UPDATE users 
       SET failed_login_attempts = $1, is_locked = true, locked_at = NOW()
       WHERE username = $2`,
      [newAttempts, username]
    );

    return res.status(403).json({
      message: `Account locked after ${newAttempts} failed attempts`
    });

  } else {

    await pool.query(
      'UPDATE users SET failed_login_attempts = $1 WHERE username = $2',
      [newAttempts, username]
    );

    return res.status(401).json({
      message: `Invalid password (${newAttempts}/3 attempts used)`
    });
  }
}} catch (err) {
    console.error('Error during login:', err);
    return res.status(500).json({
      message: 'An error occurred during login'
    });
  }
});
app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});

