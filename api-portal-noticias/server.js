const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const dbConnection = require('./config/dbConnection');

const app = express();


app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

const port = 7000;

app.listen(port);
console.log("API online... http://localhost:" + port);


//index
app.get('/',function(req,res){

    res.setHeader("Access-Control-Allow-Origin","*");
    //puxa todos as noticias
    dbConnection.query("select * from noticias order by data_criacao desc limit 8", function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })


})

//puxa likes de acordo com a noticia
app.get("/user/:id",function(req,res){
   
    res.setHeader("Access-Control-Allow-Origin","*");
        
        dbConnection.query("select * from likes where user_id=1", function(error, result){
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

    dbConnection.query("select * from noticias where id_noticia = ?", req.params.id, function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })
})

app.get('/like/:id',function(req,res){
    res.setHeader("Acess-Control-Allow-Origin","*");
    console.log(req.params);
    res.send("Ok " + req.params.id);
})

//put by id
app.put('/like/:id',function(req,res){

    res.setHeader("Acess-Control-Allow-Origin","*");

    const sql = `UPDATE noticias SET qtd_likes = '${req.body.likes+1}' WHERE id_noticias = ${req.body.id_noticia}`;
    console.log(sql);
    dbConnection.query(sql, function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })

})

