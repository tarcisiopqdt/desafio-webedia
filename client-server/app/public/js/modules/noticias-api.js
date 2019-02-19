
export default function initApiRequest() {

    //Realiza a requisição para a API
    async function fetchNoticias(url) {
        const noticiasResponse = await fetch(url);
        const noticiasJSON = await noticiasResponse.json();
        const divMain = document.querySelector(".main_noticias")

        noticiasJSON.forEach(noticia => {
            const articleNoticia = createItemCard(noticia);
            divMain.appendChild(articleNoticia);
        });

    }

    //Cria artigos dinamicamente
    function createItemCard(noticia) {
        const article = document.createElement('article');
        article.classList.add('item-card');
        article.classList.add('grid-6');
        article.innerHTML = `
                        <a href="http://www.google.com">
                            <div class="img-container">
                                <img src="img/${noticia.url_img}" alt="">
                            </div>
                        </a>        
                            <div class="like-content" id="post-id-${noticia.id_noticia}">
                                <span class="btn-like" id="id-post-${noticia.id_noticia}">♥ Gostei</span>
                                <span class="qtd-like">${noticia.qtd_likes}</span>
                            </div>     
                        <a href="http://www.google.com">    
                            <div class="description">
                                <h2>${noticia.titulo}</h2>
                                <p>${noticia.conteudo}</p>
                                <div class="card-footer">
                                    <p>atualizado</p>
                                    <p>${noticia.data_criacao}</p>
                                </div>
                            </div>
                        </a>
                         `
        return article;
    }

    fetchNoticias("http://localhost:7000/");
    //fetchNoticias("http://192.168.1.4:7000/");
}

