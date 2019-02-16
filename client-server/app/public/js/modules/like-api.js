export default function initLikeRequest(){

}

async function fetchLikes(url){
    const likesResponse = await fetch(url);
    const likesJSON = await likesResponse.json();
   

    likesJSON.forEach(post => {
        const btnlike = createLikeButton(post);
        addOnDocument(btnlike);
        
    });
}

function createLikeButton(post){
    const btnLike = document.createElement('a');
    btnLike.classList.add('like-content');
    btnLike.innerHTML = `
                <span class="btn-like">♥</span>
                <span class="qtd-like">${post.qtd_likes}</span>
                     `
    return btnLike;
}

function addOnDocument(btnlike){

    window.onload = function(){
        const divContent = document.querySelector('.btn-like-content');
       divContent.appendChild(btnlike);
    }
} 
fetchLikes("http://localhost:7000/user/1")

