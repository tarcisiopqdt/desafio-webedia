const express = require('express');
const app = express();


app.set('view engine', 'ejs');
app.set('views' , './app/views');

//mapeamento de arquivos estaticos
app.use(express.static('./app/public'));

module.exports = app;