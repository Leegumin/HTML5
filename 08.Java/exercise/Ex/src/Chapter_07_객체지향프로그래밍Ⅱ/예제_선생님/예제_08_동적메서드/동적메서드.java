package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_08_동적메서드;

public class 동적메서드 {
	/* paint(부모) */
	static void paint(Shape p){
		p.draw();
	}
	
	public static void main(String[] args) {
		
		/*모양*/
		Shape shape = new Shape();
		/*선, Shappe 상속*/
		Line line = new Line();
		/*사각형, Shappe 상속 */
		Rect rect = new Rect();
		/*원, Shappe 상속 */
		Circle circle = new Circle();
		
		shape.draw();
		line.draw();
		rect.draw();
		circle.draw();
		
		/* paint(자식) */
		paint(shape);
		paint(line);
		paint(rect);
		paint(circle);
	}
}
