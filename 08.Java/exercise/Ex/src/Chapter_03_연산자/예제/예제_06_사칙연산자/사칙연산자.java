package Chapter_03_연산자.예제.예제_06_사칙연산자;

public class 사칙연산자 {
	public static void main(String args[]) {
		int a = 10;
		int b = 4;

		System.out.printf("%d + %d = %d%n", a, b, a + b);
		System.out.printf("%d - %d = %d%n", a, b, a - b);
		System.out.printf("%d * %d = %d%n", a, b, a * b);
		System.out.printf("%d / %d = %d%n", a, b, a / b);
		/* %f 자리에 들어가는 b도 (float)로 형변환 시켜줘야 됨, 결과값도 마찬가지 */
		System.out.printf("%d / %f = %f%n", a, (float)b, a / (float)b);
	}
}
