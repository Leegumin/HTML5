package Main;

import java.util.Scanner;

public class ex_1056 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		int n1 = scn.nextInt();
		int n2 = scn.nextInt();

		int result = n1 != n2 ? 1 : 0;

		System.out.println(result);
	}
}
