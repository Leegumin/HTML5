package Chapter_13_쓰레드.예제.예제_13_synchronized_동기화_소스개선본;

public class synchronized_동기화 {
	public static void main(String args[]) {
		Runnable r = new RunnableEx12();
		new Thread(r).start();
		new Thread(r).start();
	}
}

class Account {
	private int balance = 1000;

	public int getBalance() {
		return balance;
	}

	public synchronized void widthdraw(int money) {
		if (balance >= money) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO: handle exception
			}
			balance -= money;
		}
	}
}

class RunnableEx12 implements Runnable {
	Account acc = new Account();

	public void run() {
		while (acc.getBalance() > 0) {
			int money = (int) (Math.random() * 3 + 1) * 100;
			acc.widthdraw(money);
			System.out.println("balance: " + acc.getBalance());
		}
	}
}
