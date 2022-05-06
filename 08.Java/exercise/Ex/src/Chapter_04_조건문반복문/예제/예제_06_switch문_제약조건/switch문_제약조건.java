package Chapter_04_조건문반복문.예제.예제_06_switch문_제약조건;

import java.util.Scanner;

public class switch문_제약조건 {
	public static void main(String args[]) {
		System.out.print("현재 월을 입력하세요.>");
		
		Scanner scanner = new Scanner(System.in);
		int month = scanner.nextInt();
		
		switch (month) {
		case 3:
		case 4:
		case 5:
			System.out.println("현재의 계절은 봄입니다.");
			break;
		case 6: case 7:	case 8:
			System.out.println("현재의 계절은 여름입니다.");
			break;
		case 9: case 10: case 11:
			System.out.println("현재의 계절은 가을입니다.");
			break;
		/* 위에 들어가지 않은 case 12: case 1: case 2: 값은 전부 default로 실행됨 */
		default:
			System.out.println("현재의 계절은 겨울입니다.");
			break;
		}
	}
}
