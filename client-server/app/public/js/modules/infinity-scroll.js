import initApiRequest from "./noticias-api.js";
export default function() {
  window.addEventListener("scroll", function() {
    const viewport = document.documentElement.clientHeight;
    const container = document.body.offsetHeight;
    let scrollHeight = container - viewport;
    let scroll = this.scrollY;

    if (
      scrollHeight == Math.ceil(scroll) ||
      scrollHeight == Math.floor(scroll)
    ) {
      initApiRequest(8);
    }
  });
}

   


