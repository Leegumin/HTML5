//id와 name을 가지는 유저 배열
    const userDataList = [
        { id: 2, name: '곰'},
        { id: 10, name: '여우'},
        { id: 4, name: '사자'},
        { id: 29, name: '기린'},
        { id: 101, name: '호랑이'}
    ];

    //데이터 화면출력하긩
    function updateList(){
        let listHtml ='';

        for(const data of userDataList) {//해당 선언문의 데이터를 싹 뽑아냄
            listHtml += `<li>${data.id} : ${data.name}</li>`;
        } 
        document.querySelector('.user_list').innerHTML = listHtml;
    }

    //오름차순 정렬 함수
    function sortByAscending(){
        userDataList.sort(function(a,b) {
            return a.id - b.id; //a-b가 음수이면 a를 앞으로, 양수이면 b가 앞으로, return으로 인해 sort로 알아서 반환되면 자동으로 계산함
        })
        //오름차순 후 화면에 출력
    }

    //내림차순 정렬 함수
    function sortByDescending(){
        userDataList.sort(function(a,b) {
            return b.id - a.id; //내림차순은 위의 반대로 조건 맥이면 됨
        });
        //내림차순 후 화면에 출력
    }

    //오름차순 버튼
    let ascending = document.querySelector('.ascending');

    //내림차순 버튼
    let Descending = document.querySelector('.descending');
    
    ascending.addEventListener('click', () => {
        sortByAscending();
        updateList();
    });
    Descending.addEventListener('click', () => {
        sortByDescending();
        updateList();
    });