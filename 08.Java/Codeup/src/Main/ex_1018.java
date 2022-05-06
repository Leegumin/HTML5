package Main;

import java.util.Scanner;

public class ex_1018 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		String time = scanner.nextLine();
		String[] times = time.split(":");
		String a = times[0];
		String b = times[1];
		System.out.printf("%s:%s", a,b);
	}

}
