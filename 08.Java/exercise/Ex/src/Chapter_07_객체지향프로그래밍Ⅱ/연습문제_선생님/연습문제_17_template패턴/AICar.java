package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_17_template패턴;

public class AICar extends Car {

	@Override
	public void drive() {
		// TODO Auto-generated method stub
		System.out.println("자율주행 합니다.");
		System.out.println("자동차가 스스로 방향을 전환합니다.");
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		System.out.println("스스로 멈춥니다.");
	}

}
