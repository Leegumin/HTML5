package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_12_Student;

public class Bus {
	// 멤버변수 : 버스 번호
	private int busN;
	private int passengerCount;
	private int money;
	
	// 매개변수 1개짜리 생성자 : 버스번호
	public Bus(int busN) {
		this.busN = busN;
	}

	// 승객이 낸 돈을 받는 메소드
	public void take(int money) {
		// 버스돈 증가
		this.money += money;
		// 승객 수 증가
		passengerCount++;
	}

	// 버스의 승객수와 버스잔액을 출력
	public void showInfo() {
		// print 출력 : "버스" + 버스번호 + "는" + 승객수 + "명이고, 수입은" + 버스돈 +"입니다."
		System.out.println("버스" + busN + "번의 승객수는 " + passengerCount + "명이고, 수입은 " + money + "입니다.");
	}
}
