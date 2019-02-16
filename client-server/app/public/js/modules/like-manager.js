export default function initLikeManager(){

}


window.onload = function(){
    const btnLike = document.querySelectorAll(".like-content");
    btnLike.forEach(btn =>{
        btn.addEventListener("click", managerLike)
    })
}

function managerLike(e){
    const idBtn = e.target.getAttribute('id')
    const qdtLikes = document.querySelector("")
    console.log(idBtn);
    console.log(qdtLikes);
}

//verificar se o usario ja deu o like
// SELECT * FROM LIKES WHERE userid=1 and postid = id_post 
//caso existe mais de uma linha de retorna  o user ja deu like