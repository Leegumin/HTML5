package Chapter_04_조건문반복문.연습문제.연습문제_05;

public class for문while문으로변경 {
	public static void main(String args[]) {
		/* 다음의 for문을 while 문으로 변경하시오 */
//		for (int i = 0; i <= 10; i++) {
//			for (int j = 0; j <= i; j++) {
//				System.out.print("*");
//			}
//			System.out.println();
//		}

		int i = 0, j = 0;
		String str = "";
		while (i < 10) {
			while (j <= i) {
				str += "*";
				System.out.print(str);
				j++;
			}
			i++;
			System.out.println(i);
		}
	}
}
