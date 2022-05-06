package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_02;

import java.util.Scanner;

public class 객체생성출력 {
	public static void main(String[] args) {
//		클래스를 작성해보세요
//		3과목의 점수를 입력받아서 성적 평균을 출력해 보세요
		Scanner sc = new Scanner(System.in);

		System.out.println("수학, 과학, 영어 순으로 3개의 정수 입력");
		int math = sc.nextInt();
		int science = sc.nextInt();
		int english = sc.nextInt();

		Grade me = new Grade();
		System.out.printf("평균은 %.2f",  me.average(math, science, english));
	}
}
