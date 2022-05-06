package Chapter_04_조건문반복문.예제.예제_03_ifelse문;

import java.util.Scanner;

public class ifelse문 {
	public static void main(String args[]) {
		System.out.println("숫자를 하나 입력하세요.>");
		Scanner scanner = new Scanner(System.in);
		int input = scanner.nextInt();
		
		if(input==0) {
			System.out.println("입력하신 숫자는 0입니다.");
		}
		else {
			System.out.println("입력하신 숫자는 0이 아닙니다.");
		}
	}
}
