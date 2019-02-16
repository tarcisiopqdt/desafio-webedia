
function apiRequest() {
  const request = fetch("http://localhost:7000");
  const div_main_noticias = document.querySelector(".main-container");
  request
    .then(response => response.json())
    .then(dados => {
      dados.forEach(noticia => {

        const date = new Date(noticia.data_criacao);
        const dataformatada =  date.getDate() + "/" + (date.getMonth()+1)  +" "+ date.getHours() + "h" + date.getMinutes();
 
        const item_noticia = `
            <article class="item-card grid-6">
                <a href="#">
                    <div class="img-container">
                        <img src="img/17.jpg"
                            alt="">
                        <div class="like-content">
                          <span class="btn-like">♥</span>
                          <span class="qtd-like">${noticia.qtd_likes}</span>
                        </div>
                    </div>
                    <div class="description">
                        <h2>${noticia.titulo}</h2>
                        <p>${noticia.conteudo}</p>
                        <div class="card-footer">
                            <p>atualizado</p>
                            <p>${dataformatada}</p>
                        </div>
                    </div>
                </a>
            </article>`;
        div_main_noticias.innerHTML += item_noticia;
      });
    });
}
apiRequest();

function nightMode(){
    const checkbox = document.querySelector("#checkbox-night-mode");
    const class_night_mode = document.querySelectorAll(".js-night-mode");

    checkbox.addEventListener('click', function() {

        if(this.checked) {
            class_night_mode.forEach(item=>{
                item.classList.add("night-mode");
            })
        } else {
            class_night_mode.forEach(item=>{
                item.classList.remove("night-mode");
            })
        }

    });
}

nightMode();
