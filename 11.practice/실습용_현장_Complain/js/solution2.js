window.onload = function(){
    //큰 사진 이미지
    let cup = document.querySelector('#cup')
    //작은 사진 이미지
    let smallPick = document.querySelectorAll('.small')
    
    for(let i=0; i<smallPick.length;i++){
        smallPick[i].onclick = changePic;
    }
}

function changePic() {
    //작은 사진 이미지 위치
    let newPic = this.src;
    //큰 이미지 위치 = 작은 이미지 위치
    cup.src = newPic
}

// var bigImg = document.querySelector('#big'); //큰 이미지 가져오기
// var sImg = document.querySelectorAll('.simg'); //작은 이미지들 노드 리스트로 가져옴

// for(var i = 0; i < sImg.length; i++) {
//     sImg[i].onclick = showImg;  //노드를 클릭하면 showImg 함수 실행
// }

// function showImg() {
//     var newImg = this.src; //클릭 이벤트가 발생한 대상의 src 속성 값을 가져옴
//     bigImg.setAttribute('src', newImg);  //newImg 값을 큰 이미지의 src 속성 값에 할당
//     //또는 big.src = newImg; 도 가능
// }


// //또는 함수 실행하지 않고 하는 방법
// for(var i = 0; i < sImg.length; i++) {
//     sImg[i].onclick = function(e) {
//     	bigImg.src = this.src;
//     };
// };