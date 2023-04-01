function Delay(ms){return new Promise((res=>{setTimeout(res,ms)}))}

$(() => {
    let id = 0
    window.addEventListener('message', async (event) => {
        let data = event.data
        console.log(data.action)
        if(data.action == 'showNotification') {
            let _id = id;
            id++;
            $(".notifications").append(`
                <div class="notify" id="n_${_id}">
                    <div class="icon">
                        <i class="${data.icon}"></i>
                    </div>
                    <div class="divisory"></div>
                    <div class="text">
                        <div class="title">${data.title}</div>
                        <div class="message">${data.message}</div>
                    </div>
                    <div class="loading-bar">
                        <div class="cover"></div>
                    </div>
                </div>
            `)

            $(`#n_${_id} .icon i`).css("color", data.color)
            $(`#n_${_id} .divisory`).css("background-color", data.color)
            $(`#n_${_id} .text .title`).css("color", data.color)
            $(`#n_${_id} .loading-bar .cover`).css("background-color", data.color)
            
            if (data.enableSound) {
                let audio = new Audio(`./sound/${data.sound}.mp3`);
                audio.play();
            }
            
            $(`#n_${_id}`).animate({
                right: "0%"
            }, 350)
    
            await Delay(150);
    
            $(`#n_${_id} .loading-bar .cover`).animate({
                width: "100%"
            }, data.time * 1000)
    
            await Delay(data.time * 1000);
    
            $(`#n_${_id}`).animate({
                right: "-100%"
            }, 350)
    
            await Delay(350);
    
            $(`#n_${_id}`).remove();
        }
    })
})