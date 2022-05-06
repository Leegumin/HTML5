package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_15_다형성클래스활용;

public class DongSungMirror implements Mirror {

	@Override
	public void autoClose() {
		// TODO Auto-generated method stub
		System.out.println("시동을 끄면 자동으로 접기");
	}

	@Override
	public void control() {
		// TODO Auto-generated method stub
		System.out.println("거울의 각도 조절하기");
	}


}
