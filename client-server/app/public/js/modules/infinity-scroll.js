import initApiRequest from './noticias-api.js';
export default function(){
    
    window.addEventListener("scroll", function(){
        const viewport = document.documentElement.clientHeight;
        const container = document.body.offsetHeight ;
        let scrollHeight = container - viewport;
        
        if(scrollHeight == this.scrollY){
               console.log("agora!!!!")
            
               setTimeout(function(){ initApiRequest(8); }, 500);
            
         }
    })

 
}

   


