package 기초연습문제_선생님.기초연습문제.문제_08;

public class 문제8 {

	public static void main(String[] args) {

		// 26개 문자 배열
		char[] arr = new char[26];
		
		for (int i = 0; i < arr.length; i++) {
			arr[i] = (char)(65+i);
			System.out.print(arr[i] + " ");
		}
	}
}
