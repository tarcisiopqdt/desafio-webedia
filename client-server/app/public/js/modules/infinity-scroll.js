import initApiRequest from "./noticias-api.js";
export default function() {
  const limit = 8
  let offset = 0;
  initApiRequest(limit,offset)
  window.addEventListener("scroll", function() {
    const viewport = document.documentElement.clientHeight;
    const container = document.body.offsetHeight;
    let scrollHeight = container - viewport;
    let scroll = this.scrollY;

    if (
      scrollHeight == Math.ceil(scroll) ||
      scrollHeight == Math.floor(scroll)
    ) {
        offset++;
        offset += 8;
      console.log(offset)
      initApiRequest(limit, offset);
    }
  });
}

   


