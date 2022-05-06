package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_15_Strategy패턴_다형성;

public class StrategyTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Strategy strategy = null;
		Soldier rambo = new Soldier();
		
		// 총을 람보에게 전달해서 전투를 수행하게 만드는 부분
		// 다형성 형태 : spring DI(의존성 주입) 형태
		strategy = new StrategyGun(); // print 출력 : "탕, 타당, 타다당"
		rambo.runContext(strategy);
		
		// 검을 람보에게 전달해서 전투를 수행하게 만드는 부분
		strategy = new StrategySword(); // print 출력 : "슉, 슈슈슉, 슉"
		rambo.runContext(strategy);
		
		// 활을 람보에게 전달해서 전투를 수행하게 만드는 부분
		strategy = new StrategyBow(); // print 출력 : "슝, 쐐애애앸, 슝슝"
		rambo.runContext(strategy);
	}

}
