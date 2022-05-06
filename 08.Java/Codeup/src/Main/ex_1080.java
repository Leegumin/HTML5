package Main;

import java.util.Scanner;

public class ex_1080 {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		int n = scn.nextInt();
		int i = 1;
		int result = 0;

		while (true) {
			result += i;
			
			if (result >= n) {
				System.out.println(i);
				break;
			}
			
			i++;
		}

	}
}
