package Chapter_06_객체지향프로그래밍.예제.예제_14_멤버변수의초기화;

class 멤버변수초기화 {
	static
	/* 클래스 초기화 */
	{
		System.out.println("static { }");
	}
	/* 인스턴스 초기화 */
	{
		System.out.println("{ }");
	}
	public 멤버변수초기화() {
		System.out.println("생성자");
	}

	public static void main(String[] args) {
		System.out.println("Ex06_14 bt = new Ex06_14(); ");
		멤버변수초기화 bt = new 멤버변수초기화();
		
		System.out.println("Ex06_14 bt2 = Ex06_14(); ");
		멤버변수초기화 bt2 = new 멤버변수초기화();
	}
}
