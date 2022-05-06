package Main;

import java.util.Scanner;

public class ex_1023 {

	public static void main(String args[]) {

		Scanner scanner = new Scanner(System.in);
		String num = scanner.nextLine();
		String[] numS = num.split("");
		int a = Integer.parseInt(numS[0]);
		int b = Integer.parseInt(numS[1]);
		int c = Integer.parseInt(numS[2]);
		int d = Integer.parseInt(numS[3]);
		int e = Integer.parseInt(numS[4]);
		
		System.out.println("["+a*10000+"]");
		System.out.println("["+b*1000+"]");
		System.out.println("["+c*100+"]");
		System.out.println("["+d*10+"]");
		System.out.println("["+e+"]");
	}

}
