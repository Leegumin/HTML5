package Chapter_02_변수.예제.예제_07_문자열결합;

public class 문자열결합 {
	public static void main(String args[]) {
		String name = "Ja" + "Va";
		String str = name + 8.0;

		/* 문자열+문자열 = 문자열 */
		System.out.println(name);
		/* 문자열+숫자 = 문자열 */
		System.out.println(str);
		/* 숫자+" " = 문자열  => "7 " */
		System.out.println(7 + " ");
		/* " "+숫자 = 문자열  => " 77" */
		System.out.println(" " + 7 + 7);
		/* 숫자+"" = 문자열 */
		System.out.println(7 + "");
		/* ""+숫자 = 문자열 */
		System.out.println("" + 7);
		/* ""+"" = 공백 */
		System.out.println("" + "");
		/* 숫자+숫자 + "" = (숫자+숫자)문자열 */
		System.out.println(7 + 7 + "");
		/* ""+숫자+숫자 = 문자열 */
		System.out.println("" + 7 + 7 + 7);
	}
}
