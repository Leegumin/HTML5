package Chapter_03_연산자.예제.예제_16_논리부정연산자;

public class 논리부정연산자 {
	public static void main(String args[]) {
		boolean b = true;
		char ch = 'C';

		/* !는 부정 연산자 */
		/* b -> true */
		System.out.printf("b=%b%n", b);
		/* b -> true -> !b -> false */
		System.out.printf("!b=%b%n", !b);
		/* b -> true -> !b -> false -> !!b -> true*/
		System.out.printf("!!b=%b%n", !!b);
		/* b -> true -> !b -> false -> !!b -> true !!!b -> false*/
		System.out.printf("!!!b=%b%n", !!!b);
		System.out.println();

		/* ch -> 'C' */
		System.out.printf("ch=%c%n", ch);
		/* ch -> 'C'는 아스키코드로 변환했을 때 'a'의 아스키코드값보다 작거나 OR 'z'의 아스키코드값보다 크거나 를 만족하면 참. 둘다 만족 못하면 거짓 */
		System.out.printf("ch < 'a' || ch > 'z' = %b%n", ch < 'a' || ch > 'z');
		/* ch -> 'C'는 아스키코드로 변환했을 때 'a'의 아스키코드값보다 크거나 같으면 OR 'z'의 아스키코드값보다 작거나 같으면을 만족하면 거짓. 둘다 만족 못하면 참 */
		System.out.printf("!('a' <= ch || ch <= 'z') = %b%n", !('a' <= ch && ch <= 'z'));
		/* ch -> 'C'는 아스키코드로 변환했을 때 'a'의 아스키코드값보다 크거나 같으면 OR 'z'의 아스키코드값보다 작거나 같으면을 만족하면 참. 둘다 만족 못하면 거짓 */
		System.out.printf("'a' <= ch || ch <= 'z' = %b%n", 'a' <= ch && ch <= 'z');
		
	}
}
