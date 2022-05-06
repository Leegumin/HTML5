package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_14_ObjectArray_출력;

public class Book {
	private String bookName;
	private String author;

	// 출력 메소드
	public void showBookInfo() {
		System.out.println(bookName + " " + author);
	}

	// 기본 생성자
	public Book() {
	}

	// 매개변수 2개 생성자
	public Book(String bookName, String author) {
		this.bookName = bookName;
		this.author = author;
	}

	// getter / setter
	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}
