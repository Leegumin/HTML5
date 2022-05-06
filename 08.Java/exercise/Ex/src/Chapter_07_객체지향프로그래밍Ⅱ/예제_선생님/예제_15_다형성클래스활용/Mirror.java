package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_15_다형성클래스활용;

//모든 메서드가 추상메서드 형태인 interface -> 메서드 이름만 존재함
//멤버변수 없음. 전부 상수
public interface Mirror {

	// 상수
	
//	첫번째 선언 방법
//	public static final int MAX_AGE = 5;
	
//	두번째 선언 방법
//	어차피 전부 상수로 존재하기 때문에 이렇게만 정의해줘도 충분함
	 int MAX_AGE = 5;
	 
	 void autoClose(); // 미러 자동 접힘
	 void control(); // 미러 자동 조절
	 
}
