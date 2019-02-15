function apiRequest() {
  const request = fetch("http://localhost:7000");
  const div_main_noticias = document.querySelector(".main-container");

  request
    .then(response => response.json())
    .then(dados => {
      dados.forEach(noticia => {
        const item_noticia = `
            <section class="item-card grid-6" id="noticia-id-${
              noticia.id_noticias
            }">
                <a href="#">
                    <div class="img-container">
                        <img src="img/17.jpg"
                            alt="">
                        <div class="like-content">
                          <span class="btn-like">♥</span>
                          <span class="qtd-like">${noticia.id_noticias}</span>
                        </div>
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
    });
}
apiRequest();

function nightMode(){

    const checkbox = document.querySelector("#checkbox-night-mode");

    checkbox.addEventListener('click', function() {
        console.log("entrou no funcao do evento")

        if(this.checked) {
            console.log('checado')
        } else {
            console.log("nao checado")
        }

    });
}

nightMode();
