package Chapter_06_객체지향프로그래밍.예제.예제_08_참조형반환타입;

class Data3 {
	int x;
}

public class 참조형반환타입 {
	public static void main(String[] args) {
		Data3 d = new Data3();
		d.x = 10;

		Data3 d2 = copy(d);
		
		/* 메모리 주소 복사 */
		System.out.println("d.x =" + d.x);
		System.out.println("d2.x =" + d2.x);
	}

	static Data3 copy(Data3 d) {
		/* 새로운 객체 tmp 생성 */
		Data3 tmp = new Data3();
		
		/* d.x의 값을 tmp.x에 복사 */
		tmp.x = d.x;
		
		/* 복사한 객체의 주소를 반환 */
		return tmp;
	}
}
