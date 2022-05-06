package Chapter_08_예외처리.예제.예제_09_메서드에예외선언하기;

public class 메서드에예외선언하기 {

	public static void main(String[] args) throws Exception { // throws Exception -> 이 문구가 걸려있으면 에러처리를 안하고 호출한 곳에서 에러처리를 하게 만듬 
		// TODO Auto-generated method stub
		
		method1();
	}
	
	static void method1() throws Exception{ // 3. 에러가 처리되지 않고 불려와서 해결되야 하나 여기 또한 에러 처리를 하지 않으므로 호출한 main으로 올라감
		method2();
	}
	
	static void method2() throws Exception{ // 2. 에러가 뜨지만 에러처리는 안하고 호출한 method1으로 올라감 
		throw new Exception("고의로 발생시켰음"); // 1. 에러 발생시킴
	}
}
