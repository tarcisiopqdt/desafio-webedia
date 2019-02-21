module.exports = class NoticiasDAO {

  constructor(req, dbConnection) {
    this.req = req;
    this.dbConnection = dbConnection;
  }

    getTodasNoticias(callback) {
       const sql = `select * from noticias, likes where noticias.id_noticia = likes.id_noticia 
                order by data_criacao desc 
                limit ${this.req.query.limit} offset ${this.req.query.offset}`;
	    this.dbConnection.query(sql, callback);
    }

    getMostLiked(callback) {
        const sql = "select * from noticias, likes where noticias.id_noticia = likes.id_noticia order by qtd_likes desc limit 5";
	    this.dbConnection.query(sql, callback);
    }

    likeUnlike(callback) {
        const sql = `UPDATE likes SET qtd_likes = '${this.req.body.qtd_likes}' WHERE id_noticia = ${this.req.body.id_noticia}`;
	    this.dbConnection.query(sql, callback);
    }

}

