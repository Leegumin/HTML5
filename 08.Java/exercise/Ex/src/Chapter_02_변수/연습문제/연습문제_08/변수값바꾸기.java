package Chapter_02_변수.연습문제.연습문제_08;

public class 변수값바꾸기 {
	public static void main(String args[]) {
		int x = 1;
		int y = 2;
		int z = 3;
		
		int tem = x;
		x = y;
		y = z;
		z = tem;
		
		System.out.println("x= " + x);
		System.out.println("y= " + y);
		System.out.println("z= " + z);
	}
}
