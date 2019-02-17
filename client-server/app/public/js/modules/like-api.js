export default function initLikeRequest(idPost,qtdLike){
  
    const url = 'http://localhost:7000/like/';
    const options = {
        method: 'PUT',
        headers: {
            "Content-Type": "application/json; charset=utf-8",
        },
        body: `{"id_noticia": "${idPost}", "qtd_likes" : ${qtdLike}}`
      
    }

    fetch(url, options).then(response => response.json())
    .then(json => {
      console.log(json);
    });
}

