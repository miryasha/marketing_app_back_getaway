const express = require("express");
const cors = require('cors');
const corsOptions = require('./src/config/cors.config');
const routes = require("./src/routes")

const app = express();
const PORT = process.env.PORT || 3002;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());




app.use(cors(corsOptions))
// Enable if you're behind a reverse proxy (Heroku, Bluemix, AWS ELB, Nginx, etc)
// see https://expressjs.com/en/guide/behind-proxies.html
//app.set('trust proxy', 1);


// Routes
app.use(routes)


// global error handler
//============================
//app.use(errorHandler);

// Starts the server to begin listening
// =============================================================

app.listen(PORT, function() {
      console.log("App listening on PORT " + PORT);
    });