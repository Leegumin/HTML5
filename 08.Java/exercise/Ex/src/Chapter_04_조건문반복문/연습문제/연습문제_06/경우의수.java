package Chapter_04_조건문반복문.연습문제.연습문제_06;

public class 경우의수 {
	public static void main(String args[]) {
//		두 개의 주사위를 던졌을 때, 눈의 합이 6이 되는 모든 경우의 수를 출력하는 프로그램을 작성하시오.
		int count = 0;
		for (int i = 1; i <= 6; i++) {
			for (int j = 1; j <= 6; j++) {
				if (i + j == 6) {
					count++;
					System.out.println("i: " + i + ", " + "j: " + j);
				}
			}
		}
		System.out.println(count);
	}
}
