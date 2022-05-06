package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_15_다형성클래스활용;

public class MirrorTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TaejungMirror tm = new TaejungMirror();
		DongSungMirror dm = new DongSungMirror();

		Genesis g1 = new Genesis(tm);
		Genesis g2 = new Genesis(dm);
		
		g1.powerOff();
		g2.powerOff();
		g1.joystic();
		g2.joystic();
	}

}
