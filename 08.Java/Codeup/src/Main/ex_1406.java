package Main;

import java.util.Scanner;

public class ex_1406 {

	public static void main(String args[]) {

		Scanner scn = new Scanner(System.in);

		String str = scn.nextLine();

		if (str.equals("love")) {
			str = "I " + str + " you.";
		} else {
			str = "";
		}
		System.out.println(str);
	}

}
