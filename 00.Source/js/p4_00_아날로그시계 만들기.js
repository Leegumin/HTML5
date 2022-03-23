setInterval(() => {
    //현재시간 가져오기
    const now = new Date();

    //시간을 단위로 추출
    const h = now.getHours();
    const m = now.getMinutes();
    const s = now.getSeconds();

    //시점 (시침과 함께 분침의 각도도 고려해야함)
    const degH = h * (360 / 12) + m * (360 / 12 / 60);

    const degM = m * (360 / 60);

    const degS = s * (360 / 60);

    const elementH = document.querySelector('.lineHour');
    const elementM = document.querySelector('.lineMin');
    const elementS = document.querySelector('.lineSec');

    elementH.style.transform = `rotate(${degH}deg)`;
    elementM.style.transform = `rotate(${degM}deg)`;
    elementS.style.transform = `rotate(${degS}deg)`;

}, 50);
