const mysql = require("mysql");
require('dotenv').config();

const connection = mysql.createConnection({
    
    host: process.env.DB_ADMIN_HOST || "localhost",
    port: process.env.DB_ADMIN_PORT || "3306",//port
    user: process.env.DB_ADMIN_USER_NAME || "root",//username
    password:  process.env.MYSQL_ADMIN_PWD ||"rootroot",//password
    database: process.env.NAME_DB_ADMIN || "calling_server"//database
    
    
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