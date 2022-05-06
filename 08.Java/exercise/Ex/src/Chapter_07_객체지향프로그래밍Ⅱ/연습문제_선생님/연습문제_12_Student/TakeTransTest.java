package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_12_Student;

public class TakeTransTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student james = new Student("james", 5000);
		Student tomas = new Student("tomas", 10000);
		
		Bus bus100 = new Bus(100); // 100번 버스 생성.
		james.takeBus(bus100); // 제임스가 100번 버스를 탐.
		tomas.takeBus(bus100); // 제임스가 100번 버스를 탐.
		
		//학생정보
		james.showInfo();
		tomas.showInfo();
		
		//버스정보
		bus100.showInfo();
		
		System.out.println("------------------------------");
		
		Subway subway = new Subway("1호선"); // 1호선
		james.takeSubway(subway); // 제임스가 1호선 지하철을 탐
		tomas.takeSubway(subway); // 토마스가 1호선 지하철을 탐
		
		//학생정보
		james.showInfo();
		tomas.showInfo();
		
		//지하철정보
		subway.showInfo();
		
	}

}
