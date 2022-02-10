const express = require('express');
const router = express.Router();
const auth = require('../_helpers/auth');



router.post('/authenticate',  authenticate)
 

function authenticate(req, res, next) {
    
    auth.authenticate(req.body)
        .then(user => res.json(user))
        .catch(next)
}
  

module.exports = router;