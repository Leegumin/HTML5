package Chapter_04_조건문반복문.예제.예제_16_break;

public class break문 {
	public static void main(String args[]) {
		int sum = 0;
		int i = 0;

		/* 매개변수 값이 ture 이므로 무한 반복 */
		while (true) {
			/* 무한 반복을 멈춰주기 위해 sum의 값이 100을 넘기면 break를 사용함 */
			if (sum > 100)
				break;
			/* sum += ++i; 로 줄이는 것도 가능함*/
			++i;
			sum += i;
		}
		System.out.println("i=" + i);
		System.out.println("sum=" + sum);
	}
}
