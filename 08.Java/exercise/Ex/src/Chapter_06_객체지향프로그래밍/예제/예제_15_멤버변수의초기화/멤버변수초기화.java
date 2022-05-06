package Chapter_06_객체지향프로그래밍.예제.예제_15_멤버변수의초기화;

class 멤버변수초기화 {
	static int[] arr = new int[10];

	static {
		for (int i = 0; i < arr.length; i++) {
			/* 1과 10 사이의 임의의 값을 배열 arr에 저장 */
			arr[i] = (int) (Math.random() * 10) + 1;
		}
	}

	public static void main(String[] args) {
		for (int i = 0; i < arr.length; i++) {
			System.out.println("arr[" + i + "]:" + arr[i]);
		}
	}
}
