import initLike from './like-manager.js';

export default function initApiRequest() {

    //Realiza a requisição para a API
    async function fetchNoticias(url) {
        const noticiasResponse = await fetch(url);
        const noticiasJSON = await noticiasResponse.json();
        const divMain = document.querySelector(".main-container")

        noticiasJSON.forEach(noticia => {
            const articleNoticia = createItemCard(noticia);
            divMain.appendChild(articleNoticia);
        });

        initLike();
    }

    //Cria artigos dinamicamente
    function createItemCard(noticia) {
        const article = document.createElement('article');
        article.classList.add('item-card');
        article.classList.add('grid-6');
        article.innerHTML = `
                        <a href="#">
                        <div class="img-container">
                            <img src="img/17.jpg"
                                alt="">
                            <div class="btn-like-content" id="id-${noticia.id_noticia}">
                            </div>
                        </div>
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
}

