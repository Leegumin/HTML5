package Chapter_04_조건문반복문.연습문제.연습문제_09;

public class 숫자자리수합산 {
	public static void main(String args[]) {
//		int타입의 변수 num이 있을 때, 각 자리의 합을 더한 결과를 출력하는 코드를 완성하라.
//		만일 변수 num의 값이 12345라면, '1+2+3+4+5'의 결과인 15를 출력하라
//		(1)에 알맞은 코드를 넣으시오.
		
		
//		int num = 12345;
//		int sum = 0;
//		(1)		
//		System.out.println("sum= " + sum);
		
		int num = 12345;
		int sum = 0;

		while (num > 0) {
			sum += num % 10;
//			System.out.println("나머지: " + num % 10);
//			System.out.println("sum: " + sum);
			num = num / 10;
//			System.out.println("num: " + num);
		}
		System.out.println("sum= " + sum);
	}
}
