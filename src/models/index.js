const connection = require('../config/dbConnection.config');

const Login = require('./login.model');

module.exports = {
  login: new Login(connection),
  
  
  }