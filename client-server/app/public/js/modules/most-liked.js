export default function initMostLikedRequest() {

    async function fetchNoticias(url) {
        const noticiasResponse = await fetch(url);
        const noticiasJSON = await noticiasResponse.json();
        const divMain = document.querySelector(".aside-content")

        noticiasJSON.forEach(noticia => {
            const articleNoticia = createAsideItem(noticia);
            divMain.appendChild(articleNoticia);
        });
    }

    //Cria artigos dinamicamente
    function createAsideItem(noticia) {
        const article = document.createElement('article');
        article.classList.add('aside-item');
        article.innerHTML = `
                    <a href="#">
                        <div class="img-sidebar">
                            <img src="img/${noticia.url_img}" >
                        </div>  
                    </a>        
                        <div class="like-content">
                            <span class="btn-like" id="id-post-${noticia.id_noticia}">♥ Gostei</span>
                            <span class="qtd-like">${noticia.qtd_likes}</span>
                        </div> 
                    <a href="#">        
                        
                        <h2>${noticia.titulo}</h2>
                        <p>${noticia.conteudo}</p>
                     </a>    
                    `
        return article;
    }

    fetchNoticias("http://localhost:7000/most-liked");
    //fetchNoticias("http://192.168.1.4:7000/most-liked");
    
}

