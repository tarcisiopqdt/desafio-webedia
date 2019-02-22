import initLikeManager from './like-manager.js';

export default function initApiRequest(limit,offset) {
    limit || 8;
    //Realiza a requisição para a API
    async function fetchNoticias(url) {
        const noticiasResponse = await fetch(url);
        const noticiasJSON = await noticiasResponse.json();
        const divMain = document.querySelector(".main_noticias")

        noticiasJSON.forEach(noticia => {
            offset++;
            const articleNoticia = createItemCard(noticia);
            divMain.appendChild(articleNoticia);
            
        });
        initLikeManager();
    }

    //Cria artigos dinamicamente
    function createItemCard(noticia) {
        const dataFormatada = formataData(noticia.data_criacao);
        const article = document.createElement('article');
        article.classList.add('item-card');
        article.classList.add('grid-6');
        article.innerHTML = `
                        <a href="${noticia.url_noticia}" target="blank">
                            <div class="img-container">
                                <img src="${noticia.url_img}" alt="">
                            </div>
                        </a>        
                            <div class="like-content">
                                <span class="btn-like" id="id-post-${noticia.id_noticia}">♥ Gostei</span>
                                <span class="qtd-like">${noticia.qtd_likes}</span>
                            </div>     
                        <a href="${noticia.url_noticia}" target="blank">    
                            <div class="description">
                                <h2>${noticia.titulo}</h2>
                                <p>${noticia.conteudo}</p>
                                <div class="card-footer">
                                    <p>Atualizado</p>
                                    <p>${dataFormatada}</p>
                                </div>
                            </div>
                        </a>
                         `
        return article;
    }

    function formataData(noticia_datacriacao){
        const data = new Date(noticia_datacriacao),
            dia  = data.getDate().toString(),
            diaF = (dia.length == 1) ? '0'+dia : dia,
            mes  = (data.getMonth()+1).toString(), 
            mesF = (mes.length == 1) ? '0'+mes : mes,
            hora = data.getHours().toString(),
            horaF = (hora.length == 1) ? '0'+hora : hora,
            min = data.getMinutes(). toString(),
            minF = (min.length == 1) ? '0'+min : min;

    return diaF+"/"+mesF+" - "+hora+":"+minF;
    }

    fetchNoticias(`http://localhost:7000?offset=${offset}&limit=${limit}`);
    //fetchNoticias("http://192.168.1.4:7000/");
}

