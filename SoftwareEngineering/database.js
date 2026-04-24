// const {Client} = require('pg')

// const client = new Client({
//     host : "localhost",
//     user: "postgres",
//     port: 5432,
//     password: "password",
//     database: "Client_Server"
// })

// client.connect();

// client.query("SELECT * from users", (err, res) => {
//     if(!err){
//         console.log(res.rows);
//     }else {
//         console.log(err.message);
//     }
//     client.end;
// })

require('dotenv').config();
const { Client } = require('pg');

const client = new Client({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    port: process.env.DB_PORT,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

async function testDB() {
    try {
        await client.connect();
        const res = await client.query("SELECT * FROM users");
        console.log(res.rows);
    } catch (err) {
        console.error(err.message);
    } finally {
        await client.end();
    }
}

testDB();