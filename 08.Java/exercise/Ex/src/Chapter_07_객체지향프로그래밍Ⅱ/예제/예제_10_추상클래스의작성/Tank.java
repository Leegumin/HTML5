package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_10_추상클래스의작성;

public class Tank extends Unit {

	@Override
	public void move(int x, int y) {
		// TODO Auto-generated method stub
		System.out.println("Tank[x=" + x + ", y=" + y + "]");
	}
	public void changeMode() {
		System.out.println("공격모드를 변환한다.");
	}

}
