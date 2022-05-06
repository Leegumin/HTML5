package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_06;

public class 기본생성자_매개변수생성자 {
	public static void main(String[] args) {
		Student student1 = new Student("일준", 1, 100, 85, 90);
		Student student2 = new Student("이준", 2, 95, 80, 95);
		
		System.out.printf("%d학번인 %s의 총점은%d%n", student1.hakbun, student1.name, student1.sum());
		System.out.printf("%d학번인 %s의 총점은%d%n", student2.hakbun, student2.name, student2.sum());
		
	}
}
