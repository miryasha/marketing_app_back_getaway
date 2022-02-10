const expressJwt = require('express-jwt');
require('dotenv').config();



function jwt() {
    const secret = process.env.TOKEN_SECRET;
    
    return expressJwt({ secret, algorithms: ['HS256'] }).unless({
        path: [
            // public routes that don't require authentication
            '/register',
            '/login/authenticate',
            '/call/stock',
            '/call/currency',
            '/console/call-criteria-stock-tbl/create',
            '/console/call-criteria-stock-tbl/get',
            '/console/call-criteria-stock-tbl/update',
            '/console/call-criteria-stock-tbl/delete',
        ]
    });
}

module.exports = jwt;
