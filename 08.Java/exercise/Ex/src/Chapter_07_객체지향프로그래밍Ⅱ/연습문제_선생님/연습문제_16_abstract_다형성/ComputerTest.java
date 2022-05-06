package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_16_abstract_다형성;

public class ComputerTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Computer c1 = new DeskTop();
		Computer c2 = new NoteBook();
		Computer c3 = new WorkStation();

		// DeskTop 출력
		c1.turnOn();
		c1.display(); // print 출력 : DeskTop computer
		c1.typing(); // print 출력 : DeskTop typing
		c1.turnOff();
		System.out.println("------------------");
		c2.display(); // print 출력 : NoteBook computer
		c2.typing(); // print 출력 : NoteBook typing
		System.out.println("------------------");
		c3.display(); // print 출력 : WorkStation typing
		c3.typing(); // print 출력 : WorkStation typing
	}

}
