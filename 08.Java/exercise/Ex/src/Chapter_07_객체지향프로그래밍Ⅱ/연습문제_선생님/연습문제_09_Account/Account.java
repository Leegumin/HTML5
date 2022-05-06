package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_09_Account;

public class Account {
	// 멤버변수 : 이름, 잔액, 패스워드
	String name;
	int balance;
	int password;

	// 생성자 : 매개변수 3개짜리
	public Account() {
	}

	public Account(String name, int balance, int password) {
		this.name = name;
		this.balance = balance;
		this.password = password;
	}

	// 메소드 : deposit(입금액, 패스워드)
	// 매개변수 패스워드와 멤버변수 패스워드가 일치할 때만
	// 입금액을 증가시켜주시면 됩니다.
	// 출력 1: 이름 + "고객님" + 입금액 + "원이 입금되었습니다."
	// 출력 2: "현재 잔잭은: " + 잔액 + "원입니다."
	// 출력 3: "비밀번호가 일치하지 않습니다."
	// 출력 4: "다시 입력해주시기 바랍니다"

	public void deposit(int money, int password) {
		if (this.password == password) {
			
			this.balance += money;
			System.out.println(name + "고객님 " + money + "원이 입금되었습니다.");
			System.out.println("현재 잔액은 : " + balance + "원 입니다.");
		} else {
			System.out.println("비밀번호가 일치하지 않습니다.");
			System.out.println("다시 입력해주시기 바랍니다.");
		}
	}

}
