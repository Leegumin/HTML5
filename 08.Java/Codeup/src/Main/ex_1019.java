package Main;

import java.util.Scanner;

public class ex_1019 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		String birth = scanner.nextLine();
		String[] births = birth.split("[.]");
		int a = Integer.parseInt(births[0]);
		int b = Integer.parseInt(births[1]);
		int c = Integer.parseInt(births[2]);
		System.out.printf("%04d.%02d.%02d", a,b,c);
	}

}
