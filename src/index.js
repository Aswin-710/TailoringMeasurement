const express = require('express'),
    path = require('path'),
    morgan = require('morgan'),
    mysql = require('mysql2'),
    session = require('express-session'),
    bodyParser = require('body-parser'),
    myConnection = require('express-myconnection');
require('dotenv').config();

const app = express();

// importing routes
const customerRoutes = require('./routes/customer');

// settings
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// Configure Express session
app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
  }));
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());
  
// middlewares
app.use(morgan('dev'));
app.use(myConnection(mysql, {
    host: process.env.MYSQL_ADDON_HOST,
    user: process.env.MYSQL_ADDON_USER,
    password: process.env.MYSQL_ADDON_PASSWORD,
    port: process.env.MYSQL_ADDON_PORT, // Corrected
    database: process.env.MYSQL_ADDON_DB
}, 'single'));
app.use(express.urlencoded({extended: false}));

// routes
app.use('/', customerRoutes);

// static files
app.use(express.static(path.join(__dirname, 'public')));

// starting the server
const PORT = process.env.MYSQL_ADDON_PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
