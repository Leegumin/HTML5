package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_07_super;

/*좌표 정보를 저장 및 출력하는 클래스*/
public class Color extends Point {
	public String color;

	/* 매개변수 3개짜리 */
	/* 생성자의 목적 : 맴버 변수 초기화 */
	public Color(int x, int y, String color) {
		/* 부모의 생성자를 호출 */
		super(x, y);
		/* 자식의 멤버 변수 초기화 */
		this.color = color;
	}
	
	/* 색상정보와 좌표정보를 출력하는 메소드 */
	void showColorPoint() {
		System.out.println(color);
		/* 부모 메소드 */
		showPoint();
	}
}
