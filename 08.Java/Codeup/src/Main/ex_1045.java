package Main;

import java.util.Scanner;

public class ex_1045 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		long num1 = scn.nextLong();
		long num2 = scn.nextLong();

		System.out.println(num1 + num2);
		System.out.println(num1 - num2);
		System.out.println(num1 * num2);
		System.out.println(num1 / num2);
		System.out.println(num1 % num2);
		System.out.printf("%.2f", (float)num1 / num2);
	}

}
