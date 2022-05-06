package Chapter_04_조건문반복문.예제.예제_07_Math_random_임의의정수만들기;

public class Math_random_임의의정수만들기 {
	public static void main(String args[]) {
		int num = 0;

		for (int i = 0; i <= 5; i++) {
			num = (int) (Math.random() * 6) + 1;
			System.out.println(num);
		}
	}
}
