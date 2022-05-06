package Chapter_03_연산자.연습문제.연습문제_04;

public class 사과바구니구하기 {
	public static void main(String args[]) {
		// 아래의 코드는 사과를 담는데 필요한 바구니(버켓)의 수를 구하는 코드이다. 만일 사과의 수가 123개이고 하나의 바구니에는 10개의 사과를
		// 담을 수 있다면, 13개의 바구니가 필요할 것이다.(1)에 알맞은 코드를 넣으시오.
//		int numOfApples = 123;
//		int sizeOfBucket = 10;
//		int numOfBucket = ((1));
//
//		System.out.println("필요한 바구니의 수 : " + numOfBucket);

		int numOfApples = 123;
		int sizeOfBucket = 10;
		
//		int numOfBucket = (int) (Math.ceil((double)(numOfApples)/sizeOfBucket));

		/* 선생님 풀이 */
		/* (numOfApples % sizeOfBucket ? 1 : 0) -> numOfApples에 sizeOfBucket를 나눠서 나머지가 나오면*/
		/* 바구니가 하나 더 필요하니 1을 반환, 딱 떨어지면 필요 없으니 0을 반환 */
		int numOfBucket = numOfApples / sizeOfBucket + (numOfApples % sizeOfBucket != 0 ? 1 : 0);

		System.out.println("필요한 바구니의 수 : " + numOfBucket);
	}
}
