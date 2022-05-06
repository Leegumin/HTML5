package Chapter_04_조건문반복문.예제.예제_05_if_중첩;

import java.util.Scanner;

public class if_중첩 {
	public static void main(String args[]) {
		int score = 0;
		char grade = ' ', opt = '0';

		System.out.println("점수를 입력하세요.>");

		Scanner scanner = new Scanner(System.in);
		score = scanner.nextInt();

		System.out.printf("당신의 점수는 %d입니다.%n", score);

		/* score가 90 이상일때 A등급을 주는데 여기서 score가 98 이상이면 + 를 붙이고, */
		/* score가 94 미만이면 -를 붙임 */
		if (score >= 90) {
			grade = 'A';
			if (score >= 98) {
				opt = '+';
			} else if (score < 94) {
				opt = '-';
			}
		} else if (score >= 80) {
			grade = 'B';
			if (score >= 88) {
				opt = '+';
			} else if (score < 84) {
				opt = '-';
			}
		} else {
			grade = 'C';
		}
		System.out.printf("당신의 학점은 %c%c입니다.%n", grade, opt);
	}
}
