package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_04;

public class 객체생성출력 {
	public static void main(String[] args) {
//		클래스를 작성해보세요
//		다음 멤버를 가지고 직사각형을 표현하는 Rectangle 클래스를 작성하고 출력하세요
//		1) int 타입의 x, y, width, height : 사각형을 구성하는 점과 크기 정보
//		2) int square : 사각형의 넓이를 리턴하는 메소드
//		3) void show : 사각형의 좌표(x,y)와 넓이를 화면에 출력하는 메소드

		Rectangle rect = new Rectangle();

		rect.x = 2;
		rect.y = 2;
		rect.width = 8;
		rect.height = 7;

//		사각형 좌표를 출력
		rect.show();
		
//		넓이를 출력
		System.out.println("rect의 면적은 " + rect.square());

	}
}
