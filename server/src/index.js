const { Pool } = require("pg");

const pool = new Pool();

pool.query("SELECT NOW() AS PEANUT", (err, res) => {
  console.log(err, res);
  pool.end();
});
