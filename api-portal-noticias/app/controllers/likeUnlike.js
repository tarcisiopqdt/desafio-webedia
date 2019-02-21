const NoticiasDAO = require('../models/NoticiasDAO');

module.exports = function(app, req,res,dbConnection) {

    const noticias = new NoticiasDAO(req,dbConnection);
      
    noticias.likeUnlike(function(error, result){
		res.send(result);	
	});
}