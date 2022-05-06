package Chapter_04_조건문반복문.연습문제.연습문제_02;

public class 일정배수제외총합구하기 {
	public static void main(String args[]) {
//		1부터 20까지의 정수 중에서 2 또는 3의 배수가 아닌 수의 총합을 구하시오
		int sum = 0;
		for (int i = 1; i <= 20; i++) {
			if (i % 2 != 0 && i % 3 != 0) {
				System.out.println("i" + i + ": " + sum);
				sum += i;
			}
		}
		System.out.println("총합: " + sum);
	}
}
