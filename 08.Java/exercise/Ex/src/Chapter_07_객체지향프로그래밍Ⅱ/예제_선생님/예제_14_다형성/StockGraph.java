package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_14_다형성;

public class StockGraph extends Graph{
	@Override
	public void draw() {
		System.out.println("주가변경 추이를 그립니다.");
	}
}
