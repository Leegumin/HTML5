package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_10_추상클래스의작성;

public class Dropship extends Unit {

	@Override
	public void move(int x, int y) {
		// TODO Auto-generated method stub
		System.out.println("Dropship[x=" + x + ", y=" + y + "]");
	}
	public void load() {
		System.out.println("선택된 대상을 태운다");
	}
	public void unload() {
		System.out.println("선택된 대상을 내린다");
	}

}
