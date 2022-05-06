package Chapter_03_연산자.연습문제.연습문제_03;

import Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_03.Song;

public class 자릿수구하기 {
	public static void main(String args[]) {
		Song song = new Song();
		
		String title = "Dancing Queen";
		String singer = "ABBA";
		String country = "스웨덴";
		
		song.show("Dancing Queen", "ABBA", "스웨덴");
	}
}
