package Chapter_07_객체지향프로그래밍Ⅱ.예제.예제_10_추상클래스의작성;

public class Marine extends Unit {

	@Override
	public void move(int x, int y) {
		// TODO Auto-generated method stub
		System.out.println("Marine[x=" + x + ", y=" + y + "]");
	}
	public void stimPack() {
		System.out.println("스팀팩을 사용한다");
	}

}
