const userList = [ //값이 변하지 않는건 const로 정의하면됨
    {id:1, name: '곰', address: '서울'},
    {id:2, name: '여우', address: '대전'},
    {id:3, name: '사자', address: '부산'},
];

// 컨테이너
const container = document.querySelector('.container');

userList.forEach((userData) => {
    //각 요소 데이터를 화면에 출력
    container.innerHTML += ` 
    <div class = "card">
        <h2>${userData.name}</h2>
        <p>지역:${userData.address}</p>
    </div>
    `; //`` => 백티그, 안에 들어 있는거 다 출력 가능 변수는 ${}으로 표기 
}); //forEach(객체, 배열, 함수) == for랑 똑같음. 반복문임. 객체나 배열을 넣으면 전부 출력해줌


// function aa() {
//     return result
// }
//화살표 함수로 변경하면
// const aa = () => result
