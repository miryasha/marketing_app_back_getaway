const model = require("../models");
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');
require('dotenv').config();

const secret = process.env.JWT_TOKEN_SECRET;
const expiresIn = process.env.JWT_TOKEN_SECRET_EXPIRESIN


async function authenticate({ username, email, pwd }) {
 
        const result = await model.login.userAuth(username, email, pwd);

        const userInfo = await result.find(u => u.username === username && u.pwd === pwd)

        
        if(!userInfo){ return { message : 'Username or password is incorrect'}}
         else { 
            const token = jwt.sign({ userName : userInfo  }, secret , { expiresIn: expiresIn });

         return { token, userInfo }
        }
       
}

module.exports = { authenticate };