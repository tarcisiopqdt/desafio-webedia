import initLikeRequest from './like-api.js';

export default function initLikeManager(){
    window.onload = function(){

        const btnLike = document.querySelectorAll(".btn-like");

        btnLike.forEach(btn =>{
            btn.addEventListener("click", managerLike)
        })
    }
    
    function managerLike(e){
        const idBtn = document.querySelector(`#${e.target.id}`)
        const labelLikes = idBtn.nextElementSibling;
        let qdtLikes = +labelLikes.textContent

        if(idBtn.textContent == "♥ Gostei"){
            idBtn.innerHTML = "Não Gostei"
            labelLikes.innerHTML = ++qdtLikes;
        }else{
            idBtn.innerHTML = "♥ Gostei";
            labelLikes.innerHTML = --qdtLikes;
        }

        qdtLikes = +labelLikes.innerHTML;
        const id = +idBtn.id.replace("id-post-", "");
        initLikeRequest(id, qdtLikes);
    }
}
