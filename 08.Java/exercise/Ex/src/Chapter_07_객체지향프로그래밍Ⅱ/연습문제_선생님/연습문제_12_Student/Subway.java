package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_12_Student;

public class Subway {
	// 멤버변수 : 지하철노선번호, 승객수, 지하철요금
	private String subwayN;
	private int passengerCount;
	private int money;
	
	// 매개변수 1개짜리 생성자 : 지하철노선번호
	public Subway(String subwayN) {
		this.subwayN = subwayN;
	}

	// 승객이 낸 돈을 받는 메소드
	public void take(int money) {
		// 지하철돈 증가
		this.money += money;
		// 승객 수 증가
		passengerCount++;
	}

	// 버스의 승객수와 버스잔액을 출력
	public void showInfo() {
		// print 출력 : "지하철" + 노선번호 + "노선의 승객수는 " + 승객수 + "명이고, 수입은" + 지하철요금 +"입니다."
		System.out.println("지하철 " + subwayN + "의 승객수는 " + passengerCount + "명이고, 수입은 " + money + "입니다.");
	}
}
