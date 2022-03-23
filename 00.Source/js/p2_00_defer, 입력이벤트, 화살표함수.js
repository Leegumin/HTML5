    const nameInput = document.querySelector('.name-input');
    const warningMessage = document.querySelector('.warning-message');

    //.name-input에 입력 할 때 마다 아래 이벤트가 실행됨
    nameInput.addEventListener('input', () => {//화살표 펑션
        //입력된 문자 가져오기
        const inputStr = nameInput.value;
        //입력된 문자를 소문자로 변환
        const normalStr = inputStr.toLowerCase();
        // 입력된 문자가 test인지 아닌지 확인해보기
        if(normalStr.includes('test') == true){
            warningMessage.innerHTML = 'test 문자가 입력이 되었습니다.'
        } 
        else{
            warningMessage.innerHTML = 'Nope'
        }
    })