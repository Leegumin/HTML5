package Main;

import java.util.Scanner;

public class ex_1013 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		/* next는 공백으로 구분하기 때문에 한 줄에 1 5 로 입력해주면 알아서 인식해서 맞는 위치에 값을 넣어줌 */
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		System.out.println(a + " " + b);
	}
}
