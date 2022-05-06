let num = 20

//첫번째 해답
function result_f_1 (){
    if((50 <= num)&&(num <= 70)){
        return "Win"
    }
    else if(num % 6 == 0){
        return "Win"
    }
    else {
        return "lose"
    }
}
let result1 = result_f_1()

//두번째 해답
let result2 = (50 <= num && num <= 70) || num%6 == 0 ? "win":"lose"

//세번째 해답
function result_f_3(){
    if ( num >= 50 && num <= 70 || num % 6 == 0 ) {
        return "win"
    } 
    else {
        return "lose"
    }
}
let result3 = result_f_3()

//첫번째 해답 출력
document.querySelector("#first").innerHTML = result1
//두번째 해답 출력
document.querySelector("#second").innerHTML = result2
//세번째 해답 출력
document.querySelector("#third").innerHTML = result3