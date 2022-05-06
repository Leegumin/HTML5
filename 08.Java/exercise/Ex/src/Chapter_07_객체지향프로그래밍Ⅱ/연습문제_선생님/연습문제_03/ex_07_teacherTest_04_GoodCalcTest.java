package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_03;

public class ex_07_teacherTest_04_GoodCalcTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calculator_GoodCalc gc = new Calculator_GoodCalc();
		
		int[] avg = new int[] {2, 3 ,4};
		
		System.out.println(gc.add(2, 3));
		System.out.println(gc.subtract(2, 3));
		System.out.println(gc.average(avg));
	}

}
