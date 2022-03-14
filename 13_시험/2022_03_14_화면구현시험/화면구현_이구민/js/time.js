//현재 시각에 시간이 1초마다 나오지 않아요
$(function(){
    let clock = document.getElementById('current');

    setInterval(function() {
        let now = new Date();
        clock.innerHTML = now.toLocaleTimeString();
    }, 1000);
});