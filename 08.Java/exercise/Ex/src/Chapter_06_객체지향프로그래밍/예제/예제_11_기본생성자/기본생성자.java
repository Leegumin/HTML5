package Chapter_06_객체지향프로그래밍.예제.예제_11_기본생성자;

class Data_1 {
	int vaule;
}

class Data_2 {
	int value;
	String singer;

	/* 매개변수 없는 생성자를 반드시 생성해줘야됨 */
	Data_2() {
		/* 인스턴스 변수 초기화를 목적 */
		value = 1;
		singer = "ABBA";
	};

	/* 매개변수 1개짜리 생성자 */
	/* 생성자가 정의되어 있어 생성자를 자동으로 추가해주지 않음 -> 오류 ==> 해결방법 : Data_2(){} */
	Data_2(int x) {
		value = x;
	}
}

public class 기본생성자 {
	public static void main(String[] args) {
		Data_1 d1 = new Data_1();
		Data_2 d2 = new Data_2();
	}
}
