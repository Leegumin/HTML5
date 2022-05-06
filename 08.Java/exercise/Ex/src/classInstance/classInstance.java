package classInstance;

public class classInstance {

	public static class StaticTest {
		static int classVar = 10;
		int instanceVar = 20;
	}

	public static void main(String[] args) {
		/* StaticTest 객체 1 */
		StaticTest staticTest1 = new StaticTest();
		
		/* StaticTest 객체 2 */
		StaticTest staticTest2 = new StaticTest();

		System.out.println("1." + StaticTest.classVar + "," + staticTest1.instanceVar);
		System.out.println("2." + StaticTest.classVar + "," + staticTest2.instanceVar);
		
		/* 객체1 값을 변경, classVar은 전역변수 => 전역변수인 static int classVar은 객체 1, 2 둘다 바뀜*/
		staticTest1.classVar = 12;
		/* 객체1 값을 변경, instanceVar은 지역변수 => 지역변수인 int instanceVar의 값은 객체1만 바뀜*/
		staticTest1.instanceVar = 400;
		
		System.out.println("-------------------");
		System.out.println("1." + StaticTest.classVar + "," + staticTest1.instanceVar);
		System.out.println("2." + StaticTest.classVar + "," + staticTest2.instanceVar);
	}
}
