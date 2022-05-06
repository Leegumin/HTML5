package Main;

import java.util.Scanner;

public class ex_1090 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		int a = scn.nextInt();
		int r = scn.nextInt();
		int n = scn.nextInt();

		int i = 1;
		long result = a;

		while (true) {
			if (i == n) {
				break;
			}
			result *= r;
			i++;
		}
	
		System.out.println(result);
	}
}