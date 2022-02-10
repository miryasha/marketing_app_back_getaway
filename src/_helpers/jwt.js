const expressJwt = require('express-jwt');
require('dotenv').config();



function jwt() {
    const secret = process.env.JWT_TOKEN_SECRET;
    
    return expressJwt({ secret, algorithms: ['HS256'] }).unless({
        path: [
            // public routes that don't require authentication
            '/user/login/auth',
         
        ]
    });
}

module.exports = jwt;
