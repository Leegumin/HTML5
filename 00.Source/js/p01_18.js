//10보다 작으면 small 크면 big
// let name = prompt('숫자를 입력하쎄용');

//     if (name < 10) {
//         document.write('small');
//     }
//     else { 
//         if (name == 10) {
//         document.write('same');
//         }
//         else {
//             document.write('big');
//         }
//     }
// //숫자 2개 입력 후 앞에 숫자가 크면 small 뒤에 숫자가 크면 big-------------------------------------------------------
// let name = prompt('숫자를 입력하쎄용');
// let name1 = prompt('숫자를 입력하쎄용');

//     if (name > name1) {
//         document.write('small');
//     }
//     if (name < name1) {
//         document.write('big');
//     }
// //7의 배수일 시 multiple 아닐 시 not multiple-------------------------------------------------
// let name = prompt('숫자를 입력하쎄용');

//     if (name % 7 == 0) {
//         document.write('multiple');
//     }
//     else {
//         document.write('not multiple');
//     }
//짝수가 아닐 시 odd 짝수일 시 even------------------------------------------------------
// let name = prompt('숫자를 입력하쎄용');

//     if (name % 2 == 1) {
//         document.write('odd');
//     }
//     else {
//         document.write('even');
//     }
//170보다 클 경우 충돌, 같을 경우 정상통과, 낮을 경우 무난히통과--------------------------------------------------------------
// let name = prompt('숫자를 입력하쎄용');

// if (name > 170) {
//     document.write('충돌');
// }
// else {
//     if (name == 170) {
//     document.write('정상통과');
//     }
//     else {
//     document.write('무난히통과');
//     }
// }
//윤년1--------------------------------------------------------
// let name = prompt('숫자를 입력하쎄용');

// if (name % 400 == 0) {
//     document.write('Yes');
// } 
// or // 이게 왜 되는지 모르겠음 -> 크롬 콘솔에서는 오류남
// if ((name % 4 == 0) && (name % 100 !=0)) {
//     document.write('Yes');
// }
// else {
//     document.write('No')
// }  
//윤년2-----------------------------------
let name = prompt('숫자를 입력하쎄용');

if ((name % 400 == 0) || (name % 4 == 0) && (name % 100 !=0)) {
    document.write('Yes');
}
else {
    document.write('No')
}