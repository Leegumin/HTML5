package Chapter_13_쓰레드.예제.예제_03_싱글쓰레드와멀티쓰레드;

public class 멀티쓰레드 {

	static long startTime = 0;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 1st 쓰레드(ThreadEx3_1) 실행
		ThreadEx3_1 th1 = new ThreadEx3_1();
		th1.start();
		
		startTime = System.currentTimeMillis();
		
		// 2st 쓰레드(main) 실행
		for (int i = 0; i < 300; i++) {
			System.out.printf("%s", new String("-"));
		}	
			System.out.print("소요시간1:" + (System.currentTimeMillis()-멀티쓰레드.startTime));
	}
}

class ThreadEx3_1 extends Thread {
	
	@Override
	public void run() {
		for (int i = 0; i < 300; i++) {
			System.out.printf("%s", new String("|"));
		}
			System.out.print("소요시간2:" + (System.currentTimeMillis()-멀티쓰레드.startTime));
	}
}