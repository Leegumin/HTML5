package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_10_추상클래스의작성;

public abstract class Unit {
	int x, y;

	abstract void move(int x, int y);

	void stop() {
		System.out.println("현재 위치에 정지");
	}
}
