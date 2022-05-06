package Chapter_03_연산자.예제.예제_14_문자열비교;

public class 문자열비교 {
	public static void main(String args[]) {

		/*
		 * 두 문장의 값은 동일하며, String은 클래스이므로 원래 new String를 써야하는게 맞음. 특별히 String만 str1처럼 생략
		 * 가능
		 */
		String str1 = "abc";
		String str2 = new String("abc");
		/* %b -> boolean 출력(참과 거짓을 나타내는 논리자료형) */
		System.out.println(str1 + 1);
		System.out.println(str2 + 2);
		/* "abc"=="abc" 참값이므로 true */
		System.out.printf("\"abc\" == \"abc\" ? %b%n", "abc" == "abc");
		/* str1("abc")=="abc" 참값이므로 true */
		System.out.printf(" str1 == \"abc\" ? %b%n", str1 == "abc");
		/* str2("abc")=="abc" 이나 str2는 new String로 정의하여 서로 다른 객체라서 false 저장된 메모리 위치가 다름 */
		System.out.printf(" str2 == \"abc\" ? %b%n", str2 == "abc");
		/* str1("abc").equals("abc")와 내용이 동일하므로 참 */
		System.out.printf("str1.equals(\"abc\") ? %b%n", str1.equals("abc"));
		/* str2("abc").equals("abc")와 내용이 동일하므로 참 */
		System.out.printf("str2.equals(\"abc\") ? %b%n", str2.equals("abc"));
		/* str2("abc").equals("ABC")와 내용이 동일하나 소문자가 아니므로 거짓 */
		System.out.printf("str2.equals(\"ABC\") ? %b%n", str2.equals("ABC"));
		/* str2("abc").equalsIgnoreCase("ABC")와 내용이 동일하고 대문자, 소문자는 무시하므로 참 */
		System.out.printf("str2.equalsIgnoreCase(\"ABC\") ? %b%n", str2.equalsIgnoreCase("ABC"));
	}
}
