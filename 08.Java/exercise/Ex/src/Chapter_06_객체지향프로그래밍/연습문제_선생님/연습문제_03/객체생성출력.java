package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_03;

public class 객체생성출력 {
	public static void main(String[] args) {
//		클래스를 작성해보세요
//		변수 : title = "Dancing Queen"
//			  singer = "ABBA"
//			  country = "스웨덴"
//		출력: "스웨뒌 국적의 ABBA가 부른 "Dancing Queen"
		Song song = new Song();
		
		song.show("스웨덴", "ABBA", "Dancing Queen");
	}
}
