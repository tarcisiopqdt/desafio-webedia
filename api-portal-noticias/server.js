const express = require('express');
const bodyParser = require('body-parser');
const dbConnection = require('./config/dbConnection');

const app = express();


app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

const port = 7000;

app.use(function(req,res,next){

    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'content-type');
    res.setHeader('Access-Control-Allow-Credentials', '*');

    next();
});

app.listen(port);
console.log("API online... http://localhost:" + port);


//index
app.get('/',function(req,res){

  
    //puxa todos as noticias
    dbConnection.query("select * from noticias, likes where noticias.id_noticia = likes.id_noticia order by data_criacao desc limit 8", function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })
    
})


app.get('/most-liked',function(req,res){

    //puxa ordenado por quantidade de likes
    dbConnection.query("select * from noticias, likes where noticias.id_noticia = likes.id_noticia order by qtd_likes desc limit 5", function(error, resposta){
        if(error){
            console.log(error);
        }else{
            res.send(resposta);
        }
    })

})



app.put('/like',function(req,res){
   
    const sql = `UPDATE likes SET qtd_likes = '${req.body.qtd_likes}' WHERE id_noticia = ${req.body.id_noticia}`;
   
    dbConnection.query(sql, function(error, result){
        if(error){
            console.log(error);
        }else{
            res.send(result);
        }
    })
})

