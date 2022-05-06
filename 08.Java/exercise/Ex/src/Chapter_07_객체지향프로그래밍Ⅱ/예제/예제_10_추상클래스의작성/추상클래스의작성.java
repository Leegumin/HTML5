package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_10_추상클래스의작성;

public class 추상클래스의작성 {

	public static void main(String[] args) {
		Unit[] group = { new Marine(), new Tank(), new Dropship() };
		for (int i = 0; i < group.length; i++) {
			group[i].move(100, 200);
		}
	}
}