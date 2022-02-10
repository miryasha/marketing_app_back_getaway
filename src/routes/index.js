//const controllers = require("../controllers");
const router = require("express").Router();
//const limiter = require("../config/apiLimiter");
const jwt = require('../_helpers/jwt.js');



//Login routes
/////================
// router.use("/register",limiter.apiLimiterLogin, controllers.register);
// router.use("/login",limiter.apiLimiterLogin, controllers.login);

router.use("user/login",controllers.login);



router.use("/", (req, res)=>{
    res.send("Hi from Auth Server!")
})



 module.exports = router;