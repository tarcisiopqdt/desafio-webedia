const server = require('../../config/server');
const mainController = require('../controllers/mainController');
const mostLikedController = require('../controllers/mostLikedController');
const likeUnlike = require('../controllers/likeUnlike');

module.exports = function(app, dbConnection){

    app.get('/',function(req,res){
        mainController(app,req,res,dbConnection);
    })

    app.get('/most-liked',function(req,res){
         mostLikedController(app,req,res,dbConnection);
    })

    app.put('/like',function(req,res){
        likeUnlike(app,req,res,dbConnection);
    })

}