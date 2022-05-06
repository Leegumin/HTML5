package Chapter_03_연산자.예제.예제_11_Math_round_반올림;

public class String_format {
	public static void main(String args[]) {
		double pie = 3.141592;
		double money = 4424.243423;

		/* .2f -> 소수점 2자리수까지 실수 표기 */
		System.out.println(String.format("%.2f", pie));
		/* .3f -> 소수점 3자리수까지 실수 표기 */
		System.out.println(String.format("%.3f", pie));
		/* .3f -> 소수점 3자리수까지 실수 표기 */
		System.out.println(String.format("%.3f", money));
	}
}
