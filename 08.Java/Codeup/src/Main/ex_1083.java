package Main;

import java.util.Scanner;

public class ex_1083 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		int n = scn.nextInt();

		for (int i = 1; i <= n; i++) {
			if (i % 3 == 0) {
				System.out.print("X ");
				continue;
			}
			System.out.print(i + " ");

		}

	}
}
