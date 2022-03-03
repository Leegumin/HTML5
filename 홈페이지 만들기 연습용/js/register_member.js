function checkPassword() {
	let id = document.getElementById('id').value;
	let password1 = document.getElementById('password1').value;
	let password2 = document.getElementById('password2').value;

	//비밀번호와 비밀번호 확인이 맞지 않다면..
	if (password1 != password2) {
		alert("두 비밀번호가 맞지 않습니다.");
		return false;
	}

	//아이디와 비밀번호가 같을 때..
	if (id == password1) {
		alert("아이디와 비밀번호는 같을 수 없습니다!");
		return false;
	}
	alert('가입을 환영합니다!')
	return true; //확인이 완료되었을 때

}

