package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_06;

public class Student {
	String name;
	int hakbun;
	int kor;
	int eng;
	int math;

	Student() {
	}

	Student(String a, int b, int c, int d, int e) {
		name = a;
		hakbun = b;
		kor = c;
		eng = d;
		math = e;
	}

	int sum() {
		int result = 0;
		result = kor + eng + math;
		return result;
	}
}
