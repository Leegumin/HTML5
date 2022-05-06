package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_06_Rectangle;

public class Rectangle {
	// 멤버변수(속성) : 너비, 높이

	int width;
	int height;

	// 멤버메소드(기능) : 면적 계산하기, 테두리길이 계산하기(네변의 합산)

	public Rectangle() {
	}

	public Rectangle(int width, int height) {
		
		this.width = width;
		this.height = height;
	}

	
	// 면적 계산용 메소드
	public int 면적() {
		return width * height;
	}

	
	//둘레 계산용 메소드
	public int 둘레() {
		return (width + height) * 2;
	}
}
