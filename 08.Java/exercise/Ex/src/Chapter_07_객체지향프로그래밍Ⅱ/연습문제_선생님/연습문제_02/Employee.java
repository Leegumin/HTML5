package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_02;

public class Employee {
	public int no;
	public String name;

	public Employee() {
		System.out.println("Employee_Salesman() 실행");
	}

	/* 매개변수 2개짜리 생성자 */
	public Employee(int no, String name) {
		this.no = no;
		this.name = name;
		System.out.println("Employee_Salesman(int, String, int) 실행");
	}
}
