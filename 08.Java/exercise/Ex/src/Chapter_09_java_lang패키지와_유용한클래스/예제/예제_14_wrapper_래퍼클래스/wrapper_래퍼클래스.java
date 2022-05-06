package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_14_wrapper_래퍼클래스;

public class wrapper_래퍼클래스 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		

		Integer i = new Integer(100);
		Integer i2 = new Integer(100);


		System.out.println("i==i2 ? " + (i==i2));
		//래퍼클래스는 equals가 문자열을 포함한 모든 값을 주소값이 아닌 객체 값으로 비교함
		System.out.println("i.equals(i2) ? " + i.equals(i2));
		System.out.println("i.compareTo(i2) " + i.compareTo(i2));
		System.out.println("i.toString()=" + i.toString());
		
		System.out.println("MAX_VALUE=" + Integer.MAX_VALUE);
		System.out.println("MIN_VALUE=" + Integer.MIN_VALUE);
		System.out.println("SIZE=" + Integer.SIZE + " bits");
		System.out.println("BYTES=" + Integer.BYTES + " bytes");
		System.out.println("TYPE=" + Integer.TYPE);
	}

}
