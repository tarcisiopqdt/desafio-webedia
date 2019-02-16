export default function initNightMode(){
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
