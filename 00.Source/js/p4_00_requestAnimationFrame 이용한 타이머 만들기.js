const second = 10;
const secondElement = document.querySelector('.second')

const goalTime = new Date().getTime() + second * 1000; //밀리세컨드 단위라 second에 1천을 곱해줘야 초가 나옴

update();

//setInveral 처럼 계속 실행되는 함수
function update() {
    //현재시각
    const currentTime = new Date().getTime();

    const leftTime = goalTime - currentTime

    //함수 탈출 조건
    if(leftTime <= 0) {
        secondElement.innerHTML = `${second}초가 지났습니다.`
        return; //break는 반복문에서 빠져나오는거, return은 함수에서 빠져나오는거
    }

    //초 단위 표시. 밀리초는 소수점 2자리까지 표시
    secondElement.innerHTML = (leftTime / 1000).toFixed(2);

    //setInterval 함수와 비슷하게 계속 호출
    //상기 함수보다 성능이 더 좋음
    requestAnimationFrame(update);
}