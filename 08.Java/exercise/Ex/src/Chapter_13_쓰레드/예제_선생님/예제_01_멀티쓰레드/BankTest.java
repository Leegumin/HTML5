package Chapter_13_쓰레드.예제_선생님.예제_01_멀티쓰레드;

public class BankTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		WorldBank r = new WorldBank(); // r 은행 생성
		
		Thread t1 = new Thread(r); // 1st 쓰레드
		Thread t2 = new Thread(r); // 2nd 쓰레드
		
		// 쓰레드 실행
		t1.start();
		t2.start();
	}

}
