const model = require("../models");
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');
require('dotenv').config();

const secret = process.env.TOKEN_SECRET;


async function authenticate({ username, password }) {
 
       const result = await model.login.findUser(username, password);
       const user = (await result).user;
        console.log(user +"from auth")      
       if( user !== undefined ){
            const token = jwt.sign({ sub : user }, secret , { expiresIn: '1d' });
            return  { user : user, token: token }
      } else {
          
          return { message : "Data is not match"}
      }     
     
}

module.exports = { authenticate };