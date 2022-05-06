package Chapter_04_조건문반복문.예제.예제_10_for문;

public class for문 {
	public static void main(String args[]) {
		int sum = 0;

		for (int i = 1; i <= 5; i++) {
			sum += i;
			/* %2d -> 2자리수를 표기하는데 십자리수가 비면 " "으로 처리 */
			System.out.printf("1부터%2d까지의 합: %2d%n", i, sum);
		}
	}
}
