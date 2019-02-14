const request = fetch("http://localhost:7000");
const div_main_noticias = document.querySelector('.main-container');

request.then(response => response.json())
    .then(dados => {
        dados.forEach(noticia => {
            const item_noticia = `
            <section class="item-card grid-6">
                <a href="#">
                    <div class="img-container">
                        <img src="https://assets.r7.com/assets/schumi_core/og-image/vertical/noticias-d568f5b8592fec9717600f5697494be3.png"
                            alt="">
                        <span>609</span>
                    </div>
                    <div class="description">
                        <h2>${noticia.titulo}</h2>
                        <p>${noticia.noticia}</p>
                        <div class="card-footer">
                            <p>Long Name Here</p>
                            <p>${noticia.data_criacao}</p>
                        </div>
                    </div>
                </a>
            </section>`;
            div_main_noticias.innerHTML += item_noticia;
        });
    })
