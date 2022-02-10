const rateLimit = require("express-rate-limit");

const apiLimiterApi = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 10,
    message:  "Too many tries, please try again after 15 minutes"
  });


  const apiLimiterLogin = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 3,
    message:  "Too many tries, please try again after 15 minutes"
  });

  const apiLimiterDbInterAction = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 20,
    message:  "Too many tries, please try again after 15 minutes"
  });


  module.exports = { apiLimiterApi : apiLimiterApi, apiLimiterLogin : apiLimiterLogin , apiLimiterDbInterAction:apiLimiterDbInterAction}
