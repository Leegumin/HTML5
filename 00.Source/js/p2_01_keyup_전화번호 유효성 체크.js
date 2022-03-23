//전화번호 입력란
const phoneNumberText = document.querySelector('#phoneNumberText');

//경오메시지 출력란
const warningMessage = document.querySelector('#warning-message')

//문자가 입력될 때마다 내용을 체크
phoneNumberText.addEventListener('keyup', () => {
    //입력된 전화번호
    const phoneNumber = phoneNumberText.value;
    console.log(phoneNumber)
    //전화번호에 하이픈(-)이 포함되면 공백("")으로 변환시킴
    const trimmedPhoneNumber = phoneNumber.replace(/-/g, ""); // '//'사이에 있는 값이 바꿀 대상, g는 반복, ','뒤쪽은 변환되는 값
    console.log(trimmedPhoneNumber)
    //0으로 시작하는 10자리 혹은 11자리의 번호, 형식 체크
    if(/^[0][0-9]{9,10}$/.test(trimmedPhoneNumber) == false){
        warningMessage.innerHTML = "전화번호의 형식에 맞춰서 입력해 주세요";
    } else {
        warningMessage.innerHTML = "";
    }
})
