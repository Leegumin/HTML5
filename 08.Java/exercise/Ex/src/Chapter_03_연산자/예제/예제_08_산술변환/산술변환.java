package Chapter_03_연산자.예제.예제_08_산술변환;

public class 산술변환 {
	public static void main(String args[]) {
		byte a = 10;
		byte b = 30;
		byte c = (byte) (a * b);
		
		/* byte값의 한계치를 넘어섰기 때문에 44가 나옴 */
		System.out.println(c);
	}
}
