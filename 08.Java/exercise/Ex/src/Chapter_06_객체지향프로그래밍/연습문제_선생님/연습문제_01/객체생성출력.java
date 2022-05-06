package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_01;

public class 객체생성출력 {
	public static void main(String[] args) {
		/* 다음과 같이 출력되도록 TV 클래스를 작성하시오 */
		/* 출력값 : LG에서 만든 2017년형 32인치 TV */
		TV2 myTv = new TV2();
		
		myTv.show("LG", 2017, 32);
	}
}
