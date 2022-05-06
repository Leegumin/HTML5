package Chapter_03_연산자.예제.예제_05_형변환연산자;

public class 형변환연산자 {
	public static void main(String args[]) {
		double d = 85.4;
		int score = (int) d;
		System.out.println("score=" + score);
		
		/* 형변환 후에도 d값은 그대로임 */
		/* (타입)피연산자를 값으로 저장하는 것이기 때문에 근본의 형을 변환시키는건 아님 */
		System.out.println("d=" + d);
		
	}
}
