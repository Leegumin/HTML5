let textArea = document.querySelector('.textarea');

// 입력중인 문자 수
let stringNum = document.querySelector('.string_num');

// 텍스트를 입력할 때마다 KeyUp이벤트를 실행함
textArea.addEventListener('keyup', onKeyUp);

function onKeyUp(){
    const inputText = textArea.value
    stringNum.innerHTML = inputText.length;
}