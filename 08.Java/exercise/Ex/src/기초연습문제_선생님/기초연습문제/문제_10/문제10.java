package 기초연습문제_선생님.기초연습문제.문제_10;

import java.util.Scanner;

public class 문제10 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		// 10개 숫자 배열
		int[] arr = new int[10];

		for (int i = 0; i < arr.length; i++) {
			arr[i] = sc.nextInt();
			if (arr[i] % 3 == 0) {
				System.out.println("arr[" + i + "] : " + arr[i]);
			}
		}
	}
}
