package 기초연습문제_선생님.DTO.예제_06_상속_extends;

public class Test {

	public static void main(String[] args) {
		Line line = new Line();
		line.draw("Line");
		line.draw();

		Circle circle = new Circle();
		circle.draw("Circle");
		circle.draw();

		Rect rect = new Rect();
		rect.draw("Rect");
		rect.draw();
	}

}
