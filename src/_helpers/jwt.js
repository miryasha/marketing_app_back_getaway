const expressJwt = require('express-jwt');
require('dotenv').config();



function jwt() {
    const secret = process.env.TOKEN_SECRET;
    
    return expressJwt({ secret, algorithms: ['HS256'] }).unless({
        path: [
            // public routes that don't require authentication
            'user/register',
            'user/login/authenticate',
         
        ]
    });
}

module.exports = jwt;
