    function ok(){
        let result = '';
        if(event.target.checked) {
            result = '완료'
        } else {
            result = '미완료';
        }
        document.getElementById('a1').innerHTML = result;
        document.getElementById('a2').innerHTML = result;
        document.getElementById('a3').innerHTML = result;
        document.getElementById('a4').innerHTML = result;
        document.getElementById('a5').innerHTML = result;
        document.getElementById('a6').innerHTML = result;
        document.getElementById('a7').innerHTML = result;
        document.getElementById('a8').innerHTML = result;
        // document.getElementsByClassName('b1')[i].innerHTML = result; //Id를 제외한 나머지 값은 전부 배열로 들어옴 -> 배열로 접근해야함
        // document.querySelectorAll('.b1')[0].innerHTML = result;
    }
