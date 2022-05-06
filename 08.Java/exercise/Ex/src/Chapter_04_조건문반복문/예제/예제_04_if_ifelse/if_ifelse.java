package Chapter_04_조건문반복문.예제.예제_04_if_ifelse;

import java.util.Scanner;

public class if_ifelse {
	public static void main(String args[]) {
		int score = 0;
		char grade = ' ';

		System.out.println("점수를 입력하세요.>");
		Scanner scanner = new Scanner(System.in);
		score = scanner.nextInt();

		if (score >= 90) {
			grade = 'A';
		} else if (score >= 80) {
			grade = 'B';
		} else if (score >= 70) {
			grade = 'C';
		} else {
			grade = 'D';
		}
		System.out.println("당신의 학점은 "+ grade + "입니다.");
	}
}
