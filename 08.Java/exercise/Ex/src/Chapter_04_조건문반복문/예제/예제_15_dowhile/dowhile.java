package Chapter_04_조건문반복문.예제.예제_15_dowhile;

import java.util.Scanner;

public class dowhile {
	public static void main(String args[]) {
		int input = 0, answer = 0;

		/* 1부터 100까지 중 랜덤한 수 하나를 반환 */
		answer = (int) (Math.random() * 100) + 1;
		Scanner scanner = new Scanner(System.in);

		/* 무조건 처음 한 번은 실행되며 input 값이 answer보다 크면 혹은 작으면 문장 출력 */
		do {
			System.out.print("1과 100사이의 정수를 입력하세요.>");
			input = scanner.nextInt();

			if (input > answer) {
				System.out.println("더 작은 수로 다시 시도해보세요.");
			} else if (input < answer) {
				System.out.println("더 큰 수로 다시 시도해보세요.");
			}
			/* (input != answer) -> input의 값이 answer의 값과 일치하지 않으면 계속 do로 올라가서 재실행됨 */
		} while (input != answer);

		System.out.println("정답입니다.");
	}
}
