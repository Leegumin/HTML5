package Chapter_06_객체지향프로그래밍.예제.예제_02_객체의생성과사용;

public class 객체분리생성사용방법 {
	public static void main(String args[]) {
		Tv t1 = new Tv();
		Tv t2 = new Tv();
		System.out.println("t1의 channel값은 " + t1.channel + "입니다." );
		System.out.println("t2의 channel값은 " + t2.channel + "입니다." );
		
		t1.channel = 7;
		System.out.println("t1의 channel값을 7로 변경하였습니다." );
		
		System.out.println("t1의 channel값은 " + t1.channel + "입니다." );
		System.out.println("t2의 channel값은 " + t2.channel + "입니다." );
	}
}
