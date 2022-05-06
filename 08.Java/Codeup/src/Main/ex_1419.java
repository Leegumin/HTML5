package Main;

import java.util.Scanner;

public class ex_1419 {

	public static void main(String[] args) {
		// 입력 받기
		Scanner scn = new Scanner(System.in);
		
		// 공백으로 자르기
		String strInput = scn.nextLine();
		
		// 카운트를 세기위해 love 값을 ""으로 변경
		String strResult = strInput.replace("love", "");
		
		// 결과 카운트
		// (원본 입력값 문자열 길이 - (love를 ""로 변경한 문자열길이)) / (love 문자열 길이) => love 문자열의 개수이다
		int iIndex = (strInput.length() - strResult.length())/4;
		
		// 결과 출력
		System.out.println(iIndex);
	}

}


