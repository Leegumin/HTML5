package Main;

import java.util.Scanner;

public class ex_1089 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		int a = scn.nextInt();
		int d = scn.nextInt();
		int n = scn.nextInt();

		int i = 1;
		int result = 0;

		while (true) {
			if (i == n) {
				break;
			}
			result = a + d * i;
			i++;
		}
		
		System.out.println(result);
	}
}