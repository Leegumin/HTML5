package Chapter_02_변수.예제.예제_11_부호있는정수의오버플로우.copy3;

public class 부호있는정수의오버플로우 {
	public static void main(String args[]) {
		String str = "3";

		/*문자 -> '', 문자열 -> ""*/
		/* 문자에서 '0'을 빼면 숫자가 됨, str.charAt(인덱스번호 -> 문자열은 배열과 유사하게 인덱스를 가짐) -> "str"을 'str'로 변환(문자열을 문자로 변환) */
		/* str은 문자열이라서 문자열을 문자로 바궈준 후에 -'0'을 해서 숫자로 변환 */
		System.out.println(str.charAt(0) - '0'); /* 엄밀히 말하면 '3'-'0'은 아스키 코드에서 3이 51, 0이 48이므로 51-48 = 3으로 나오는 것임.*/ 
		/* 문자에서 '0'을 빼면 숫자가 됨 */
		System.out.println('3' - '0' + 1);
		/* parseInt로 정수로 변환 됨 */
		System.out.println(Integer.parseInt("3") + 1);
		/* 문자열 + 정수 -> 문자열*/
		System.out.println("3" + 1);
		/* 숫자에서 '0'을 더하면 문자가 됨 */
		System.out.println((char) (3 + '0'));
		System.out.println(3 + '0'); /* 3 + 48 = 51 */
	}
}
