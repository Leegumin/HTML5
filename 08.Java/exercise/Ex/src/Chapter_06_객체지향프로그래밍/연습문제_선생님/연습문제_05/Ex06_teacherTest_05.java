package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_05;

public class Ex06_teacherTest_05 {
	public static void main(String[] args) {
		MyType kor1 = new MyType();
		MyType kor2 = new MyType(300, 200, 100);
		
		System.out.println("kor1 a = " + kor1.a);
		System.out.println("kor1 b = " + kor1.b);
		System.out.println("kor1 c = " + kor1.c);
		System.out.println("---------------");
		System.out.println("kor2 a = " + kor2.a);
		System.out.println("kor2 b = " + kor2.b);
		System.out.println("kor2 c = " + kor2.c);
	}
}
