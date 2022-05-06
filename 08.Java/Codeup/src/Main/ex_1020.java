package Main;

import java.util.Scanner;

public class ex_1020 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		/* 콘솔창에서 입력된 숫자가 Int(정수)형식으로 num에 저장됨 */
		String personN = scanner.nextLine();
		String[] personS = personN.split("-");
		int a = Integer.parseInt(personS[0]);
		int b = Integer.parseInt(personS[1]);
		System.out.printf("%06d%07d", a,b);
	}

}
