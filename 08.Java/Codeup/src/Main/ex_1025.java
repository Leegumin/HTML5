package Main;

import java.util.Scanner;

public class ex_1025 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		String num = scanner.nextLine();
		String[] numS = num.split("[.]");
		int a = Integer.parseInt(numS[0]);
		int b = Integer.parseInt(numS[1]);
		System.out.println(a);
		System.out.println(b);
	}

}
