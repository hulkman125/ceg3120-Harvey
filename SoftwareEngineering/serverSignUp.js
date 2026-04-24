

console.log("SERVER FILE IS RUNNING");

const express = require('express');
const cors = require('cors');
const bcrypt = require('bcrypt');

const app = express();

// middleware (IMPORTANT ORDER)
app.use(cors());
app.use(express.json());

const { Client } = require('pg');

const client = new Client({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "password",
    database: "Client_Server"
});

client.connect()
  .then(() => console.log("✅ DB Connected"))
  .catch(err => console.error("❌ DB Connection Failed:", err));


// SIGNUP ROUTE
app.post('/signup', async (req, res) => {
    console.log("BODY:", req.body);

    const { username, password, role } = req.body;

    const allowedRoles = ["user", "administrator", "grocery_admin"];

    const usernameRegex = /^[a-z]{8}$/;
    const passwordRegex =
        /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z\d]).{12,}$/;

    // BASIC CHECKS
    if (!username || !password || !role) {
        return res.status(400).json({ message: "Missing fields" });
    }

    if (!allowedRoles.includes(role)) {
        return res.status(400).json({ message: "Invalid role" });
    }

    // ✅ USERNAME VALIDATION
    if (!usernameRegex.test(username)) {
        return res.status(400).json({
            message: "Username must be exactly 8 lowercase letters"
        });
    }

    // ✅ PASSWORD VALIDATION
    if (!passwordRegex.test(password)) {
        return res.status(400).json({
            message: "Password must be at least 12 characters and include uppercase, lowercase, number, and symbol"
        });
    }

    try {
        const hashedPassword = await bcrypt.hash(password, 10);

        await client.query(
            `INSERT INTO users (
                role,
                status,
                username,
                password_hash,
                failed_login_attempts,
                is_locked
            )
            VALUES ($1,$2,$3,$4,$5,$6)`,
            [role, 'pending', username, hashedPassword, 0, false]
        );

        res.json({ message: "User created" });

    } catch (err) {
        console.log("🔥 FULL ERROR OBJECT:");
        console.log(JSON.stringify(err, null, 2));

        return res.status(500).json({
            message: err.message,
            detail: err.detail,
            code: err.code,
            hint: err.hint
        });
    }
});

app.get("/test-insert", async (req, res) => {
    try {
        await client.query(
`INSERT INTO users (
    role,
    status,
    username,
    password_hash,
    failed_login_attempts,
    is_locked,
    created_at,
    updated_at
)
VALUES ($1,$2,$3,$4,$5,$6,NOW(),NOW())`,
[role, 'pending', username, hashedPassword, 0, false]
);
        res.json({ ok: true });
    } catch (err) {
    console.log("🔥 RAW ERROR:");
    console.log(err);

    console.log("🔥 MESSAGE:", err.message);
    console.log("🔥 DETAIL:", err.detail);
    console.log("🔥 CODE:", err.code);

    return res.status(500).json({
        message: err.message,
        detail: err.detail,
        code: err.code,
        hint: err.hint
    });
}
});

app.get("/test", (req, res) => {
    res.json({ ok: true });
});

app.get("/debug-users", async (req, res) => {
    const result = await client.query("SELECT * FROM users LIMIT 5");
    res.json(result.rows);
});



app.listen(3001, () => {
    console.log("Server running on port 3001");
});