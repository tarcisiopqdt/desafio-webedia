const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

const app = express();


app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

const port = 7000;

app.listen(port);
console.log("API online... http://localhost:" + port);

const dbConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'portal_noticias'
})

//index
app.get('/',function(req,res){

    res.setHeader("Access-Control-Allow-Origin","*");

    dbConnection.query("select * from noticias order by data_criacao desc limit 8", function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })
    
})

//get by id
app.get('/:id',function(req,res){

    res.setHeader("Access-Control-Allow-Origin","*");

    dbConnection.query("select * from noticias where id_noticias = ?", req.params.id, function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })
})

//put by id
app.put('/',function(req,res){

    res.setHeader("Acess-Control-Allow-Origin","*");

    const sql = `UPDATE noticias SET titulo = '${req.body.titulo}', noticia = '${req.body.noticia}' WHERE id_noticias = ${req.body.id_noticias}`;
    
    dbConnection.query(sql, function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })

})

