package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_11_PrintTest_abstract;

public class PrintTest {

	public static void testAllPrint(Printer p) {
		//오버라이딩 메소드는 형 변환이 필요 없음
		//일반(부모자식간의) 메소드는 형 변환이 필요함
		p.Print();
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		LaserPrinter p1 = new LaserPrinter(); 
		ColorPrinter c1 = new ColorPrinter();
		
		//부모에 들어갈 메소드 : print();
		testAllPrint(p1); // 출력 : 레이저로 선명하게 출력합니다.
		testAllPrint(c1); // 출력 : 컬러로 출력합니다.

	}

}
