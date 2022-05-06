package Chapter_13_쓰레드.예제.예제_01_쓰레드의구현과실행;

public class 쓰레드의구현과실행 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ThreadEx1_1 t1 = new ThreadEx1_1();

		Runnable r = new ThreadEx1_2();
		Thread t2 = new Thread(r); // 생성자 Thread(Runnable target)

		t1.start();
		t2.start();
	}
}

class ThreadEx1_1 extends Thread {
	public void run() {
		for (int i = 0; i < 5; i++) {
			// getName() -> Thread의 이름을 가져옴. 부모는 무조건 0
			System.out.println(getName()); // 조상인 Thread의 getName()을 호출
		}
	}
}

class ThreadEx1_2 implements Runnable {
	public void run() {
		for (int i = 0; i < 5; i++) {
			// Thread.currentThread() -> 현재 실행중인 Thread를 반환(호출)한다. getName() -> Thread의 이름을 가져옴. 자식은 임의 배정
			System.out.println(Thread.currentThread().getName());
		}
	}
}