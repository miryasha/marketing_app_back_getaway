const mysql = require("mysql");
require('dotenv').config();

const connection = mysql.createConnection({
    
    host: process.env.DB_HOST || "localhost",
    port: process.env.DB_PORT || "3306",//port
    user: process.env.DB_USER_NAME || "root",//username
    password:  process.env.DB_PWD ||"rootroot",//password
    database: process.env.DB_NAME || "calling_server"//database
    
    
  });

//Connect to the database
connection.connect(function(err) {
  if (err) {
    console.error("error in db USER connecting: " + err.stack);
    return;
  }
  console.log("db USER connected as id " + connection.threadId);
});

module.exports = connection;