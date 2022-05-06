package Chapter_04_조건문반복문.예제.예제_17_continue;

public class continue문 {
	public static void main(String args[]) {
		for (int i = 0; i <= 10; i++) {
			if (i % 3 == 0) {
				continue;
			}
			System.out.println(i);
		}
	}
}
