package Main;

import java.util.Scanner;

public class ex_1990 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		String num = scn.nextLine();

		int sum = 0;
		for (int i = 0; i < num.length(); i++) {
			sum += num.charAt(i) - '0';
		}
		System.out.println(sum % 3 == 0 ? 1 : 0);
	}
}
