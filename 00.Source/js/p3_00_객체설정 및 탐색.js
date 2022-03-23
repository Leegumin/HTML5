function searchUser(targetId) {
    const userList = [
        { id: 1, name: '사자'},
        { id: 2, name: '곰'},
        { id: 3, name: '여우'}
    ];

    //해당유저가 있는지 검색
    const targetUser = userList.find(function(user){
        return user.id === targetId;
    });

    // targetId 매게변수 값이 없는 경우 null로 처리
    if(targetUser === undefined) {
        return null;
    }

    return targetUser.name;
}
//화면출력
document.querySelector('#output').innerHTML = searchUser(3);
document.querySelector('#output02').innerHTML = searchUser(4)