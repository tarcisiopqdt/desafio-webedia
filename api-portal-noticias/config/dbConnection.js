const mysql = require('mysql');


const dbConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'portal_noticias'
})

module.exports = dbConnection;
