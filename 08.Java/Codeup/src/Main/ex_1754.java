package Main;

import java.util.Scanner;

public class ex_1754 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		String num1 = scn.next();
		String num2 = scn.next();
		
		System.out.println(num1.length());
		System.out.println(num2.length());
		/* compareTo -> 문자열 num1과 num2를 비교하여 int값 반환. num1이 크면 1, 같으면 0, 작으면 -1 */
		if (num1.length() == num2.length()) {
			if (num1.compareTo(num2) > 0) {
				System.out.println(num2 + " " + num1);
			} else if (num1.compareTo(num2) < 0) {
				System.out.println(num1 + " " + num2);
			} else {
				System.out.println(num1 + " " + num2);
			}
		} else if (num1.length() > num2.length()) {
			System.out.println(num2 + " " + num1);
		} else {
			System.out.println(num1 + " " + num2);
		}
	}
}
