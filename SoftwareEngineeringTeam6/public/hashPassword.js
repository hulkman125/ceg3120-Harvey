const bcrypt = require('bcrypt');

const password = "hash16";  // your current password

bcrypt.hash(password, 10).then(hash => {
  console.log("Copy this hash for the database:");
  console.log(hash);
}).catch(err => {
  console.error("Error generating hash:", err);
});

/*





*/