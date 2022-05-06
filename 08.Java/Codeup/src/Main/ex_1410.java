package Main;

import java.util.Scanner;

public class ex_1410 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);
		String[] str = scn.nextLine().split("");
		int count1 = 0;
		int count2 = 0;

		for (int i = 0; i < str.length; i++) {
			if (str[i].equals("(")) {
				count1++;
			} else {
				count2++;
			}
		}

		System.out.print(count1 + " " + count2);
	}
}
