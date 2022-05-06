package Chapter_04_조건문반복문.연습문제.연습문제_03;

public class 합연산 {
	public static void main(String args[]) {
//		1+(1+2)+(1+2+3)+....+(1+2+.....+10)의 결과를 구하시오
		
		int sum = 0;
//		for (int i = 1; i <= 10; i++) {
//			for (int j = 1; j <= i; j++) {
//				sum += j;
//			}
//			System.out.println(i + ":" + sum);
//		}
//		System.out.println(sum);

		/* 선생님 풀이 */
		int totalSum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
			totalSum += sum;
		}
		System.out.println("totalSum= " + totalSum);
	}
}
