package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_16_abstract_다형성;

public class WorkStation extends Computer {

	@Override
	public void display() {
		// TODO Auto-generated method stub
		System.out.println("WorkStation computer");
	}

	@Override
	public void typing() {
		// TODO Auto-generated method stub
		System.out.println("WorkStation typing");
	}

}
