const model = require("../models");
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');
require('dotenv').config();

const secret = process.env.JWT_TOKEN_SECRET;
const expiresIn = process.env.JWT_TOKEN_SECRET_EXPIRESIN


async function authenticate({ username, email, pwd }) {
 
        const result = await model.login.userAuth(username, email, pwd);
        const userName = (await result).username;
        const eMails = (await result).email
        
       if( username !== undefined ){
            const token = jwt.sign({ userName : userName , eMails:eMails  }, secret , { expiresIn: expiresIn });
            return  { userName : userName , eMails:eMails , token: token }
      } else {
          
          return { message : "Dude you are NOT AUTHORIZE have fun!!"}
      }     
     
}

module.exports = { authenticate };