package Chapter_13_쓰레드.예제_선생님.예제_01_멀티쓰레드;

public class WorldBank implements Runnable {
	Account acc = new Account(); // 통장

	@Override
	public void run() {
		// TODO Auto-generated method stub

		// 잔액이 0보다 클 동안 계속 반복
		while (acc.balance > 0) {
			int money = 100; // 출금할 금액 100원
			acc.withDraw(money); // 출금 메소드 호출
			
			// 현재 잔액 출력
			System.out.println("잔액(" + Thread.currentThread().getName() + "): " + acc.balance);
		}
	}

}
