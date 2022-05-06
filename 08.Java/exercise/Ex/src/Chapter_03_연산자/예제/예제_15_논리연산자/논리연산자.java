package Chapter_03_연산자.예제.예제_15_논리연산자;

import java.util.Scanner;

public class 논리연산자 {
	public static void main(String args[]) {
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		char ch = ' ';
		
		System.out.printf("문자를 하나 입력하세요.>");
		
		String input = scanner.nextLine();
		/* input에 입력된 문자 혹은 숫자를 chartAt(인덱스) -> 문자로 변환 */ 
		ch = input.charAt(0);
		
		if('0' <= ch && ch <= '9') {
			System.out.printf("입력하신 문자는 숫자입니다.%n");
		}
		
		if (('a' <= ch && ch <= 'z')||('A' <= ch && ch <= 'Z')) {
			System.out.printf("입력하신 문자는 영문자입니다%n");
		}
		
	}
}
