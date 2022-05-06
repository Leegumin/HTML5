package Chapter_08_예외처리.연습문제.연습문제_7;

import java.util.Scanner;

public class try_catch문에서의흐름 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int answer = (int) (Math.random() * 100) + 1;
		int input = 0;
		int count = 0;

		do {
			count++;
			System.out.println("1과 100사이의 값을 입력하세요 : ");
			// 예외(작은오류)가 발생할 것으로 예상되는 지점을 try에 포함
			// 입력되는 답이 문자일 경우 오류가 발생하고 그것을 catch함 
			try {
				input = new Scanner(System.in).nextInt();
			} catch (Exception e) {
				System.out.println("유효하지 않은 값입니다.");
				System.out.println("숫자를 입력하세요");
//				continue; -> 있으나 없으나 결과는 똑같음
			}

			if (answer > input) {
				System.out.println("더 큰 수를 입력하세요.");
			} else if (answer < input) {
				System.out.println("더 작은 수를 입력하세요.");
			} else {
				System.out.println("맞췄습니다.");
				System.out.println("시도횟수는 " + count + "번 입니다.");
				break;
			}
		} while (true);
	}
}