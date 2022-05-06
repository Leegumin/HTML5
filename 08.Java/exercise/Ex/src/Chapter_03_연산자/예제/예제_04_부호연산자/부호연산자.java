package Chapter_03_연산자.예제.예제_04_부호연산자;

public class 부호연산자 {
	public static void main(String args[]) {
		int i = -10;
		
		/* +는 작동하는게 거의 없음 => 쓸모 거의 없음 */
		i = +i;
		System.out.println(i);
		
		i = -10;
		i = -i;
		System.out.println(i);
	}
}
