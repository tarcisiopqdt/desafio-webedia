export default function initNightMode(){
    const nightModeStorage = localStorage.getItem('gmtNightMode');
    const checkbox = document.querySelector("#checkbox-night-mode");
    const class_night_mode = document.querySelectorAll(".js-night-mode");

    if (nightModeStorage) {
        class_night_mode.forEach(item=>{
            item.classList.add("night-mode");
            checkbox.checked = true;
        })
    }

    checkbox.addEventListener('click', function() {

        class_night_mode.forEach(item=>{
            item.classList.toggle("night-mode");

            if ( item.classList.contains('night-mode') ) {
                localStorage.setItem('gmtNightMode', true);
                return;
            }

            localStorage.removeItem('gmtNightMode');
    




        })

        
    });
}
