package Chapter_13_쓰레드.예제.예제_02_싱글쓰레드와멀티쓰레드;

public class 싱글쓰레드 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// System.currentTimeMillis() -> 시스템 시간계산 메소드(ms 단위 : 1/1000초)
		long startTime = System.currentTimeMillis();

		
		for (int i = 0; i < 300; i++) {
			System.out.printf("%s", new String("-"));
		}
		System.out.printf("소요시간1:" + (System.currentTimeMillis() - startTime));

		for (int i = 0; i < 300; i++) {
			System.out.printf("%s", new String("|"));
		}
		System.out.printf("소요시간2:" + (System.currentTimeMillis() - startTime));
	}

}
