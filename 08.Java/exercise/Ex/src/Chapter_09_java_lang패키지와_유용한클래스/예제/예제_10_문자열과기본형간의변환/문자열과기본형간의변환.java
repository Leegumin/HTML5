package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_10_문자열과기본형간의변환;

public class 문자열과기본형간의변환 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// int(iVal)를 String(strVal)로 변환시킴
		int iVal = 100;
		String strVal = String.valueOf(iVal);

		// double(dVal)를 String(strVal2)로 변환시킴
		double dVal = 200.0;
		String strVal2 = dVal + "";

		// Integer.parseInt("+" + strVal) -> "+" 양수를 표현
		double sum = Integer.parseInt("+" + strVal) + Double.parseDouble(strVal2);

		double sum2 = Integer.valueOf(strVal) + Double.valueOf(strVal2);

		// (String.join("", strVal, "+", strVal2, "=") -> 그냥 전부 가져다 붙이는 형태
		System.out.println(String.join("", strVal, "+", strVal2, "=") + sum);
		System.out.println(strVal + "+" + strVal2 + "=" + sum2);

	}

}
