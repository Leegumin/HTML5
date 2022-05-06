package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_09_Account;

public class AccountTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account 계좌 = new Account("홍길동", 1000000000, 1234);
		
		System.out.println("----비밀번호가 일치할 때----");
		계좌.deposit(300000000, 1234);
		System.out.println("----비밀번호가 일치하지 않을 때----");		
		계좌.deposit(300000000, 1232);
	}

}
