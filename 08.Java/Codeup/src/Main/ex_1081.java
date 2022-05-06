package Main;

import java.util.Scanner;

public class ex_1081 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		int n1 = scn.nextInt();
		int n2 = scn.nextInt();

		for (int i = 1; i <= n1; i++) {
			for (int j = 1; j <= n2; j++) {
				System.out.println(i + " " +j);
			}
		}
	}
}
