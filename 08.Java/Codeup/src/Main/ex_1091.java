package Main;

import java.util.Scanner;

public class ex_1091 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		int a = scn.nextInt();
		int m = scn.nextInt();
		int d = scn.nextInt();
		int n = scn.nextInt();

		int i = 1;
		long result = a;

		while (true) {
			if (i == n) {
				break;
			}
			result = result * m + d;
			i++;
		}

		System.out.println(result);
	}
}