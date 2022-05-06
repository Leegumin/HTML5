package Main;

import java.util.Scanner;

public class ex_1015 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		float x = scanner.nextFloat();
		/* 소수점 세째자리에서 반올림하여 소수점 둘째 자리까지 표기하라는 의미 */
		System.out.printf("%.2f", x);
	}
}
