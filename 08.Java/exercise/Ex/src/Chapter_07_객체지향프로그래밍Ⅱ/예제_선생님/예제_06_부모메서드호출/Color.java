package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_06_부모메서드호출;

/*색상 정보를 저장 및 출력하는 클래스*/
/*좌표정보 저장 및 출력는 부모에게서 상속*/
public class Color extends Point {
	/* 색상 정보를 저장하는 맴버 변수 */
	public String color;
	
	/* 색상 정보 저장하는 메소드 */
	public void setColor(String color) {
		this.color = color;
	}
	
	/* 색상 정보와 좌표를 출력하는 메소드 */
	public void showColorPoint() {
		System.out.print(color);
		
		/* 부모의 메서드 호출 */
		showPoint();
	}
}
