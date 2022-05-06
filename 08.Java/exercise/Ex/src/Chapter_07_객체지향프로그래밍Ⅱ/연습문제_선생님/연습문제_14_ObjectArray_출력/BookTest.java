package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_14_ObjectArray_출력;

import java.util.ArrayList;

public class BookTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 배열의 선언 : 공간만 생성
//		Book[] book = new Book[5];
		ArrayList<Book> book = new ArrayList<Book>();

		// 배열 5개의 값을 저장
//		book[0] = new Book("태백산맥", "조정래");
//		book[1] = new Book("데미안", "헤르만 헷세");
//		book[2] = new Book("어떻게 살 것인가", "유시민");
//		book[3] = new Book("토찌", "박경리");
//		book[4] = new Book("어린왕자", "생택쥐베리");

		// ArrayList에 5개의 값을 저장
		book.add(new Book("태백산맥", "조정래"));
		book.add(new Book("데미안", "헤르만 헷세"));
		book.add(new Book("어떻게 살 것인가", "유시민"));
		book.add(new Book("토찌", "박경리"));
		book.add(new Book("어린왕자", "생택쥐베리"));

		// 배열 값 출력
//		for (int i = 0; i < book.length; i++) {
//			// get으로 가져오면 지정된 값을 불러옴
//			System.out.println("책 이름: " + book[i].getBookName());
//			System.out.println("저자: " + book[i].getAuthor());
//		}
		
		// 배열 값 출력(일반 for문)
		for (int i = 0; i < book.size(); i++) {
			// 인덱스에 해당되는 배열 객체를 가져옴
			Book b = book.get(i);
			
			// 배열 객체의 기능 호출
			b.showBookInfo();
		}

		System.out.println("-----------------------");

		// 배열 값 출력(향상된 for문)
		for (Book b : book) {
			b.showBookInfo();
		}
	}

}
