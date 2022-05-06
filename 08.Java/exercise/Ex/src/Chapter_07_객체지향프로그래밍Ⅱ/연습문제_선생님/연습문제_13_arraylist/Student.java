package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_13_arraylist;

import java.util.ArrayList;

public class Student {
	private int studentID;
	private String studentName;
	// <Subject> -> 과목 클래스만 들어올 수 있게 강제
	// Subject class에서 먼저 정보를 집어넣어줘야 ArrayList로 정보가 들어옴
	private ArrayList<Subject> subjectList;

	// 매개변수 2개짜리 생성자
	// ArrayList subjectList 초기화
	public Student(int studentID, String studentName) {

		this.studentID = studentID;
		this.studentName = studentName;
		this.subjectList = new ArrayList<Subject>();
	}

	// 과목을 저장할 메소드
	public void addSubject(String name, int score) {

		// Subject 객체생성자를 정의해서 student의 subjectList에 추가함
		Subject subject = new Subject();

		// 과목에 정보를 저장하는 로직이 필요
		// 매개변수 name을 과목 객체에 저장
		subject.setName(name);
		// 매개변수 score를 과목 객체에 저장
		subject.setScorePoint(score);

		this.subjectList.add(subject);
	}

	public void showStudentInfo() {
		// 향상된 배열을 반복문을 돌려서 출력
		// 힌트 : for (Subject s : subjectList)
		// 1. 과목의 점수를 다 더해서 총점을 출력
		// 2. print 출력 : "학생" + studentName + "의" + 과목이름 + "과목 성적은" + 과목점수 + "입니다"
		int total = 0;

		for (Subject s : subjectList) {
			total += s.getScorePoint();
			System.out.println("학생 " + studentName + "의 " + s.getName() + " 과목 성적은 " + s.getScorePoint() + "점 입니다");
		}
		System.out.println("총점은 " + total + "입니다.");

	}
}