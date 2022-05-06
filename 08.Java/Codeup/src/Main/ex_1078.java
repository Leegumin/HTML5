package Main;

import java.util.Scanner;

public class ex_1078 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		int n = scn.nextInt();
		int result = 0;
		
		for (int i = 0; i <= n; i++) {
			result += (i % 2 == 0 ? i : 0);
		}
		
		System.out.println(result);
	}
}
