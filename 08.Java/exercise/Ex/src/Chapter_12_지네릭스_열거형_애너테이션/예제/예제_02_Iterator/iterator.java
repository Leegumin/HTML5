package Chapter_12_지네릭스_열거형_애너테이션.예제.예제_02_Iterator;

import java.util.ArrayList;
import java.util.Iterator;

public class iterator {

	public static void main(String[] args) {
		// ArrayList : 향상된 배열
		// add 하면 매개변수의 값이 내부 배열로 저장이 됨
		ArrayList<Student> list = new ArrayList<Student>();
		list.add(new Student("자바왕", 1, 1));
		list.add(new Student("자바짱", 1, 2));
		list.add(new Student("홍길동", 2, 1));

		// Iterator : 향상된 for문 비슷함
		// while(it.hasNext()) : 배열 같은 자료형에서 자료가 없어질때까지 true 값을 반환 시켜줌 -> 자료가 없으면 false값을 반환하여 작동을 멈춘다는 소리
		Iterator<Student> it = list.iterator();
		while (it.hasNext()) {
			// Student s = (Student)it.next(); // 지네릭스를 사용하지 않으면 형변환이 필요함.
			Student s = it.next();
			System.out.println(s.name);
		}
	}
}

class Student {
	String name = "";
	int ban;
	int no;

	Student(String name, int ban, int no) {
		this.name = name;
		this.ban = ban;
		this.no = no;
	}
}
