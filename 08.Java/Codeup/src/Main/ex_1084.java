package Main;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Scanner;

public class ex_1084 {

	// BufferedWriter를 사용하기 위해 throws IOException를 사용
	public static void main(String[] args) throws IOException {

		Scanner scn = new Scanner(System.in);

		// System.out.println이 굉장히 느려 시간초과가 걸림
		// BufferedWriter가 빠름
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

		int n1 = scn.nextInt();
		int n2 = scn.nextInt();
		int n3 = scn.nextInt();

		int count = 0;

		for (int i = 0; i < n1; i++) {
			for (int j = 0; j < n2; j++) {
				for (int j2 = 0; j2 < n3; j2++) {
					bw.write(i + " " + j + " " + j2 + "\n");
					count++;
				}
			}
		}
		// count를 출력하는 2가지 방법 -> BufferedWriter는 String형으로 받기 때문에 int값이 출력이 안됨
		// 1
//		bw.write(count + "\n");
		// 2
		bw.write(String.valueOf(count));
		// BufferedWriter 초기화
		bw.flush();
	}
}
