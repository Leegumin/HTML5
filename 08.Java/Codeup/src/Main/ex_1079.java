package Main;

import java.util.Scanner;

public class ex_1079 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		do {
			String str = scn.next();
			
			System.out.println(str);
			
			if (str.equals("q")) {
				break;
			}
		} while (true);

	}
}
