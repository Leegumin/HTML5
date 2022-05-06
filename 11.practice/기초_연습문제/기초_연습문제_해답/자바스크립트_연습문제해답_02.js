// 연습문제 11번
// 연도, 월, 일이 닷(.)으로 구분되어 입력된다.
// 대시(마이너스 기호)를 구분기호로 사용해서 일-월-연도로 바꿔 출력한다.
// hint : split('.') 사용
// 입력 : 2020.3.4
// 출력 : 4-3-2020
// let year = prompt("연도.월.일 을 입력해 주세요").split(".");

// console.log(`${year[2]}-${year[1]}-${year[0]}`);




// 연습문제 12번
// 시간을 입력받아 분만 출력하기
// 입력 : 17:23:57
// 출력 : 23
// let time = prompt("시간을 입력해 주세요").split(":");

// console.log(`${time[1]}`);






// 연습문제 13번
// 입력 : hello world
// 출력 : helloworld
// let str = prompt("문자를 입력해 주세요").split(" ");

// console.log(`${str[0]}${str[1]}`);





// 연습문제 14번
// 정수 1개가 입력된다
// 부호를 바꿔 출력한다.
// 입력 : -1
// 출력 : 1
// let num = Number(prompt("문자를 입력해 주세요"));

// console.log(Math.abs(num));





// 연습문제 15번
// 입력 : 정수 2개를 입력받는다.
// 출력 : 첫번째 줄에 합
//          두번째 줄에 차
//          세번째 줄에 곱
//          네번째 줄에 몫
//          다섯번째 줄에 나머지
// let num = prompt("문자를 입력해 주세요").split(" ").map(Number);

// console.log(num[0]+num[1]);
// console.log(num[0]-num[1]);
// console.log(num[0]*num[1]);
// console.log(parseInt(num[0]/num[1])); // 정수함수(parseInt)로 싸면 소수는 잘림
// console.log(num[0]%num[1]);







// 연습문제 16번
// 두정수를 입력받는다.
// a가 b보다 작은 경우 True, 그렇지 않은 경우 False 출력
// 입력 1 : 1
// 입력 2 : 9
// 출력 : True
// let num1 = prompt("정수를 입력해 주세요");
// let num2 = prompt("정수를 입력해 주세요");

// if(num1 < num2) {
//     console.log("True");
// }
// else {
//     console.log("False");
// }







// 연습문제 17번
// 두정수를 입력받는다.
// 둘 다 1일 경우 True 아닐 경우 False
// let num = prompt("정수 2개를 입력해 주세요").split(" ").map(Number);

// if(num[0] == 1 && num[1] == 1) {
//     console.log("True");
// }
// else {
//     console.log("False");
// }





// 연습문제 18번
// 정수 3개를 입력받아 가장 작은수 출력하기
// 입력 1 : 3
// 입력 2 : -1
// 입력 3 : 5
// 출력 : -1
// let num = prompt("정수를 입력해 주세요");
// let num2 = prompt("정수를 입력해 주세요");
// let num3 = prompt("정수를 입력해 주세요");

// console.log(Math.min(num, num2, num3));




// 연습문제 19번
// 정수 1개가 입력된다. (0 ~ 100)
// 출력 : 0부터 그 수까지 줄을 바꿔 한개씩 출력한다.
// 입력 예시 : 4
// 출력 예시 : 0
//                1
//                2
//                3
//                4 
// let num = prompt("정수를 입력해 주세요");

// for(let i=0; i<=num; i++) {
//     console.log(i);
// }






// 연습문제 20번
// 문자들이 1개씩 계속해서 입력된다.
// 출력 : q가 입력될 때까지 입력한 문자를 계속 출력한다.
// 입력 예시 : x
//                b
//                k
//                q
while(true) {
    let char = prompt("문자를 입력해 주세요");

    document.write(char + "<br>");

    if(char == 'q') {
        break;
    }
}

