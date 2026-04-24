
const express = require('express');
const app = express();

const { Pool } = require('pg');
const path = require('path');
const multer = require("multer");
const cors = require('cors');


app.use(cors());


const port = 3004;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));
app.use('/uploads', express.static('uploads')); // serve uploaded images

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'Client_Server',
  password: 'password',
  port: 5432,
});

// multer setup
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "uploads/");
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + "-" + file.originalname);
  }
});
const upload = multer({ storage });


// ✅ SINGLE correct route
app.post('/recipes', upload.none(), async (req, res) => {
  console.log("RAW BODY:", req.body);

  try {
   const username = req.body.username;
  const title = req.body.title;
  const description = req.body.description;
  const visibility = req.body.visibility;
  const servingSize = req.body.servingSize;
  const prepTime = req.body.prepTime;
  const cookTime = req.body.cookTime;
  const instructions = req.body.instructions;
  const ingredients = String(req.body.ingredients || "");
  const imageUrl = req.body.imageUrl;

    const userResult = await pool.query(
  'SELECT user_id FROM users WHERE LOWER(username) = LOWER($1)',
  [username]
);

// ✅ PUT IT HERE
if (!userResult.rows.length) {
  return res.status(400).json({ error: "User not found" });
}

const userId = userResult.rows[0].user_id;

    const finalImage = imageUrl || null;

    // 👇 PUT DEBUG CODE HERE

    // insert into DB
    console.log("REQ BODY:", req.body);
console.log("INGREDIENTS VALUE:", req.body.ingredients);
const safeIngredients = ingredients ?? "";

console.log("FINAL INGREDIENTS GOING INTO DB:", safeIngredients);



console.log("BODY KEYS:", Object.keys(req.body));
console.log("FULL BODY:", req.body);
console.log("INGREDIENTS TYPE:", typeof req.body.ingredients);
console.log("INGREDIENTS VALUE:", req.body.ingredients);
console.log("FINAL INSERT DATA:", {
  userId,
  title,
  ingredients,
});
await pool.query(
  `INSERT INTO recipes 
  (owner_user_id, title, description, visibility, servings, prep_minutes, cook_minutes, instructions, ingredients, image_url)
  VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)`,
  [
    userId,
    title,
    description,
    visibility,
    servingSize,
    prepTime,
    cookTime,
    instructions,
    safeIngredients,
    finalImage
  ]
);
const test = await pool.query("SELECT ingredients FROM recipes ORDER BY id DESC LIMIT 1");
console.log("LAST INSERTED ROW:", test.rows);

    res.json({
  message: "Recipe inserted successfully",
  ingredients: safeIngredients
});

  } catch (err) {
    console.error("🔥 DATABASE ERROR:", err);  // <-- THIS is key
    res.status(500).json({ 
      message: err.message,
      detail: err.detail,
      code: err.code
  });
}
});


app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});

