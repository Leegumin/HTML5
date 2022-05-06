package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_12_Student;

public class Student {
	//멤버 변수 : 학생이름, 학년, 학생돈
	
	private String name;
	private int money;

	//생성자 : 이름과 돈을 초기화
	public Student(String name, int money) {
		this.name = name;
		this.money = money;
	}
	
	//메소드 : 버스타기 : takeBus(Bus bus)
	public void takeBus(Bus bus) { /*phone 다형성 활용 참고, Bus객체를 bus로 정의*/
		bus.take(1000); // 버스요금은 1000원 소비
		//학생 돈 감소
		money -= 1000;
	}
	
	public void takeSubway(Subway subway) {
		subway.take(1500);
		money -= 1500;
	}
	
	public void showInfo() {
		// 잔액 출력 : 학생이름 + "님의 남은 돈은" + 학생돈 + "입니다."
		System.out.println(name + "님의 남은 돈은 " + money + "입니다.");
	}
}
