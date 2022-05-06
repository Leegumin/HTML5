package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_08_StaticVar;

public class StaticVarTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		StaticVar sv1 = new StaticVar();
		sv1.increase();
		System.out.println( "x : " + sv1.x); //일반변수
		System.out.println( "y : " + StaticVar.y); //전역변수
		
		System.out.println("-------------------------------");
		
		StaticVar sv2 = new StaticVar();
		sv2.increase();
		System.out.println( "x : " + sv2.x); //일반변수
		System.out.println( "y : " + StaticVar.y); //전역변수
		
		System.out.println("-------------------------------");
		
		StaticVar sv3 = new StaticVar();
		sv3.increase();
		System.out.println( "x : " + sv3.x); //일반변수
		System.out.println( "y : " + StaticVar.y); //전역변수
		
		// 전역변수는 계속 중첩됨
		// 인스턴스 변수는 계속초기화
		
	}

}
