// 연습문제 1번
// 2개의 문자가 입력된다.
// 순서를 바꾸어서 출력하세요
// 입력 1 : a
// 입력 2 : b
// 출력 : b a
// let char1 = prompt("1개의 문자가 입력된다");
// let char2 = prompt("1개의 문자가 입력된다");

// console.log(char1 + " " + char2);








// 연습문제 2번
// 입력받은 정수를 줄을 바꿔 3번 출력한다.
// 입력 : 3
// 출력 : 3
//        3
//        3
// let num = Number(prompt("정수를 입력해 주세요"));

// for(let i=0; i<3; i++) {
//     document.write(num + "<br>");
// }







// 연습문제 3번
// 단어 2개가 입력된다.
// 2개를 거꾸러 붙여서 출력하세요
// 입력1 : hello
// 입력2 : world
// 출력 : worldhello
// let char1 = prompt("1개의 문자가 입력된다");
// let char2 = prompt("1개의 문자가 입력된다");

// console.log(char2 + " " + char1);







// 연습문제 4번
// 입력된 단어를 입력된 횟수만큼 반복해 출력하세요
// 입력1 : love
// 입력2 : 3
// 출력 : loveloevlove
// let char = prompt("1개의 문자가 입력된다");

// for(let i=0;i<3;i++) {
//     document.write(char);
// }










// 연습문제 5번
// 정수 2개가 입력된다. a를 b번 거듭제곱한 값을 출력한다.
// 입력 1 : 2
// 입력 2 : 10
// 출력 : 1024
// let num1 = Number(prompt("정수 1개가 입력된다"));
// let num2 = Number(prompt("정수 1개가 입력된다"));

// alert(num1**num2);









// 연습문제 6번
// 정수 3개가 각각 입력된다.
// 합과 평균을 공백을 두고 출력한다.
// 평균은 소숫점 이하 둘째 자리까지 출력한다.
// 입력 1 : 1
// 입력 2 : 2
// 입력 3 : 3
// 출력 : 6 2.00
// let num1 = Number(prompt("정수 1개가 입력된다"));
// let num2 = Number(prompt("정수 1개가 입력된다"));
// let num3 = Number(prompt("정수 1개가 입력된다"));

// let sum = num1 + num2 + num3;
// let avg = sum / 3;
// alert(sum + " " +avg);






// 연습문제 7번
// 정수 2개가 입력된다.
// 가장 큰값을 출력하세요

// 연습문제 8번
// 정수 1개가 입력된다.
// 1부터 그 수까지 짝수만 합해 출력한다.
// 입력 : 5
// 출력 : 6
// let num = Number(prompt("정수 1개가 입력된다"));
// let sum = 0;

// for(let i=1;i<=num;i++) {
//     if(i % 2 == 0) {
//         sum += i;
//     }
// }

// alert(sum);








// 연습문제 9번 
// 정수 1개를 입력받는다
// 1부터 입력한 정수보다 작거나 같을 때까지 1씩 증가시켜 출력하되
// 3의 배수는 출력하지 않는다.
// 입력 : 10
// 출력 : 1 2 4 5 7 8 10
// let num = Number(prompt("정수 1개가 입력된다"));

// for(let i=1;i<=num;i++) {
//     if(i % 3 == 0) {
//         continue;
//     }
//     document.write(i + " ");
// }









// 연습문제 10번
// 정수 1개가 입력된다.
// 1만큼씩 줄이면서 한 줄에 1개씩 카운트다운 수를 출력한다.
// 입력 : 5
// 출력 : 5
        //   4
        //   3
        //   2
        //   1
// let num = Number(prompt("정수 1개가 입력된다"));

// for(let i = num ; i > 0 ; i--) {
//     console.log(i);
// }
