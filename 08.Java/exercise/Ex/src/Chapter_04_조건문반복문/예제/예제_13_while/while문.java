package Chapter_04_조건문반복문.예제.예제_13_while;

public class while문 {
	public static void main(String args[]) {
		int sum = 0;
		int i = 0;
		
		while (sum <= 100) {
			System.out.printf("%d - %d%n", i, sum);
			sum += ++i;
		}
	}
}
