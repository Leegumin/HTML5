package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_17_ObjectArray_출력;

public class BookTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 배열의 선언 : 공간만 생성
		Book[] book = new Book[5];

		// 배열 값 출력
		for (int i = 0; i < book.length; i++) {
			// 값이 없어서 null이 출력됨
			System.out.println(book[i]);
		}

		System.out.println("-----------------------");

		// 배열 5개의 값을 저장
		book[0] = new Book("태백산맥", "조정래");
		book[1] = new Book("데미안", "헤르만 헷세");
		book[2] = new Book("어떻게 살 것인가", "유시민");
		book[3] = new Book("토찌", "박경리");
		book[4] = new Book("어린왕자", "생택쥐베리");

		// 배열 값 출력
		for (int i = 0; i < book.length; i++) {
			// 배열의 주소가 출력됨
			System.out.println(book[i]);
		}

		System.out.println("-----------------------");

		// 배열 값 출력
		for (int i = 0; i < book.length; i++) {
			// get으로 가져오면 지정된 값을 불러옴
			System.out.println("책 이름: " + book[i].getBookName());
			System.out.println("저자: " + book[i].getAuthor());
		}

	}

}
