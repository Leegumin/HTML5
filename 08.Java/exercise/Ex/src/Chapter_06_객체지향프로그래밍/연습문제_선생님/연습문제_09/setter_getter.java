package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_09;

public class setter_getter {
	public static void main(String[] args) {
		Book javaBook = new Book();

		/* setter로 값을 저장하고 getter로 출력해 보세요 */
		/* title = "Java JDK", author = "황기태", ISBN = 3333 */
		javaBook.setTitle("Java JDK");
		javaBook.setAuthor("황기태");
		javaBook.setISBN(3333);

		System.out.printf("title = \"%s\"%n", javaBook.getTitle());
		System.out.printf("Authore = \"%s\"%n", javaBook.getAuthor());
		System.out.println("ISBN = " + javaBook.getISBN());
	}
}
