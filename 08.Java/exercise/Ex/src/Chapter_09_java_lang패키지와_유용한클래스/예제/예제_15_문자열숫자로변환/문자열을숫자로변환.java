package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_15_문자열숫자로변환;

public class 문자열을숫자로변환 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int i = new Integer("100").intValue();
		int i2 = Integer.parseInt("100");
		Integer i3 = Integer.valueOf("100");
		
		int i4 = Integer.parseInt("100",2);
		int i5 = Integer.parseInt("100",8);
		int i6 = Integer.parseInt("100",16);
		int i7 = Integer.parseInt("FF",16);
		// NumberFormatException 발생
//		int i8 = Integer.parseInt("FF");
		
		Integer i9 = Integer.valueOf("100",2);
		Integer i10 = Integer.valueOf("100",8);
		Integer i11 = Integer.valueOf("100",16);
		Integer i12 = Integer.valueOf("FF",16);
		// NumberFormatException 발생
//		Integer i13 = Integer.valueOf("FF",2);
		
		System.out.println(i);
		System.out.println(i2);
		System.out.println(i3);
		System.out.println("100(2) -> "  + i4);
		System.out.println("100(8) -> "  + i5);
		System.out.println("100(16) -> "  + i6);
		System.out.println("FF(16) -> "  + i7);
		
		System.out.println("100(2) -> " + i9);
		System.out.println("100(8) -> " + i10);
		System.out.println("100(16) -> " + i11);
		System.out.println("FF(16) -> " + i12);
	}

}
