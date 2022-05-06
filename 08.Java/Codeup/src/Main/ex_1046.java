package Main;

import java.util.Scanner;

public class ex_1046 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		long num1 = scn.nextLong();
		long num2 = scn.nextLong();
		long num3 = scn.nextLong();

		System.out.println(num1 + num2 + num3);
		System.out.printf("%.1f",(float)(num1 + num2 + num3)/3);
	}

}
