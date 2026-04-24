
//backend server
const express = require('express');
const { Pool } = require('pg');
const bcrypt = require('bcrypt');
const path = require('path');
const bodyParser = require('body-parser');
const cors = require('cors');



// Connect and Create an Express Application
const app = express();
app.use(cors());
app.use(express.static(path.join(__dirname, 'public')));
const port = 3003; // By default, its 3003, you can customize


const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'Client_Server',
  password: 'password', // Change to your password
  port: 5432, // Default Port
});

console.log("Server file loaded");

// GET ALL RECIPES (for grocery page)
app.get('/api/recipes', async (req, res) => {
  try {
    const result = await pool.query(
      `SELECT title, image_url FROM recipes`
    );
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Server error");
  }
});


// GET ONE RECIPE (for foodPageInput)
app.get('/api/recipe/title/:title', async (req, res) => {
  const title = req.params.title;

  console.log("Looking for:", title);

  try {
    const result = await pool.query(
      `SELECT * FROM recipes
       WHERE LOWER(TRIM(title)) = LOWER(TRIM($1))`,
      [title]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ message: "Recipe not found" });
    }

    res.json(result.rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).send("Server error");
  }
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});