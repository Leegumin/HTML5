package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_15_다형성클래스활용;

public class TaejungMirror implements Mirror {

	@Override
	public void autoClose() {
		// TODO Auto-generated method stub
		System.out.println("삐그덕 소리를 내며 접힌다.");
	}

	@Override
	public void control() {
		// TODO Auto-generated method stub
		System.out.println("삐그덕 소리를 내며 조절된다.");
	}

}
