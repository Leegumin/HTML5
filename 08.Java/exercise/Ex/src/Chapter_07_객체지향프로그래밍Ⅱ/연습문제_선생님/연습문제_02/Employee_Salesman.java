package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_02;

public class Employee_Salesman extends Employee {
	public int record;

	/* 기본 생성자 */
	public Employee_Salesman() {
		/* 1) 부모의 생성자를 호출 : Employee() 실행 : 출력 */
		super();
		/* 2) Employee_Salesman() 실행 : 출력 */
		System.out.println("Employee_Salesman() 실행");
	}

	/* 매개변수 3개 있는 생성자 */
	public Employee_Salesman(int no, String name, int record) {
		/* 3) 부모의 생성자를 호출 : Employee(int, String) 실행 : 출력 */
		super(no, name);
		/* 4) Employee_Salesman(int, String, int) 실행 : 출력 */
		this.record = record;
		System.out.println("Employee_Salesman(int, String, int) 실행");
	}
}
