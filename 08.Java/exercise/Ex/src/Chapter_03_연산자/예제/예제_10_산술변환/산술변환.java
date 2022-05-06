package Chapter_03_연산자.예제.예제_10_산술변환;

public class 산술변환 {
	public static void main(String args[]) {
		long a = 1_000_000 * 1_000_000;
		/* 1_000_000L -> L은 (long)의 약자 */
		long b = 1_000_000 * 1_000_000L;
		
		System.out.println("a="+a);
		System.out.println("b="+b);
	}
}
