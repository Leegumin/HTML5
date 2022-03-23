//id와 name을 가지는 유저 배열
    const userDataList = [
        { id: 123, name: '곰'},
        { id: 1021, name: '사자'},
        { id: 6021, name: '여우'}
    ];

    //검색id 입력창
    const searchIdInput = document.querySelector('#search-id-input');

    //검색 결과 출력 위치
    const searchResult = document.querySelector('#search-result');

    //문자가 입력될 때 마다 내용을 체크
    searchIdInput.addEventListener('keyup', () => { //keyup, keydown 두개가 있음
        //검색 id와 비교해서 가져오기
        const searchId = Number(searchIdInput.value); //id값이 숫자이기 때문에 텍스트에서 숫자(Number)로 변경해줘야함

        //입력된 id를 함수의 매게변수로 집어넣음
        findUser(searchId);
    });

    //유저 검색하는 함수
    function findUser(searchId) {
        //해당하는 데이터를 가져오긔
        const targetData = userDataList.find(function(data) {
            return data.id === searchId;
        });

        //해당 유저가 없으면 없다고 화면에 출력
        if(targetData === undefined){
            searchResult.textContent = '유저 검색 결과 없음';
            return; //함수에서 그냥 탈출함 => return 아래는 실행 안한다는 소리 break는 바로 위쪽을 멈추는거
        }

        //해당 유저가 있으면 화면에 그 유저의 이름을 출력
        searchResult.innerHTML = targetData.name;
    }