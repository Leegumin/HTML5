const hourElement = document.querySelector('.hour');
const minuteElement = document.querySelector('.minute');
const secondElement = document.querySelector('.second');

update();

//현재시간을 표시하는 함수
function update(){
const currentTime = new Date();

 //현재시간 가져오기
 const hour = currentTime.getHours();
 hourElement.innerHTML = addZeroPadding(hour);

//현재 분 가져오기
 const minute = currentTime.getMinutes();
 minuteElement.innerHTML = addZeroPadding(minute);

 //현재 초 가져오기
 const second = currentTime.getSeconds();
 secondElement.innerHTML = addZeroPadding(second);

 //함수 update를 계속 재실행
 requestAnimationFrame(update);
}

//2자리 형식으로 숫자를 보여주는 함수 : 2 -> 02, 12 -> 12
function addZeroPadding(num) {
    return String(num).padStart(2, '0');
}