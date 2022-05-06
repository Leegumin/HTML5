package Chapter_03_연산자.예제.예제_09_산술변환;

public class 산술변환 {
	public static void main(String args[]) {
		int a = 1_000_000;
		int b = 2_000_000;

		/* int 형식상 결과값 -1454759936 상태로 long에 들어가봤자 소용없음 */
		/* 둘 중 하나만 long로 형변환 시켜주면 정상 작동함 */
		long c = a * b;
		long d = (long) a * b;

		System.out.println(c);
		System.out.println(d);
	}
}
