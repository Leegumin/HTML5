package Main;

import java.util.Scanner;

public class ex_1418 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);
		String[] str = scn.nextLine().split("");

		for (int i = 0; i < str.length; i++) {

			if (str[i].equalsIgnoreCase("t")) {
				System.out.print(i+1 + " ");
			}
		}
	}
}
