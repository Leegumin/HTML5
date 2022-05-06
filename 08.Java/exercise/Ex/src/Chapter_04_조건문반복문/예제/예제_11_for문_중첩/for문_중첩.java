package Chapter_04_조건문반복문.예제.예제_11_for문_중첩;

public class for문_중첩 {
	public static void main(String args[]) {
		
		for (int i = 1; i <= 5; i++) {
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}
