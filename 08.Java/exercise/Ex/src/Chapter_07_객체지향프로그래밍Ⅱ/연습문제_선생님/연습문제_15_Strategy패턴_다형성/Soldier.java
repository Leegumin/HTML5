package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_15_Strategy패턴_다형성;

// Strategy를 사용하는 클래스
public class Soldier {
	// 다형성 형태
	void runContext(Strategy strategy) {
		System.out.println("전투 시작");
		strategy.runStrategy();
		System.out.println("전투 끝");
	}
}
