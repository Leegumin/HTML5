//현재 시각에 시간이 1초마다 나오지 않아요
window.onload = function(){
            
    let clock = document.getElementById('time');

    setInterval(function() {
        let now = new Date();
        time.innerHTML = now.toLocaleTimeString();
    }, 1000);
};