package Chapter_13_쓰레드.예제_선생님.예제_01_멀티쓰레드;

public class Account {
	int balance = 1000;
	
	// 통장에서 돈 인출하기 메소드
	public void withDraw(int money) {
		if(balance >= money) {
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("에러가 발생했뜸");
		}
		balance -= money;
		}
	}
}
