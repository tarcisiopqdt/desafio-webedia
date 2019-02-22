export default  function(){
  const pages = document.querySelectorAll(".pages");
  pages[0].classList.add("current-page");

  pages.forEach(page => {
    page.addEventListener("click", function(){

      pages.forEach(page=>{
        page.classList.remove("current-page");
      })
     
      page.classList.add("current-page")
    })
  })
}