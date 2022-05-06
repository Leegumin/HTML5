package Main;

import java.util.Scanner;

public class ex_1026 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		String time = scanner.nextLine();
		String[] times = time.split(":");

		int m = Integer.parseInt(times[1]);
		
		System.out.printf("%d", m);
		
//		if (m <= 9)
//			System.out.printf("%1d", m);
//		else
//			System.out.printf("%d", m);
	}

}
