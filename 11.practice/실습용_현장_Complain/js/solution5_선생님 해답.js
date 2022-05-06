function checkAll() {
    let chkAll = document.querySelector('#chkAll');
    let tableComplain = document.querySelector('#tableComplain');

    if(chkAll.checked == true) {
        for(let i = 1; tableComplain.rows.length; i++){ //0은 헤더 인덱스기 때문에 제외하기 위해서 1부터 시작
            tableComplain.rows[i].cells[5].innerHTML = '완료'
        }
    } else {
        for(let i = 1; tableComplain.rows.length; i++){ //0은 헤더 인덱스기 때문에 제외하기 위해서 1부터 시작
            tableComplain.rows[i].cells[5].innerHTML = '미완료'
        }
    }
}
