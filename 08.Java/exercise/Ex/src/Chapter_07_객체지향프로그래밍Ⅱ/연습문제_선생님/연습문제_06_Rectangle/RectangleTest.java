package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_06_Rectangle;

public class RectangleTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. 객체 생성 : 초기값 없이
		// 2. 기능 사용 : 면적계산 메소드 호출, 둘레계산 메소드 호출

		Rectangle r1 = new Rectangle();
		System.out.println(r1.면적());
		System.out.println(r1.둘레());

		// 3. 객체 생성 : 매개변수 (30, 50)
		// 4. 기능 사용 : 면적계산 메소드 호출, 둘레계산 메소드 호출

		Rectangle r2 = new Rectangle(30, 50);
		System.out.println("면적 : " + r2.면적());
		System.out.println("둘레 : " + r2.둘레());
	}

}
